; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zd_ioreq16 = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zd_rf = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.zd_chip = type { %struct.zd_usb, %struct.zd_rf, %struct.mutex, i16, [14 x i8], [14 x i8], [3 x [14 x i8]], i16, i16 }
%struct.zd_usb = type { %struct.zd_usb_interrupt, %struct.zd_usb_rx, %struct.zd_usb_tx, ptr, %struct.usb_anchor, ptr, i32, [64 x i8], i8 }
%struct.zd_usb_interrupt = type { %struct.read_regs_int, %struct.spinlock, ptr, ptr, i32, i32, %struct.atomic_t, i8 }
%struct.read_regs_int = type { %struct.completion, ptr, i32, [64 x i8], i32, i16 }
%struct.zd_usb_rx = type { %struct.spinlock, %struct.mutex, %struct.delayed_work, %struct.tasklet_struct, [9600 x i8], i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.zd_usb_tx = type { %struct.atomic_t, %struct.spinlock, %struct.delayed_work, %struct.sk_buff_head, %struct.usb_anchor, i32, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }

@zd1211b_al7230b_init_hw.ioreqs_1 = internal constant { [45 x %struct.zd_ioreq16], [44 x i8] } { [45 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27712, i16 87 }, %struct.zd_ioreq16 { i16 -28636, i16 9 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -28632, i16 139 }, %struct.zd_ioreq16 { i16 -28612, i16 32 }, %struct.zd_ioreq16 { i16 -28604, i16 43 }, %struct.zd_ioreq16 { i16 -28592, i16 16 }, %struct.zd_ioreq16 { i16 -28580, i16 64 }, %struct.zd_ioreq16 { i16 -28576, i16 32 }, %struct.zd_ioreq16 { i16 -28568, i16 147 }, %struct.zd_ioreq16 { i16 -28560, i16 62 }, %struct.zd_ioreq16 { i16 -28556, i16 0 }, %struct.zd_ioreq16 { i16 -28540, i16 40 }, %struct.zd_ioreq16 { i16 -28536, i16 48 }, %struct.zd_ioreq16 { i16 -28532, i16 62 }, %struct.zd_ioreq16 { i16 -28508, i16 36 }, %struct.zd_ioreq16 { i16 -28496, i16 50 }, %struct.zd_ioreq16 { i16 -28488, i16 153 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28480, i16 0 }, %struct.zd_ioreq16 { i16 -28476, i16 0 }, %struct.zd_ioreq16 { i16 -28468, i16 1 }, %struct.zd_ioreq16 { i16 -28464, i16 128 }, %struct.zd_ioreq16 { i16 -28460, i16 126 }, %struct.zd_ioreq16 { i16 -28412, i16 0 }, %struct.zd_ioreq16 { i16 -28408, i16 0 }, %struct.zd_ioreq16 { i16 -28404, i16 0 }, %struct.zd_ioreq16 { i16 -28400, i16 0 }, %struct.zd_ioreq16 { i16 -28396, i16 40 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28324, i16 10 }, %struct.zd_ioreq16 { i16 -28316, i16 4 }, %struct.zd_ioreq16 { i16 -28312, i16 88 }, %struct.zd_ioreq16 { i16 -28308, i16 0 }, %struct.zd_ioreq16 { i16 -28304, i16 10 }, %struct.zd_ioreq16 { i16 -28280, i16 141 }, %struct.zd_ioreq16 { i16 -28276, i16 0 }, %struct.zd_ioreq16 { i16 -28272, i16 2 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28248, i16 32 }, %struct.zd_ioreq16 { i16 -28236, i16 19 }, %struct.zd_ioreq16 { i16 -28224, i16 31 }], [44 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_init_hw.ioreqs_new_phy = internal constant { [7 x %struct.zd_ioreq16], [36 x i8] } { [7 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28244, i16 40 }, %struct.zd_ioreq16 { i16 -28232, i16 31 }, %struct.zd_ioreq16 { i16 -28228, i16 31 }, %struct.zd_ioreq16 { i16 -28208, i16 42 }, %struct.zd_ioreq16 { i16 -28200, i16 250 }, %struct.zd_ioreq16 { i16 -28196, i16 18 }, %struct.zd_ioreq16 { i16 -28188, i16 108 }], [36 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_init_hw.ioreqs_old_phy = internal constant { [7 x %struct.zd_ioreq16], [36 x i8] } { [7 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28244, i16 36 }, %struct.zd_ioreq16 { i16 -28232, i16 19 }, %struct.zd_ioreq16 { i16 -28228, i16 19 }, %struct.zd_ioreq16 { i16 -28208, i16 36 }, %struct.zd_ioreq16 { i16 -28200, i16 252 }, %struct.zd_ioreq16 { i16 -28196, i16 17 }, %struct.zd_ioreq16 { i16 -28188, i16 106 }], [36 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_init_hw.ioreqs_2 = internal constant { [21 x %struct.zd_ioreq16], [44 x i8] } { [21 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 36 }, %struct.zd_ioreq16 { i16 -28204, i16 250 }, %struct.zd_ioreq16 { i16 -28192, i16 79 }, %struct.zd_ioreq16 { i16 -28184, i16 252 }, %struct.zd_ioreq16 { i16 -28180, i16 87 }, %struct.zd_ioreq16 { i16 -28172, i16 173 }, %struct.zd_ioreq16 { i16 -28168, i16 108 }, %struct.zd_ioreq16 { i16 -28164, i16 3 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28148, i16 0 }, %struct.zd_ioreq16 { i16 -28124, i16 80 }, %struct.zd_ioreq16 { i16 -28120, i16 168 }, %struct.zd_ioreq16 { i16 -28096, i16 172 }, %struct.zd_ioreq16 { i16 -28080, i16 64 }, %struct.zd_ioreq16 { i16 -28076, i16 64 }, %struct.zd_ioreq16 { i16 -28072, i16 26 }, %struct.zd_ioreq16 { i16 -27664, i16 52 }, %struct.zd_ioreq16 { i16 -27660, i16 52 }, %struct.zd_ioreq16 { i16 -27668, i16 47 }], [44 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_init_hw.ioreqs_3 = internal constant { [6 x %struct.zd_ioreq16], [40 x i8] } { [6 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27668, i16 127 }, %struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28520, i16 56 }, %struct.zd_ioreq16 { i16 -28128, i16 223 }], [40 x i8] zeroinitializer }, align 32
@chan_rv = internal constant { [14 x [2 x i32]], [48 x i8] } { [14 x [2 x i32]] [[2 x i32] [i32 650240, i32 9227464], [2 x i32] [i32 650240, i32 9227480], [2 x i32] [i32 650240, i32 9227456], [2 x i32] [i32 650240, i32 9227472], [2 x i32] [i32 388096, i32 9227464], [2 x i32] [i32 388096, i32 9227480], [2 x i32] [i32 388096, i32 9227456], [2 x i32] [i32 388096, i32 9227472], [2 x i32] [i32 912384, i32 9227464], [2 x i32] [i32 912384, i32 9227480], [2 x i32] [i32 912384, i32 9227456], [2 x i32] [i32 912384, i32 9227472], [2 x i32] [i32 257024, i32 9227464], [2 x i32] [i32 257024, i32 8808032]], [48 x i8] zeroinitializer }, align 32
@std_rv = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 5240865, i32 12975100, i32 2223102, i32 11523073, i32 7140714, i32 14696563, i32 1654134, i32 10344516, i32 5242887, i32 14204944], [56 x i8] zeroinitializer }, align 32
@rv_init1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3969024, i32 12582911, i32 7340032, i32 15818072], [16 x i8] zeroinitializer }, align 32
@rv_init2 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15818073, i32 15818076, i32 15818072], [20 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_finalize.ioreqs = internal constant { [9 x %struct.zd_ioreq16], [60 x i8] } { [9 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28624, i16 240 }, %struct.zd_ioreq16 { i16 -28364, i16 27 }, %struct.zd_ioreq16 { i16 -28360, i16 88 }, %struct.zd_ioreq16 { i16 -27860, i16 4 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -27712, i16 128 }], [60 x i8] zeroinitializer }, align 32
@zd_iowrite16_locked.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_iowrite16_locked\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&chip->mutex)\00", [34 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_switch_radio_on.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -27668, i16 127 }], [24 x i8] zeroinitializer }, align 32
@ioreqs_sw = internal constant { [5 x %struct.zd_ioreq16], [44 x i8] } { [5 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28520, i16 56 }, %struct.zd_ioreq16 { i16 -28128, i16 223 }], [44 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_patch_6m._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 458, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() patching for channel %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zd1211b_al7230b_patch_6m\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd1211b_al7230b_patch_6m._entry_ptr = internal global ptr @zd1211b_al7230b_patch_6m._entry, section ".printk_index", align 4
@zd1211_al7230b_init_hw.ioreqs_1 = internal constant { [56 x %struct.zd_ioreq16], [32 x i8] } { [56 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27712, i16 87 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i16 -28612, i16 32 }, %struct.zd_ioreq16 { i16 -28580, i16 64 }, %struct.zd_ioreq16 { i16 -28576, i16 32 }, %struct.zd_ioreq16 { i16 -28568, i16 17 }, %struct.zd_ioreq16 { i16 -28560, i16 62 }, %struct.zd_ioreq16 { i16 -28556, i16 0 }, %struct.zd_ioreq16 { i16 -28496, i16 51 }, %struct.zd_ioreq16 { i16 -28248, i16 34 }, %struct.zd_ioreq16 { i16 -28244, i16 26 }, %struct.zd_ioreq16 { i16 -28236, i16 9 }, %struct.zd_ioreq16 { i16 -28232, i16 39 }, %struct.zd_ioreq16 { i16 -28228, i16 43 }, %struct.zd_ioreq16 { i16 -28224, i16 43 }, %struct.zd_ioreq16 { i16 -28196, i16 10 }, %struct.zd_ioreq16 { i16 -28184, i16 252 }, %struct.zd_ioreq16 { i16 -28632, i16 137 }, %struct.zd_ioreq16 { i16 -28604, i16 40 }, %struct.zd_ioreq16 { i16 -28568, i16 147 }, %struct.zd_ioreq16 { i16 -28536, i16 48 }, %struct.zd_ioreq16 { i16 -28532, i16 62 }, %struct.zd_ioreq16 { i16 -28508, i16 36 }, %struct.zd_ioreq16 { i16 -28496, i16 50 }, %struct.zd_ioreq16 { i16 -28488, i16 150 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28324, i16 10 }, %struct.zd_ioreq16 { i16 -28316, i16 4 }, %struct.zd_ioreq16 { i16 -28304, i16 10 }, %struct.zd_ioreq16 { i16 -28276, i16 40 }, %struct.zd_ioreq16 { i16 -28272, i16 2 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28248, i16 34 }, %struct.zd_ioreq16 { i16 -28244, i16 63 }, %struct.zd_ioreq16 { i16 -28236, i16 9 }, %struct.zd_ioreq16 { i16 -28232, i16 31 }, %struct.zd_ioreq16 { i16 -28228, i16 31 }, %struct.zd_ioreq16 { i16 -28224, i16 31 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 36 }, %struct.zd_ioreq16 { i16 -28208, i16 63 }, %struct.zd_ioreq16 { i16 -28204, i16 250 }, %struct.zd_ioreq16 { i16 -28200, i16 252 }, %struct.zd_ioreq16 { i16 -28196, i16 16 }, %struct.zd_ioreq16 { i16 -28192, i16 79 }, %struct.zd_ioreq16 { i16 -28188, i16 119 }, %struct.zd_ioreq16 { i16 -28124, i16 136 }, %struct.zd_ioreq16 { i16 -28120, i16 168 }, %struct.zd_ioreq16 { i16 -27664, i16 52 }, %struct.zd_ioreq16 { i16 -27660, i16 52 }, %struct.zd_ioreq16 { i16 -27668, i16 47 }], [32 x i8] zeroinitializer }, align 32
@zd1211_al7230b_init_hw.ioreqs_2 = internal constant { [6 x %struct.zd_ioreq16], [40 x i8] } { [6 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27668, i16 63 }, %struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28520, i16 56 }, %struct.zd_ioreq16 { i16 -28128, i16 223 }], [40 x i8] zeroinitializer }, align 32
@zd1211_al7230b_switch_radio_on.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -27668, i16 63 }], [24 x i8] zeroinitializer }, align 32
@zd1211_al7230b_set_channel.ioreqs = internal constant { [3 x %struct.zd_ioreq16], [20 x i8] } { [3 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -27668, i16 63 }, %struct.zd_ioreq16 { i16 -27860, i16 6 }, %struct.zd_ioreq16 { i16 -27712, i16 8 }], [20 x i8] zeroinitializer }, align 32
@al7230b_switch_radio_off.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 4 }, %struct.zd_ioreq16 { i16 -27668, i16 47 }], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 11]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 197, i32 33 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"ioreqs_new_phy\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 231, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ioreqs_old_phy\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 239, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 247, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"ioreqs_3\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 267, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"chan_rv\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 14, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"std_rv\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 31, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"rv_init1\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 44, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"rv_init2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 51, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 65, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 825, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 421, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"ioreqs_sw\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 57, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 458, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"ioreqs_1\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 94, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant [9 x i8] c"ioreqs_2\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 152, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 410, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 319, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"ioreqs\00", align 1
@___asan_gen_.92 = private constant [55 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 432, i32 33 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @zd1211b_al7230b_patch_6m._entry, ptr @zd1211b_al7230b_patch_6m._entry_ptr, ptr @zd1211b_al7230b_init_hw.ioreqs_1, ptr @zd1211b_al7230b_init_hw.ioreqs_new_phy, ptr @zd1211b_al7230b_init_hw.ioreqs_old_phy, ptr @zd1211b_al7230b_init_hw.ioreqs_2, ptr @zd1211b_al7230b_init_hw.ioreqs_3, ptr @chan_rv, ptr @std_rv, ptr @rv_init1, ptr @rv_init2, ptr @zd1211b_al7230b_finalize.ioreqs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @zd1211b_al7230b_switch_radio_on.ioreqs, ptr @ioreqs_sw, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @zd1211_al7230b_init_hw.ioreqs_1, ptr @zd1211_al7230b_init_hw.ioreqs_2, ptr @zd1211_al7230b_switch_radio_on.ioreqs, ptr @zd1211_al7230b_set_channel.ioreqs, ptr @al7230b_switch_radio_off.ioreqs], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_init_hw.ioreqs_1 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_init_hw.ioreqs_new_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_init_hw.ioreqs_old_phy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_init_hw.ioreqs_2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_init_hw.ioreqs_3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_rv to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_rv to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv_init1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv_init2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_finalize.ioreqs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_switch_radio_on.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioreqs_sw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211b_al7230b_patch_6m._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al7230b_init_hw.ioreqs_1 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al7230b_init_hw.ioreqs_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al7230b_switch_radio_on.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1211_al7230b_set_channel.ioreqs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230b_switch_radio_off.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zd_rf_init_al7230b(ptr nocapture noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_zd1211b.i = getelementptr i8, ptr %rf, i32 -4
  %0 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %patch_cck_gain = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 2
  %1 = ptrtoint ptr %patch_cck_gain to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %patch_cck_gain, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %patch_cck_gain, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %zd1211b_al7230b_init_hw.sink = phi ptr [ @zd1211_al7230b_init_hw, %if.else ], [ @zd1211b_al7230b_init_hw, %entry.if.end_crit_edge ]
  %zd1211b_al7230b_switch_radio_on.sink = phi ptr [ @zd1211_al7230b_switch_radio_on, %if.else ], [ @zd1211b_al7230b_switch_radio_on, %entry.if.end_crit_edge ]
  %zd1211b_al7230b_set_channel.sink = phi ptr [ @zd1211_al7230b_set_channel, %if.else ], [ @zd1211b_al7230b_set_channel, %entry.if.end_crit_edge ]
  %zd1211b_al7230b_patch_6m.sink = phi ptr [ @zd_rf_generic_patch_6m, %if.else ], [ @zd1211b_al7230b_patch_6m, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %zd1211b_al7230b_init_hw.sink, ptr %2, align 4
  %4 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %zd1211b_al7230b_switch_radio_on.sink, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %zd1211b_al7230b_set_channel.sink, ptr %6, align 4
  %8 = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %zd1211b_al7230b_patch_6m.sink, ptr %8, align 4
  %switch_radio_off = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 7
  %10 = ptrtoint ptr %switch_radio_off to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @al7230b_switch_radio_off, ptr %switch_radio_off, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al7230b_init_hw(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al7230b_init_hw.ioreqs_1, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_phy_layout = getelementptr i8, ptr %rf, i32 198
  %0 = ptrtoint ptr %new_phy_layout to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %new_phy_layout, align 2
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool2.not = icmp eq i16 %1, 0
  %zd1211b_al7230b_init_hw.ioreqs_old_phy.zd1211b_al7230b_init_hw.ioreqs_new_phy = select i1 %tobool2.not, ptr @zd1211b_al7230b_init_hw.ioreqs_old_phy, ptr @zd1211b_al7230b_init_hw.ioreqs_new_phy
  %call5 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull %zd1211b_al7230b_init_hw.ioreqs_old_phy.zd1211b_al7230b_init_hw.ioreqs_new_phy, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al7230b_init_hw.ioreqs_2, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @chan_rv, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @std_rv, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rv_init1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al7230b_init_hw.ioreqs_3, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rv_init2, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call fastcc i32 @zd1211b_al7230b_finalize(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end33 ], [ %call1, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al7230b_switch_radio_on(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211b_al7230b_switch_radio_on.ioreqs, i32 noundef 2) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al7230b_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #2 align 64 {
entry:
  %ioreq.i78 = alloca %struct.zd_ioreq16, align 2
  %ioreq.i70 = alloca %struct.zd_ioreq16, align 2
  %ioreq.i = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [14 x [2 x i32]], ptr @chan_rv, i32 0, i32 %sub
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i) #6
  %mutex.i = getelementptr i8, ptr %rf, i32 32
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %entry.zd_iowrite16_locked.exit_crit_edge, label %do.body3.i, !prof !58

entry.zd_iowrite16_locked.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al7230b_set_channel, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !59

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit

zd_iowrite16_locked.exit:                         ; preds = %do.end.i, %entry.zd_iowrite16_locked.exit_crit_edge
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i, i32 0, i32 1
  %1 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -27712, ptr %ioreq.i, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 87, ptr %0, align 2
  %call20.i = call i32 @zd_usb_iowrite16v(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreq.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not = icmp eq i32 %call20.i, 0
  br i1 %tobool.not, label %if.end, label %zd_iowrite16_locked.exit.cleanup_crit_edge

zd_iowrite16_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite16_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %zd_iowrite16_locked.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i70) #6
  %call.i72 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i72, label %if.end.zd_iowrite16_locked.exit77_crit_edge, label %do.body3.i73, !prof !58

if.end.zd_iowrite16_locked.exit77_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit77

do.body3.i73:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al7230b_set_channel, %do.end.i75)) #6
          to label %if.then14.i74 [label %do.end.i75], !srcloc !59

if.then14.i74:                                    ; preds = %do.body3.i73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i75

do.end.i75:                                       ; preds = %if.then14.i74, %do.body3.i73
  call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit77

zd_iowrite16_locked.exit77:                       ; preds = %do.end.i75, %if.end.zd_iowrite16_locked.exit77_crit_edge
  %3 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i70, i32 0, i32 1
  %4 = ptrtoint ptr %ioreq.i70 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -28636, ptr %ioreq.i70, align 2
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 228, ptr %3, align 2
  %call20.i76 = call i32 @zd_usb_iowrite16v(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreq.i70, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i76)
  %tobool3.not = icmp eq i32 %call20.i76, 0
  br i1 %tobool3.not, label %if.end5, label %zd_iowrite16_locked.exit77.cleanup_crit_edge

zd_iowrite16_locked.exit77.cleanup_crit_edge:     ; preds = %zd_iowrite16_locked.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %zd_iowrite16_locked.exit77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i78) #6
  %call.i80 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i80, label %if.end5.zd_iowrite16_locked.exit85_crit_edge, label %do.body3.i81, !prof !58

if.end5.zd_iowrite16_locked.exit85_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit85

do.body3.i81:                                     ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al7230b_set_channel, %do.end.i83)) #6
          to label %if.then14.i82 [label %do.end.i83], !srcloc !59

if.then14.i82:                                    ; preds = %do.body3.i81
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i83

do.end.i83:                                       ; preds = %if.then14.i82, %do.body3.i81
  call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit85

zd_iowrite16_locked.exit85:                       ; preds = %do.end.i83, %if.end5.zd_iowrite16_locked.exit85_crit_edge
  %6 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i78, i32 0, i32 1
  %7 = ptrtoint ptr %ioreq.i78 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -27668, ptr %ioreq.i78, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 47, ptr %6, align 2
  %call20.i84 = call i32 @zd_usb_iowrite16v(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreq.i78, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i84)
  %tobool7.not = icmp eq i32 %call20.i84, 0
  br i1 %tobool7.not, label %if.end9, label %zd_iowrite16_locked.exit85.cleanup_crit_edge

zd_iowrite16_locked.exit85.cleanup_crit_edge:     ; preds = %zd_iowrite16_locked.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %zd_iowrite16_locked.exit85
  %call10 = call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @std_rv, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @zd_rfwrite_cr_locked(ptr noundef %add.ptr.i, i32 noundef 3969024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @zd_rfwrite_cr_locked(ptr noundef %add.ptr.i, i32 noundef 15818072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @ioreqs_sw, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef %arrayidx, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @zd_rfwrite_cr_locked(ptr noundef %add.ptr.i, i32 noundef 3969024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = call fastcc i32 @zd_iowrite16_locked(ptr noundef %add.ptr.i, i16 noundef zeroext 127, i16 noundef zeroext -27668)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call fastcc i32 @zd1211b_al7230b_finalize(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %zd_iowrite16_locked.exit85.cleanup_crit_edge, %zd_iowrite16_locked.exit77.cleanup_crit_edge, %zd_iowrite16_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ %call20.i, %zd_iowrite16_locked.exit.cleanup_crit_edge ], [ %call20.i76, %zd_iowrite16_locked.exit77.cleanup_crit_edge ], [ %call20.i84, %zd_iowrite16_locked.exit85.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211b_al7230b_patch_6m(ptr noundef %rf, i8 noundef zeroext %channel) #2 align 64 {
entry:
  %ioreqs = alloca [2 x %struct.zd_ioreq16], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreqs) #6
  %0 = ptrtoint ptr %ioreqs to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -7926335255822991342, ptr %ioreqs, align 8
  %1 = zext i8 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %channel, label %entry.do.end_crit_edge [
    i8 1, label %entry.do.end.sink.split_crit_edge
    i8 11, label %if.then7
  ]

entry.do.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then7, %entry.do.end.sink.split_crit_edge
  %.sink = phi i16 [ 16, %if.then7 ], [ 14, %entry.do.end.sink.split_crit_edge ]
  %value = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreqs, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %.sink, ptr %value, align 2
  %value3 = getelementptr inbounds [2 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %value3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %value3, align 2
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %conv = zext i8 %channel to i32
  %intf = getelementptr i8, ptr %rf, i32 -192
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv) #9
  %call14 = call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreqs, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreqs) #6
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211_al7230b_init_hw(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al7230b_init_hw.ioreqs_1, i32 noundef 56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @chan_rv, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @std_rv, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rv_init1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al7230b_init_hw.ioreqs_2, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rv_init2, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc i32 @zd_iowrite16_locked(ptr noundef %add.ptr.i, i16 noundef zeroext 6, i16 noundef zeroext -27860)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @zd_iowrite16_locked(ptr noundef %add.ptr.i, i16 noundef zeroext 128, i16 noundef zeroext -27712)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211_al7230b_switch_radio_on(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al7230b_switch_radio_on.ioreqs, i32 noundef 2) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1211_al7230b_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #2 align 64 {
entry:
  %ioreq.i56 = alloca %struct.zd_ioreq16, align 2
  %ioreq.i = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [14 x [2 x i32]], ptr @chan_rv, i32 0, i32 %sub
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i) #6
  %mutex.i = getelementptr i8, ptr %rf, i32 32
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %entry.zd_iowrite16_locked.exit_crit_edge, label %do.body3.i, !prof !58

entry.zd_iowrite16_locked.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211_al7230b_set_channel, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !59

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit

zd_iowrite16_locked.exit:                         ; preds = %do.end.i, %entry.zd_iowrite16_locked.exit_crit_edge
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i, i32 0, i32 1
  %1 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -27712, ptr %ioreq.i, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 87, ptr %0, align 2
  %call20.i = call i32 @zd_usb_iowrite16v(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreq.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not = icmp eq i32 %call20.i, 0
  br i1 %tobool.not, label %if.end, label %zd_iowrite16_locked.exit.cleanup_crit_edge

zd_iowrite16_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite16_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %zd_iowrite16_locked.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i56) #6
  %call.i58 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i58, label %if.end.zd_iowrite16_locked.exit63_crit_edge, label %do.body3.i59, !prof !58

if.end.zd_iowrite16_locked.exit63_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit63

do.body3.i59:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211_al7230b_set_channel, %do.end.i61)) #6
          to label %if.then14.i60 [label %do.end.i61], !srcloc !59

if.then14.i60:                                    ; preds = %do.body3.i59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end.i61

do.end.i61:                                       ; preds = %if.then14.i60, %do.body3.i59
  call void @dump_stack() #9
  br label %zd_iowrite16_locked.exit63

zd_iowrite16_locked.exit63:                       ; preds = %do.end.i61, %if.end.zd_iowrite16_locked.exit63_crit_edge
  %3 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i56, i32 0, i32 1
  %4 = ptrtoint ptr %ioreq.i56 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -27668, ptr %ioreq.i56, align 2
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 47, ptr %3, align 2
  %call20.i62 = call i32 @zd_usb_iowrite16v(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreq.i56, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i62)
  %tobool3.not = icmp eq i32 %call20.i62, 0
  br i1 %tobool3.not, label %if.end5, label %zd_iowrite16_locked.exit63.cleanup_crit_edge

zd_iowrite16_locked.exit63.cleanup_crit_edge:     ; preds = %zd_iowrite16_locked.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %zd_iowrite16_locked.exit63
  %call6 = call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @std_rv, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @zd_rfwrite_cr_locked(ptr noundef %add.ptr.i, i32 noundef 3969024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @zd_rfwrite_cr_locked(ptr noundef %add.ptr.i, i32 noundef 15818072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @ioreqs_sw, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @zd_rfwritev_cr_locked(ptr noundef %add.ptr.i, ptr noundef %arrayidx, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @zd_rfwrite_cr_locked(ptr noundef %add.ptr.i, i32 noundef 3969024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @zd1211_al7230b_set_channel.ioreqs, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %zd_iowrite16_locked.exit63.cleanup_crit_edge, %zd_iowrite16_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ %call20.i, %zd_iowrite16_locked.exit.cleanup_crit_edge ], [ %call20.i62, %zd_iowrite16_locked.exit63.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_generic_patch_6m(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @al7230b_switch_radio_off(ptr noundef %rf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @al7230b_switch_radio_off.ioreqs, i32 noundef 2) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_iowrite16a_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rfwritev_cr_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1211b_al7230b_finalize(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %ioreq.i15 = alloca %struct.zd_ioreq16, align 2
  %ioreq.i = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @zd_iowrite16a_locked(ptr noundef %chip, ptr noundef nonnull @zd1211b_al7230b_finalize.ioreqs, i32 noundef 9) #6
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
  br i1 %call.i, label %if.then2.zd_iowrite16_locked.exit_crit_edge, label %do.body3.i, !prof !58

if.then2.zd_iowrite16_locked.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit

do.body3.i:                                       ; preds = %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al7230b_finalize, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !59

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
  store i16 229, ptr %2, align 2
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
  br i1 %call.i17, label %if.end7.zd_iowrite16_locked.exit22_crit_edge, label %do.body3.i18, !prof !58

if.end7.zd_iowrite16_locked.exit22_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit22

do.body3.i18:                                     ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd1211b_al7230b_finalize, %do.end.i20)) #6
          to label %if.then14.i19 [label %do.end.i20], !srcloc !59

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
  store i16 4, ptr %5, align 2
  %call20.i21 = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq.i15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i15) #6
  br label %cleanup

cleanup:                                          ; preds = %zd_iowrite16_locked.exit22, %zd_iowrite16_locked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20.i21, %zd_iowrite16_locked.exit22 ], [ %call, %entry.cleanup_crit_edge ], [ %call20.i, %zd_iowrite16_locked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd_iowrite16_locked(ptr noundef %chip, i16 noundef zeroext %value, i16 noundef zeroext %addr) unnamed_addr #4 align 64 {
entry:
  %ioreq = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq) #6
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #6
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !58

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_iowrite16_locked, %do.end)) #6
          to label %if.then14 [label %do.end], !srcloc !59

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 825, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #9
  br label %do.end17

do.end17:                                         ; preds = %do.end, %entry.do.end17_crit_edge
  %0 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq, i32 0, i32 1
  %1 = ptrtoint ptr %ioreq to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %addr, ptr %ioreq, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %value, ptr %0, align 2
  %call20 = call i32 @zd_usb_iowrite16v(ptr noundef %chip, ptr noundef nonnull %ioreq, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq) #6
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_iowrite16v(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rfwrite_cr_locked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @zd1211b_al7230b_init_hw.ioreqs_1, !1, !"ioreqs_1", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 197, i32 33}
!2 = !{ptr @zd1211b_al7230b_init_hw.ioreqs_new_phy, !3, !"ioreqs_new_phy", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 231, i32 33}
!4 = !{ptr @zd1211b_al7230b_init_hw.ioreqs_old_phy, !5, !"ioreqs_old_phy", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 239, i32 33}
!6 = !{ptr @zd1211b_al7230b_init_hw.ioreqs_2, !7, !"ioreqs_2", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 247, i32 33}
!8 = !{ptr @zd1211b_al7230b_init_hw.ioreqs_3, !9, !"ioreqs_3", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 267, i32 33}
!10 = !{ptr @chan_rv, !11, !"chan_rv", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 14, i32 18}
!12 = !{ptr @std_rv, !13, !"std_rv", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 31, i32 18}
!14 = !{ptr @rv_init1, !15, !"rv_init1", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 44, i32 18}
!16 = !{ptr @rv_init2, !17, !"rv_init2", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 51, i32 18}
!18 = !{ptr @zd1211b_al7230b_finalize.ioreqs, !19, !"ioreqs", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 65, i32 33}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 825, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, !21, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!26 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @zd1211b_al7230b_switch_radio_on.ioreqs, !28, !"ioreqs", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 421, i32 33}
!29 = !{ptr @ioreqs_sw, !30, !"ioreqs_sw", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 57, i32 32}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 458, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @zd1211b_al7230b_patch_6m._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @zd1211b_al7230b_patch_6m._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @zd1211_al7230b_init_hw.ioreqs_1, !40, !"ioreqs_1", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 94, i32 33}
!41 = !{ptr @zd1211_al7230b_init_hw.ioreqs_2, !42, !"ioreqs_2", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 152, i32 33}
!43 = !{ptr @zd1211_al7230b_switch_radio_on.ioreqs, !44, !"ioreqs", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 410, i32 33}
!45 = !{ptr @zd1211_al7230b_set_channel.ioreqs, !46, !"ioreqs", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 319, i32 33}
!47 = !{ptr @al7230b_switch_radio_off.ioreqs, !48, !"ioreqs", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_al7230b.c", i32 432, i32 33}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148702347, i64 2148702352, i64 2148702365, i64 2148702409, i64 2148702443, i64 2148702464}
