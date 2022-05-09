; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zd_ioreq16 = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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

@uw2453_init_hw.ioreqs = internal constant { [59 x %struct.zd_ioreq16], [52 x i8] } { [59 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28632, i16 137 }, %struct.zd_ioreq16 { i16 -28612, i16 32 }, %struct.zd_ioreq16 { i16 -28604, i16 40 }, %struct.zd_ioreq16 { i16 -28580, i16 56 }, %struct.zd_ioreq16 { i16 -28576, i16 32 }, %struct.zd_ioreq16 { i16 -28568, i16 147 }, %struct.zd_ioreq16 { i16 -28564, i16 21 }, %struct.zd_ioreq16 { i16 -28560, i16 62 }, %struct.zd_ioreq16 { i16 -28556, i16 0 }, %struct.zd_ioreq16 { i16 -28540, i16 40 }, %struct.zd_ioreq16 { i16 -28536, i16 48 }, %struct.zd_ioreq16 { i16 -28532, i16 67 }, %struct.zd_ioreq16 { i16 -28508, i16 36 }, %struct.zd_ioreq16 { i16 -28496, i16 50 }, %struct.zd_ioreq16 { i16 -28488, i16 146 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28480, i16 4 }, %struct.zd_ioreq16 { i16 -28476, i16 250 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28324, i16 10 }, %struct.zd_ioreq16 { i16 -28316, i16 4 }, %struct.zd_ioreq16 { i16 -28308, i16 0 }, %struct.zd_ioreq16 { i16 -28304, i16 10 }, %struct.zd_ioreq16 { i16 -28280, i16 141 }, %struct.zd_ioreq16 { i16 -28276, i16 40 }, %struct.zd_ioreq16 { i16 -28272, i16 2 }, %struct.zd_ioreq16 { i16 -28268, i16 9 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28248, i16 28 }, %struct.zd_ioreq16 { i16 -28244, i16 28 }, %struct.zd_ioreq16 { i16 -28236, i16 19 }, %struct.zd_ioreq16 { i16 -28232, i16 31 }, %struct.zd_ioreq16 { i16 -28228, i16 19 }, %struct.zd_ioreq16 { i16 -28224, i16 31 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 35 }, %struct.zd_ioreq16 { i16 -28212, i16 36 }, %struct.zd_ioreq16 { i16 -28208, i16 36 }, %struct.zd_ioreq16 { i16 -28204, i16 250 }, %struct.zd_ioreq16 { i16 -28200, i16 240 }, %struct.zd_ioreq16 { i16 -28196, i16 26 }, %struct.zd_ioreq16 { i16 -28192, i16 79 }, %struct.zd_ioreq16 { i16 -28188, i16 31 }, %struct.zd_ioreq16 { i16 -28184, i16 240 }, %struct.zd_ioreq16 { i16 -28180, i16 87 }, %struct.zd_ioreq16 { i16 -28172, i16 173 }, %struct.zd_ioreq16 { i16 -28168, i16 108 }, %struct.zd_ioreq16 { i16 -28164, i16 3 }, %struct.zd_ioreq16 { i16 -28160, i16 20 }, %struct.zd_ioreq16 { i16 -28156, i16 18 }, %struct.zd_ioreq16 { i16 -28152, i16 16 }, %struct.zd_ioreq16 { i16 -28124, i16 80 }, %struct.zd_ioreq16 { i16 -28120, i16 168 }, %struct.zd_ioreq16 { i16 -28096, i16 172 }, %struct.zd_ioreq16 { i16 -28088, i16 32 }, %struct.zd_ioreq16 { i16 -27664, i16 255 }, %struct.zd_ioreq16 { i16 -27660, i16 255 }], [52 x i8] zeroinitializer }, align 32
@uw2453_init_hw.rv = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4194347, i32 5348943, i32 7307693, i32 7602174, i32 155548, i32 1048647, i32 2099609, i32 3175938, i32 3432547], [60 x i8] zeroinitializer }, align 32
@uw2453_std_vco_cfg = internal constant { [11 x [7 x i16]], [38 x i8] } { [11 x [7 x i16]] [[7 x i16] [i16 26189, i16 24653, i16 26229, i16 25717, i16 26197, i16 25685, i16 26213], [7 x i16] [i16 26221, i16 24685, i16 26189, i16 25677, i16 26229, i16 25717, i16 26197], [7 x i16] [i16 26205, i16 24669, i16 26221, i16 25709, i16 26189, i16 25677, i16 26229], [7 x i16] [i16 26237, i16 24701, i16 26205, i16 25693, i16 26221, i16 25709, i16 26189], [7 x i16] [i16 26179, i16 24643, i16 26237, i16 25725, i16 26205, i16 25693, i16 26221], [7 x i16] [i16 26211, i16 24675, i16 26179, i16 25667, i16 26237, i16 25725, i16 26205], [7 x i16] [i16 26195, i16 24659, i16 26211, i16 25699, i16 26179, i16 25667, i16 26237], [7 x i16] [i16 26227, i16 24691, i16 26195, i16 25683, i16 26211, i16 25699, i16 26179], [7 x i16] [i16 26187, i16 24651, i16 26227, i16 25715, i16 26195, i16 25683, i16 26211], [7 x i16] [i16 26219, i16 24683, i16 26187, i16 25675, i16 26227, i16 25715, i16 26195], [7 x i16] [i16 26203, i16 24667, i16 26219, i16 25707, i16 26187, i16 25675, i16 26227]], [38 x i8] zeroinitializer }, align 32
@uw2453_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s() PLL locked on configuration %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uw2453_init_hw\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uw2453_init_hw._entry_ptr = internal global ptr @uw2453_init_hw._entry, section ".printk_index", align 4
@uw2453_init_hw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() PLL did not lock, using autocal\0A\00", [58 x i8] zeroinitializer }, align 32
@uw2453_init_hw._entry_ptr.7 = internal global ptr @uw2453_init_hw._entry.5, section ".printk_index", align 4
@uw2453_init_mode.rv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 155544, i32 155546, i32 155540, i32 163796], [16 x i8] zeroinitializer }, align 32
@uw2453_autocal_synth = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 26695, i16 26695, i16 26727, i16 26727, i16 26727, i16 26727, i16 26711, i16 26711, i16 26711, i16 26711, i16 26743, i16 26743, i16 26743, i16 26703], [36 x i8] zeroinitializer }, align 32
@uw2453_std_synth = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GGggggWWWWwwwO", [18 x i8] zeroinitializer }, align 32
@uw2453_synth_divide = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 2457, i16 2459, i16 2456, i16 2458, i16 2457, i16 2459, i16 2456, i16 2458, i16 2457, i16 2459, i16 2456, i16 2458, i16 2457, i16 3276], [36 x i8] zeroinitializer }, align 32
@zd_rfwrite_locked.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_rfwrite_locked\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&chip->mutex)\00", [34 x i8] zeroinitializer }, align 32
@zd_iowrite16_locked.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.10, ptr @.str.11, i8 0, i8 -50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zd_iowrite16_locked\00", [44 x i8] zeroinitializer }, align 32
@zd_ioread16_locked.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.10, ptr @.str.11, i8 0, i8 -55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zd_ioread16_locked\00", [45 x i8] zeroinitializer }, align 32
@uw2453_set_channel.ioreqs = internal constant { [6 x %struct.zd_ioreq16], [40 x i8] } { [6 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28624, i16 240 }, %struct.zd_ioreq16 { i16 -28364, i16 27 }, %struct.zd_ioreq16 { i16 -28360, i16 88 }], [40 x i8] zeroinitializer }, align 32
@uw2453_set_tx_gain_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s() can't configure TX gain for int value %x on channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"uw2453_set_tx_gain_level\00", [39 x i8] zeroinitializer }, align 32
@uw2453_set_tx_gain_level._entry_ptr = internal global ptr @uw2453_set_tx_gain_level._entry, section ".printk_index", align 4
@uw2453_txgain = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 58131, i32 64275, i32 57491, i32 63635, i32 60051, i32 127123, i32 128147, i32 128659, i32 127891, i32 127835, i32 124635, i32 130879, i32 131071, i32 221655, i32 229311, i32 262027, i32 261939, i32 260927, i32 262143], [52 x i8] zeroinitializer }, align 32
@uw2453_switch_radio_off.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28628, i16 4 }, %struct.zd_ioreq16 { i16 -27668, i16 47 }], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 303, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 344, i32 19 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"uw2453_std_vco_cfg\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 85, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 400, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 409, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [3 x i8] c"rv\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 272, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"uw2453_autocal_synth\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 189, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"uw2453_std_synth\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 41, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"uw2453_synth_divide\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 61, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 854, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 825, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 807, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 436, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 287, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"uw2453_txgain\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 211, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"ioreqs\00", align 1
@___asan_gen_.99 = private constant [54 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 492, i32 33 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @uw2453_init_hw._entry, ptr @uw2453_init_hw._entry.5, ptr @uw2453_init_hw._entry_ptr, ptr @uw2453_init_hw._entry_ptr.7, ptr @uw2453_set_tx_gain_level._entry, ptr @uw2453_set_tx_gain_level._entry_ptr, ptr @uw2453_init_hw.ioreqs, ptr @uw2453_init_hw.rv, ptr @uw2453_std_vco_cfg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @uw2453_init_mode.rv, ptr @uw2453_autocal_synth, ptr @uw2453_std_synth, ptr @uw2453_synth_divide, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @uw2453_set_channel.ioreqs, ptr @.str.15, ptr @.str.16, ptr @uw2453_txgain, ptr @uw2453_switch_radio_off.ioreqs], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_init_hw.ioreqs to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_init_hw.rv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_std_vco_cfg to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_init_hw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_init_mode.rv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_autocal_synth to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_std_synth to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_synth_divide to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_set_channel.ioreqs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_set_tx_gain_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_txgain to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uw2453_switch_radio_off.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_rf_init_uw2453(ptr nocapture noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_hw = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 4
  %0 = ptrtoint ptr %init_hw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @uw2453_init_hw, ptr %init_hw, align 4
  %set_channel = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 5
  %1 = ptrtoint ptr %set_channel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @uw2453_set_channel, ptr %set_channel, align 4
  %switch_radio_on = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 6
  %2 = ptrtoint ptr %switch_radio_on to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @uw2453_switch_radio_on, ptr %switch_radio_on, align 4
  %switch_radio_off = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 7
  %3 = ptrtoint ptr %switch_radio_off to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @uw2453_switch_radio_off, ptr %switch_radio_off, align 4
  %patch_6m_band_edge = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 8
  %4 = ptrtoint ptr %patch_6m_band_edge to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @zd_rf_generic_patch_6m, ptr %patch_6m_band_edge, align 4
  %clear = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 9
  %5 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @uw2453_clear, ptr %clear, align 4
  %update_channel_int = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 2
  %6 = ptrtoint ptr %update_channel_int to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %update_channel_int, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %update_channel_int, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4) #9
  %priv = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %priv, align 4
  %cmp = icmp eq ptr %call7.i, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uw2453_init_hw(ptr noundef %rf) #0 align 64 {
entry:
  %addr.addr.i.i = alloca i16, align 2
  %ioreq.i = alloca %struct.zd_ioreq16, align 2
  %intr_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intr_status) #6
  %0 = ptrtoint ptr %intr_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %intr_status, align 2, !annotation !59
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @uw2453_init_hw.ioreqs, i32 noundef 59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @uw2453_init_hw.rv, i32 noundef 9, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @uw2453_init_mode.rv, i32 noundef 4, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end5
  %mutex.i.i = getelementptr i8, ptr %rf, i32 32
  %1 = getelementptr inbounds %struct.zd_ioreq16, ptr %ioreq.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0100 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %call10 = call fastcc i32 @uw2453_synth_set_channel(ptr noundef %add.ptr.i, i32 noundef 1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %arrayidx = getelementptr [11 x [7 x i16]], ptr @uw2453_std_vco_cfg, i32 0, i32 %i.0100
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %call.i.i = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i.i) #6
  br i1 %call.i.i, label %if.end13.uw2453_write_vco_cfg.exit_crit_edge, label %do.body3.i.i, !prof !60

if.end13.uw2453_write_vco_cfg.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %uw2453_write_vco_cfg.exit

do.body3.i.i:                                     ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_init_hw, %do.end.i.i)) #6
          to label %if.then14.i.i [label %do.end.i.i], !srcloc !61

if.then14.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then14.i.i, %do.body3.i.i
  call void @dump_stack() #10
  br label %uw2453_write_vco_cfg.exit

uw2453_write_vco_cfg.exit:                        ; preds = %do.end.i.i, %if.end13.uw2453_write_vco_cfg.exit_crit_edge
  %conv.i = zext i16 %3 to i32
  %or1.i = or i32 %conv.i, 3407872
  %call17.i.i = call i32 @zd_usb_rfwrite(ptr noundef %add.ptr.i, i32 noundef %or1.i, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool16.not = icmp eq i32 %call17.i.i, 0
  br i1 %tobool16.not, label %if.end18, label %uw2453_write_vco_cfg.exit.cleanup_crit_edge

uw2453_write_vco_cfg.exit.cleanup_crit_edge:      ; preds = %uw2453_write_vco_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %uw2453_write_vco_cfg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq.i) #6
  %call.i87 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i.i) #6
  br i1 %call.i87, label %if.end18.zd_iowrite16_locked.exit_crit_edge, label %do.body3.i, !prof !60

if.end18.zd_iowrite16_locked.exit_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_iowrite16_locked.exit

do.body3.i:                                       ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_init_hw, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !61

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 825, ptr noundef nonnull @.str.12) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  call void @dump_stack() #10
  br label %zd_iowrite16_locked.exit

zd_iowrite16_locked.exit:                         ; preds = %do.end.i, %if.end18.zd_iowrite16_locked.exit_crit_edge
  %4 = ptrtoint ptr %ioreq.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -31295, ptr %ioreq.i, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 15, ptr %1, align 2
  %call20.i = call i32 @zd_usb_iowrite16v(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreq.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioreq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool20.not = icmp eq i32 %call20.i, 0
  br i1 %tobool20.not, label %if.end22, label %zd_iowrite16_locked.exit.cleanup_crit_edge

zd_iowrite16_locked.exit.cleanup_crit_edge:       ; preds = %zd_iowrite16_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %zd_iowrite16_locked.exit
  %call.i89 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i.i) #6
  br i1 %call.i89, label %if.end22.zd_ioread16_locked.exit_crit_edge, label %do.body3.i90, !prof !60

if.end22.zd_ioread16_locked.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_ioread16_locked.exit

do.body3.i90:                                     ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_init_hw, %do.end.i92)) #6
          to label %if.then14.i91 [label %do.end.i92], !srcloc !61

if.then14.i91:                                    ; preds = %do.body3.i90
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_ioread16_locked.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 807, ptr noundef nonnull @.str.12) #6
  br label %do.end.i92

do.end.i92:                                       ; preds = %if.then14.i91, %do.body3.i90
  call void @dump_stack() #10
  br label %zd_ioread16_locked.exit

zd_ioread16_locked.exit:                          ; preds = %do.end.i92, %if.end22.zd_ioread16_locked.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr.addr.i.i) #6
  %6 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -31295, ptr %addr.addr.i.i, align 2
  %call.i.i93 = call i32 @zd_usb_ioread16v(ptr noundef %add.ptr.i, ptr noundef nonnull %intr_status, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr.addr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool24.not = icmp eq i32 %call.i.i93, 0
  br i1 %tobool24.not, label %if.end26, label %zd_ioread16_locked.exit.cleanup_crit_edge

zd_ioread16_locked.exit.cleanup_crit_edge:        ; preds = %zd_ioread16_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %zd_ioread16_locked.exit
  %7 = ptrtoint ptr %intr_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %intr_status, align 2
  %9 = and i16 %8, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool27.not = icmp eq i16 %9, 0
  br i1 %tobool27.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end26
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end35, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr i8, ptr %rf, i32 -192
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %i.0100) #10
  br label %if.end47

do.end35:                                         ; preds = %for.inc
  %intf37 = getelementptr i8, ptr %rf, i32 -192
  %12 = ptrtoint ptr %intf37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf37, align 4
  %dev38 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev38, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #10
  %call39 = call fastcc i32 @uw2453_synth_set_channel(ptr noundef %add.ptr.i, i32 noundef 1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %do.end35
  %call43 = call fastcc i32 @uw2453_write_vco_cfg(ptr noundef %add.ptr.i, i16 noundef zeroext 26210)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end47:                                         ; preds = %if.end42.if.end47_crit_edge, %for.end
  %found_config.096 = phi i32 [ -1, %if.end42.if.end47_crit_edge ], [ %i.0100, %for.end ]
  %add = add nsw i32 %found_config.096, 1
  %priv = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 3
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %15, align 4
  %call48 = call fastcc i32 @zd_iowrite16_locked(ptr noundef %add.ptr.i, i16 noundef zeroext 6, i16 noundef zeroext -27860)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end42.cleanup_crit_edge, %do.end35.cleanup_crit_edge, %zd_ioread16_locked.exit.cleanup_crit_edge, %zd_iowrite16_locked.exit.cleanup_crit_edge, %uw2453_write_vco_cfg.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end47 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ %call39, %do.end35.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call.i.i93, %zd_ioread16_locked.exit.cleanup_crit_edge ], [ %call20.i, %zd_iowrite16_locked.exit.cleanup_crit_edge ], [ %call17.i.i, %uw2453_write_vco_cfg.exit.cleanup_crit_edge ], [ %call10, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intr_status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uw2453_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %conv = zext i8 %channel to i32
  %call2 = tail call fastcc i32 @uw2453_synth_set_channel(ptr noundef %add.ptr.i, i32 noundef %conv, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end.if.end8_crit_edge, label %if.else

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = zext i8 %channel to i16
  %div.lhs.trunc = add nsw i16 %4, -1
  %div50 = sdiv i16 %div.lhs.trunc, 2
  %5 = zext i16 %div50 to i32
  %arrayidx7 = getelementptr [11 x [7 x i16]], ptr @uw2453_std_vco_cfg, i32 0, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx7, align 2
  %phi.cast = zext i16 %7 to i32
  %phi.bo = or i32 %phi.cast, 3407872
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end.if.end8_crit_edge
  %vco_cfg.0 = phi i32 [ %phi.bo, %if.else ], [ 3434082, %if.end.if.end8_crit_edge ]
  %mutex.i.i = getelementptr i8, ptr %rf, i32 32
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i.i) #6
  br i1 %call.i.i, label %if.end8.uw2453_write_vco_cfg.exit_crit_edge, label %do.body3.i.i, !prof !60

if.end8.uw2453_write_vco_cfg.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %uw2453_write_vco_cfg.exit

do.body3.i.i:                                     ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_set_channel, %do.end.i.i)) #6
          to label %if.then14.i.i [label %do.end.i.i], !srcloc !61

if.then14.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then14.i.i, %do.body3.i.i
  tail call void @dump_stack() #10
  br label %uw2453_write_vco_cfg.exit

uw2453_write_vco_cfg.exit:                        ; preds = %do.end.i.i, %if.end8.uw2453_write_vco_cfg.exit_crit_edge
  %call17.i.i = tail call i32 @zd_usb_rfwrite(ptr noundef %add.ptr.i, i32 noundef %vco_cfg.0, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool10.not = icmp eq i32 %call17.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %uw2453_write_vco_cfg.exit.cleanup_crit_edge

uw2453_write_vco_cfg.exit.cleanup_crit_edge:      ; preds = %uw2453_write_vco_cfg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %uw2453_write_vco_cfg.exit
  %call.i = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @uw2453_init_mode.rv, i32 noundef 4, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @uw2453_set_channel.ioreqs, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call22 = tail call fastcc i32 @uw2453_set_tx_gain_level(ptr noundef %add.ptr.i, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @zd_iowrite16_locked(ptr noundef %add.ptr.i, i16 noundef zeroext 6, i16 noundef zeroext -27860)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %uw2453_write_vco_cfg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ %call2, %entry.cleanup_crit_edge ], [ %call17.i.i, %uw2453_write_vco_cfg.exit.cleanup_crit_edge ], [ %call.i, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uw2453_switch_radio_on(ptr noundef %rf) #0 align 64 {
entry:
  %ioreqs = alloca [2 x %struct.zd_ioreq16], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioreqs) #6
  %0 = ptrtoint ptr %ioreqs to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -8058065630790942657, ptr %ioreqs, align 8
  %mutex.i = getelementptr i8, ptr %rf, i32 32
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %entry.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !60

entry.zd_rfwrite_locked.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_switch_radio_on, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !61

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #10
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %entry.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %add.ptr.i, i32 noundef 155540, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end, label %zd_rfwrite_locked.exit.cleanup_crit_edge

zd_rfwrite_locked.exit.cleanup_crit_edge:         ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %zd_rfwrite_locked.exit
  %is_zd1211b.i = getelementptr i8, ptr %rf, i32 -4
  %1 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr inbounds [2 x %struct.zd_ioreq16], ptr %ioreqs, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 127, ptr %value, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull %ioreqs, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %zd_rfwrite_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call17.i, %zd_rfwrite_locked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioreqs) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uw2453_switch_radio_off(ptr noundef %rf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %mutex.i = getelementptr i8, ptr %rf, i32 32
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %entry.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !60

entry.zd_rfwrite_locked.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_switch_radio_off, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !61

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #10
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %entry.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %add.ptr.i, i32 noundef 155536, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.end, label %zd_rfwrite_locked.exit.cleanup_crit_edge

zd_rfwrite_locked.exit.cleanup_crit_edge:         ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @uw2453_switch_radio_off.ioreqs, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %zd_rfwrite_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call17.i, %zd_rfwrite_locked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rf_generic_patch_6m(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uw2453_clear(ptr nocapture noundef readonly %rf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_iowrite16a_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rfwritev_locked(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uw2453_synth_set_channel(ptr noundef %chip, i32 noundef %channel, i1 noundef zeroext %autocal) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %channel, -1
  br i1 %autocal, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [14 x i16], ptr @uw2453_autocal_synth, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1 = getelementptr [14 x i8], ptr @uw2453_std_synth, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0.in = phi i32 [ %conv, %if.then ], [ %conv2, %if.else ]
  %val.0 = or i32 %val.0.in, 1048576
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %if.end.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !60

if.end.zd_rfwrite_locked.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_synth_set_channel, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !61

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #10
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %if.end.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %chip, i32 noundef %val.0, i8 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool5.not = icmp eq i32 %call17.i, 0
  br i1 %tobool5.not, label %if.end7, label %zd_rfwrite_locked.exit.cleanup_crit_edge

zd_rfwrite_locked.exit.cleanup_crit_edge:         ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %zd_rfwrite_locked.exit
  %arrayidx8 = getelementptr [14 x i16], ptr @uw2453_synth_divide, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %5 to i32
  %or11 = or i32 %conv9, 2097152
  %call.i20 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i20, label %if.end7.zd_rfwrite_locked.exit25_crit_edge, label %do.body3.i21, !prof !60

if.end7.zd_rfwrite_locked.exit25_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit25

do.body3.i21:                                     ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_synth_set_channel, %do.end.i23)) #6
          to label %if.then14.i22 [label %do.end.i23], !srcloc !61

if.then14.i22:                                    ; preds = %do.body3.i21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i23

do.end.i23:                                       ; preds = %if.then14.i22, %do.body3.i21
  tail call void @dump_stack() #10
  br label %zd_rfwrite_locked.exit25

zd_rfwrite_locked.exit25:                         ; preds = %do.end.i23, %if.end7.zd_rfwrite_locked.exit25_crit_edge
  %call17.i24 = tail call i32 @zd_usb_rfwrite(ptr noundef %chip, i32 noundef %or11, i8 noundef zeroext 24) #6
  br label %cleanup

cleanup:                                          ; preds = %zd_rfwrite_locked.exit25, %zd_rfwrite_locked.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17.i24, %zd_rfwrite_locked.exit25 ], [ %call17.i, %zd_rfwrite_locked.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uw2453_write_vco_cfg(ptr noundef %chip, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %entry.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !60

entry.zd_rfwrite_locked.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_write_vco_cfg, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !61

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #10
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %entry.zd_rfwrite_locked.exit_crit_edge
  %conv = zext i16 %value to i32
  %or1 = or i32 %conv, 3407872
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %chip, i32 noundef %or1, i8 noundef zeroext 24) #6
  ret i32 %call17.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd_iowrite16_locked(ptr noundef %chip, i16 noundef zeroext %value, i16 noundef zeroext %addr) unnamed_addr #3 align 64 {
entry:
  %ioreq = alloca %struct.zd_ioreq16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioreq) #6
  %mutex = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #6
  br i1 %call, label %entry.do.end17_crit_edge, label %do.body3, !prof !60

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zd_iowrite16_locked, %do.end)) #6
          to label %if.then14 [label %do.end], !srcloc !61

if.then14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 825, ptr noundef nonnull @.str.12) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body3
  tail call void @dump_stack() #10
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_rfwrite(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_iowrite16v(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_ioread16v(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uw2453_set_tx_gain_level(ptr noundef %chip, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %channel, -1
  %arrayidx = getelementptr %struct.zd_chip, ptr %chip, i32 0, i32 5, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp = icmp ugt i8 %1, 18
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.zd_usb, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %channel) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [19 x i32], ptr @uw2453_txgain, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %5, 1048575
  %or = or i32 %and, 7340032
  %mutex.i = getelementptr inbounds %struct.zd_chip, ptr %chip, i32 0, i32 2
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #6
  br i1 %call.i, label %if.end.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !60

if.end.zd_rfwrite_locked.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@uw2453_set_tx_gain_level, %do.end.i)) #6
          to label %if.then14.i [label %do.end.i], !srcloc !61

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 854, ptr noundef nonnull @.str.12) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #10
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %if.end.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %chip, i32 noundef %or, i8 noundef zeroext 24) #6
  br label %cleanup

cleanup:                                          ; preds = %zd_rfwrite_locked.exit, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call17.i, %zd_rfwrite_locked.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @uw2453_init_hw.ioreqs, !1, !"ioreqs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 303, i32 33}
!2 = !{ptr @uw2453_init_hw.rv, !3, !"rv", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 344, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 400, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @uw2453_init_hw._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @uw2453_init_hw._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 409, i32 3}
!14 = !{ptr @uw2453_init_hw._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @uw2453_init_hw._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @uw2453_init_mode.rv, !17, !"rv", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 272, i32 19}
!18 = !{ptr @uw2453_autocal_synth, !19, !"uw2453_autocal_synth", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 189, i32 18}
!20 = !{ptr @uw2453_std_synth, !21, !"uw2453_std_synth", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 41, i32 17}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 854, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, !23, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!28 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @uw2453_synth_divide, !30, !"uw2453_synth_divide", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 61, i32 18}
!31 = !{ptr @uw2453_std_vco_cfg, !32, !"uw2453_std_vco_cfg", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 85, i32 18}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 825, i32 2}
!35 = !{ptr @zd_iowrite16_locked.__UNIQUE_ID_ddebug355, !34, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 807, i32 2}
!38 = !{ptr @zd_ioread16_locked.__UNIQUE_ID_ddebug354, !37, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!39 = !{ptr @uw2453_set_channel.ioreqs, !40, !"ioreqs", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 436, i32 33}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 287, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @uw2453_set_tx_gain_level._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @uw2453_set_tx_gain_level._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @uw2453_txgain, !47, !"uw2453_txgain", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 211, i32 12}
!48 = !{ptr @uw2453_switch_radio_off.ioreqs, !49, !"ioreqs", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_uw2453.c", i32 492, i32 33}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148704736, i64 2148704741, i64 2148704754, i64 2148704798, i64 2148704832, i64 2148704853}
