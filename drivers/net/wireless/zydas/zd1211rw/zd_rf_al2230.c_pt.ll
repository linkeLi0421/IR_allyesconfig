; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zd_ioreq16 = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.zd_rf = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zd_chip = type { %struct.zd_usb, %struct.zd_rf, %struct.mutex, i16, [14 x i8], [14 x i8], [3 x [14 x i8]], i16, i16 }
%struct.zd_usb = type { %struct.zd_usb_interrupt, %struct.zd_usb_rx, %struct.zd_usb_tx, ptr, %struct.usb_anchor, ptr, i32, [64 x i8], i8 }
%struct.zd_usb_interrupt = type { %struct.read_regs_int, %struct.spinlock, ptr, ptr, i32, i32, %struct.atomic_t, i8 }
%struct.read_regs_int = type { %struct.completion, ptr, i32, [64 x i8], i32, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.zd_usb_rx = type { %struct.spinlock, %struct.mutex, %struct.delayed_work, %struct.tasklet_struct, [9600 x i8], i32, i32, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.zd_usb_tx = type { %struct.atomic_t, %struct.spinlock, %struct.delayed_work, %struct.sk_buff_head, %struct.usb_anchor, i32, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@al2230_switch_radio_off.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 4 }, %struct.zd_ioreq16 { i16 -27668, i16 47 }], [24 x i8] zeroinitializer }, align 32
@zd1211b_al2230_init_hw.ioreqs1 = internal constant { [62 x %struct.zd_ioreq16], [40 x i8] } { [62 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28632, i16 137 }, %struct.zd_ioreq16 { i16 -28612, i16 32 }, %struct.zd_ioreq16 { i16 -28604, i16 43 }, %struct.zd_ioreq16 { i16 -28580, i16 64 }, %struct.zd_ioreq16 { i16 -28576, i16 32 }, %struct.zd_ioreq16 { i16 -28568, i16 147 }, %struct.zd_ioreq16 { i16 -28560, i16 62 }, %struct.zd_ioreq16 { i16 -28556, i16 0 }, %struct.zd_ioreq16 { i16 -28540, i16 40 }, %struct.zd_ioreq16 { i16 -28536, i16 48 }, %struct.zd_ioreq16 { i16 -28532, i16 62 }, %struct.zd_ioreq16 { i16 -28508, i16 36 }, %struct.zd_ioreq16 { i16 -28496, i16 50 }, %struct.zd_ioreq16 { i16 -28488, i16 153 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28480, i16 6 }, %struct.zd_ioreq16 { i16 -28476, i16 249 }, %struct.zd_ioreq16 { i16 -28468, i16 1 }, %struct.zd_ioreq16 { i16 -28464, i16 128 }, %struct.zd_ioreq16 { i16 -28460, i16 126 }, %struct.zd_ioreq16 { i16 -28412, i16 0 }, %struct.zd_ioreq16 { i16 -28408, i16 0 }, %struct.zd_ioreq16 { i16 -28404, i16 0 }, %struct.zd_ioreq16 { i16 -28400, i16 0 }, %struct.zd_ioreq16 { i16 -28396, i16 40 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28324, i16 10 }, %struct.zd_ioreq16 { i16 -28316, i16 4 }, %struct.zd_ioreq16 { i16 -28308, i16 0 }, %struct.zd_ioreq16 { i16 -28304, i16 10 }, %struct.zd_ioreq16 { i16 -28280, i16 141 }, %struct.zd_ioreq16 { i16 -28276, i16 0 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28248, i16 36 }, %struct.zd_ioreq16 { i16 -28244, i16 42 }, %struct.zd_ioreq16 { i16 -28236, i16 19 }, %struct.zd_ioreq16 { i16 -28232, i16 31 }, %struct.zd_ioreq16 { i16 -28228, i16 31 }, %struct.zd_ioreq16 { i16 -28224, i16 31 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 38 }, %struct.zd_ioreq16 { i16 -28208, i16 36 }, %struct.zd_ioreq16 { i16 -28204, i16 250 }, %struct.zd_ioreq16 { i16 -28200, i16 250 }, %struct.zd_ioreq16 { i16 -28196, i16 16 }, %struct.zd_ioreq16 { i16 -28192, i16 79 }, %struct.zd_ioreq16 { i16 -28188, i16 108 }, %struct.zd_ioreq16 { i16 -28184, i16 252 }, %struct.zd_ioreq16 { i16 -28180, i16 87 }, %struct.zd_ioreq16 { i16 -28172, i16 173 }, %struct.zd_ioreq16 { i16 -28168, i16 108 }, %struct.zd_ioreq16 { i16 -28164, i16 3 }, %struct.zd_ioreq16 { i16 -28124, i16 80 }, %struct.zd_ioreq16 { i16 -28120, i16 168 }, %struct.zd_ioreq16 { i16 -28096, i16 172 }, %struct.zd_ioreq16 { i16 -28072, i16 13 }, %struct.zd_ioreq16 { i16 -27664, i16 52 }, %struct.zd_ioreq16 { i16 -27660, i16 52 }], [40 x i8] zeroinitializer }, align 32
@zd1211b_al2230_init_hw.rv1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 9227472, i32 4726208, i32 13631232, i32 2465792], [16 x i8] zeroinitializer }, align 32
@zd1211b_al2230_init_hw.rv2 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2465792, i32 10728176, i32 7184400, i32 14901888, i32 1138688, i32 10338336, i32 6150912, i32 14258176, i32 4193232, i32 11534336, i32 15735296], [52 x i8] zeroinitializer }, align 32
@zd1211b_al2230_init_hw.ioreqs2 = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27668, i16 47 }, %struct.zd_ioreq16 { i16 -27668, i16 127 }], [24 x i8] zeroinitializer }, align 32
@zd1211b_al2230_init_hw.rv3 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15735552, i32 15736320, i32 15735296], [20 x i8] zeroinitializer }, align 32
@zd1211b_al2230_init_hw.ioreqs3 = internal constant { [3 x %struct.zd_ioreq16], [20 x i8] } { [3 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }], [20 x i8] zeroinitializer }, align 32
@zd1211b_ioreqs_shared_1 = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27712, i16 87 }, %struct.zd_ioreq16 { i16 -28636, i16 224 }], [24 x i8] zeroinitializer }, align 32
@ioreqs_init_al2230s = internal constant { [10 x %struct.zd_ioreq16], [56 x i8] } { [10 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28248, i16 34 }, %struct.zd_ioreq16 { i16 -28244, i16 42 }, %struct.zd_ioreq16 { i16 -28236, i16 19 }, %struct.zd_ioreq16 { i16 -28200, i16 248 }, %struct.zd_ioreq16 { i16 -28196, i16 18 }, %struct.zd_ioreq16 { i16 -28184, i16 224 }, %struct.zd_ioreq16 { i16 -28160, i16 16 }, %struct.zd_ioreq16 { i16 -28156, i16 14 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }], [56 x i8] zeroinitializer }, align 32
@zd1211b_al2230_table = internal constant { [14 x [3 x i32]], [56 x i8] } { [14 x [3 x i32]] [[3 x i32] [i32 651200, i32 9227456, i32 11534336], [3 x i32] [i32 651200, i32 9227472, i32 11534336], [3 x i32] [i32 649152, i32 9227456, i32 11534336], [3 x i32] [i32 649152, i32 9227472, i32 11534336], [3 x i32] [i32 389056, i32 9227456, i32 11534336], [3 x i32] [i32 389056, i32 9227472, i32 11534336], [3 x i32] [i32 387008, i32 9227456, i32 11534336], [3 x i32] [i32 387008, i32 9227472, i32 11534336], [3 x i32] [i32 913344, i32 9227456, i32 11534336], [3 x i32] [i32 913344, i32 9227472, i32 11534336], [3 x i32] [i32 911296, i32 9227456, i32 11534336], [3 x i32] [i32 911296, i32 9227472, i32 11534336], [3 x i32] [i32 257984, i32 9227456, i32 11534336], [3 x i32] [i32 255936, i32 8808032, i32 11534336]], [56 x i8] zeroinitializer }, align 32
@zd_rfwrite_locked.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_rfwrite_locked\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&chip->mutex)\00", [34 x i8] zeroinitializer }, align 32
@zd1211b_al2230_finalize_rf.ioreqs = internal constant { [9 x %struct.zd_ioreq16], [60 x i8] } { [9 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28624, i16 240 }, %struct.zd_ioreq16 { i16 -28364, i16 27 }, %struct.zd_ioreq16 { i16 -28360, i16 88 }, %struct.zd_ioreq16 { i16 -27860, i16 6 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -27712, i16 128 }], [60 x i8] zeroinitializer }, align 32
@zd_iowrite16_locked.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_iowrite16_locked\00", [44 x i8] zeroinitializer }, align 32
@zd1211b_al2230_switch_radio_on.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -27668, i16 127 }], [24 x i8] zeroinitializer }, align 32
@zd1211_al2230_init_hw.ioreqs_init = internal constant { [52 x %struct.zd_ioreq16], [48 x i8] } { [52 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28612, i16 32 }, %struct.zd_ioreq16 { i16 -28580, i16 64 }, %struct.zd_ioreq16 { i16 -28576, i16 32 }, %struct.zd_ioreq16 { i16 -28568, i16 17 }, %struct.zd_ioreq16 { i16 -28560, i16 62 }, %struct.zd_ioreq16 { i16 -28556, i16 0 }, %struct.zd_ioreq16 { i16 -28496, i16 51 }, %struct.zd_ioreq16 { i16 -28248, i16 42 }, %struct.zd_ioreq16 { i16 -28244, i16 26 }, %struct.zd_ioreq16 { i16 -28236, i16 9 }, %struct.zd_ioreq16 { i16 -28232, i16 39 }, %struct.zd_ioreq16 { i16 -28228, i16 43 }, %struct.zd_ioreq16 { i16 -28224, i16 43 }, %struct.zd_ioreq16 { i16 -28196, i16 10 }, %struct.zd_ioreq16 { i16 -28632, i16 137 }, %struct.zd_ioreq16 { i16 -28604, i16 40 }, %struct.zd_ioreq16 { i16 -28568, i16 147 }, %struct.zd_ioreq16 { i16 -28536, i16 48 }, %struct.zd_ioreq16 { i16 -28532, i16 62 }, %struct.zd_ioreq16 { i16 -28508, i16 36 }, %struct.zd_ioreq16 { i16 -28496, i16 50 }, %struct.zd_ioreq16 { i16 -28488, i16 150 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28324, i16 10 }, %struct.zd_ioreq16 { i16 -28316, i16 4 }, %struct.zd_ioreq16 { i16 -28304, i16 10 }, %struct.zd_ioreq16 { i16 -28276, i16 40 }, %struct.zd_ioreq16 { i16 -28272, i16 0 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28248, i16 36 }, %struct.zd_ioreq16 { i16 -28244, i16 42 }, %struct.zd_ioreq16 { i16 -28236, i16 9 }, %struct.zd_ioreq16 { i16 -28232, i16 19 }, %struct.zd_ioreq16 { i16 -28228, i16 31 }, %struct.zd_ioreq16 { i16 -28224, i16 31 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 36 }, %struct.zd_ioreq16 { i16 -28208, i16 36 }, %struct.zd_ioreq16 { i16 -28204, i16 244 }, %struct.zd_ioreq16 { i16 -28200, i16 252 }, %struct.zd_ioreq16 { i16 -28196, i16 16 }, %struct.zd_ioreq16 { i16 -28192, i16 79 }, %struct.zd_ioreq16 { i16 -28188, i16 119 }, %struct.zd_ioreq16 { i16 -28184, i16 224 }, %struct.zd_ioreq16 { i16 -28124, i16 136 }, %struct.zd_ioreq16 { i16 -27664, i16 255 }, %struct.zd_ioreq16 { i16 -27660, i16 255 }], [48 x i8] zeroinitializer }, align 32
@zd1211_al2230_init_hw.ioreqs_pll = internal constant { [4 x %struct.zd_ioreq16], [16 x i8] } { [4 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27668, i16 47 }, %struct.zd_ioreq16 { i16 -27668, i16 63 }, %struct.zd_ioreq16 { i16 -28120, i16 40 }, %struct.zd_ioreq16 { i16 -27860, i16 6 }], [16 x i8] zeroinitializer }, align 32
@zd1211_al2230_init_hw.rv1 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 259984, i32 209713, i32 13, i32 734001, i32 243730, i32 65523], [40 x i8] zeroinitializer }, align 32
@zd1211_al2230_init_hw.rv2 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 3492, i32 1002949, i32 525750, i32 71303, i32 1672, i32 263097, i32 56250, i32 2459, i32 778236, i32 13, i32 20495], [52 x i8] zeroinitializer }, align 32
@zd1211_al2230_init_hw.rv3 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 53263, i32 19471, i32 21519, i32 28687, i32 20495], [44 x i8] zeroinitializer }, align 32
@zd1211_al2230_table = internal constant { [14 x [3 x i32]], [56 x i8] } { [14 x [3 x i32]] [[3 x i32] [i32 259984, i32 209713, i32 13], [3 x i32] [i32 259984, i32 734001, i32 13], [3 x i32] [i32 255888, i32 209713, i32 13], [3 x i32] [i32 255888, i32 734001, i32 13], [3 x i32] [i32 260000, i32 209713, i32 13], [3 x i32] [i32 260000, i32 734001, i32 13], [3 x i32] [i32 255904, i32 209713, i32 13], [3 x i32] [i32 255904, i32 734001, i32 13], [3 x i32] [i32 260016, i32 209713, i32 13], [3 x i32] [i32 260016, i32 734001, i32 13], [3 x i32] [i32 255920, i32 209713, i32 13], [3 x i32] [i32 255920, i32 734001, i32 13], [3 x i32] [i32 260032, i32 209713, i32 13], [3 x i32] [i32 255936, i32 419425, i32 13]], [56 x i8] zeroinitializer }, align 32
@zd1211_al2230_set_channel.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28120, i16 40 }, %struct.zd_ioreq16 { i16 -27860, i16 6 }], [24 x i8] zeroinitializer }, align 32
@zd1211_al2230_switch_radio_on.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -27668, i16 63 }], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 406, i32 33 }
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"ioreqs1\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 210, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 261, i32 19 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 268, i32 19 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"ioreqs2\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 286, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 291, i32 19 }
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"ioreqs3\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 298, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"zd1211b_ioreqs_shared_1\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 50, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"ioreqs_init_al2230s\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 54, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"zd1211b_al2230_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 33, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 854, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 69, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 825, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 395, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"ioreqs_init\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 97, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"ioreqs_pll\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 126, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant [4 x i8] c"rv1\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 134, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant [4 x i8] c"rv2\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 145, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"rv3\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 159, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"zd1211_al2230_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 16, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 352, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"ioreqs\00", align 1
@___asan_gen_.82 = private constant [54 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 384, i32 33 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @al2230_switch_radio_off.ioreqs, ptr @zd1211b_al2230_init_hw.ioreqs1, ptr @zd1211b_al2230_init_hw.rv1, ptr @zd1211b_al2230_init_hw.rv2, ptr @zd1211b_al2230_init_hw.ioreqs2, ptr @zd1211b_al2230_init_hw.rv3, ptr @zd1211b_al2230_init_hw.ioreqs3, ptr @zd1211b_ioreqs_shared_1, ptr @ioreqs_init_al2230s, ptr @zd1211b_al2230_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @zd1211b_al2230_finalize_rf.ioreqs, ptr @.str.5, ptr @zd1211b_al2230_switch_radio_on.ioreqs, ptr @zd1211_al2230_init_hw.ioreqs_init, ptr @zd1211_al2230_init_hw.ioreqs_pll, ptr @zd1211_al2230_init_hw.rv1, ptr @zd1211_al2230_init_hw.rv2, ptr @zd1211_al2230_init_hw.rv3, ptr @zd1211_al2230_table, ptr @zd1211_al2230_set_channel.ioreqs, ptr @zd1211_al2230_switch_radio_on.ioreqs], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_switch_radio_off.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_init_hw.ioreqs1 to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_init_hw.rv1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_init_hw.rv2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_init_hw.ioreqs2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_init_hw.rv3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_init_hw.ioreqs3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_ioreqs_shared_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioreqs_init_al2230s to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_finalize_rf.ioreqs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al2230_switch_radio_on.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_init_hw.ioreqs_init to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_init_hw.ioreqs_pll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_init_hw.rv1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_init_hw.rv2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_init_hw.rv3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_set_channel.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al2230_switch_radio_on.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zd_rf_init_al2230(ptr nocapture noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_radio_off = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 7
  %0 = ptrtoint ptr %switch_radio_off to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @al2230_switch_radio_off, ptr %switch_radio_off, align 4
  %is_zd1211b.i = getelementptr i8, ptr %rf, i32 -4
  %1 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  %zd1211b_al2230_init_hw.sink = select i1 %tobool.not, ptr @zd1211_al2230_init_hw, ptr @zd1211b_al2230_init_hw
  %zd1211b_al2230_set_channel.sink = select i1 %tobool.not, ptr @zd1211_al2230_set_channel, ptr @zd1211b_al2230_set_channel
  %zd1211b_al2230_switch_radio_on.sink = select i1 %tobool.not, ptr @zd1211_al2230_switch_radio_on, ptr @zd1211b_al2230_switch_radio_on
  %2 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %zd1211b_al2230_init_hw.sink, ptr %2, align 4
  %4 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %zd1211b_al2230_set_channel.sink, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %zd1211b_al2230_switch_radio_on.sink, ptr %6, align 4
  %patch_6m_band_edge = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 8
  %8 = ptrtoint ptr %patch_6m_band_edge to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @zd_rf_generic_patch_6m, ptr %patch_6m_band_edge, align 4
  %patch_cck_gain = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 2
  %9 = ptrtoint ptr %patch_cck_gain to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %patch_cck_gain, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %patch_cck_gain, align 2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @al2230_switch_radio_off(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @al2230_switch_radio_off.ioreqs, i32 noundef 2) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al2230_init_hw(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_ioreqs_shared_1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_init_hw.ioreqs1, i32 noundef 62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %al2230s_bit = getelementptr i8, ptr %rf, i32 198
  %0 = ptrtoint ptr %al2230s_bit to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %al2230s_bit, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool6.not = icmp eq i16 %1, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end5.if.then9_crit_edge

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp eq i8 %3, 10
  br i1 %cmp, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %call10 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @ioreqs_init_al2230s, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge
  %call15 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_table, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_init_hw.rv1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %4 = ptrtoint ptr %al2230s_bit to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load24 = load i16, ptr %al2230s_bit, align 2
  %5 = and i16 %bf.load24, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool28.not = icmp eq i16 %5, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

lor.lhs.false29:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp33 = icmp eq i8 %7, 10
  %spec.select = select i1 %cmp33, i32 2363392, i32 2465792
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false29, %if.end22.if.end38_crit_edge
  %.sink = phi i32 [ 2363392, %if.end22.if.end38_crit_edge ], [ %spec.select, %lor.lhs.false29 ]
  %call37 = tail call fastcc i32 @zd_rfwrite_locked(ptr noundef %add.ptr.i, i32 noundef %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %if.end41, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end38
  %call42 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_init_hw.rv2, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call46 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_init_hw.ioreqs2, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call50 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_init_hw.rv3, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_init_hw.ioreqs3, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = tail call fastcc i32 @zd1211b_al2230_finalize_rf(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end57 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call37, %if.end38.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al2230_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_ioreqs_shared_1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [14 x [3 x i32]], ptr @zd1211b_al2230_table, i32 0, i32 %sub
  %call2 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef %arrayidx, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @zd1211b_al2230_finalize_rf(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al2230_switch_radio_on(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al2230_switch_radio_on.ioreqs, i32 noundef 2) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211_al2230_init_hw(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_init_hw.ioreqs_init, i32 noundef 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %al2230s_bit = getelementptr i8, ptr %rf, i32 198
  %0 = ptrtoint ptr %al2230s_bit to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %al2230s_bit, align 2
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp eq i8 %3, 10
  br i1 %cmp, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %call6 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @ioreqs_init_al2230s, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  %call11 = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_init_hw.rv1, i32 noundef 6, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %4 = ptrtoint ptr %al2230s_bit to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load16 = load i16, ptr %al2230s_bit, align 2
  %5 = and i16 %bf.load16, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool20.not = icmp eq i16 %5, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.end14.if.then27_crit_edge

if.end14.if.then27_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false21:                                  ; preds = %if.end14
  %6 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp25 = icmp eq i8 %7, 10
  br i1 %cmp25, label %lor.lhs.false21.if.then27_crit_edge, label %if.else

lor.lhs.false21.if.then27_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false21.if.then27_crit_edge, %if.end14.if.then27_crit_edge
  %mutex.i = getelementptr i8, ptr %rf, i32 32
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %if.then27.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !59

if.then27.zd_rfwrite_locked.exit_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %if.then27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211_al2230_init_hw, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !60

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 854, ptr noundef nonnull @.str.4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #9
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %if.then27.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %add.ptr.i, i32 noundef 2084, i8 noundef zeroext 24) #6
  br label %if.end30

if.else:                                          ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call fastcc i32 @zd_rfwrite_locked(ptr noundef %add.ptr.i, i32 noundef 1444)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %zd_rfwrite_locked.exit
  %r.0 = phi i32 [ %call17.i, %zd_rfwrite_locked.exit ], [ %call29, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool31.not = icmp eq i32 %r.0, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %call34 = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_init_hw.rv2, i32 noundef 11, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_init_hw.ioreqs_pll, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_init_hw.rv3, i32 noundef 5, i8 noundef zeroext 24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %r.0, %if.end30.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211_al2230_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [14 x [3 x i32]], ptr @zd1211_al2230_table, i32 0, i32 %sub
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef %arrayidx, i32 noundef 3, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_set_channel.ioreqs, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211_al2230_switch_radio_on(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al2230_switch_radio_on.ioreqs, i32 noundef 2) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_generic_patch_6m(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_iowrite16a_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rfwritev_cr_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd_rfwrite_locked(ptr noundef %chip, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #6
  br i1 %call, label %entry.do.end16_crit_edge, label %do.body3, !prof !59

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_rfwrite_locked, %do.end)) #6
          to label %if.then14 [label %do.end], !srcloc !60

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 854, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #9
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  %call17 = tail call i32 @zd_usb_rfwrite(ptr noundef %chip, i32 noundef %value, i8 noundef zeroext 24) #6
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1211b_al2230_finalize_rf(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %ioreq.i15 = alloca %struct.zd_ioreq16, align 2
  %ioreq.i = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull @zd1211b_al2230_finalize_rf.ioreqs, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_phy_layout = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %new_phy_layout to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %new_phy_layout, align 2
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i) #6
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %if.then2.zd_iowrite16_locked.exit_crit_edge, label %do.body3.i, !prof !59

if.then2.zd_iowrite16_locked.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit

do.body3.i:                                       ; preds = %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al2230_finalize_rf, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !60

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit

zd_iowrite16_locked.exit:                         ; preds = %do.end.i, %if.then2.zd_iowrite16_locked.exit_crit_edge
  %2 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i, i32 0, i32 1
  %3 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -28636, ptr %ioreq.i, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 225, ptr %2, align 2
  %call20.i = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool4.not = icmp eq i32 %call20.i, 0
  br i1 %tobool4.not, label %zd_iowrite16_locked.exit.if.end7_crit_edge, label %zd_iowrite16_locked.exit.cleanup_crit_edge

zd_iowrite16_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite16_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

zd_iowrite16_locked.exit.if.end7_crit_edge:       ; preds = %zd_iowrite16_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %zd_iowrite16_locked.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i15) #6
  %mutex.i16 = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i17 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i16) #6
  br i1 %call.i17, label %if.end7.zd_iowrite16_locked.exit22_crit_edge, label %do.body3.i18, !prof !59

if.end7.zd_iowrite16_locked.exit22_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit22

do.body3.i18:                                     ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al2230_finalize_rf, %do.end.i20)) #6
          to label %if.then14.i19 [label %do.end.i20], !srcloc !60

if.then14.i19:                                    ; preds = %do.body3.i18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i20

do.end.i20:                                       ; preds = %if.then14.i19, %do.body3.i18
  call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit22

zd_iowrite16_locked.exit22:                       ; preds = %do.end.i20, %if.end7.zd_iowrite16_locked.exit22_crit_edge
  %5 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i15, i32 0, i32 1
  %6 = ptrtoint ptr %ioreq.i15 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -27860, ptr %ioreq.i15, align 2
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 6, ptr %5, align 2
  %call20.i21 = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq.i15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i15) #6
  br label %cleanup

cleanup:                                          ; preds = %zd_iowrite16_locked.exit22, %zd_iowrite16_locked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20.i21, %zd_iowrite16_locked.exit22 ], [ %call, %entry.cleanup_crit_edge ], [ %call20.i, %zd_iowrite16_locked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_rfwrite(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_iowrite16v(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rfwritev_locked(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @al2230_switch_radio_off.ioreqs, !1, !"ioreqs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 406, i32 33}
!2 = !{ptr @zd1211b_al2230_init_hw.ioreqs1, !3, !"ioreqs1", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 210, i32 33}
!4 = !{ptr @zd1211b_al2230_init_hw.rv1, !5, !"rv1", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 261, i32 19}
!6 = !{ptr @zd1211b_al2230_init_hw.rv2, !7, !"rv2", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 268, i32 19}
!8 = !{ptr @zd1211b_al2230_init_hw.ioreqs2, !9, !"ioreqs2", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 286, i32 33}
!10 = !{ptr @zd1211b_al2230_init_hw.rv3, !11, !"rv3", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 291, i32 19}
!12 = !{ptr @zd1211b_al2230_init_hw.ioreqs3, !13, !"ioreqs3", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 298, i32 33}
!14 = !{ptr @zd1211b_ioreqs_shared_1, !15, !"zd1211b_ioreqs_shared_1", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 50, i32 32}
!16 = !{ptr @ioreqs_init_al2230s, !17, !"ioreqs_init_al2230s", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 54, i32 32}
!18 = !{ptr @zd1211b_al2230_table, !19, !"zd1211b_al2230_table", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 33, i32 18}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 854, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, !21, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!26 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @zd1211b_al2230_finalize_rf.ioreqs, !28, !"ioreqs", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 69, i32 33}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 825, i32 2}
!31 = !{ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, !30, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!32 = !{ptr @zd1211b_al2230_switch_radio_on.ioreqs, !33, !"ioreqs", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 395, i32 33}
!34 = !{ptr @zd1211_al2230_init_hw.ioreqs_init, !35, !"ioreqs_init", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 97, i32 33}
!36 = !{ptr @zd1211_al2230_init_hw.ioreqs_pll, !37, !"ioreqs_pll", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 126, i32 33}
!38 = !{ptr @zd1211_al2230_init_hw.rv1, !39, !"rv1", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 134, i32 19}
!40 = !{ptr @zd1211_al2230_init_hw.rv2, !41, !"rv2", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 145, i32 19}
!42 = !{ptr @zd1211_al2230_init_hw.rv3, !43, !"rv3", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 159, i32 19}
!44 = !{ptr @zd1211_al2230_set_channel.ioreqs, !45, !"ioreqs", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 352, i32 33}
!46 = !{ptr @zd1211_al2230_table, !47, !"zd1211_al2230_table", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 16, i32 18}
!48 = !{ptr @zd1211_al2230_switch_radio_on.ioreqs, !49, !"ioreqs", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al2230.c", i32 384, i32 33}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148701809, i64 2148701814, i64 2148701827, i64 2148701871, i64 2148701905, i64 2148701926}
