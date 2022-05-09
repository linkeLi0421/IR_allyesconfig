; ModuleID = '/llk/IR_all_yes/sound/pci/ca0106/ca0106_proc.c_pt.bc'
source_filename = "../sound/pci/ca0106/ca0106_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ca0106_category_str = type { i32, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_ca0106 = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.spinlock, ptr, [4 x ptr], [4 x %struct.snd_ca0106_channel], [4 x %struct.snd_ca0106_channel], [4 x i32], [4 x i32], i32, i32, i32, [4 x [2 x i8]], i32, ptr, %struct.snd_ca_midi, %struct.snd_ca_midi, [16 x i16], [9 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ca0106_channel = type { ptr, i32, i32, ptr, ptr }
%struct.snd_ca_midi = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iec958\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca0106_reg32\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca0106_reg16\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ca0106_reg8\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca0106_regs1\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ca0106_i2c\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca0106_regs2\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Status: %s, %s, %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rate Locked\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not Rate Locked\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPDIF Locked\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No SPDIF Lock\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Audio Valid\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No valid audio\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Estimated sample rate: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IEC958/SPDIF input status:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mode: consumer\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Data: \00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"non-audio\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rate: \00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"44100 Hz\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"48000 Hz\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"32000 Hz\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Copyright: \00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"permitted\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"protected\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Emphasis: \00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"50/15us\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Category: \00", [21 x i8] zeroinitializer }, align 32
@snd_ca0106_con_category = internal constant { [11 x %struct.snd_ca0106_category_str], [40 x i8] } { [11 x %struct.snd_ca0106_category_str] [%struct.snd_ca0106_category_str { i32 3, ptr @.str.62 }, %struct.snd_ca0106_category_str { i32 11, ptr @.str.63 }, %struct.snd_ca0106_category_str { i32 13, ptr @.str.64 }, %struct.snd_ca0106_category_str { i32 5, ptr @.str.65 }, %struct.snd_ca0106_category_str { i32 26, ptr @.str.66 }, %struct.snd_ca0106_category_str { i32 18, ptr @.str.67 }, %struct.snd_ca0106_category_str { i32 34, ptr @.str.68 }, %struct.snd_ca0106_category_str { i32 2, ptr @.str.69 }, %struct.snd_ca0106_category_str { i32 1, ptr @.str.70 }, %struct.snd_ca0106_category_str { i32 9, ptr @.str.71 }, %struct.snd_ca0106_category_str { i32 0, ptr @.str.72 }], [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Original: \00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"original\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"1st generation\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Clock: \00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1000 ppm\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"50 ppm\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"variable pitch\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mode: professional\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rate Locked: \00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"yes\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CCITT J.17\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stereophonic: \00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stereo\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not indicated\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Userbits: \00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"192bit\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"user-defined\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sample Bits: \00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"20 bit\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"24 bit\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"user defined\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Word Length: \00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"22 bit or 18 bit\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"23 bit or 19 bit\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"24 bit or 20 bit\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"20 bit or 16 bit\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAT\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCR\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"microphone\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synthesizer\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rate converter\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixer\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sampler\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM coder\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-IEC908 CD\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"general\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Registers:\0A\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Register %02X: %08lX\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x %x\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Register %02X: %04X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Register %02X: %02X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Registers\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%02X: \00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08lX \00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %x %x\00", [23 x i8] zeroinitializer }, align 32
@switch.table.snd_ca0106_proc_iec958 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.25, ptr @.str.23, ptr @.str.24], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_ca0106_proc_iec958.82 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.30, ptr @.str.25, ptr @.str.31, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.46], [36 x i8] zeroinitializer }, align 32
@switch.table.snd_ca0106_proc_iec958.83 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.54, ptr @.str.25, ptr @.str.55, ptr @.str.25, ptr @.str.56], [44 x i8] zeroinitializer }, align 32
@switch.table.snd_ca0106_proc_iec958.84 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.58, ptr @.str.25, ptr @.str.59, ptr @.str.60, ptr @.str.61], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 9, i64 11, i64 13, i64 18, i64 26, i64 34]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 413, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 414, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 417, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 419, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 421, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 424, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 426, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 265, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 269, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 272, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 277, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 95, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 96, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 98, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 100, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 102, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 105, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 108, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 111, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 114, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 117, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 119, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 121, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 123, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 125, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 127, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 129, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [24 x i8] c"snd_ca0106_con_category\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 69, i32 45 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 132, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 137, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 139, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 141, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 143, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 145, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 148, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 151, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 154, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 161, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 183, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 185, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 187, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 191, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 204, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 206, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 208, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 210, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 213, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 216, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 222, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 225, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 228, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 231, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 237, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 240, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 243, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 246, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 249, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 70, i32 25 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 71, i32 25 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 72, i32 32 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 73, i32 33 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 74, i32 36 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 75, i32 27 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 76, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 77, i32 31 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 78, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 79, i32 35 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 80, i32 29 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 305, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 310, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 288, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 326, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 342, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 353, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 355, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 358, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private constant [34 x i8] c"../sound/pci/ca0106/ca0106_proc.c\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 389, i32 34 }
@___asan_gen_.336 = private unnamed_addr constant [36 x i8] c"switch.table.snd_ca0106_proc_iec958\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [39 x i8] c"switch.table.snd_ca0106_proc_iec958.82\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [39 x i8] c"switch.table.snd_ca0106_proc_iec958.83\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [39 x i8] c"switch.table.snd_ca0106_proc_iec958.84\00", align 1
@llvm.compiler.used = appending global [87 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @snd_ca0106_con_category, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.snd_ca0106_proc_iec958, ptr @switch.table.snd_ca0106_proc_iec958.82, ptr @switch.table.snd_ca0106_proc_iec958.83, ptr @switch.table.snd_ca0106_proc_iec958.84], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_con_category to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ca0106_proc_iec958 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ca0106_proc_iec958.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ca0106_proc_iec958.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ca0106_proc_iec958.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ca0106_proc_init(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %emu, ptr noundef nonnull @snd_ca0106_proc_iec958, ptr noundef null) #5
  %2 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu, align 4
  %call2 = tail call i32 @snd_card_rw_proc_new(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %emu, ptr noundef nonnull @snd_ca0106_proc_reg_read32, ptr noundef nonnull @snd_ca0106_proc_reg_write32) #5
  %4 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emu, align 4
  %call.i26 = tail call i32 @snd_card_rw_proc_new(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %emu, ptr noundef nonnull @snd_ca0106_proc_reg_read16, ptr noundef null) #5
  %6 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emu, align 4
  %call.i27 = tail call i32 @snd_card_rw_proc_new(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %emu, ptr noundef nonnull @snd_ca0106_proc_reg_read8, ptr noundef null) #5
  %8 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emu, align 4
  %call8 = tail call i32 @snd_card_rw_proc_new(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef %emu, ptr noundef nonnull @snd_ca0106_proc_reg_read1, ptr noundef nonnull @snd_ca0106_proc_reg_write) #5
  %10 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emu, align 4
  %call10 = tail call i32 @snd_card_rw_proc_new(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %emu, ptr noundef null, ptr noundef nonnull @snd_ca0106_proc_i2c_write) #5
  %12 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %emu, align 4
  %call.i28 = tail call i32 @snd_card_rw_proc_new(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef %emu, ptr noundef nonnull @snd_ca0106_proc_reg_read2, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_iec958(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef 112, i32 noundef 0) #5
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %and = and i32 %call, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.9, ptr @.str.8
  %and3 = and i32 %call, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.11, ptr @.str.10
  %and6 = and i32 %call, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, ptr noundef nonnull %cond8) #5
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %and10 = and i32 %call, 1048575
  %mul = mul i32 %and10, 48000
  %div26 = lshr i32 %mul, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %div26) #5
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.15) #5
  %call14 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef 73, i32 noundef 0) #5
  %shr.i = lshr i32 %call14, 8
  %shr3.i = lshr i32 %call14, 16
  %shr6.i = lshr i32 %call14, 24
  %and10.i = and i32 %call14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.else82.i

if.then.i:                                        ; preds = %if.then
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.17) #5
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.18) #5
  %and14.i = and i32 %call14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %.str.19..str.20.i = select i1 %tobool15.not.i, ptr @.str.19, ptr @.str.20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull %.str.19..str.20.i) #5
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.21) #5
  %and21.i = and i32 %shr6.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and21.i)
  %16 = icmp ult i32 %and21.i, 4
  br i1 %16, label %switch.lookup, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.snd_ca0106_proc_iec958, i32 0, i32 %and21.i
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.then.i.sw.epilog.i_crit_edge
  %.str.25.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.25, %if.then.i.sw.epilog.i_crit_edge ]
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull %.str.25.sink.i) #5
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.26) #5
  %and30.i = and i32 %call14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %.str.28..str.27.i = select i1 %tobool31.not.i, ptr @.str.28, ptr @.str.27
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull %.str.28..str.27.i) #5
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.29) #5
  %and39.i = and i32 %call14, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and39.i)
  %cmp.not.i = icmp eq i32 %and39.i, 8
  %.str.31.sink.i = select i1 %cmp.not.i, ptr @.str.31, ptr @.str.30
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull %.str.31.sink.i) #5
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.32) #5
  %and48.i = and i32 %shr.i, 127
  %30 = zext i32 %and48.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and48.i, label %for.inc.10.i [
    i32 3, label %sw.epilog.i.for.end.i_crit_edge
    i32 11, label %for.end.fold.split.i
    i32 13, label %for.end.fold.split258.i
    i32 5, label %for.end.fold.split259.i
    i32 26, label %for.end.fold.split260.i
    i32 18, label %for.end.fold.split261.i
    i32 34, label %for.end.fold.split262.i
    i32 2, label %for.end.fold.split263.i
    i32 1, label %for.end.fold.split264.i
    i32 9, label %for.end.fold.split265.i
    i32 0, label %for.end.fold.split266.i
  ]

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.10.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef %and48.i) #5
  br label %if.end60.i

for.end.fold.split.i:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split258.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split259.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split260.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split261.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split262.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split263.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split264.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split265.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.fold.split266.i:                          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split266.i, %for.end.fold.split265.i, %for.end.fold.split264.i, %for.end.fold.split263.i, %for.end.fold.split262.i, %for.end.fold.split261.i, %for.end.fold.split260.i, %for.end.fold.split259.i, %for.end.fold.split258.i, %for.end.fold.split.i, %sw.epilog.i.for.end.i_crit_edge
  %i.0256.lcssa.i = phi i32 [ 0, %sw.epilog.i.for.end.i_crit_edge ], [ 1, %for.end.fold.split.i ], [ 2, %for.end.fold.split258.i ], [ 3, %for.end.fold.split259.i ], [ 4, %for.end.fold.split260.i ], [ 5, %for.end.fold.split261.i ], [ 6, %for.end.fold.split262.i ], [ 7, %for.end.fold.split263.i ], [ 8, %for.end.fold.split264.i ], [ 9, %for.end.fold.split265.i ], [ 10, %for.end.fold.split266.i ]
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %name.i = getelementptr [11 x %struct.snd_ca0106_category_str], ptr @snd_ca0106_con_category, i32 0, i32 %i.0256.lcssa.i, i32 1
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.33, ptr noundef %36) #5
  br label %if.end60.i

if.end60.i:                                       ; preds = %for.end.i, %for.inc.10.i
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.35) #5
  %39 = and i32 %call14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool64.not.i = icmp eq i32 %39, 0
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %.str.37..str.36.i = select i1 %tobool64.not.i, ptr @.str.37, ptr @.str.36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull %.str.37..str.36.i) #5
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.38) #5
  %and72.i = and i32 %shr6.i, 48
  %44 = zext i32 %and72.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and72.i, label %sw.default79.i [
    i32 0, label %if.end60.i.snd_ca0106_proc_dump_iec958.exit_crit_edge
    i32 16, label %sw.bb75.i
    i32 32, label %sw.bb77.i
  ]

if.end60.i.snd_ca0106_proc_dump_iec958.exit_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ca0106_proc_dump_iec958.exit

sw.bb75.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ca0106_proc_dump_iec958.exit

sw.bb77.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ca0106_proc_dump_iec958.exit

sw.default79.i:                                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ca0106_proc_dump_iec958.exit

if.else82.i:                                      ; preds = %if.then
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.42) #5
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.18) #5
  %and86.i = and i32 %call14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %.str.19..str.20272.i = select i1 %tobool87.not.i, ptr @.str.19, ptr @.str.20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull %.str.19..str.20272.i) #5
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef nonnull @.str.21) #5
  %51 = trunc i32 %call14 to i8
  %trunc.i = and i8 %51, -64
  %52 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %trunc.i, label %sw.default102.i [
    i8 64, label %if.else82.i.sw.epilog104.i_crit_edge
    i8 -128, label %sw.bb98.i
    i8 -64, label %sw.bb100.i
  ]

if.else82.i.sw.epilog104.i_crit_edge:             ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog104.i

sw.bb98.i:                                        ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog104.i

sw.bb100.i:                                       ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog104.i

sw.default102.i:                                  ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog104.i

sw.epilog104.i:                                   ; preds = %sw.default102.i, %sw.bb100.i, %sw.bb98.i, %if.else82.i.sw.epilog104.i_crit_edge
  %.str.25.sink268.i = phi ptr [ @.str.25, %sw.default102.i ], [ @.str.24, %sw.bb100.i ], [ @.str.23, %sw.bb98.i ], [ @.str.22, %if.else82.i.sw.epilog104.i_crit_edge ]
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull %.str.25.sink268.i) #5
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.43) #5
  %and107.i = and i32 %call14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  %.str.45..str.44.i = select i1 %tobool108.not.i, ptr @.str.45, ptr @.str.44
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull %.str.45..str.44.i) #5
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.29) #5
  %and116.i = lshr i32 %call14, 2
  %61 = and i32 %and116.i, 7
  %switch.tableidx = add nsw i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %62 = icmp ult i32 %switch.tableidx, 7
  br i1 %62, label %switch.lookup27, label %sw.epilog104.i.sw.epilog126.i_crit_edge

sw.epilog104.i.sw.epilog126.i_crit_edge:          ; preds = %sw.epilog104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog126.i

switch.lookup27:                                  ; preds = %sw.epilog104.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep28 = getelementptr inbounds [7 x ptr], ptr @switch.table.snd_ca0106_proc_iec958.82, i32 0, i32 %switch.tableidx
  %63 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load29 = load ptr, ptr %switch.gep28, align 4
  br label %sw.epilog126.i

sw.epilog126.i:                                   ; preds = %switch.lookup27, %sw.epilog104.i.sw.epilog126.i_crit_edge
  %.str.25.sink269.i = phi ptr [ %switch.load29, %switch.lookup27 ], [ @.str.25, %sw.epilog104.i.sw.epilog126.i_crit_edge ]
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull %.str.25.sink269.i) #5
  %66 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %67, ptr noundef nonnull @.str.47) #5
  %68 = and i32 %call14, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %68)
  %cmp130.i = icmp eq i32 %68, 512
  %.str.48..str.49.i = select i1 %cmp130.i, ptr @.str.48, ptr @.str.49
  %69 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %70, ptr noundef nonnull %.str.48..str.49.i) #5
  %71 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %72, ptr noundef nonnull @.str.50) #5
  %73 = trunc i32 %shr.i to i8
  %trunc253.i = and i8 %73, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %trunc253.i)
  %switch.selectcmp.i = icmp eq i8 %trunc253.i, -64
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.52, ptr @.str.25
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %trunc253.i)
  %switch.selectcmp273.i = icmp eq i8 %trunc253.i, -128
  %switch.select274.i = select i1 %switch.selectcmp273.i, ptr @.str.51, ptr %switch.select.i
  %74 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %75, ptr noundef nonnull %switch.select274.i) #5
  %76 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.53) #5
  %and148.i = and i32 %shr3.i, 7
  %switch.tableidx31 = add nsw i32 %and148.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx31)
  %78 = icmp ult i32 %switch.tableidx31, 5
  br i1 %78, label %switch.lookup30, label %sw.epilog126.i.sw.epilog157.i_crit_edge

sw.epilog126.i.sw.epilog157.i_crit_edge:          ; preds = %sw.epilog126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog157.i

switch.lookup30:                                  ; preds = %sw.epilog126.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep32 = getelementptr inbounds [5 x ptr], ptr @switch.table.snd_ca0106_proc_iec958.83, i32 0, i32 %switch.tableidx31
  %79 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load33 = load ptr, ptr %switch.gep32, align 4
  br label %sw.epilog157.i

sw.epilog157.i:                                   ; preds = %switch.lookup30, %sw.epilog126.i.sw.epilog157.i_crit_edge
  %.str.25.sink271.i = phi ptr [ %switch.load33, %switch.lookup30 ], [ @.str.25, %sw.epilog126.i.sw.epilog157.i_crit_edge ]
  %80 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %81, ptr noundef nonnull %.str.25.sink271.i) #5
  %82 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %83, ptr noundef nonnull @.str.57) #5
  %and160.i = and i32 %shr3.i, 56
  %84 = add nsw i32 %and160.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %84)
  %85 = icmp ult i32 %84, 40
  br i1 %85, label %switch.lookup34, label %sw.epilog157.i.snd_ca0106_proc_dump_iec958.exit_crit_edge

sw.epilog157.i.snd_ca0106_proc_dump_iec958.exit_crit_edge: ; preds = %sw.epilog157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ca0106_proc_dump_iec958.exit

switch.lookup34:                                  ; preds = %sw.epilog157.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = lshr exact i32 %84, 3
  %switch.gep35 = getelementptr inbounds [5 x ptr], ptr @switch.table.snd_ca0106_proc_iec958.84, i32 0, i32 %86
  %87 = ptrtoint ptr %switch.gep35 to i32
  call void @__asan_load4_noabort(i32 %87)
  %switch.load36 = load ptr, ptr %switch.gep35, align 4
  br label %snd_ca0106_proc_dump_iec958.exit

snd_ca0106_proc_dump_iec958.exit:                 ; preds = %switch.lookup34, %sw.epilog157.i.snd_ca0106_proc_dump_iec958.exit_crit_edge, %sw.default79.i, %sw.bb77.i, %sw.bb75.i, %if.end60.i.snd_ca0106_proc_dump_iec958.exit_crit_edge
  %.str.58.sink.i = phi ptr [ @.str.40, %sw.bb75.i ], [ @.str.41, %sw.bb77.i ], [ @.str.25, %sw.default79.i ], [ @.str.39, %if.end60.i.snd_ca0106_proc_dump_iec958.exit_crit_edge ], [ %switch.load36, %switch.lookup34 ], [ @.str.25, %sw.epilog157.i.snd_ca0106_proc_dump_iec958.exit_crit_edge ]
  %88 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %89, ptr noundef nonnull %.str.58.sink.i) #5
  br label %if.end

if.end:                                           ; preds = %snd_ca0106_proc_dump_iec958.exit, %entry.if.end_crit_edge
  %90 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %91, ptr noundef nonnull @.str.16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_read32(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.73) #5
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %add14, %do.body3.do.body3_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, %i.021
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %6 = inttoptr i32 %add8 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #5, !srcloc !169
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call5) #5
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.74, i32 noundef %i.021, i32 noundef %8) #5
  %add14 = add nuw nsw i32 %i.021, 4
  %cmp = icmp ult i32 %i.021, 28
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

for.end:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_write32(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #5
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !171
  %call23 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not24 = icmp eq i32 %call23, 0
  br i1 %tobool.not24, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.75, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp4 = icmp ult i32 %6, 64
  br i1 %cmp4, label %do.body7, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %and = and i32 %13, 1048572
  %add = add i32 %and, %11
  %and16 = and i32 %add, 1048575
  %add17 = or i32 %and16, -18874368
  %14 = inttoptr i32 %add17 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %9) #5, !srcloc !173
  call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call10) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body7, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_read16(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.73) #5
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %add15, %do.body3.do.body3_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, %i.022
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %6 = inttoptr i32 %add8 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #5, !srcloc !174
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  %conv12 = zext i16 %8 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call5) #5
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.76, i32 noundef %i.022, i32 noundef %conv12) #5
  %add15 = add nuw nsw i32 %i.022, 2
  %cmp = icmp ult i32 %i.022, 30
  br i1 %cmp, label %do.body3.do.body3_crit_edge, label %for.end

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

for.end:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_read8(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.73) #5
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %add15, %do.body3.do.body3_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, %i.022
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %6 = inttoptr i32 %add8 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #5, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  %conv12 = zext i8 %7 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call5) #5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.77, i32 noundef %i.022, i32 noundef %conv12) #5
  %add15 = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %add15, 32
  br i1 %exitcond.not, label %for.end, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

for.end:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_read1(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.78) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc10, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.79, i32 noundef %i.021) #5
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 0) #5
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.80, i32 noundef %call) #5
  %call.1 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 1) #5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.80, i32 noundef %call.1) #5
  %call.2 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 2) #5
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.80, i32 noundef %call.2) #5
  %call.3 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 3) #5
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.80, i32 noundef %call.3) #5
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.16) #5
  %inc10 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc10, 64
  br i1 %exitcond.not, label %for.end11, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %channel_id = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #5
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_id) #5
  %4 = ptrtoint ptr %channel_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %channel_id, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !171
  %call11 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not12 = icmp eq i32 %call11, 0
  br i1 %tobool.not12, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.81, ptr noundef nonnull %reg, ptr noundef nonnull %channel_id, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 3
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp4 = icmp ult i32 %7, 128
  br i1 %cmp4, label %land.lhs.true, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp7 = icmp ult i32 %9, 4
  br i1 %cmp7, label %if.then8, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @snd_ca0106_ptr_write(ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then8, %land.lhs.true.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_i2c_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #5
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !171
  %call9 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not10 = icmp eq i32 %call9, 0
  br i1 %tobool.not10, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.75, ptr noundef nonnull %reg, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp4 = icmp ult i32 %6, 128
  br i1 %cmp4, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %8)
  %cmp5 = icmp ult i32 %8, 512
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.while.cond.backedge_crit_edge

lor.lhs.false.while.cond.backedge_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %call7 = call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef %6, i32 noundef %10) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then6, %lor.lhs.false.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_proc_reg_read2(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.78) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 64, %entry ], [ %inc10, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.79, i32 noundef %i.021) #5
  %call = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 0) #5
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.80, i32 noundef %call) #5
  %call.1 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 1) #5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.80, i32 noundef %call.1) #5
  %call.2 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 2) #5
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.80, i32 noundef %call.2) #5
  %call.3 = tail call i32 @snd_ca0106_ptr_read(ptr noundef %1, i32 noundef %i.021, i32 noundef 3) #5
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.80, i32 noundef %call.3) #5
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.16) #5
  %inc10 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc10, 128
  br i1 %exitcond.not, label %for.end11, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ca0106_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_i2c_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 413, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 414, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 417, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 419, i32 34}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 421, i32 34}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 424, i32 34}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 426, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 265, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 269, i32 2}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 272, i32 3}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 277, i32 2}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 95, i32 3}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 96, i32 3}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 98, i32 4}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 100, i32 4}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 102, i32 3}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 105, i32 4}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 108, i32 4}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 111, i32 4}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 114, i32 4}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 117, i32 3}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 119, i32 4}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 121, i32 4}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 123, i32 3}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 125, i32 4}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 127, i32 4}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 129, i32 3}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 132, i32 5}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 137, i32 4}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 139, i32 3}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 141, i32 4}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 143, i32 4}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 145, i32 3}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 148, i32 4}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 151, i32 4}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 154, i32 4}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 161, i32 3}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 183, i32 3}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 185, i32 4}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 187, i32 4}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 191, i32 4}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 204, i32 3}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 206, i32 4}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 208, i32 4}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 210, i32 3}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 213, i32 4}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 216, i32 4}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 222, i32 3}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 225, i32 4}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 228, i32 4}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 231, i32 4}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 237, i32 3}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 240, i32 4}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 243, i32 4}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 246, i32 4}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 249, i32 4}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 70, i32 25}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 71, i32 25}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 72, i32 32}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 73, i32 33}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 74, i32 36}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 75, i32 27}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 76, i32 29}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 77, i32 31}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 78, i32 31}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 79, i32 35}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 80, i32 29}
!140 = !{ptr @snd_ca0106_con_category, !141, !"snd_ca0106_con_category", i1 false, i1 false}
!141 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 69, i32 45}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 305, i32 2}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 310, i32 3}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 288, i32 34}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 326, i32 3}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 342, i32 3}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 353, i32 2}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 355, i32 3}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 358, i32 5}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/ca0106/ca0106_proc.c", i32 389, i32 34}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 4217446}
!170 = !{i64 2154384806}
!171 = !{!"auto-init"}
!172 = !{i64 2154383468}
!173 = !{i64 4217028}
!174 = !{i64 4216608}
!175 = !{i64 2154386009}
!176 = !{i64 4217226}
!177 = !{i64 2154386836}
