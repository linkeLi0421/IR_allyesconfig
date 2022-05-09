; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_dtmf.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_dtmf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsp = type { %struct.list_head, %struct.mISDNchannel, ptr, [64 x i8], i32, %struct.dsp_echo, i32, i32, i32, %struct.dsp_tone, %struct.dsp_dtmf, i32, i32, %struct.work_struct, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [32768 x i8], [32768 x i8], i32, i32, i32, i32, %struct.dsp_features, i32, i32, i32, i32, i32, i32, i32, i32, [18 x i32], [1024 x i32], i32, [9 x i8], [9 x i8], i32, i32, [16 x i8], [9 x i8], i32, %struct.dsp_pipeline }
%struct.list_head = type { ptr, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsp_echo = type { i32, i32 }
%struct.dsp_tone = type { i32, i32, i32, ptr, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsp_dtmf = type { i32, i32, i32, i32, i32, [102 x i16], i8, i8, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@dsp_debug = external dso_local local_unnamed_addr global i32, align 4
@dsp_dtmf_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s dsp %s cannot do hardware DTMF, because tx_volume is changed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsp_dtmf_hardware\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/isdn/mISDN/dsp_dtmf.c\00", [34 x i8] zeroinitializer }, align 32
@dsp_dtmf_hardware._entry_ptr = internal global ptr @dsp_dtmf_hardware._entry, section ".printk_index", align 4
@dsp_dtmf_hardware._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s dsp %s cannot do hardware DTMF, because rx_volume is changed\0A\00", [61 x i8] zeroinitializer }, align 32
@dsp_dtmf_hardware._entry_ptr.5 = internal global ptr @dsp_dtmf_hardware._entry.3, section ".printk_index", align 4
@dsp_dtmf_hardware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s dsp %s cannot do hardware DTMF, because encryption is enabled\0A\00", [60 x i8] zeroinitializer }, align 32
@dsp_dtmf_hardware._entry_ptr.8 = internal global ptr @dsp_dtmf_hardware._entry.6, section ".printk_index", align 4
@dsp_dtmf_hardware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s dsp %s cannot do hardware DTMF, because pipeline exists.\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_dtmf_hardware._entry_ptr.11 = internal global ptr @dsp_dtmf_hardware._entry.9, section ".printk_index", align 4
@dsp_audio_law_to_s32 = external dso_local local_unnamed_addr global ptr, align 4
@dsp_dtmf_goertzel_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: coefficients have invalid size. (is=%d < must=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsp_dtmf_goertzel_decode\00", [39 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr = internal global ptr @dsp_dtmf_goertzel_decode._entry, section ".printk_index", align 4
@dsp_dtmf_goertzel_decode._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014DTMF-Detection overflow\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr.16 = internal global ptr @dsp_dtmf_goertzel_decode._entry.14, section ".printk_index", align 4
@cos2pik = internal constant { [8 x i64], [32 x i8] } { [8 x i64] [i64 55960, i64 53912, i64 51402, i64 48438, i64 38146, i64 32650, i64 26170, i64 18630], [32 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr.18 = internal global ptr @dsp_dtmf_goertzel_decode._entry.17, section ".printk_index", align 4
@dsp_dtmf_goertzel_decode._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017tresh(%d) too small set tresh/100 to 1\0A\00", [54 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr.21 = internal global ptr @dsp_dtmf_goertzel_decode._entry.19, section ".printk_index", align 4
@dsp_dtmf_goertzel_decode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017a %3d %3d %3d %3d %3d %3d %3d %3d tr:%3d r %3d %3d %3d %3d %3d %3d %3d %3d\0A\00", [50 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr.24 = internal global ptr @dsp_dtmf_goertzel_decode._entry.22, section ".printk_index", align 4
@dtmf_matrix = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"123A", [4 x i8] c"456B", [4 x i8] c"789C", [4 x i8] c"*0#D"], [16 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017DTMF what: %c\0A\00", [47 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr.27 = internal global ptr @dsp_dtmf_goertzel_decode._entry.25, section ".printk_index", align 4
@dsp_dtmf_goertzel_decode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017DTMF digit: %c\0A\00", [46 x i8] zeroinitializer }, align 32
@dsp_dtmf_goertzel_decode._entry_ptr.30 = internal global ptr @dsp_dtmf_goertzel_decode._entry.28, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 63, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 70, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 78, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 86, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 152, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 163, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"cos2pik\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 22, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 198, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 230, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 234, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"dtmf_matrix\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 29, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 285, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [33 x i8] c"../drivers/isdn/mISDN/dsp_dtmf.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 296, i32 6 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @dsp_dtmf_goertzel_decode._entry, ptr @dsp_dtmf_goertzel_decode._entry.14, ptr @dsp_dtmf_goertzel_decode._entry.17, ptr @dsp_dtmf_goertzel_decode._entry.19, ptr @dsp_dtmf_goertzel_decode._entry.22, ptr @dsp_dtmf_goertzel_decode._entry.25, ptr @dsp_dtmf_goertzel_decode._entry.28, ptr @dsp_dtmf_goertzel_decode._entry_ptr, ptr @dsp_dtmf_goertzel_decode._entry_ptr.16, ptr @dsp_dtmf_goertzel_decode._entry_ptr.18, ptr @dsp_dtmf_goertzel_decode._entry_ptr.21, ptr @dsp_dtmf_goertzel_decode._entry_ptr.24, ptr @dsp_dtmf_goertzel_decode._entry_ptr.27, ptr @dsp_dtmf_goertzel_decode._entry_ptr.30, ptr @dsp_dtmf_hardware._entry, ptr @dsp_dtmf_hardware._entry.3, ptr @dsp_dtmf_hardware._entry.6, ptr @dsp_dtmf_hardware._entry.9, ptr @dsp_dtmf_hardware._entry_ptr, ptr @dsp_dtmf_hardware._entry_ptr.11, ptr @dsp_dtmf_hardware._entry_ptr.5, ptr @dsp_dtmf_hardware._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @cos2pik, ptr @.str.20, ptr @.str.23, ptr @dtmf_matrix, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_hardware._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_hardware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_hardware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cos2pik to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtmf_matrix to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_dtmf_goertzel_decode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dsp_dtmf_goertzel_init(ptr nocapture noundef writeonly %dsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size, align 4
  %lastwhat = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 6
  %1 = ptrtoint ptr %lastwhat to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %lastwhat, align 4
  %lastdigit = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 7
  %2 = ptrtoint ptr %lastdigit to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %lastdigit, align 1
  %count = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 8
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_dtmf_hardware(ptr noundef %dsp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtmf = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10
  %0 = ptrtoint ptr %dtmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtmf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hfc_dtmf = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 33, i32 1
  %2 = ptrtoint ptr %hfc_dtmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfc_dtmf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp ne i32 %3, 0
  %spec.select = zext i1 %tobool1.not to i32
  %tx_volume = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 11
  %4 = ptrtoint ptr %tx_volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %6 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %do.end

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %hardware.1 = phi i32 [ %spec.select, %if.end.if.end9_crit_edge ], [ 0, %do.end ], [ 0, %if.then5.if.end9_crit_edge ]
  %rx_volume = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 12
  %7 = ptrtoint ptr %rx_volume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end9.if.end23_crit_edge, label %if.then11

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then11:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %9 = load i32, ptr @dsp_debug, align 4
  %and12 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.end23_crit_edge, label %do.end17

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %name19 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %name19) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.then11.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %hardware.2 = phi i32 [ %hardware.1, %if.end9.if.end23_crit_edge ], [ 0, %do.end17 ], [ 0, %if.then11.if.end23_crit_edge ]
  %bf_enable = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 41
  %10 = ptrtoint ptr %bf_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bf_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool24.not = icmp eq i32 %11, 0
  br i1 %tobool24.not, label %if.end23.if.end37_crit_edge, label %if.then25

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then25:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %12 = load i32, ptr @dsp_debug, align 4
  %and26 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then25.if.end37_crit_edge, label %do.end31

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %name33 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %name33) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %if.then25.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %hardware.3 = phi i32 [ %hardware.2, %if.end23.if.end37_crit_edge ], [ 0, %do.end31 ], [ 0, %if.then25.if.end37_crit_edge ]
  %inuse = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 52, i32 2
  %13 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool38.not = icmp eq i32 %14, 0
  br i1 %tobool38.not, label %if.end37.if.end51_crit_edge, label %if.then39

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then39:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %15 = load i32, ptr @dsp_debug, align 4
  %and40 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then39.if.end51_crit_edge, label %do.end45

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %name47 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef %name47) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.then39.if.end51_crit_edge, %if.end37.if.end51_crit_edge
  %hardware.4 = phi i32 [ %hardware.3, %if.end37.if.end51_crit_edge ], [ 0, %do.end45 ], [ 0, %if.then39.if.end51_crit_edge ]
  %hardware53 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %hardware53 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %hardware.4, ptr %hardware53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hardware.4)
  %tobool54.not = icmp eq i32 %hardware.4, 0
  %lnot.ext = zext i1 %tobool54.not to i32
  %software = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %software to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lnot.ext, ptr %software, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dsp_dtmf_goertzel_decode(ptr noundef %dsp, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %fmt) local_unnamed_addr #1 align 64 {
entry:
  %result = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result) #6
  %0 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %result, i32 0, i32 7
  %digits = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 9
  %7 = call ptr @memset(ptr %result, i32 255, i32 32)
  %8 = ptrtoint ptr %digits to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %digits, align 4
  %size2 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 4
  %buffer = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fmt)
  %switch = icmp ult i32 %fmt, 2
  %treshold = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 1
  %lastwhat = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 6
  %count = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 8
  %lastdigit = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 7
  br label %again

again:                                            ; preds = %if.end320, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %len.addr.2, %if.end320 ]
  %data.addr.0 = phi ptr [ %data, %entry ], [ %data.addr.2, %if.end320 ]
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %again
  %9 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %10)
  %cmp479 = icmp slt i32 %10, 102
  %cmp.not480 = xor i1 %cmp479, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool.not481 = icmp eq i32 %len.addr.0, 0
  %or.cond482 = select i1 %cmp.not480, i1 true, i1 %tobool.not481
  br i1 %or.cond482, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.while.body_crit_edge

sw.bb.while.body_crit_edge:                       ; preds = %sw.bb
  br label %while.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb.while.body_crit_edge
  %data.addr.1485 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %data.addr.0, %sw.bb.while.body_crit_edge ]
  %len.addr.1484 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len.addr.0, %sw.bb.while.body_crit_edge ]
  %size.0483 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %10, %sw.bb.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  %11 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  %incdec.ptr = getelementptr i8, ptr %data.addr.1485, i32 1
  %12 = ptrtoint ptr %data.addr.1485 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.addr.1485, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx4 = getelementptr i32, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %conv = trunc i32 %15 to i16
  %inc = add i32 %size.0483, 1
  %arrayidx5 = getelementptr i16, ptr %buffer, i32 %size.0483
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %arrayidx5, align 2
  %dec = add i32 %len.addr.1484, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %inc)
  %cmp = icmp slt i32 %inc, 102
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len.addr.0)
  %cmp7 = icmp slt i32 %len.addr.0, 64
  br i1 %cmp7, label %if.then, label %sw.default.for.body_crit_edge

sw.default.for.body_crit_edge:                    ; preds = %sw.default
  br label %for.body

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp9 = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp9, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %len.addr.0, i32 noundef 64) #9
  br label %cleanup

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %sw.default.for.body_crit_edge
  %hfccoeff.0478 = phi ptr [ %incdec.ptr19, %if.end37.for.body_crit_edge ], [ %data.addr.0, %sw.default.for.body_crit_edge ]
  %k.0477 = phi i32 [ %inc49, %if.end37.for.body_crit_edge ], [ 0, %sw.default.for.body_crit_edge ]
  %incdec.ptr18 = getelementptr i32, ptr %hfccoeff.0478, i32 1
  %17 = ptrtoint ptr %hfccoeff.0478 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hfccoeff.0478, align 4
  %shr = ashr i32 %18, 4
  %incdec.ptr19 = getelementptr i32, ptr %hfccoeff.0478, i32 2
  %19 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr18, align 4
  %shr20 = ashr i32 %20, 4
  %21 = add i32 %20, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048560, i32 %21)
  %22 = icmp ult i32 %21, -1048560
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %18)
  %cmp26 = icmp sgt i32 %18, 524287
  %or.cond452 = select i1 %22, i1 true, i1 %cmp26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524272, i32 %18)
  %cmp29 = icmp slt i32 %18, -524272
  %or.cond453 = select i1 %or.cond452, i1 true, i1 %cmp29
  br i1 %or.cond453, label %do.end34, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end34:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %for.body.if.end37_crit_edge
  %mul = mul i32 %shr20, %shr20
  %arrayidx39 = getelementptr [8 x i64], ptr @cos2pik, i32 0, i32 %k.0477
  %23 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx39, align 8
  %conv40 = sext i32 %shr20 to i64
  %mul41 = mul i64 %24, %conv40
  %shr42 = lshr i64 %mul41, 15
  %25 = trunc i64 %shr42 to i32
  %reass.add = sub i32 %shr, %25
  %reass.mul = mul i32 %reass.add, %shr
  %conv47 = add i32 %reass.mul, %mul
  %arrayidx48 = getelementptr [8 x i32], ptr %result, i32 0, i32 %k.0477
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv47, ptr %arrayidx48, align 4
  %inc49 = add nuw nsw i32 %k.0477, 1
  %exitcond.not = icmp eq i32 %inc49, 8
  br i1 %exitcond.not, label %for.end, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 64
  %sub50 = add i32 %len.addr.0, -64
  br label %coefficients

sw.epilog:                                        ; preds = %while.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %size.0.lcssa = phi i32 [ %10, %sw.bb.sw.epilog_crit_edge ], [ %inc, %while.body.sw.epilog_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %sw.bb.sw.epilog_crit_edge ], [ %dec, %while.body.sw.epilog_crit_edge ]
  %data.addr.1.lcssa = phi ptr [ %data.addr.0, %sw.bb.sw.epilog_crit_edge ], [ %incdec.ptr, %while.body.sw.epilog_crit_edge ]
  %cmp.lcssa = phi i1 [ %cmp479, %sw.bb.sw.epilog_crit_edge ], [ %cmp, %while.body.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %size.0.lcssa, ptr %size2, align 4
  br i1 %cmp.lcssa, label %sw.epilog.cleanup_crit_edge, label %if.end59

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %sw.epilog
  %28 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %size2, align 4
  br label %for.body65

for.body65:                                       ; preds = %if.end105.for.body65_crit_edge, %if.end59
  %k.1493 = phi i32 [ 0, %if.end59 ], [ %inc121, %if.end105.for.body65_crit_edge ]
  %arrayidx69 = getelementptr [8 x i64], ptr @cos2pik, i32 0, i32 %k.1493
  %29 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx69, align 8
  br label %for.body73

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.body65
  %buf.0492 = phi ptr [ %buffer, %for.body65 ], [ %incdec.ptr79, %for.body73.for.body73_crit_edge ]
  %sk.0491 = phi i32 [ 0, %for.body65 ], [ %conv82, %for.body73.for.body73_crit_edge ]
  %n.0490 = phi i32 [ 0, %for.body65 ], [ %inc84, %for.body73.for.body73_crit_edge ]
  %sk2.0489 = phi i32 [ 0, %for.body65 ], [ %sk.0491, %for.body73.for.body73_crit_edge ]
  %conv74 = sext i32 %sk.0491 to i64
  %mul75 = mul i64 %30, %conv74
  %31 = lshr i64 %mul75, 15
  %conv77447 = zext i32 %sk2.0489 to i64
  %sub78 = sub nsw i64 %31, %conv77447
  %incdec.ptr79 = getelementptr i16, ptr %buf.0492, i32 1
  %32 = ptrtoint ptr %buf.0492 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %buf.0492, align 2
  %conv80 = sext i16 %33 to i64
  %add81 = add nsw i64 %sub78, %conv80
  %conv82 = trunc i64 %add81 to i32
  %inc84 = add nuw nsw i32 %n.0490, 1
  %exitcond502.not = icmp eq i32 %inc84, 102
  br i1 %exitcond502.not, label %for.end85, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body73

for.end85:                                        ; preds = %for.body73
  %conv82.le = trunc i64 %add81 to i32
  %shr86 = ashr i32 %conv82.le, 8
  %shr87 = ashr i32 %sk.0491, 8
  %34 = add i32 %conv82.le, -8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16776960, i32 %34)
  %35 = icmp ult i32 %34, -16776960
  %36 = add i32 %sk.0491, -8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16776960, i32 %36)
  %37 = icmp ult i32 %36, -16776960
  %38 = or i1 %37, %35
  br i1 %38, label %do.end102, label %for.end85.if.end105_crit_edge

for.end85.if.end105_crit_edge:                    ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

do.end102:                                        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %if.end105

if.end105:                                        ; preds = %do.end102, %for.end85.if.end105_crit_edge
  %mul106 = mul i32 %shr86, %shr86
  %conv109 = sext i32 %shr86 to i64
  %mul110 = mul i64 %30, %conv109
  %shr111 = lshr i64 %mul110, 15
  %39 = trunc i64 %shr111 to i32
  %reass.add472 = sub i32 %shr87, %39
  %reass.mul473 = mul i32 %reass.add472, %shr87
  %conv118 = add i32 %reass.mul473, %mul106
  %arrayidx119 = getelementptr [8 x i32], ptr %result, i32 0, i32 %k.1493
  %40 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv118, ptr %arrayidx119, align 4
  %inc121 = add nuw nsw i32 %k.1493, 1
  %exitcond503.not = icmp eq i32 %inc121, 8
  br i1 %exitcond503.not, label %if.end105.coefficients_crit_edge, label %if.end105.for.body65_crit_edge

if.end105.for.body65_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body65

if.end105.coefficients_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %coefficients

coefficients:                                     ; preds = %if.end105.coefficients_crit_edge, %for.end
  %len.addr.2 = phi i32 [ %sub50, %for.end ], [ %len.addr.1.lcssa, %if.end105.coefficients_crit_edge ]
  %data.addr.2 = phi ptr [ %add.ptr, %for.end ], [ %data.addr.1.lcssa, %if.end105.coefficients_crit_edge ]
  %41 = ptrtoint ptr %treshold to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %treshold, align 4
  %43 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %result, align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0)
  %46 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %42)
  %cmp135 = icmp sgt i32 %45, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp139 = icmp sgt i32 %44, 0
  %or.cond457 = select i1 %cmp135, i1 %cmp139, i1 false
  %tresh.1 = select i1 %or.cond457, i32 %45, i32 0
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %0, align 4
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %42)
  %cmp135.1 = icmp sgt i32 %49, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %tresh.1)
  %cmp139.1 = icmp ugt i32 %49, %tresh.1
  %or.cond457.1 = select i1 %cmp135.1, i1 %cmp139.1, i1 false
  %tresh.1.1 = select i1 %or.cond457.1, i32 %49, i32 %tresh.1
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 4
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0)
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %42)
  %cmp135.2 = icmp sgt i32 %53, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %tresh.1.1)
  %cmp139.2 = icmp ugt i32 %53, %tresh.1.1
  %or.cond457.2 = select i1 %cmp135.2, i1 %cmp139.2, i1 false
  %tresh.1.2 = select i1 %or.cond457.2, i32 %53, i32 %tresh.1.1
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %42)
  %cmp135.3 = icmp sgt i32 %57, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %tresh.1.2)
  %cmp139.3 = icmp ugt i32 %57, %tresh.1.2
  %or.cond457.3 = select i1 %cmp135.3, i1 %cmp139.3, i1 false
  %tresh.1.3 = select i1 %or.cond457.3, i32 %57, i32 %tresh.1.2
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %3, align 4
  %61 = tail call i32 @llvm.smax.i32(i32 %60, i32 0)
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %42)
  %cmp135.4 = icmp sgt i32 %61, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %tresh.1.3)
  %cmp139.4 = icmp ugt i32 %61, %tresh.1.3
  %or.cond457.4 = select i1 %cmp135.4, i1 %cmp139.4, i1 false
  %tresh.1.4 = select i1 %or.cond457.4, i32 %61, i32 %tresh.1.3
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %4, align 4
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0)
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %42)
  %cmp135.5 = icmp sgt i32 %65, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %tresh.1.4)
  %cmp139.5 = icmp ugt i32 %65, %tresh.1.4
  %or.cond457.5 = select i1 %cmp135.5, i1 %cmp139.5, i1 false
  %tresh.1.5 = select i1 %or.cond457.5, i32 %65, i32 %tresh.1.4
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %5, align 4
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 0)
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %42)
  %cmp135.6 = icmp sgt i32 %69, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %tresh.1.5)
  %cmp139.6 = icmp ugt i32 %69, %tresh.1.5
  %or.cond457.6 = select i1 %cmp135.6, i1 %cmp139.6, i1 false
  %tresh.1.6 = select i1 %or.cond457.6, i32 %69, i32 %tresh.1.5
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %6, align 4
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 0)
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %42)
  %cmp135.7 = icmp sgt i32 %73, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %tresh.1.6)
  %cmp139.7 = icmp ugt i32 %73, %tresh.1.6
  %or.cond457.7 = select i1 %cmp135.7, i1 %cmp139.7, i1 false
  %tresh.1.7 = select i1 %or.cond457.7, i32 %73, i32 %tresh.1.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tresh.1.7)
  %cmp148 = icmp eq i32 %tresh.1.7, 0
  br i1 %cmp148, label %coefficients.if.end256_crit_edge, label %if.end151

coefficients.if.end256_crit_edge:                 ; preds = %coefficients
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

if.end151:                                        ; preds = %coefficients
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %75 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %75, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool152.not = icmp eq i32 %and, 0
  br i1 %tobool152.not, label %if.end151.if.end201_crit_edge, label %if.then153

if.end151.if.end201_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

if.then153:                                       ; preds = %if.end151
  %div509 = udiv i32 %tresh.1.7, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %tresh.1.7)
  %76 = icmp ult i32 %tresh.1.7, 100
  br i1 %76, label %if.then156, label %if.then153.do.end165_crit_edge

if.then153.do.end165_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

if.then156:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %tresh.1.7) #9
  br label %do.end165

do.end165:                                        ; preds = %if.then156, %if.then153.do.end165_crit_edge
  %tresh_100.0 = phi i32 [ 1, %if.then156 ], [ %div509, %if.then153.do.end165_crit_edge ]
  %77 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %result, align 4
  %div168 = sdiv i32 %78, 10000
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %0, align 4
  %div170 = sdiv i32 %80, 10000
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %1, align 4
  %div172 = sdiv i32 %82, 10000
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %2, align 4
  %div174 = sdiv i32 %84, 10000
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  %div176 = sdiv i32 %86, 10000
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %4, align 4
  %div178 = sdiv i32 %88, 10000
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %5, align 4
  %div180 = sdiv i32 %90, 10000
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %6, align 4
  %div182 = sdiv i32 %92, 10000
  %div183510 = udiv i32 %tresh.1.7, 10000
  %div185 = sdiv i32 %78, %tresh_100.0
  %div187 = sdiv i32 %80, %tresh_100.0
  %div189 = sdiv i32 %82, %tresh_100.0
  %div191 = sdiv i32 %84, %tresh_100.0
  %div193 = sdiv i32 %86, %tresh_100.0
  %div195 = sdiv i32 %88, %tresh_100.0
  %div197 = sdiv i32 %90, %tresh_100.0
  %div199 = sdiv i32 %92, %tresh_100.0
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %div168, i32 noundef %div170, i32 noundef %div172, i32 noundef %div174, i32 noundef %div176, i32 noundef %div178, i32 noundef %div180, i32 noundef %div182, i32 noundef %div183510, i32 noundef %div185, i32 noundef %div187, i32 noundef %div189, i32 noundef %div191, i32 noundef %div193, i32 noundef %div195, i32 noundef %div197, i32 noundef %div199) #9
  br label %if.end201

if.end201:                                        ; preds = %do.end165, %if.end151.if.end201_crit_edge
  %shr202507 = lshr i32 %tresh.1.7, 3
  %shr203508 = lshr i32 %tresh.1.7, 2
  %93 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %shr202507)
  %cmp209 = icmp slt i32 %94, %shr202507
  br i1 %cmp209, label %if.end201.for.inc233_crit_edge, label %if.end212

if.end201.for.inc233_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233

if.end212:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %shr203508)
  %cmp214 = icmp slt i32 %94, %shr203508
  br i1 %cmp214, label %if.end212.if.end256_crit_edge, label %if.end212.for.inc233_crit_edge

if.end212.for.inc233_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233

if.end212.if.end256_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

for.inc233:                                       ; preds = %if.end212.for.inc233_crit_edge, %if.end201.for.inc233_crit_edge
  %lowgroup.1 = phi i32 [ -1, %if.end201.for.inc233_crit_edge ], [ 0, %if.end212.for.inc233_crit_edge ]
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %shr202507)
  %cmp209.1 = icmp slt i32 %96, %shr202507
  br i1 %cmp209.1, label %for.inc233.for.inc233.1_crit_edge, label %if.end212.1

for.inc233.for.inc233.1_crit_edge:                ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.1

if.end212.1:                                      ; preds = %for.inc233
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %shr203508)
  %cmp214.1 = icmp sge i32 %96, %shr203508
  %97 = and i1 %cmp209, %cmp214.1
  br i1 %97, label %if.end212.1.for.inc233.1_crit_edge, label %if.end212.1.if.end256_crit_edge

if.end212.1.if.end256_crit_edge:                  ; preds = %if.end212.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

if.end212.1.for.inc233.1_crit_edge:               ; preds = %if.end212.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.1

for.inc233.1:                                     ; preds = %if.end212.1.for.inc233.1_crit_edge, %for.inc233.for.inc233.1_crit_edge
  %lowgroup.1.1 = phi i32 [ %lowgroup.1, %for.inc233.for.inc233.1_crit_edge ], [ 1, %if.end212.1.for.inc233.1_crit_edge ]
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %shr202507)
  %cmp209.2 = icmp slt i32 %99, %shr202507
  br i1 %cmp209.2, label %for.inc233.1.for.inc233.2_crit_edge, label %if.end212.2

for.inc233.1.for.inc233.2_crit_edge:              ; preds = %for.inc233.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.2

if.end212.2:                                      ; preds = %for.inc233.1
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %shr203508)
  %cmp214.2 = icmp slt i32 %99, %shr203508
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowgroup.1.1)
  %cmp221.2 = icmp sgt i32 %lowgroup.1.1, -1
  %or.cond513 = or i1 %cmp214.2, %cmp221.2
  br i1 %or.cond513, label %if.end212.2.if.end256_crit_edge, label %if.end212.2.for.inc233.2_crit_edge

if.end212.2.for.inc233.2_crit_edge:               ; preds = %if.end212.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.2

if.end212.2.if.end256_crit_edge:                  ; preds = %if.end212.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

for.inc233.2:                                     ; preds = %if.end212.2.for.inc233.2_crit_edge, %for.inc233.1.for.inc233.2_crit_edge
  %lowgroup.1.2 = phi i32 [ %lowgroup.1.1, %for.inc233.1.for.inc233.2_crit_edge ], [ 2, %if.end212.2.for.inc233.2_crit_edge ]
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %shr202507)
  %cmp209.3 = icmp slt i32 %101, %shr202507
  br i1 %cmp209.3, label %for.inc233.2.for.inc233.3_crit_edge, label %if.end212.3

for.inc233.2.for.inc233.3_crit_edge:              ; preds = %for.inc233.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.3

if.end212.3:                                      ; preds = %for.inc233.2
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %shr203508)
  %cmp214.3 = icmp slt i32 %101, %shr203508
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowgroup.1.2)
  %cmp221.3 = icmp sgt i32 %lowgroup.1.2, -1
  %or.cond514 = or i1 %cmp214.3, %cmp221.3
  br i1 %or.cond514, label %if.end212.3.if.end256_crit_edge, label %if.end212.3.for.inc233.3_crit_edge

if.end212.3.for.inc233.3_crit_edge:               ; preds = %if.end212.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.3

if.end212.3.if.end256_crit_edge:                  ; preds = %if.end212.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

for.inc233.3:                                     ; preds = %if.end212.3.for.inc233.3_crit_edge, %for.inc233.2.for.inc233.3_crit_edge
  %lowgroup.1.3 = phi i32 [ %lowgroup.1.2, %for.inc233.2.for.inc233.3_crit_edge ], [ 3, %if.end212.3.for.inc233.3_crit_edge ]
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %shr202507)
  %cmp209.4 = icmp slt i32 %103, %shr202507
  br i1 %cmp209.4, label %for.inc233.3.for.inc233.4_crit_edge, label %if.end212.4

for.inc233.3.for.inc233.4_crit_edge:              ; preds = %for.inc233.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.4

if.end212.4:                                      ; preds = %for.inc233.3
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %shr203508)
  %cmp214.4 = icmp slt i32 %103, %shr203508
  br i1 %cmp214.4, label %if.end212.4.if.end256_crit_edge, label %if.end212.4.for.inc233.4_crit_edge

if.end212.4.for.inc233.4_crit_edge:               ; preds = %if.end212.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.4

if.end212.4.if.end256_crit_edge:                  ; preds = %if.end212.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

for.inc233.4:                                     ; preds = %if.end212.4.for.inc233.4_crit_edge, %for.inc233.3.for.inc233.4_crit_edge
  %highgroup.1.4 = phi i32 [ -1, %for.inc233.3.for.inc233.4_crit_edge ], [ 0, %if.end212.4.for.inc233.4_crit_edge ]
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %shr202507)
  %cmp209.5 = icmp slt i32 %105, %shr202507
  br i1 %cmp209.5, label %for.inc233.4.for.inc233.5_crit_edge, label %if.end212.5

for.inc233.4.for.inc233.5_crit_edge:              ; preds = %for.inc233.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.5

if.end212.5:                                      ; preds = %for.inc233.4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %shr203508)
  %cmp214.5 = icmp sge i32 %105, %shr203508
  %106 = and i1 %cmp209.4, %cmp214.5
  br i1 %106, label %if.end212.5.for.inc233.5_crit_edge, label %if.end212.5.if.end256_crit_edge

if.end212.5.if.end256_crit_edge:                  ; preds = %if.end212.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

if.end212.5.for.inc233.5_crit_edge:               ; preds = %if.end212.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.5

for.inc233.5:                                     ; preds = %if.end212.5.for.inc233.5_crit_edge, %for.inc233.4.for.inc233.5_crit_edge
  %highgroup.1.5 = phi i32 [ %highgroup.1.4, %for.inc233.4.for.inc233.5_crit_edge ], [ 1, %if.end212.5.for.inc233.5_crit_edge ]
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %shr202507)
  %cmp209.6 = icmp slt i32 %108, %shr202507
  br i1 %cmp209.6, label %for.inc233.5.for.inc233.6_crit_edge, label %if.end212.6

for.inc233.5.for.inc233.6_crit_edge:              ; preds = %for.inc233.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.6

if.end212.6:                                      ; preds = %for.inc233.5
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %shr203508)
  %cmp214.6 = icmp slt i32 %108, %shr203508
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %highgroup.1.5)
  %cmp226.6 = icmp sgt i32 %highgroup.1.5, -1
  %or.cond516 = or i1 %cmp214.6, %cmp226.6
  br i1 %or.cond516, label %if.end212.6.if.end256_crit_edge, label %if.end212.6.for.inc233.6_crit_edge

if.end212.6.for.inc233.6_crit_edge:               ; preds = %if.end212.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.6

if.end212.6.if.end256_crit_edge:                  ; preds = %if.end212.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

for.inc233.6:                                     ; preds = %if.end212.6.for.inc233.6_crit_edge, %for.inc233.5.for.inc233.6_crit_edge
  %highgroup.1.6 = phi i32 [ %highgroup.1.5, %for.inc233.5.for.inc233.6_crit_edge ], [ 2, %if.end212.6.for.inc233.6_crit_edge ]
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %shr202507)
  %cmp209.7 = icmp slt i32 %110, %shr202507
  br i1 %cmp209.7, label %for.inc233.6.for.inc233.7_crit_edge, label %if.end212.7

for.inc233.6.for.inc233.7_crit_edge:              ; preds = %for.inc233.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.7

if.end212.7:                                      ; preds = %for.inc233.6
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %shr203508)
  %cmp214.7 = icmp slt i32 %110, %shr203508
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %highgroup.1.6)
  %cmp226.7 = icmp sgt i32 %highgroup.1.6, -1
  %or.cond517 = or i1 %cmp214.7, %cmp226.7
  br i1 %or.cond517, label %if.end212.7.if.end256_crit_edge, label %if.end212.7.for.inc233.7_crit_edge

if.end212.7.for.inc233.7_crit_edge:               ; preds = %if.end212.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc233.7

if.end212.7.if.end256_crit_edge:                  ; preds = %if.end212.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

for.inc233.7:                                     ; preds = %if.end212.7.for.inc233.7_crit_edge, %for.inc233.6.for.inc233.7_crit_edge
  %highgroup.1.7 = phi i32 [ %highgroup.1.6, %for.inc233.6.for.inc233.7_crit_edge ], [ 3, %if.end212.7.for.inc233.7_crit_edge ]
  %111 = or i32 %lowgroup.1.3, %highgroup.1.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %storedigit, label %for.inc233.7.if.end256_crit_edge

for.inc233.7.if.end256_crit_edge:                 ; preds = %for.inc233.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

storedigit:                                       ; preds = %for.inc233.7
  %arrayidx242 = getelementptr [4 x [4 x i8]], ptr @dtmf_matrix, i32 0, i32 %lowgroup.1.3, i32 %highgroup.1.7
  %113 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx242, align 1
  %conv244 = zext i8 %114 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool245.not = icmp eq i8 %114, 0
  br i1 %tobool245.not, label %storedigit.if.end256_crit_edge, label %land.lhs.true246

storedigit.if.end256_crit_edge:                   ; preds = %storedigit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

land.lhs.true246:                                 ; preds = %storedigit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %115 = load i32, ptr @dsp_debug, align 4
  %and247 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %land.lhs.true246.if.end256_crit_edge, label %do.end252

land.lhs.true246.if.end256_crit_edge:             ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256

do.end252:                                        ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #8
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv244) #9
  br label %if.end256

if.end256:                                        ; preds = %do.end252, %land.lhs.true246.if.end256_crit_edge, %storedigit.if.end256_crit_edge, %for.inc233.7.if.end256_crit_edge, %if.end212.7.if.end256_crit_edge, %if.end212.6.if.end256_crit_edge, %if.end212.5.if.end256_crit_edge, %if.end212.4.if.end256_crit_edge, %if.end212.3.if.end256_crit_edge, %if.end212.2.if.end256_crit_edge, %if.end212.1.if.end256_crit_edge, %if.end212.if.end256_crit_edge, %coefficients.if.end256_crit_edge
  %tobool245.not470 = phi i1 [ false, %do.end252 ], [ false, %land.lhs.true246.if.end256_crit_edge ], [ true, %storedigit.if.end256_crit_edge ], [ true, %for.inc233.7.if.end256_crit_edge ], [ true, %coefficients.if.end256_crit_edge ], [ true, %if.end212.7.if.end256_crit_edge ], [ true, %if.end212.6.if.end256_crit_edge ], [ true, %if.end212.5.if.end256_crit_edge ], [ true, %if.end212.4.if.end256_crit_edge ], [ true, %if.end212.3.if.end256_crit_edge ], [ true, %if.end212.2.if.end256_crit_edge ], [ true, %if.end212.1.if.end256_crit_edge ], [ true, %if.end212.if.end256_crit_edge ]
  %conv244469 = phi i32 [ %conv244, %do.end252 ], [ %conv244, %land.lhs.true246.if.end256_crit_edge ], [ 0, %storedigit.if.end256_crit_edge ], [ 0, %for.inc233.7.if.end256_crit_edge ], [ 0, %coefficients.if.end256_crit_edge ], [ 0, %if.end212.7.if.end256_crit_edge ], [ 0, %if.end212.6.if.end256_crit_edge ], [ 0, %if.end212.5.if.end256_crit_edge ], [ 0, %if.end212.4.if.end256_crit_edge ], [ 0, %if.end212.3.if.end256_crit_edge ], [ 0, %if.end212.2.if.end256_crit_edge ], [ 0, %if.end212.1.if.end256_crit_edge ], [ 0, %if.end212.if.end256_crit_edge ]
  %what.0467 = phi i8 [ %114, %do.end252 ], [ %114, %land.lhs.true246.if.end256_crit_edge ], [ 0, %storedigit.if.end256_crit_edge ], [ 0, %for.inc233.7.if.end256_crit_edge ], [ 0, %coefficients.if.end256_crit_edge ], [ 0, %if.end212.7.if.end256_crit_edge ], [ 0, %if.end212.6.if.end256_crit_edge ], [ 0, %if.end212.5.if.end256_crit_edge ], [ 0, %if.end212.4.if.end256_crit_edge ], [ 0, %if.end212.3.if.end256_crit_edge ], [ 0, %if.end212.2.if.end256_crit_edge ], [ 0, %if.end212.1.if.end256_crit_edge ], [ 0, %if.end212.if.end256_crit_edge ]
  %116 = ptrtoint ptr %lastwhat to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %lastwhat, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %117, i8 %what.0467)
  %cmp260.not = icmp eq i8 %117, %what.0467
  br i1 %cmp260.not, label %if.end264, label %if.end256.if.else316_crit_edge

if.end256.if.else316_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else316

if.end264:                                        ; preds = %if.end256
  %118 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp267 = icmp eq i32 %.pr, 2
  br i1 %cmp267, label %if.then269, label %if.end264.if.else316_crit_edge

if.end264.if.else316_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else316

if.then269:                                       ; preds = %if.end264
  %119 = ptrtoint ptr %lastdigit to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %lastdigit, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %what.0467)
  %cmp273.not = icmp eq i8 %120, %what.0467
  br i1 %cmp273.not, label %if.then269.if.end320_crit_edge, label %if.then275

if.then269.if.end320_crit_edge:                   ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end320

if.then275:                                       ; preds = %if.then269
  %121 = ptrtoint ptr %lastdigit to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %what.0467, ptr %lastdigit, align 1
  br i1 %tobool245.not470, label %if.then275.if.end320_crit_edge, label %if.then279

if.then275.if.end320_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end320

if.then279:                                       ; preds = %if.then275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %122 = load i32, ptr @dsp_debug, align 4
  %and280 = and i32 %122, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %if.then279.if.end289_crit_edge, label %do.end285

if.then279.if.end289_crit_edge:                   ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end289

do.end285:                                        ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #8
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv244469) #9
  br label %if.end289

if.end289:                                        ; preds = %do.end285, %if.then279.if.end289_crit_edge
  %call293 = tail call i32 @strlen(ptr noundef %digits) #10
  %add294 = add i32 %call293, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add294)
  %cmp295 = icmp ult i32 %add294, 16
  br i1 %cmp295, label %if.then297, label %if.end289.if.end320_crit_edge

if.end289.if.end320_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end320

if.then297:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx305 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 10, i32 9, i32 %add294
  %123 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx305, align 1
  %call311 = tail call i32 @strlen(ptr noundef %digits) #10
  %arrayidx312 = getelementptr %struct.dsp, ptr %dsp, i32 0, i32 10, i32 9, i32 %call311
  %124 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %what.0467, ptr %arrayidx312, align 1
  br label %if.end320

if.else316:                                       ; preds = %if.end264.if.else316_crit_edge, %if.end256.if.else316_crit_edge
  %125 = phi i32 [ %.pr, %if.end264.if.else316_crit_edge ], [ 0, %if.end256.if.else316_crit_edge ]
  %inc319 = add i32 %125, 1
  %126 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %inc319, ptr %count, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.else316, %if.then297, %if.end289.if.end320_crit_edge, %if.then275.if.end320_crit_edge, %if.then269.if.end320_crit_edge
  %127 = ptrtoint ptr %lastwhat to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %what.0467, ptr %lastwhat, align 4
  br label %again

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result) #6
  ret ptr %digits
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 63, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dsp_dtmf_hardware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dsp_dtmf_hardware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 70, i32 4}
!8 = !{ptr @dsp_dtmf_hardware._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dsp_dtmf_hardware._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 78, i32 4}
!12 = !{ptr @dsp_dtmf_hardware._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dsp_dtmf_hardware._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 86, i32 4}
!16 = !{ptr @dsp_dtmf_hardware._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dsp_dtmf_hardware._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 152, i32 5}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dsp_dtmf_goertzel_decode._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 163, i32 5}
!25 = !{ptr @dsp_dtmf_goertzel_decode._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @dsp_dtmf_goertzel_decode._entry.17, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 198, i32 4}
!29 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 230, i32 4}
!32 = !{ptr @dsp_dtmf_goertzel_decode._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 234, i32 3}
!36 = !{ptr @dsp_dtmf_goertzel_decode._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 285, i32 3}
!40 = !{ptr @dsp_dtmf_goertzel_decode._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 296, i32 6}
!44 = !{ptr @dsp_dtmf_goertzel_decode._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dsp_dtmf_goertzel_decode._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @cos2pik, !47, !"cos2pik", i1 false, i1 false}
!47 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 22, i32 12}
!48 = !{ptr @dtmf_matrix, !49, !"dtmf_matrix", i1 false, i1 false}
!49 = !{!"../drivers/isdn/mISDN/dsp_dtmf.c", i32 29, i32 13}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
