/* ---- Begin: TrueRandom.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_MASTER
#define TOOLS_TRUE_RANDOM_MASTER 0

/**
 * @file TrueRandom.hpp
 * @brief Master header for ToolsExperimental::TrueRandom module.
 *
 * ─── What is TRNG? ──────────────────────────────────────────────
 * True Random Number Generator (TRNG) produces randomness from
 * physical/OS entropy sources rather than mathematical algorithms.
 * Output is fundamentally non-deterministic and non-reproducible.
 * This module uses Windows BCryptGenRandom(SYSTEM_PREFERRED_RNG),
 * which combines hardware RNG, OS entropy pool, and FIPS 140-2
 * AES-CBC-MAC conditioning into a single cryptographically secure
 * byte stream.
 *
 * ─── PRNG vs TRNG ───────────────────────────────────────────────
 * PRNG (rdt::Random):          TRNG (this module):
 * - Deterministic algorithm      - Physical/OS entropy source
 * - Reproducible with same seed  - Never reproducible
 * - Fast (~2 ns/value)           - Slower (~100-500 ns/value)
 * - Has period (2^19937-1)       - No period, no state, no seed
 * - NOT cryptographically safe   - Cryptographically secure
 * - Needs seed management        - Zero configuration
 *
 * ─── When to Use TRNG ───────────────────────────────────────────
 * Do:
 * - Security tokens, API keys, session IDs
 * - Password/salt generation
 * - Cryptographic key material
 * - Lottery / fair random selection
 * - Nonce / IV generation
 *
 * Don't:
 * - Game physics, simulations, ML training → use Tools::Random
 * - Procedural generation needing reproducibility → use Tools::Random
 * - High-throughput bulk generation (>100K values/sec) → use Tools::Random
 *
 * ─── Tradeoffs ──────────────────────────────────────────────────
 * Cost:    ~50-250x slower per value than MT19937 (syscall overhead)
 * State:   None — no seed, no period, no internal state to manage
 * Safety:  Immune to seed prediction, state recovery, and period attacks
 * Thread:  Inherently thread-safe (stateless), .Thread variants available
 *          for throughput scaling on large container generation
 *
 * ─── Platform Support ───────────────────────────────────────────
 * Done: Windows 10+ via <bcrypt.h> (BCryptGenRandom)
 * Soon: Linux via getrandom() — planned
 * Soon: macOS via SecRandomCopyBytes — maybe planned (maybe, because running macOS VM is almost impossible on AMD CPUs)
 *
 * ─── Usage ──────────────────────────────────────────────────────
 * @code
 * #include "TrueRandom.hpp"
 * using namespace ToolsExperimental::TrueRandom;
 *
 * // Single values
 * auto i = RandomNumI(-50, 50);
 * auto d = RandomNumD(0.0, 1.0, 3);       // 3 decimal places
 *
 * // Containers
 * auto vec = RandomNumsVI(100, 0, 255);
 * auto bundle = RandomNumsB(4, 10, -10, 10);
 *
 * // Secure strings & tokens
 * auto token = RandomStr(32);              // 32 lowercase letters
 * auto pin = RandomStr<u8>(6, '0', '9');   // 6-digit numeric string
 *
 * // Choice from container
 * auto item = Choice(myVector);
 * auto sample = Sample(myVector, 5);
 *
 * // Multi-threaded generation
 * auto big = RandomNumsTVL(10000, 0, INT64_MAX, 4); // 4 threads
 * @endcode
 *
 * @note All functions satisfy cryptographic security requirements
 *       but are significantly slower than PRNG equivalents.
 *       Profile before using in hot paths.
 */

// Master file
// #include "TrueRandom.hpp"               // 0

// Common header file
#include "TrueRandom/_Common.hpp"          // 1

#if defined(_WIN32)
#include "TrueRandom/_Internal.Win32.hpp"   // 2a
#elif defined(__linux__) && !defined(__ANDROID__)
#include "TrueRandom/_Internal.Linux.hpp"
#endif

// Single thread exclusive
#include "TrueRandom/Single.hpp"           // 3a
#include "TrueRandom/Single.Impl.hpp"      // 3b

// Single threading with 32/64-bit type preset
#include "TrueRandom/Vector.hpp"           // 4a
#include "TrueRandom/Vector.Impl.hpp"      // 4b
#include "TrueRandom/Bundle.hpp"           // 5a
#include "TrueRandom/Bundle.Impl.hpp"      // 5b
#include "TrueRandom/SBundle.hpp"          // 6a
#include "TrueRandom/SBundle.Impl.hpp"     // 6b

// Multi threading with 32/64-bit type preset
#include "TrueRandom/Vector.Thread.hpp"         // 7a
#include "TrueRandom/Vector.Thread.Impl.hpp"    // 7b
#include "TrueRandom/Bundle.Thread.hpp"         // 8a
#include "TrueRandom/Bundle.Thread.Impl.hpp"    // 8b
#include "TrueRandom/SBundle.Thread.hpp"        // 9a
#include "TrueRandom/SBundle.Thread.Impl.hpp"   // 9b

// Random Choice from any iterable via generic template
#include "TrueRandom/Choice.hpp"           // 10
#include "TrueRandom/String.hpp"           // 11a
#include "TrueRandom/String.Impl.hpp"      // 11b

#endif

/* ---- End: TrueRandom.hpp ---- */
