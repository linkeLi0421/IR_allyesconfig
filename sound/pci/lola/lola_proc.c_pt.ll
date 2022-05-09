; ModuleID = '/llk/IR_all_yes/sound/pci/lola/lola_proc.c_pt.bc'
source_filename = "../sound/pci/lola/lola_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lola = type { ptr, ptr, [2 x %struct.lola_bar], i32, %struct.spinlock, %struct.mutex, %struct.lola_rb, %struct.lola_rb, i32, i32, i32, i32, i32, i32, ptr, i32, [2 x %struct.lola_pcm], i32, i32, [2 x %struct.lola_pin_array], %struct.lola_clock_widget, i32, i32, %struct.lola_mixer_widget, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.lola_bar = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lola_rb = type { ptr, i32, i16, i16, i32 }
%struct.lola_pcm = type { i32, ptr, [16 x %struct.lola_stream] }
%struct.lola_stream = type { i32, i32, i32, i8, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.lola_pin_array = type { i32, i32, [16 x %struct.lola_pin] }
%struct.lola_pin = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lola_clock_widget = type { i32, i32, i32, i32, i8, [48 x %struct.lola_sample_clock], [48 x i32] }
%struct.lola_sample_clock = type { i32, i32, i32 }
%struct.lola_mixer_widget = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"codec_rw\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Vendor: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Function Type: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Specific-Caps: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"  Pins-In %d, Pins-Out %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[Audio-In]\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[Audio-Out]\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[Pin-In]\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[Pin-Out]\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Node 0x%02x %s wcaps 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"  Formats: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  Amp-Caps: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"    mute=%d, step-size=%d, steps=%d, ofs=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  Max-level: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Node 0x%02x [Clock] wcaps 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Video\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Other\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  Clock %d: Type %d:%s, freq=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Node 0x%02x [Mixer] wcaps 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%x 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u %u %u %u\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BAR0 %02x: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BAR1 %02x: %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD %02x STS  %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD %02x LPIB %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD %02x CTL  %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD %02x LVIL %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD %02x BDPL %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSD %02x BDPU %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 198, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 199, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 202, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 105, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 107, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 109, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 110, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 114, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 116, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 119, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 122, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 22, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 24, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 38, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 39, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 45, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 55, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 74, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 77, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 80, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 82, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 94, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 153, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 141, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 166, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 169, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 171, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 181, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 183, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 185, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 187, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 189, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [30 x i8] c"../sound/pci/lola/lola_proc.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 191, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lola_proc_debug_new(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %chip, ptr noundef nonnull @lola_proc_codec_read, ptr noundef null) #5
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call2 = tail call i32 @snd_card_rw_proc_new(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %chip, ptr noundef nonnull @lola_proc_codec_rw_read, ptr noundef nonnull @lola_proc_codec_rw_write) #5
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %call.i10 = tail call i32 @snd_card_rw_proc_new(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %chip, ptr noundef nonnull @lola_proc_regs_read, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lola_proc_codec_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %val.i100 = alloca i32, align 4
  %val.i97 = alloca i32, align 4
  %res_ex.i = alloca i32, align 4
  %val.i94 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !75
  %call = call i32 @lola_codec_read(ptr noundef %1, i32 noundef 0, i32 noundef 3840, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #5
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %6) #5
  %call3 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef 1, i32 noundef 3840, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #5
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %10) #5
  %call5 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef 1, i32 noundef 3840, i32 noundef 128, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #5
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef %14) #5
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %pin = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 19
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pin, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %20) #5
  %arrayidx11 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp102.not = icmp eq i32 %22, 0
  br i1 %cmp102.not, label %entry.for.cond13.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond13.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.body.for.cond13.preheader_crit_edge, %entry.for.cond13.preheader_crit_edge
  %nid.0.lcssa = phi i32 [ 2, %entry.for.cond13.preheader_crit_edge ], [ %inc12, %for.body.for.cond13.preheader_crit_edge ]
  %pcm.le = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %pcm.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcm.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp17105.not = icmp eq i32 %24, 0
  br i1 %cmp17105.not, label %for.cond13.preheader.for.cond23.preheader_crit_edge, label %for.cond13.preheader.for.body18_crit_edge

for.cond13.preheader.for.body18_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body18

for.cond13.preheader.for.cond23.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond23.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %nid.0104 = phi i32 [ %inc12, %for.body.for.body_crit_edge ], [ 2, %entry.for.body_crit_edge ]
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i, align 4, !annotation !75
  %call.i = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.0104, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #5
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %nid.0104, ptr noundef nonnull @.str.7, i32 noundef %29) #5
  %call2.i = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.0104, i32 noundef 3840, i32 noundef 11, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #5
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.12, i32 noundef %33) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %inc = add nuw i32 %i.0103, 1
  %inc12 = add i32 %nid.0104, 1
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond13.preheader_crit_edge

for.body.for.cond13.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond23.preheader:                             ; preds = %for.body18.for.cond23.preheader_crit_edge, %for.cond13.preheader.for.cond23.preheader_crit_edge
  %nid.1.lcssa = phi i32 [ %nid.0.lcssa, %for.cond13.preheader.for.cond23.preheader_crit_edge ], [ %inc21, %for.body18.for.cond23.preheader_crit_edge ]
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp27109.not = icmp eq i32 %37, 0
  br i1 %cmp27109.not, label %for.cond23.preheader.for.cond33.preheader_crit_edge, label %for.cond23.preheader.for.body28_crit_edge

for.cond23.preheader.for.body28_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body28

for.cond23.preheader.for.cond33.preheader_crit_edge: ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond33.preheader

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond13.preheader.for.body18_crit_edge
  %nid.1107 = phi i32 [ %inc21, %for.body18.for.body18_crit_edge ], [ %nid.0.lcssa, %for.cond13.preheader.for.body18_crit_edge ]
  %i.1106 = phi i32 [ %inc20, %for.body18.for.body18_crit_edge ], [ 0, %for.cond13.preheader.for.body18_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i94) #5
  %38 = ptrtoint ptr %val.i94 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val.i94, align 4, !annotation !75
  %call.i95 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.1107, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val.i94, ptr noundef null) #5
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %41 = ptrtoint ptr %val.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i94, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.11, i32 noundef %nid.1107, ptr noundef nonnull @.str.8, i32 noundef %42) #5
  %call2.i96 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.1107, i32 noundef 3840, i32 noundef 11, i32 noundef 0, ptr noundef nonnull %val.i94, ptr noundef null) #5
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  %45 = ptrtoint ptr %val.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i94, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.12, i32 noundef %46) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i94) #5
  %inc20 = add nuw i32 %i.1106, 1
  %inc21 = add i32 %nid.1107, 1
  %47 = ptrtoint ptr %pcm.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcm.le, align 4
  %cmp17 = icmp ult i32 %inc20, %48
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.cond23.preheader_crit_edge

for.body18.for.cond23.preheader_crit_edge:        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond23.preheader

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.cond33.preheader:                             ; preds = %for.body28.for.cond33.preheader_crit_edge, %for.cond23.preheader.for.cond33.preheader_crit_edge
  %nid.2.lcssa = phi i32 [ %nid.1.lcssa, %for.cond23.preheader.for.cond33.preheader_crit_edge ], [ %inc31, %for.body28.for.cond33.preheader_crit_edge ]
  %49 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp37113.not = icmp eq i32 %50, 0
  br i1 %cmp37113.not, label %for.cond33.preheader.for.end42_crit_edge, label %for.cond33.preheader.for.body38_crit_edge

for.cond33.preheader.for.body38_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body38

for.cond33.preheader.for.end42_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond23.preheader.for.body28_crit_edge
  %nid.2111 = phi i32 [ %inc31, %for.body28.for.body28_crit_edge ], [ %nid.1.lcssa, %for.cond23.preheader.for.body28_crit_edge ]
  %i.2110 = phi i32 [ %inc30, %for.body28.for.body28_crit_edge ], [ 0, %for.cond23.preheader.for.body28_crit_edge ]
  call fastcc void @print_pin_widget(ptr noundef %buffer, ptr noundef %1, i32 noundef %nid.2111, i32 noundef 13, ptr noundef nonnull @.str.9)
  %inc30 = add nuw i32 %i.2110, 1
  %inc31 = add i32 %nid.2111, 1
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  %cmp27 = icmp ult i32 %inc30, %52
  br i1 %cmp27, label %for.body28.for.body28_crit_edge, label %for.body28.for.cond33.preheader_crit_edge

for.body28.for.cond33.preheader_crit_edge:        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond33.preheader

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.cond33.preheader.for.body38_crit_edge
  %nid.3115 = phi i32 [ %inc41, %for.body38.for.body38_crit_edge ], [ %nid.2.lcssa, %for.cond33.preheader.for.body38_crit_edge ]
  %i.3114 = phi i32 [ %inc40, %for.body38.for.body38_crit_edge ], [ 0, %for.cond33.preheader.for.body38_crit_edge ]
  call fastcc void @print_pin_widget(ptr noundef %buffer, ptr noundef %1, i32 noundef %nid.3115, i32 noundef 18, ptr noundef nonnull @.str.10)
  %inc40 = add nuw i32 %i.3114, 1
  %inc41 = add i32 %nid.3115, 1
  %53 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pin, align 4
  %cmp37 = icmp ult i32 %inc40, %54
  br i1 %cmp37, label %for.body38.for.body38_crit_edge, label %for.body38.for.end42_crit_edge

for.body38.for.end42_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38

for.end42:                                        ; preds = %for.body38.for.end42_crit_edge, %for.cond33.preheader.for.end42_crit_edge
  %nid.3.lcssa = phi i32 [ %nid.2.lcssa, %for.cond33.preheader.for.end42_crit_edge ], [ %inc41, %for.body38.for.end42_crit_edge ]
  %lola_caps = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 25
  %55 = ptrtoint ptr %lola_caps to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lola_caps, align 4
  %and = and i32 %56, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp43.not = icmp eq i32 %and, 0
  br i1 %cmp43.not, label %for.end42.if.end_crit_edge, label %if.then

for.end42.if.end_crit_edge:                       ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i97) #5
  %57 = ptrtoint ptr %val.i97 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %val.i97, align 4, !annotation !75
  %call.i98 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.3.lcssa, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val.i97, ptr noundef null) #5
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  %60 = ptrtoint ptr %val.i97 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val.i97, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.16, i32 noundef %nid.3.lcssa, i32 noundef %61) #5
  %62 = ptrtoint ptr %val.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i97, align 4
  %and.i = and i32 %63, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp68.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp68.not.i, label %if.then.print_clock_widget.exit_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.then.print_clock_widget.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %print_clock_widget.exit

if.end.i:                                         ; preds = %for.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %i.069.i = phi i32 [ %add45.i, %for.end.i.if.end.i_crit_edge ], [ 0, %if.then.if.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_ex.i) #5
  %64 = ptrtoint ptr %res_ex.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %res_ex.i, align 4, !annotation !75
  %call2.i99 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.3.lcssa, i32 noundef 4035, i32 noundef %i.069.i, i32 noundef 0, ptr noundef nonnull %val.i97, ptr noundef nonnull %res_ex.i) #5
  %65 = ptrtoint ptr %val.i97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val.i97, align 4
  %shr.i = lshr i32 %66, 16
  %67 = trunc i32 %shr.i to i16
  %conv5.i = and i16 %67, 4095
  %68 = ptrtoint ptr %res_ex.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %res_ex.i, align 4
  %70 = trunc i32 %69 to i16
  %conv8.i = and i16 %70, 4095
  %shr10.i = lshr i32 %69, 16
  %71 = trunc i32 %shr10.i to i16
  %conv12.i = and i16 %71, 4095
  %72 = and i32 %66, 255
  %73 = trunc i32 %66 to i16
  %conv.i = and i16 %73, 4095
  %74 = lshr i16 %conv.i, 8
  %conv21.i = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv.i)
  %cmp28.i = icmp ult i16 %conv.i, 256
  br i1 %cmp28.i, label %if.end.i.for.inc.sink.split.i_crit_edge, label %if.else.i

if.end.i.for.inc.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %74)
  %cmp33.i = icmp eq i16 %74, 5
  br i1 %cmp33.i, label %if.else.i.for.inc.sink.split.i_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.else.i.for.inc.sink.split.i_crit_edge, %if.end.i.for.inc.sink.split.i_crit_edge
  %name.0.ph.i = phi ptr [ @.str.17, %if.end.i.for.inc.sink.split.i_crit_edge ], [ @.str.18, %if.else.i.for.inc.sink.split.i_crit_edge ]
  %call31.i = call i32 @lola_sample_rate_convert(i32 noundef %72) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.else.i.for.inc.i_crit_edge
  %name.0.i = phi ptr [ @.str.19, %if.else.i.for.inc.i_crit_edge ], [ %name.0.ph.i, %for.inc.sink.split.i ]
  %freq.0.i = phi i32 [ %72, %if.else.i.for.inc.i_crit_edge ], [ %call31.i, %for.inc.sink.split.i ]
  %75 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %76, ptr noundef nonnull @.str.20, i32 noundef %i.069.i, i32 noundef %conv21.i, ptr noundef nonnull %name.0.i, i32 noundef %freq.0.i) #5
  %77 = and i32 %shr.i, 255
  %add.1.i = or i32 %i.069.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %and.i)
  %cmp25.not.1.i = icmp ult i32 %add.1.i, %and.i
  br i1 %cmp25.not.1.i, label %if.end.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.1.i:                                       ; preds = %for.inc.i
  %78 = lshr i16 %conv5.i, 8
  %conv21.1.i = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv5.i)
  %cmp28.1.i = icmp ult i16 %conv5.i, 256
  br i1 %cmp28.1.i, label %if.end.1.i.for.inc.1.sink.split.i_crit_edge, label %if.else.1.i

if.end.1.i.for.inc.1.sink.split.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

if.else.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %78)
  %cmp33.1.i = icmp eq i16 %78, 5
  br i1 %cmp33.1.i, label %if.else.1.i.for.inc.1.sink.split.i_crit_edge, label %if.else.1.i.for.inc.1.i_crit_edge

if.else.1.i.for.inc.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.else.1.i.for.inc.1.sink.split.i_crit_edge:     ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

for.inc.1.sink.split.i:                           ; preds = %if.else.1.i.for.inc.1.sink.split.i_crit_edge, %if.end.1.i.for.inc.1.sink.split.i_crit_edge
  %name.0.1.ph.i = phi ptr [ @.str.18, %if.else.1.i.for.inc.1.sink.split.i_crit_edge ], [ @.str.17, %if.end.1.i.for.inc.1.sink.split.i_crit_edge ]
  %call31.1.i = call i32 @lola_sample_rate_convert(i32 noundef %77) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.sink.split.i, %if.else.1.i.for.inc.1.i_crit_edge
  %name.0.1.i = phi ptr [ @.str.19, %if.else.1.i.for.inc.1.i_crit_edge ], [ %name.0.1.ph.i, %for.inc.1.sink.split.i ]
  %freq.0.1.i = phi i32 [ %77, %if.else.1.i.for.inc.1.i_crit_edge ], [ %call31.1.i, %for.inc.1.sink.split.i ]
  %79 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %80, ptr noundef nonnull @.str.20, i32 noundef %add.1.i, i32 noundef %conv21.1.i, ptr noundef nonnull %name.0.1.i, i32 noundef %freq.0.1.i) #5
  %81 = and i32 %69, 255
  %add.2.i = or i32 %i.069.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %and.i)
  %cmp25.not.2.i = icmp ult i32 %add.2.i, %and.i
  br i1 %cmp25.not.2.i, label %if.end.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %82 = lshr i16 %conv8.i, 8
  %conv21.2.i = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv8.i)
  %cmp28.2.i = icmp ult i16 %conv8.i, 256
  br i1 %cmp28.2.i, label %if.end.2.i.for.inc.2.sink.split.i_crit_edge, label %if.else.2.i

if.end.2.i.for.inc.2.sink.split.i_crit_edge:      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.sink.split.i

if.else.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %82)
  %cmp33.2.i = icmp eq i16 %82, 5
  br i1 %cmp33.2.i, label %if.else.2.i.for.inc.2.sink.split.i_crit_edge, label %if.else.2.i.for.inc.2.i_crit_edge

if.else.2.i.for.inc.2.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.else.2.i.for.inc.2.sink.split.i_crit_edge:     ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.sink.split.i

for.inc.2.sink.split.i:                           ; preds = %if.else.2.i.for.inc.2.sink.split.i_crit_edge, %if.end.2.i.for.inc.2.sink.split.i_crit_edge
  %name.0.2.ph.i = phi ptr [ @.str.18, %if.else.2.i.for.inc.2.sink.split.i_crit_edge ], [ @.str.17, %if.end.2.i.for.inc.2.sink.split.i_crit_edge ]
  %call31.2.i = call i32 @lola_sample_rate_convert(i32 noundef %81) #5
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.2.sink.split.i, %if.else.2.i.for.inc.2.i_crit_edge
  %name.0.2.i = phi ptr [ @.str.19, %if.else.2.i.for.inc.2.i_crit_edge ], [ %name.0.2.ph.i, %for.inc.2.sink.split.i ]
  %freq.0.2.i = phi i32 [ %81, %if.else.2.i.for.inc.2.i_crit_edge ], [ %call31.2.i, %for.inc.2.sink.split.i ]
  %83 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %84, ptr noundef nonnull @.str.20, i32 noundef %add.2.i, i32 noundef %conv21.2.i, ptr noundef nonnull %name.0.2.i, i32 noundef %freq.0.2.i) #5
  %85 = and i32 %shr10.i, 255
  %add.3.i = or i32 %i.069.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i, i32 %and.i)
  %cmp25.not.3.i = icmp ult i32 %add.3.i, %and.i
  br i1 %cmp25.not.3.i, label %if.end.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %86 = lshr i16 %conv12.i, 8
  %conv21.3.i = zext i16 %86 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv12.i)
  %cmp28.3.i = icmp ult i16 %conv12.i, 256
  br i1 %cmp28.3.i, label %if.end.3.i.for.inc.3.sink.split.i_crit_edge, label %if.else.3.i

if.end.3.i.for.inc.3.sink.split.i_crit_edge:      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.sink.split.i

if.else.3.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %86)
  %cmp33.3.i = icmp eq i16 %86, 5
  br i1 %cmp33.3.i, label %if.else.3.i.for.inc.3.sink.split.i_crit_edge, label %if.else.3.i.for.inc.3.i_crit_edge

if.else.3.i.for.inc.3.i_crit_edge:                ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.else.3.i.for.inc.3.sink.split.i_crit_edge:     ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.sink.split.i

for.inc.3.sink.split.i:                           ; preds = %if.else.3.i.for.inc.3.sink.split.i_crit_edge, %if.end.3.i.for.inc.3.sink.split.i_crit_edge
  %name.0.3.ph.i = phi ptr [ @.str.18, %if.else.3.i.for.inc.3.sink.split.i_crit_edge ], [ @.str.17, %if.end.3.i.for.inc.3.sink.split.i_crit_edge ]
  %call31.3.i = call i32 @lola_sample_rate_convert(i32 noundef %85) #5
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %for.inc.3.sink.split.i, %if.else.3.i.for.inc.3.i_crit_edge
  %name.0.3.i = phi ptr [ @.str.19, %if.else.3.i.for.inc.3.i_crit_edge ], [ %name.0.3.ph.i, %for.inc.3.sink.split.i ]
  %freq.0.3.i = phi i32 [ %85, %if.else.3.i.for.inc.3.i_crit_edge ], [ %call31.3.i, %for.inc.3.sink.split.i ]
  %87 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %88, ptr noundef nonnull @.str.20, i32 noundef %add.3.i, i32 noundef %conv21.3.i, ptr noundef nonnull %name.0.3.i, i32 noundef %freq.0.3.i) #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.3.i, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_ex.i) #5
  %add45.i = add nuw nsw i32 %i.069.i, 4
  %cmp.i = icmp ult i32 %add45.i, %and.i
  br i1 %cmp.i, label %for.end.i.if.end.i_crit_edge, label %for.end.i.print_clock_widget.exit_crit_edge

for.end.i.print_clock_widget.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %print_clock_widget.exit

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

print_clock_widget.exit:                          ; preds = %for.end.i.print_clock_widget.exit_crit_edge, %if.then.print_clock_widget.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i97) #5
  %inc44 = add i32 %nid.3.lcssa, 1
  br label %if.end

if.end:                                           ; preds = %print_clock_widget.exit, %for.end42.if.end_crit_edge
  %nid.4 = phi i32 [ %inc44, %print_clock_widget.exit ], [ %nid.3.lcssa, %for.end42.if.end_crit_edge ]
  %89 = ptrtoint ptr %lola_caps to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lola_caps, align 4
  %and46 = and i32 %90, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47.not = icmp eq i32 %and46, 0
  br i1 %cmp47.not, label %if.end.if.end50_crit_edge, label %if.then48

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i100) #5
  %91 = ptrtoint ptr %val.i100 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i100, align 4, !annotation !75
  %call.i101 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %nid.4, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val.i100, ptr noundef null) #5
  %92 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buffer, align 4
  %94 = ptrtoint ptr %val.i100 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i100, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %93, ptr noundef nonnull @.str.21, i32 noundef %nid.4, i32 noundef %95) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i100) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lola_proc_codec_rw_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
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
  %debug_res = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %debug_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_res, align 4
  %debug_res_ex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %debug_res_ex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_res_ex, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %5, i32 noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lola_proc_codec_rw_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %id = alloca i32, align 4
  %verb = alloca i32, align 4
  %data = alloca i32, align 4
  %extdata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #5
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %id, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %verb) #5
  %4 = ptrtoint ptr %verb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %verb, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extdata) #5
  %6 = ptrtoint ptr %extdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %extdata, align 4, !annotation !75
  %call7 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not8 = icmp eq i32 %call7, 0
  br i1 %tobool.not8, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %debug_res = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 30
  %debug_res_ex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.23, ptr noundef nonnull %id, ptr noundef nonnull %verb, ptr noundef nonnull %data, ptr noundef nonnull %extdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 4
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %9 = ptrtoint ptr %verb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %verb, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = ptrtoint ptr %extdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extdata, align 4
  %call4 = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %debug_res, ptr noundef %debug_res_ex) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %while.body.while.cond.backedge_crit_edge
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extdata) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %verb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lola_proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0165 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %i.0165
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !76
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %i.0165, i32 noundef %7) #5
  %add = add nuw nsw i32 %i.0165, 4
  %cmp = icmp ult i32 %i.0165, 60
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.25) #5
  %remap_addr13 = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr13, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !76
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %15) #5
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %18 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.1 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.1) #5, !srcloc !76
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %21) #5
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %24 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.2 = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.2) #5, !srcloc !76
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef 8, i32 noundef %27) #5
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %30 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.3 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.3) #5, !srcloc !76
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.26, i32 noundef 12, i32 noundef %33) #5
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  %36 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.4 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.4) #5, !srcloc !76
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.26, i32 noundef 16, i32 noundef %39) #5
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %42 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.5 = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.5) #5, !srcloc !76
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.26, i32 noundef 20, i32 noundef %45) #5
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %48 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.6 = getelementptr i8, ptr %49, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.6) #5, !srcloc !76
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.26, i32 noundef 24, i32 noundef %51) #5
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %54 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.7 = getelementptr i8, ptr %55, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.7) #5, !srcloc !76
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.26, i32 noundef 28, i32 noundef %57) #5
  %58 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer, align 4
  %60 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.8 = getelementptr i8, ptr %61, i32 32
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.8) #5, !srcloc !76
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %59, ptr noundef nonnull @.str.26, i32 noundef 32, i32 noundef %63) #5
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %66 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.9 = getelementptr i8, ptr %67, i32 36
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.9) #5, !srcloc !76
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.26, i32 noundef 36, i32 noundef %69) #5
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  %72 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.10 = getelementptr i8, ptr %73, i32 40
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.10) #5, !srcloc !76
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.26, i32 noundef 40, i32 noundef %75) #5
  %76 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer, align 4
  %78 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %remap_addr13, align 4
  %add.ptr14.11 = getelementptr i8, ptr %79, i32 44
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.11) #5, !srcloc !76
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.26, i32 noundef 44, i32 noundef %81) #5
  %82 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %83, ptr noundef nonnull @.str.25) #5
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  %86 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31 = getelementptr i8, ptr %87, i32 128
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !76
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.26, i32 noundef 128, i32 noundef %89) #5
  %90 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer, align 4
  %92 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.1 = getelementptr i8, ptr %93, i32 132
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.1) #5, !srcloc !76
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %91, ptr noundef nonnull @.str.26, i32 noundef 132, i32 noundef %95) #5
  %96 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %buffer, align 4
  %98 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.2 = getelementptr i8, ptr %99, i32 136
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.2) #5, !srcloc !76
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %97, ptr noundef nonnull @.str.26, i32 noundef 136, i32 noundef %101) #5
  %102 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buffer, align 4
  %104 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.3 = getelementptr i8, ptr %105, i32 140
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.3) #5, !srcloc !76
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %103, ptr noundef nonnull @.str.26, i32 noundef 140, i32 noundef %107) #5
  %108 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer, align 4
  %110 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.4 = getelementptr i8, ptr %111, i32 144
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.4) #5, !srcloc !76
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %109, ptr noundef nonnull @.str.26, i32 noundef 144, i32 noundef %113) #5
  %114 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buffer, align 4
  %116 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.5 = getelementptr i8, ptr %117, i32 148
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.5) #5, !srcloc !76
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %115, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %119) #5
  %120 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %buffer, align 4
  %122 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.6 = getelementptr i8, ptr %123, i32 152
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.6) #5, !srcloc !76
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %121, ptr noundef nonnull @.str.26, i32 noundef 152, i32 noundef %125) #5
  %126 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %buffer, align 4
  %128 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %remap_addr13, align 4
  %add.ptr31.7 = getelementptr i8, ptr %129, i32 156
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.7) #5, !srcloc !76
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %127, ptr noundef nonnull @.str.26, i32 noundef 156, i32 noundef %131) #5
  %132 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %133, ptr noundef nonnull @.str.25) #5
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.end
  %i.3168 = phi i32 [ 0, %for.end ], [ %inc, %for.body41.for.body41_crit_edge ]
  %134 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buffer, align 4
  %136 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %remap_addr13, align 4
  %add.ptr48 = getelementptr i8, ptr %137, i32 160
  %mul = mul nuw nsw i32 %i.3168, 24
  %add.ptr49 = getelementptr i8, ptr %add.ptr48, i32 %mul
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !76
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %135, ptr noundef nonnull @.str.27, i32 noundef %i.3168, i32 noundef %139) #5
  %140 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %buffer, align 4
  %142 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %remap_addr13, align 4
  %add.ptr62 = getelementptr i8, ptr %143, i32 164
  %add.ptr63 = getelementptr i8, ptr %add.ptr62, i32 %mul
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #5, !srcloc !76
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %141, ptr noundef nonnull @.str.28, i32 noundef %i.3168, i32 noundef %145) #5
  %146 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %buffer, align 4
  %148 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %remap_addr13, align 4
  %add.ptr75 = getelementptr i8, ptr %149, i32 168
  %add.ptr76 = getelementptr i8, ptr %add.ptr75, i32 %mul
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #5, !srcloc !76
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %147, ptr noundef nonnull @.str.29, i32 noundef %i.3168, i32 noundef %151) #5
  %152 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %buffer, align 4
  %154 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %remap_addr13, align 4
  %add.ptr88 = getelementptr i8, ptr %155, i32 172
  %add.ptr89 = getelementptr i8, ptr %add.ptr88, i32 %mul
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #5, !srcloc !76
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %153, ptr noundef nonnull @.str.30, i32 noundef %i.3168, i32 noundef %157) #5
  %158 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %buffer, align 4
  %160 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %remap_addr13, align 4
  %add.ptr101 = getelementptr i8, ptr %161, i32 176
  %add.ptr102 = getelementptr i8, ptr %add.ptr101, i32 %mul
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #5, !srcloc !76
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %159, ptr noundef nonnull @.str.31, i32 noundef %i.3168, i32 noundef %163) #5
  %164 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %buffer, align 4
  %166 = ptrtoint ptr %remap_addr13 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %remap_addr13, align 4
  %add.ptr114 = getelementptr i8, ptr %167, i32 180
  %add.ptr115 = getelementptr i8, ptr %add.ptr114, i32 %mul
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #5, !srcloc !76
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %165, ptr noundef nonnull @.str.32, i32 noundef %i.3168, i32 noundef %169) #5
  %inc = add nuw nsw i32 %i.3168, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end120, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41

for.end120:                                       ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_pin_widget(ptr nocapture noundef readonly %buffer, ptr noundef %chip, i32 noundef %nid, i32 noundef %ampcap, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !75
  %call = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #5
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %nid, ptr noundef %name, i32 noundef %4) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194816, i32 %6)
  %cmp = icmp eq i32 %6, 4194816
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef 3840, i32 noundef %ampcap, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #5
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %10) #5
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %.lobit = lshr i32 %14, 31
  %shr = lshr i32 %14, 24
  %and6 = and i32 %shr, 127
  %shr7 = lshr i32 %14, 12
  %and8 = and i32 %shr7, 1023
  %and9 = and i32 %14, 1023
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.14, i32 noundef %.lobit, i32 noundef %and6, i32 noundef %and8, i32 noundef %and9) #5
  %call10 = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef 4034, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #5
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_sample_rate_convert(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/lola/lola_proc.c", i32 198, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/lola/lola_proc.c", i32 199, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/lola/lola_proc.c", i32 202, i32 35}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/lola/lola_proc.c", i32 105, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/lola/lola_proc.c", i32 107, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/lola/lola_proc.c", i32 109, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/lola/lola_proc.c", i32 110, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/lola/lola_proc.c", i32 114, i32 41}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/lola/lola_proc.c", i32 116, i32 41}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/lola/lola_proc.c", i32 119, i32 6}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/lola/lola_proc.c", i32 122, i32 6}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/lola/lola_proc.c", i32 22, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/lola/lola_proc.c", i32 24, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/lola/lola_proc.c", i32 38, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/lola/lola_proc.c", i32 39, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/lola/lola_proc.c", i32 45, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/lola/lola_proc.c", i32 55, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/lola/lola_proc.c", i32 74, i32 12}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/lola/lola_proc.c", i32 77, i32 12}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/lola/lola_proc.c", i32 80, i32 12}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/lola/lola_proc.c", i32 82, i32 4}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/lola/lola_proc.c", i32 94, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/lola/lola_proc.c", i32 153, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/lola/lola_proc.c", i32 141, i32 20}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/lola/lola_proc.c", i32 166, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/lola/lola_proc.c", i32 169, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/lola/lola_proc.c", i32 171, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/lola/lola_proc.c", i32 181, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/lola/lola_proc.c", i32 183, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/lola/lola_proc.c", i32 185, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/lola/lola_proc.c", i32 187, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/lola/lola_proc.c", i32 189, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/lola/lola_proc.c", i32 191, i32 3}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 1250721}
!77 = !{i64 2153984350}
!78 = !{i64 2153985089}
!79 = !{i64 2153985828}
!80 = !{i64 2153986891}
!81 = !{i64 2153987887}
!82 = !{i64 2153988880}
!83 = !{i64 2153989873}
!84 = !{i64 2153990869}
!85 = !{i64 2153991865}
