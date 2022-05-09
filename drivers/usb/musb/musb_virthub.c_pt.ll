; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/musb_virthub.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_virthub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+musb_root_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_musb_root_disconnect\09\09\09\09"
module asm "\09.long\09__crc_musb_root_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_root_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_root_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_musb_root_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.78, i32 }
%union.anon.78 = type { ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.85 }>
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { [4 x i8], [4 x i8] }

@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"root port resume stopped, power %02x\00", [59 x i8] zeroinitializer }, align 32
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Root port suspended, power %02x\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bogus rh suspend? %s\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Root port resuming, power %02x\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"HNP: Returning from HNP; no hub reset from b_idle\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"root port reset stopped\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"high-speed device connected\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"host disconnect (%s)\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_musb_root_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_root_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_root_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_root_disconnect to i32), ptr @__kstrtab_musb_root_disconnect, ptr @__kstrtabns_musb_root_disconnect }, section "___ksymtab_gpl+musb_root_disconnect", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clear feature %d\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port status %08x\00", [47 x i8] zeroinitializer }, align 32
@musb_hub_control.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb_hdrc\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"musb_hub_control\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/musb/musb_virthub.c\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB_TEST_J\0A\00", [20 x i8] zeroinitializer }, align 32
@musb_hub_control.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB_TEST_K\0A\00", [20 x i8] zeroinitializer }, align 32
@musb_hub_control.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB_TEST_SE0_NAK\0A\00", [46 x i8] zeroinitializer }, align 32
@musb_hub_control.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_TEST_PACKET\0A\00", [47 x i8] zeroinitializer }, align 32
@musb_hub_control.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.17, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB_TEST_FORCE_ENABLE\0A\00", [41 x i8] zeroinitializer }, align 32
@musb_hub_control.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.18, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEST_FIFO_ACCESS\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set feature %d\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.22 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 8, i64 21]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 33, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 85, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 104, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 112, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 127, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 175, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 183, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 223, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 320, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 355, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 389, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 393, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 397, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 401, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 406, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 414, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [35 x i8] c"../drivers/usb/musb/musb_virthub.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 425, i32 18 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_musb_root_disconnect, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_host_finish_resume(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -728
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %0 = load ptr, ptr @musb_readb, align 4
  %mregs = getelementptr i8, ptr %work, i32 376
  %1 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mregs, align 8
  %call6 = tail call zeroext i8 %0(ptr noundef %2, i32 noundef 1) #3
  %3 = and i8 %call6, -5
  %conv9 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %add.ptr, ptr noundef nonnull @.str, i32 noundef %conv9) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %4 = load ptr, ptr @musb_writeb, align 4
  %5 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mregs, align 8
  tail call void %4(ptr noundef %6, i32 noundef 1, i8 noundef zeroext %3) #3
  %is_active = getelementptr i8, ptr %work, i32 4296
  %7 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %7, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.set = or i24 %bf.load, 2097152
  store i24 %bf.set, ptr %is_active, align 8
  %port1_status = getelementptr i8, ptr %work, i32 208
  %8 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port1_status, align 8
  %and11 = and i32 %9, 2147221499
  %or = or i32 %and11, 262144
  store i32 %or, ptr %port1_status, align 8
  %hcd = getelementptr i8, ptr %work, i32 5364
  %10 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcd, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %11) #3
  %xceiv = getelementptr i8, ptr %work, i32 400
  %12 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_port_suspend(ptr noundef %musb, i1 noundef zeroext %do_suspend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xceiv, align 8
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %4 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mregs, align 8
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %6 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_host, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup79_crit_edge, label %if.end

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup79

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %8 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %8(ptr noundef %5, i32 noundef 1) #3
  br i1 %do_suspend, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.cleanup79_crit_edge

if.then3.cleanup79_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup79

if.end6:                                          ; preds = %if.then3
  %and8 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then10:                                        ; preds = %if.end6
  %or = or i8 %call, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %9 = load ptr, ptr @musb_writeb, align 4
  tail call void %9(ptr noundef %5, i32 noundef 1, i8 noundef zeroext %or) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %10 = load ptr, ptr @musb_readb, align 4
  %call13 = tail call zeroext i8 %10(ptr noundef %5, i32 noundef 1) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then10
  %power.0 = phi i8 [ %call13, %if.then10 ], [ %call17, %while.body.while.cond_crit_edge ]
  %retries.0 = phi i32 [ 10000, %if.then10 ], [ %dec, %while.body.while.cond_crit_edge ]
  %11 = and i8 %power.0, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %while.cond.if.end21.loopexit_crit_edge, label %while.body

while.cond.if.end21.loopexit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.loopexit

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %12 = load ptr, ptr @musb_readb, align 4
  %call17 = tail call zeroext i8 %12(ptr noundef %5, i32 noundef 1) #3
  %dec = add nsw i32 %retries.0, -1
  %cmp = icmp eq i32 %retries.0, 0
  br i1 %cmp, label %while.body.if.end21.loopexit_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.body.if.end21.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.loopexit

if.end21.loopexit:                                ; preds = %while.body.if.end21.loopexit_crit_edge, %while.cond.if.end21.loopexit_crit_edge
  %power.1.ph = phi i8 [ %call17, %while.body.if.end21.loopexit_crit_edge ], [ %power.0, %while.cond.if.end21.loopexit_crit_edge ]
  %.pre = zext i8 %power.1.ph to i32
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %if.end6.if.end21_crit_edge
  %conv22.pre-phi = phi i32 [ %.pre, %if.end21.loopexit ], [ %conv, %if.end6.if.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.1, i32 noundef %conv22.pre-phi) #3
  %port1_status = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %13 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port1_status, align 8
  %or23 = or i32 %14, 4
  store i32 %or23, ptr %port1_status, align 8
  %15 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xceiv, align 8
  %otg25 = getelementptr inbounds %struct.usb_phy, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %otg25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %otg25, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sw.default [
    i32 9, label %sw.bb
    i32 5, label %sw.bb41
  ]

sw.bb:                                            ; preds = %if.end21
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %state, align 4
  %host = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %b_hnp_enable = getelementptr inbounds %struct.usb_bus, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %b_hnp_enable, align 2
  %bf.lshr = lshr i8 %bf.load, 6
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %26 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %26, i32 3)
  %bf.load29 = load i24, ptr %is_active, align 8
  %27 = and i8 %bf.lshr, 1
  %bf.value = zext i8 %27 to i24
  %bf.shl = shl nuw nsw i24 %bf.value, 21
  %bf.clear30 = and i24 %bf.load29, -2097153
  %bf.set = or i24 %bf.shl, %bf.clear30
  store i24 %bf.set, ptr %is_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool36.not = icmp eq i8 %27, 0
  br i1 %tobool36.not, label %sw.bb.if.end40_crit_edge, label %if.then37

sw.bb.if.end40_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then37:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %otg_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %28, 20
  %call39 = tail call i32 @mod_timer(ptr noundef %otg_timer, i32 noundef %add) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %sw.bb.if.end40_crit_edge
  %ops.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 3
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 8
  %try_idle.i = getelementptr inbounds %struct.musb_platform_ops, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %try_idle.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %try_idle.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end40.cleanup79_crit_edge, label %if.then.i

if.end40.cleanup79_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup79

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %32(ptr noundef %musb, i32 noundef 0) #3
  br label %cleanup79

sw.bb41:                                          ; preds = %if.end21
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %state, align 4
  %host45 = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %host45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host45, align 4
  %b_hnp_enable46 = getelementptr inbounds %struct.usb_bus, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %b_hnp_enable46 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load47 = load i8, ptr %b_hnp_enable46, align 2
  %bf.lshr48 = lshr i8 %bf.load47, 6
  %is_active51 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %37 = ptrtoint ptr %is_active51 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 3)
  %bf.load52 = load i24, ptr %is_active51, align 8
  %38 = and i8 %bf.lshr48, 1
  %bf.value53 = zext i8 %38 to i24
  %bf.shl54 = shl nuw nsw i24 %bf.value53, 21
  %bf.clear55 = and i24 %bf.load52, -2097153
  %bf.set56 = or i24 %bf.shl54, %bf.clear55
  store i24 %bf.set56, ptr %is_active51, align 8
  %ops.i115 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 3
  %39 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i115, align 8
  %try_idle.i116 = getelementptr inbounds %struct.musb_platform_ops, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %try_idle.i116 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %try_idle.i116, align 4
  %tobool.not.i117 = icmp eq ptr %42, null
  br i1 %tobool.not.i117, label %sw.bb41.cleanup79_crit_edge, label %if.then.i118

sw.bb41.cleanup79_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup79

if.then.i118:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %42(ptr noundef %musb, i32 noundef 0) #3
  br label %cleanup79

sw.default:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %call61 = tail call ptr @usb_otg_state_string(i32 noundef %20) #3
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.2, ptr noundef %call61) #3
  br label %cleanup79

if.else:                                          ; preds = %if.end
  %43 = and i8 %call, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool64.not = icmp eq i8 %43, 0
  br i1 %tobool64.not, label %if.else.cleanup79_crit_edge, label %if.then65

if.else.cleanup79_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup79

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %and67 = and i8 %call, -7
  %44 = or i8 %and67, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %45 = load ptr, ptr @musb_writeb, align 4
  tail call void %45(ptr noundef %5, i32 noundef 1, i8 noundef zeroext %44) #3
  %conv72 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.3, i32 noundef %conv72) #3
  %port1_status73 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %46 = ptrtoint ptr %port1_status73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port1_status73, align 8
  %or74 = or i32 %47, -2147483648
  store i32 %or74, ptr %port1_status73, align 8
  %finish_resume_work = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %finish_resume_work, i32 noundef 4) #3
  br label %cleanup79

cleanup79:                                        ; preds = %if.then65, %if.else.cleanup79_crit_edge, %sw.default, %if.then.i118, %sw.bb41.cleanup79_crit_edge, %if.then.i, %if.end40.cleanup79_crit_edge, %if.then3.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup79_crit_edge ], [ -16, %if.then3.cleanup79_crit_edge ], [ 0, %sw.default ], [ 0, %if.end40.cleanup79_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb41.cleanup79_crit_edge ], [ 0, %if.then.i118 ], [ 0, %if.else.cleanup79_crit_edge ], [ 0, %if.then65 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_port_reset(ptr noundef %musb, i1 noundef zeroext %do_reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %2 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xceiv, align 8
  %otg = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.4) #3
  %port1_status = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %8 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port1_status, align 8
  %and = and i32 %9, -17
  store i32 %and, ptr %port1_status, align 8
  br label %cleanup51

if.end:                                           ; preds = %entry
  %is_host = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 48
  %10 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_host, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.cleanup51_crit_edge, label %if.end2

if.end.cleanup51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup51

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %12 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 1) #3
  br i1 %do_reset, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %13 = and i8 %call, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end22, label %if.then7

if.then7:                                         ; preds = %if.then4
  %rh_timer = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 14
  %14 = ptrtoint ptr %rh_timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rh_timer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp sgt i32 %sub, 0
  %or.cond = select i1 %cmp9.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  %deassert_reset_work = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %deassert_reset_work, i32 noundef %sub) #3
  br label %cleanup51

if.end15:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %18 = load ptr, ptr @musb_writeb, align 4
  %and17 = and i8 %call, -5
  tail call void %18(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %and17) #3
  %deassert_reset_work19 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i83 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %deassert_reset_work19, i32 noundef 1) #3
  br label %cleanup51

if.end22:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %and24 = and i8 %call, -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %20 = load ptr, ptr @musb_writeb, align 4
  %21 = or i8 %and24, 8
  tail call void %20(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %21) #3
  %port1_status28 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %22 = ptrtoint ptr %port1_status28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port1_status28, align 8
  %or29 = and i32 %23, -19
  %and31 = or i32 %or29, 16
  store i32 %and31, ptr %port1_status28, align 8
  %deassert_reset_work32 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i84 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %deassert_reset_work32, i32 noundef 5) #3
  br label %cleanup51

if.else:                                          ; preds = %if.end2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.5) #3
  %ops.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 3
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 8
  %pre_root_reset_end.i = getelementptr inbounds %struct.musb_platform_ops, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %pre_root_reset_end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pre_root_reset_end.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.else.musb_platform_pre_root_reset_end.exit_crit_edge, label %if.then.i

if.else.musb_platform_pre_root_reset_end.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %musb_platform_pre_root_reset_end.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %28(ptr noundef %musb) #3
  br label %musb_platform_pre_root_reset_end.exit

musb_platform_pre_root_reset_end.exit:            ; preds = %if.then.i, %if.else.musb_platform_pre_root_reset_end.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %29 = load ptr, ptr @musb_writeb, align 4
  %30 = and i8 %call, -9
  tail call void %29(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %30) #3
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 8
  %post_root_reset_end.i = getelementptr inbounds %struct.musb_platform_ops, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %post_root_reset_end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %post_root_reset_end.i, align 4
  %tobool.not.i86 = icmp eq ptr %34, null
  br i1 %tobool.not.i86, label %musb_platform_pre_root_reset_end.exit.musb_platform_post_root_reset_end.exit_crit_edge, label %if.then.i87

musb_platform_pre_root_reset_end.exit.musb_platform_post_root_reset_end.exit_crit_edge: ; preds = %musb_platform_pre_root_reset_end.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %musb_platform_post_root_reset_end.exit

if.then.i87:                                      ; preds = %musb_platform_pre_root_reset_end.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %34(ptr noundef %musb) #3
  br label %musb_platform_post_root_reset_end.exit

musb_platform_post_root_reset_end.exit:           ; preds = %if.then.i87, %musb_platform_pre_root_reset_end.exit.musb_platform_post_root_reset_end.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %35 = load ptr, ptr @musb_readb, align 4
  %call38 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 1) #3
  %36 = and i8 %call38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not = icmp eq i8 %36, 0
  br i1 %tobool41.not, label %musb_platform_post_root_reset_end.exit.if.end45_crit_edge, label %if.then42

musb_platform_post_root_reset_end.exit.if.end45_crit_edge: ; preds = %musb_platform_post_root_reset_end.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then42:                                        ; preds = %musb_platform_post_root_reset_end.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.6) #3
  %port1_status43 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %37 = ptrtoint ptr %port1_status43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port1_status43, align 8
  %or44 = or i32 %38, 1024
  store i32 %or44, ptr %port1_status43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %musb_platform_post_root_reset_end.exit.if.end45_crit_edge
  %port1_status46 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %39 = ptrtoint ptr %port1_status46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port1_status46, align 8
  %and47 = and i32 %40, -1179667
  %or49 = or i32 %and47, 1179650
  store i32 %or49, ptr %port1_status46, align 8
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %41 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hcd, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %42) #3
  %vbuserr_retry = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 40
  %43 = ptrtoint ptr %vbuserr_retry to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 3, ptr %vbuserr_retry, align 8
  br label %cleanup51

cleanup51:                                        ; preds = %if.end45, %if.end22, %if.end15, %if.then13, %if.end.cleanup51_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_root_disconnect(ptr noundef %musb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %xceiv = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 35
  %0 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xceiv, align 8
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  %port1_status = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 13
  %4 = ptrtoint ptr %port1_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65792, ptr %port1_status, align 8
  %hcd = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 58
  %5 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hcd, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %6) #3
  %is_active = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %7 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %7, i32 3)
  %bf.load = load i24, ptr %is_active, align 8
  %bf.clear = and i24 %bf.load, -2097153
  store i24 %bf.clear, ptr %is_active, align 8
  %8 = ptrtoint ptr %xceiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xceiv, align 8
  %otg3 = getelementptr inbounds %struct.usb_phy, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %otg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg3, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %13, label %sw.default [
    i32 10, label %sw.bb
    i32 9, label %entry.sw.bb12_crit_edge
    i32 12, label %sw.bb20
  ]

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb12

sw.bb:                                            ; preds = %entry
  %host = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %b_hnp_enable = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load4 = load i8, ptr %b_hnp_enable, align 2
  %18 = and i8 %bf.load4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %sw.bb.sw.bb12_crit_edge, label %if.then

sw.bb.sw.bb12_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb12

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 11, ptr %state, align 4
  %is_a_peripheral = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %20 = ptrtoint ptr %is_a_peripheral to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load9 = load i32, ptr %is_a_peripheral, align 4
  %bf.set11 = or i32 %bf.load9, 536870912
  store i32 %bf.set11, ptr %is_a_peripheral, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %sw.bb.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %state, align 4
  %22 = ptrtoint ptr %is_active to i32
  call void @__asan_loadN_noabort(i32 %22, i32 3)
  %bf.load17 = load i24, ptr %is_active, align 8
  %bf.clear18 = and i24 %bf.load17, -2097153
  store i24 %bf.clear18, ptr %is_active, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @usb_otg_state_string(i32 noundef %13) #3
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.7, ptr noundef %call) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb12, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_hub_status_data(ptr noundef %hcd, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hcd_to_musb(ptr noundef %hcd) #3
  %port1_status = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port1_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %tobool.not = icmp ult i32 %1, 65536
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %buf, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hcd_to_musb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hcd_to_musb(ptr noundef %hcd) #3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #3
  %flags7 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  %0 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags7, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %typeReq, label %if.end.error_crit_edge [
    i16 8193, label %if.end.sw.bb_crit_edge
    i16 8195, label %if.end.sw.bb_crit_edge287
    i16 8961, label %sw.bb15
    i16 -24570, label %sw.bb35
    i16 -24576, label %sw.bb39
    i16 -23808, label %sw.bb40
    i16 8963, label %sw.bb52
  ]

if.end.sw.bb_crit_edge287:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge287
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb.sw.epilog198.thread_crit_edge, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

sw.bb.sw.epilog198.thread_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog198.thread

sw.bb15:                                          ; preds = %if.end
  %3 = and i16 %wIndex, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp18.not = icmp eq i16 %3, 1
  br i1 %cmp18.not, label %if.end21, label %sw.bb15.error_crit_edge

sw.bb15.error_crit_edge:                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end21:                                         ; preds = %sw.bb15
  %conv22 = zext i16 %wValue to i32
  %4 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %wValue, label %if.end21.error_crit_edge [
    i16 1, label %if.end21.sw.epilog31_crit_edge
    i16 2, label %sw.bb23
    i16 8, label %sw.bb25
    i16 16, label %if.end21.sw.epilog31_crit_edge288
    i16 17, label %if.end21.sw.epilog31_crit_edge289
    i16 19, label %if.end21.sw.epilog31_crit_edge290
    i16 20, label %if.end21.sw.epilog31_crit_edge291
    i16 18, label %if.end21.sw.epilog31_crit_edge292
  ]

if.end21.sw.epilog31_crit_edge292:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.end21.sw.epilog31_crit_edge291:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.end21.sw.epilog31_crit_edge290:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.end21.sw.epilog31_crit_edge289:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.end21.sw.epilog31_crit_edge288:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.end21.sw.epilog31_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

sw.bb23:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %call24 = tail call i32 @musb_port_suspend(ptr noundef %call, i1 noundef zeroext false)
  br label %sw.epilog31

sw.bb25:                                          ; preds = %if.end21
  %is_b_host = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 6
  %5 = ptrtoint ptr %is_b_host to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %is_b_host, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool26.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool26.not, label %if.then27, label %sw.bb25.sw.epilog31_crit_edge

sw.bb25.sw.epilog31_crit_edge:                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.then27:                                        ; preds = %sw.bb25
  %ops.i = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %set_vbus.i = getelementptr inbounds %struct.musb_platform_ops, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_vbus.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then27.sw.epilog31_crit_edge, label %if.then.i

if.then27.sw.epilog31_crit_edge:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog31

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %9(ptr noundef %call, i32 noundef 0) #3
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %if.then.i, %if.then27.sw.epilog31_crit_edge, %sw.bb25.sw.epilog31_crit_edge, %sw.bb23, %if.end21.sw.epilog31_crit_edge, %if.end21.sw.epilog31_crit_edge288, %if.end21.sw.epilog31_crit_edge289, %if.end21.sw.epilog31_crit_edge290, %if.end21.sw.epilog31_crit_edge291, %if.end21.sw.epilog31_crit_edge292
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.8, i32 noundef %conv22) #3
  %shl = shl nuw nsw i32 1, %conv22
  %neg = xor i32 %shl, -1
  %port1_status = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %port1_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port1_status, align 8
  %and34 = and i32 %11, %neg
  store i32 %and34, ptr %port1_status, align 8
  br label %sw.epilog198.thread

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %buf, align 1
  %bDescriptorType = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 1
  %13 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 41, ptr %bDescriptorType, align 1
  %bNbrPorts = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %bNbrPorts to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bNbrPorts, align 1
  %wHubCharacteristics = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %wHubCharacteristics to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 4352, ptr %wHubCharacteristics, align 1
  %bPwrOn2PwrGood = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 4
  %16 = ptrtoint ptr %bPwrOn2PwrGood to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %bPwrOn2PwrGood, align 1
  %bHubContrCurrent = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 5
  %17 = ptrtoint ptr %bHubContrCurrent to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bHubContrCurrent, align 1
  %u = getelementptr inbounds %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6
  %18 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %u, align 1
  %arrayidx38 = getelementptr %struct.usb_hub_descriptor, ptr %buf, i32 0, i32 6, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx38, align 1
  br label %sw.epilog198.thread

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog198.thread

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wIndex)
  %cmp42.not = icmp eq i16 %wIndex, 1
  br i1 %cmp42.not, label %do.body46, label %sw.bb40.error_crit_edge

sw.bb40.error_crit_edge:                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

do.body46:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #5
  %port1_status47 = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %21 = ptrtoint ptr %port1_status47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port1_status47, align 8
  %and48 = and i32 %22, 2147483647
  %23 = tail call i32 @llvm.bswap.i32(i32 %and48)
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %buf, align 1
  %25 = ptrtoint ptr %port1_status47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port1_status47, align 8
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.9, i32 noundef %26) #3
  br label %sw.epilog198.thread

sw.bb52:                                          ; preds = %if.end
  %27 = and i16 %wIndex, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp55.not = icmp eq i16 %27, 1
  br i1 %cmp55.not, label %if.end58, label %sw.bb52.error_crit_edge

sw.bb52.error_crit_edge:                          ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end58:                                         ; preds = %sw.bb52
  %conv59 = zext i16 %wValue to i32
  %28 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %wValue, label %if.end58.error_crit_edge [
    i16 8, label %sw.bb60
    i16 4, label %sw.bb71
    i16 2, label %sw.bb72
    i16 21, label %sw.bb74
  ]

if.end58.error_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

sw.bb60:                                          ; preds = %if.end58
  %is_b_host62 = getelementptr inbounds %struct.usb_bus, ptr %hcd, i32 0, i32 6
  %29 = ptrtoint ptr %is_b_host62 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load63 = load i8, ptr %is_b_host62, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load63)
  %tobool66.not = icmp sgt i8 %bf.load63, -1
  br i1 %tobool66.not, label %land.lhs.true, label %cleanup.critedge283

land.lhs.true:                                    ; preds = %sw.bb60
  %port_mode.i = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 45
  %30 = ptrtoint ptr %port_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i.not = icmp eq i32 %31, 1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %conv59) #3
  %shl195 = shl nuw nsw i32 1, %conv59
  %port1_status196 = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %32 = ptrtoint ptr %port1_status196 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port1_status196, align 8
  %or = or i32 %33, %shl195
  store i32 %or, ptr %port1_status196, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br i1 %cmp.i.not, label %if.then201, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb71:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @musb_port_reset(ptr noundef %call, i1 noundef zeroext true)
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %conv59) #3
  %shl195.c280 = shl nuw nsw i32 1, %conv59
  %port1_status196.c281 = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %34 = ptrtoint ptr %port1_status196.c281 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port1_status196.c281, align 8
  %or.c282 = or i32 %35, %shl195.c280
  store i32 %or.c282, ptr %port1_status196.c281, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br label %cleanup

sw.bb72:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  %call73 = tail call i32 @musb_port_suspend(ptr noundef %call, i1 noundef zeroext true)
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %conv59) #3
  %shl195.c276 = shl nuw nsw i32 1, %conv59
  %port1_status196.c277 = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %36 = ptrtoint ptr %port1_status196.c277 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port1_status196.c277, align 8
  %or.c278 = or i32 %37, %shl195.c276
  store i32 %or.c278, ptr %port1_status196.c277, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br label %cleanup

sw.bb74:                                          ; preds = %if.end58
  %is_host = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 48
  %38 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_host, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool75.not = icmp eq i8 %39, 0
  br i1 %tobool75.not, label %if.end83, label %sw.bb74.error_crit_edge, !prof !56

sw.bb74.error_crit_edge:                          ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end83:                                         ; preds = %sw.bb74
  %40 = lshr i16 %wIndex, 8
  %trunc = trunc i16 %40 to i8
  %41 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %trunc, label %if.end83.error_crit_edge [
    i8 1, label %do.body88
    i8 2, label %do.body103
    i8 3, label %do.body120
    i8 4, label %do.body137
    i8 5, label %do.body154
    i8 6, label %do.body171
  ]

if.end83.error_crit_edge:                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

do.body88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_hub_control.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_hub_control, %if.then98)) #3
          to label %sw.epilog188 [label %if.then98], !srcloc !57

if.then98:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_hub_control.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.13) #3
  br label %sw.epilog188

do.body103:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_hub_control.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_hub_control, %if.then115)) #3
          to label %sw.epilog188 [label %if.then115], !srcloc !57

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_hub_control.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.14) #3
  br label %sw.epilog188

do.body120:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_hub_control.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_hub_control, %if.then132)) #3
          to label %sw.epilog188 [label %if.then132], !srcloc !57

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_hub_control.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.15) #3
  br label %sw.epilog188

do.body137:                                       ; preds = %if.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_hub_control.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_hub_control, %if.then149)) #3
          to label %do.end152 [label %if.then149], !srcloc !57

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_hub_control.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.16) #3
  br label %do.end152

do.end152:                                        ; preds = %if.then149, %do.body137
  tail call void @musb_load_testpacket(ptr noundef %call) #3
  br label %sw.epilog188

do.body154:                                       ; preds = %if.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_hub_control.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_hub_control, %if.then166)) #3
          to label %do.end169 [label %if.then166], !srcloc !57

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_hub_control.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.17) #3
  br label %do.end169

do.end169:                                        ; preds = %if.then166, %do.body154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %42 = load ptr, ptr @musb_writeb, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 27
  %43 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mregs, align 8
  tail call void %42(ptr noundef %44, i32 noundef 96, i8 noundef zeroext 1) #3
  br label %sw.epilog188

do.body171:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @musb_hub_control.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@musb_hub_control, %if.then183)) #3
          to label %sw.epilog188 [label %if.then183], !srcloc !57

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @musb_hub_control.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.18) #3
  br label %sw.epilog188

sw.epilog188:                                     ; preds = %if.then183, %do.body171, %do.end169, %do.end152, %if.then132, %do.body120, %if.then115, %do.body103, %if.then98, %do.body88
  %temp.0 = phi i8 [ -112, %do.end169 ], [ 8, %do.end152 ], [ 2, %if.then98 ], [ 4, %if.then115 ], [ 1, %if.then132 ], [ 64, %if.then183 ], [ 2, %do.body88 ], [ 4, %do.body103 ], [ 1, %do.body120 ], [ 64, %do.body171 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %45 = load ptr, ptr @musb_writeb, align 4
  %mregs189 = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 27
  %46 = ptrtoint ptr %mregs189 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mregs189, align 8
  tail call void %45(ptr noundef %47, i32 noundef 15, i8 noundef zeroext %temp.0) #3
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %conv59) #3
  %shl195.c = shl nuw nsw i32 1, %conv59
  %port1_status196.c = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %48 = ptrtoint ptr %port1_status196.c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port1_status196.c, align 8
  %or.c = or i32 %49, %shl195.c
  store i32 %or.c, ptr %port1_status196.c, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br label %cleanup

error:                                            ; preds = %if.end83.error_crit_edge, %sw.bb74.error_crit_edge, %if.end58.error_crit_edge, %sw.bb52.error_crit_edge, %sw.bb40.error_crit_edge, %if.end21.error_crit_edge, %sw.bb15.error_crit_edge, %sw.bb.error_crit_edge, %if.end.error_crit_edge
  br label %sw.epilog198.thread

sw.epilog198.thread:                              ; preds = %error, %do.body46, %sw.bb39, %sw.bb35, %sw.epilog31, %sw.bb.sw.epilog198.thread_crit_edge
  %retval1.0.ph = phi i32 [ 0, %sw.bb.sw.epilog198.thread_crit_edge ], [ 0, %sw.epilog31 ], [ 0, %sw.bb35 ], [ 0, %sw.bb39 ], [ 0, %do.body46 ], [ -32, %error ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br label %cleanup

if.then201:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @musb_start(ptr noundef %call) #3
  br label %cleanup

cleanup.critedge283:                              ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %conv59) #3
  %shl195.c284 = shl nuw nsw i32 1, %conv59
  %port1_status196.c285 = getelementptr inbounds %struct.musb, ptr %call, i32 0, i32 13
  %50 = ptrtoint ptr %port1_status196.c285 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port1_status196.c285, align 8
  %or.c286 = or i32 %51, %shl195.c284
  store i32 %or.c286, ptr %port1_status196.c285, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge283, %if.then201, %sw.epilog198.thread, %sw.epilog188, %sw.bb72, %sw.bb71, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -108, %if.then ], [ 0, %if.then201 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %retval1.0.ph, %sw.epilog198.thread ], [ 0, %sw.epilog188 ], [ 0, %sw.bb72 ], [ 0, %sw.bb71 ], [ 0, %cleanup.critedge283 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_load_testpacket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/musb_virthub.c", i32 33, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/musb_virthub.c", i32 85, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/musb_virthub.c", i32 104, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/musb/musb_virthub.c", i32 112, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/musb/musb_virthub.c", i32 127, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/musb_virthub.c", i32 175, i32 18}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/musb_virthub.c", i32 183, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/musb_virthub.c", i32 223, i32 18}
!16 = !{ptr @__ksymtab_musb_root_disconnect, !17, !"__ksymtab_musb_root_disconnect", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/musb_virthub.c", i32 227, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/musb/musb_virthub.c", i32 320, i32 18}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/musb/musb_virthub.c", i32 355, i32 18}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/musb_virthub.c", i32 389, i32 5}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @musb_hub_control.__UNIQUE_ID_ddebug293, !23, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/musb_virthub.c", i32 393, i32 5}
!30 = !{ptr @musb_hub_control.__UNIQUE_ID_ddebug294, !29, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/musb/musb_virthub.c", i32 397, i32 5}
!33 = !{ptr @musb_hub_control.__UNIQUE_ID_ddebug295, !32, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/musb_virthub.c", i32 401, i32 5}
!36 = !{ptr @musb_hub_control.__UNIQUE_ID_ddebug296, !35, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/musb/musb_virthub.c", i32 406, i32 5}
!39 = !{ptr @musb_hub_control.__UNIQUE_ID_ddebug297, !38, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/musb/musb_virthub.c", i32 414, i32 5}
!42 = !{ptr @musb_hub_control.__UNIQUE_ID_ddebug298, !41, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/musb/musb_virthub.c", i32 425, i32 18}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2148962710, i64 2148962715, i64 2148962728, i64 2148962772, i64 2148962806, i64 2148962827}
