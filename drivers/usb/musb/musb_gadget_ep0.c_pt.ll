; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/musb_gadget_ep0.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_gadget_ep0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, i8, i8, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"csr %04x, count %d, ep0stage %s\00", [32 x i8] zeroinitializer }, align 32
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@musb_g_ep0_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s %d: SetupEnd came in a wrong ep0stage %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"musb_g_ep0_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/musb/musb_gadget_ep0.c\00", [61 x i8] zeroinitializer }, align 32
@musb_g_ep0_irq._entry_ptr = internal global ptr @musb_g_ep0_irq._entry, section ".printk_index", align 4
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"entering TESTMODE\00", [46 x i8] zeroinitializer }, align 32
@musb_g_ep0_irq._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s %d: SETUP packet len %d != 8 ?\0A\00", [59 x i8] zeroinitializer }, align 32
@musb_g_ep0_irq._entry_ptr.7 = internal global ptr @musb_g_ep0_irq._entry.5, section ".printk_index", align 4
@musb_g_ep0_irq._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015%s: peripheral reset irq lost!\0A\00", [62 x i8] zeroinitializer }, align 32
@musb_g_ep0_irq._entry_ptr.10 = internal global ptr @musb_g_ep0_irq._entry.8, section ".printk_index", align 4
@musb_driver_name = external dso_local constant [0 x i8], align 1
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"handled %d, csr %04x, ep0stage %s\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stall (%d)\00", [21 x i8] zeroinitializer }, align 32
@musb_g_ep0_ops = dso_local constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @musb_g_ep0_enable, ptr @musb_g_ep0_disable, ptr null, ptr @musb_alloc_request, ptr @musb_free_request, ptr @musb_g_ep0_queue, ptr @musb_g_ep0_dequeue, ptr @musb_g_ep0_halt, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wait\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in/status\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"out/status\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"odd; csr0 %04x\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SETUP req%02x.%02x v%04x i%04x l%d\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"restarting the request\00", [41 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"musb_hdrc\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"service_zero_data_request\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB_TEST_J\0A\00", [20 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB_TEST_K\0A\00", [20 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.28, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB_TEST_SE0_NAK\0A\00", [46 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.29, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_TEST_PACKET\0A\00", [47 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.30, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEST_FORCE_HS\0A\00", [17 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.31, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEST_FORCE_FS\0A\00", [17 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.32, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEST_FIFO_ACCESS\0A\00", [46 x i8] zeroinitializer }, align 32
@service_zero_data_request.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.33, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEST_FORCE_HOST\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HNP: Setting HR\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ep0 request queued in state %d\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"queue to %s (%s), length=%d\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN/TX\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OUT/RX\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ep0 can't halt in state %d\00", [37 x i8] zeroinitializer }, align 32
@switch.table.musb_g_ep0_irq = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.17], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.40 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 192, i64 193, i64 194, i64 195]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 653, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 686, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 730, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 779, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 789, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 842, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 859, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"musb_g_ep0_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1050, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 36, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 37, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 38, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 39, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 40, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 41, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 42, i32 40 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 43, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 528, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 585, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 285, i32 21 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 315, i32 7 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 320, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 325, i32 7 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 330, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 337, i32 7 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 343, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 349, i32 7 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 355, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 188, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 939, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 948, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 949, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 949, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [38 x i8] c"../drivers/usb/musb/musb_gadget_ep0.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1041, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [28 x i8] c"switch.table.musb_g_ep0_irq\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @musb_g_ep0_irq._entry, ptr @musb_g_ep0_irq._entry.5, ptr @musb_g_ep0_irq._entry.8, ptr @musb_g_ep0_irq._entry_ptr, ptr @musb_g_ep0_irq._entry_ptr.10, ptr @musb_g_ep0_irq._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @musb_g_ep0_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @switch.table.musb_g_ep0_irq], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_g_ep0_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_g_ep0_irq._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_g_ep0_irq._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_g_ep0_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.musb_g_ep0_irq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @musb_g_ep0_irq(ptr noundef %musb) local_unnamed_addr #0 align 64 {
entry:
  %result.i.i = alloca [2 x i8], align 1
  %setup89 = alloca %struct.usb_ctrlrequest, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %regs1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 2
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 8
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_select, align 4
  tail call void %5(ptr noundef %1, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %6 = load ptr, ptr @musb_readw, align 4
  %call = tail call zeroext i16 %6(ptr noundef %3, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %7 = load ptr, ptr @musb_readb, align 4
  %call3 = tail call zeroext i8 %7(ptr noundef %3, i32 noundef 8) #7
  %conv4 = zext i16 %call to i32
  %conv5 = zext i8 %call3 to i32
  %ep0_state = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 55
  %8 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep0_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %10 = icmp ult i8 %9, 7
  br i1 %10, label %switch.lookup, label %entry.decode_ep0stage.exit_crit_edge

entry.decode_ep0stage.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = sext i8 %9 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.musb_g_ep0_irq, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %decode_ep0stage.exit

decode_ep0stage.exit:                             ; preds = %switch.lookup, %entry.decode_ep0stage.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %entry.decode_ep0stage.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str, i32 noundef %conv4, i32 noundef %conv5, ptr noundef nonnull %retval.0.i) #7
  %and = and i32 %conv4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %decode_ep0stage.exit.cleanup199_crit_edge

decode_ep0stage.exit.cleanup199_crit_edge:        ; preds = %decode_ep0stage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup199

if.end:                                           ; preds = %decode_ep0stage.exit
  %and9 = and i32 %conv4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %13 = load ptr, ptr @musb_writew, align 4
  %and13 = and i16 %call, -5
  tail call void %13(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %and13) #7
  %14 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ep0_state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %15 = load ptr, ptr @musb_readw, align 4
  %call16 = tail call zeroext i16 %15(ptr noundef %3, i32 noundef 2) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end.if.end17_crit_edge
  %retval2.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.end.if.end17_crit_edge ]
  %csr.0 = phi i16 [ %call16, %if.then11 ], [ %call, %if.end.if.end17_crit_edge ]
  %16 = and i16 %csr.0, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool20.not = icmp eq i16 %16, 0
  br i1 %tobool20.not, label %if.end17.if.end34_crit_edge, label %if.then21

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then21:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %17 = load ptr, ptr @musb_writew, align 4
  tail call void %17(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 128) #7
  %18 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ep0_state, align 8
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %sw.default.i284 [
    i8 2, label %sw.bb
    i8 3, label %sw.bb25
    i8 0, label %if.then21.decode_ep0stage.exit286_crit_edge
    i8 1, label %sw.bb1.i278
    i8 5, label %sw.bb6.i283
    i8 4, label %sw.bb5.i282
    i8 6, label %sw.bb4.i281
  ]

if.then21.decode_ep0stage.exit286_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit286

sw.bb:                                            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 5, ptr %ep0_state, align 8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %ep0_state, align 8
  br label %sw.epilog

sw.bb1.i278:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit286

sw.bb4.i281:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit286

sw.bb5.i282:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit286

sw.bb6.i283:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit286

sw.default.i284:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit286

decode_ep0stage.exit286:                          ; preds = %sw.default.i284, %sw.bb6.i283, %sw.bb5.i282, %sw.bb4.i281, %sw.bb1.i278, %if.then21.decode_ep0stage.exit286_crit_edge
  %retval.0.i285 = phi ptr [ @.str.20, %sw.default.i284 ], [ @.str.19, %sw.bb6.i283 ], [ @.str.18, %sw.bb5.i282 ], [ @.str.17, %sw.bb4.i281 ], [ @.str.14, %sw.bb1.i278 ], [ @.str.13, %if.then21.decode_ep0stage.exit286_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull %retval.0.i285) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %decode_ep0stage.exit286, %sw.bb25, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %23 = load ptr, ptr @musb_readw, align 4
  %call33 = tail call zeroext i16 %23(ptr noundef %3, i32 noundef 2) #7
  br label %if.end34

if.end34:                                         ; preds = %sw.epilog, %if.end17.if.end34_crit_edge
  %retval2.1 = phi i32 [ 1, %sw.epilog ], [ %retval2.0, %if.end17.if.end34_crit_edge ]
  %csr.1 = phi i16 [ %call33, %sw.epilog ], [ %csr.0, %if.end17.if.end34_crit_edge ]
  %24 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ep0_state, align 8
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %25, label %do.end183 [
    i8 2, label %sw.bb37
    i8 3, label %sw.bb43
    i8 4, label %sw.bb49
    i8 5, label %if.end34.sw.bb69_crit_edge
    i8 0, label %sw.bb82
    i8 1, label %if.end34.setup_crit_edge
    i8 6, label %if.end34.cleanup199_crit_edge
  ]

if.end34.cleanup199_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup199

if.end34.setup_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup

if.end34.sw.bb69_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb69

sw.bb37:                                          ; preds = %if.end34
  %27 = and i16 %csr.1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp = icmp eq i16 %27, 0
  br i1 %cmp, label %if.then41, label %sw.bb37.cleanup199_crit_edge

sw.bb37.cleanup199_crit_edge:                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup199

if.then41:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ep0_txstate(ptr noundef %musb)
  br label %cleanup199

sw.bb43:                                          ; preds = %if.end34
  %28 = and i16 %csr.1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool46.not = icmp eq i16 %28, 0
  br i1 %tobool46.not, label %sw.bb43.cleanup199_crit_edge, label %if.then47

sw.bb43.cleanup199_crit_edge:                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup199

if.then47:                                        ; preds = %sw.bb43
  %29 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs1, align 8
  %req_list.i.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19, i32 10
  %31 = ptrtoint ptr %req_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %req_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %32, %req_list.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 -56
  %tobool.not77.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i = or i1 %cmp.i.not.i.i.i, %tobool.not77.i
  br i1 %tobool.not.i, label %if.then47.if.end40.i_crit_edge, label %if.then.i

if.then47.if.end40.i_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then.i:                                        ; preds = %if.then47
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i.i, align 4
  %actual.i = getelementptr i8, ptr %32, i32 -4
  %35 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %36
  %length.i = getelementptr i8, ptr %32, i32 -52
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %38, %36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %39 = load ptr, ptr @musb_readb, align 4
  %call6.i = tail call zeroext i8 %39(ptr noundef %30, i32 noundef 8) #7
  %conv.i = zext i8 %call6.i to i16
  %conv7.i = zext i8 %call6.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv7.i)
  %cmp.i = icmp ult i32 %sub.i, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %status.i = getelementptr i8, ptr %32, i32 -8
  %40 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -75, ptr %status.i, align 4
  %conv10.i = trunc i32 %sub.i to i16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i.if.end.i_crit_edge
  %count.0.i = phi i16 [ %conv10.i, %if.then9.i ], [ %conv.i, %if.then.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.0.i)
  %cmp12.not.i = icmp eq i16 %count.0.i, 0
  br i1 %cmp12.not.i, label %if.end.i.if.then34.i_crit_edge, label %if.end19.i

if.end.i.if.then34.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

if.end19.i:                                       ; preds = %if.end.i
  %conv11.i = zext i16 %count.0.i to i32
  tail call void @musb_read_fifo(ptr noundef %endpoints, i16 noundef zeroext %count.0.i, ptr noundef %add.ptr.i) #7
  %41 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual.i, align 4
  %add.i = add i32 %42, %conv11.i
  store i32 %add.i, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %count.0.i)
  %cmp21.i = icmp ult i16 %count.0.i, 64
  br i1 %cmp21.i, label %if.end19.i.if.then34.i_crit_edge, label %lor.lhs.false.i

if.end19.i.if.then34.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %44)
  %cmp25.i = icmp eq i32 %add.i, %44
  br i1 %cmp25.i, label %lor.lhs.false.i.if.then34.i_crit_edge, label %lor.lhs.false.i.if.end40.i_crit_edge

lor.lhs.false.i.if.end40.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

lor.lhs.false.i.if.then34.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false.i.if.then34.i_crit_edge, %if.end19.i.if.then34.i_crit_edge, %if.end.i.if.then34.i_crit_edge
  %45 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %ep0_state, align 8
  %ackpend.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 54
  %46 = ptrtoint ptr %ackpend.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 72, ptr %ackpend.i, align 2
  %ep_in.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19
  tail call void @musb_g_giveback(ptr noundef %ep_in.i.i, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef 0) #7
  %47 = ptrtoint ptr %ackpend.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ackpend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool36.not.i = icmp eq i16 %48, 0
  br i1 %tobool36.not.i, label %if.then34.i.cleanup199_crit_edge, label %if.end38.i

if.then34.i.cleanup199_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup199

if.end38.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %ackpend.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %ackpend.i, align 2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end38.i, %lor.lhs.false.i.if.end40.i_crit_edge, %if.then47.if.end40.i_crit_edge
  %csr.176.i = phi i16 [ 72, %if.end38.i ], [ 96, %if.then47.if.end40.i_crit_edge ], [ 64, %lor.lhs.false.i.if.end40.i_crit_edge ]
  %50 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ep_select, align 4
  %52 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mregs, align 8
  tail call void %51(ptr noundef %53, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %54 = load ptr, ptr @musb_writew, align 4
  tail call void %54(ptr noundef %30, i32 noundef 2, i16 noundef zeroext %csr.176.i) #7
  br label %cleanup199

sw.bb49:                                          ; preds = %if.end34
  %set_address = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %55 = ptrtoint ptr %set_address to i32
  call void @__asan_loadN_noabort(i32 %55, i32 3)
  %bf.load = load i24, ptr %set_address, align 8
  %56 = and i24 %bf.load, 1024
  %tobool50.not = icmp eq i24 %56, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear54 = and i24 %bf.load, -1025
  %57 = ptrtoint ptr %set_address to i32
  call void @__asan_storeN_noabort(i32 %57, i32 3)
  store i24 %bf.clear54, ptr %set_address, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %58 = load ptr, ptr @musb_writeb, align 4
  %address = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 52
  %59 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %address, align 1
  tail call void %58(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %60) #7
  br label %sw.bb69

if.else:                                          ; preds = %sw.bb49
  %61 = and i24 %bf.load, 512
  %tobool59.not = icmp eq i24 %61, 0
  br i1 %tobool59.not, label %if.else.sw.bb69_crit_edge, label %if.then60

if.else.sw.bb69_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb69

if.then60:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.4) #7
  %test_mode_nr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 53
  %62 = ptrtoint ptr %test_mode_nr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %test_mode_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %63)
  %cmp62 = icmp eq i8 %63, 8
  br i1 %cmp62, label %if.then64, label %if.then60.if.end65_crit_edge

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then64:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @musb_load_testpacket(ptr noundef %musb) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.then60.if.end65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %64 = load ptr, ptr @musb_writeb, align 4
  %65 = ptrtoint ptr %test_mode_nr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %test_mode_nr, align 4
  tail call void %64(ptr noundef %1, i32 noundef 15, i8 noundef zeroext %66) #7
  br label %sw.bb69

sw.bb69:                                          ; preds = %if.end65, %if.else.sw.bb69_crit_edge, %if.then51, %if.end34.sw.bb69_crit_edge
  %req_list.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19, i32 10
  %67 = ptrtoint ptr %req_list.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %req_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %68, %req_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 -56
  %tobool73.not332 = icmp eq ptr %add.ptr.i.i, null
  %tobool73.not = or i1 %cmp.i.not.i.i, %tobool73.not332
  br i1 %tobool73.not, label %sw.bb69.if.end75_crit_edge, label %if.then74

sw.bb69.if.end75_crit_edge:                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then74:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  %ep_in.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19
  tail call void @musb_g_giveback(ptr noundef %ep_in.i, ptr noundef nonnull %add.ptr.i.i, i32 noundef 0) #7
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %sw.bb69.if.end75_crit_edge
  %69 = and i16 %csr.1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool78.not = icmp eq i16 %69, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.setup_crit_edge

if.end75.setup_crit_edge:                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %ep0_state, align 8
  br label %cleanup199

sw.bb82:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %ep0_state, align 8
  br label %setup

setup:                                            ; preds = %sw.bb82, %if.end75.setup_crit_edge, %if.end34.setup_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %if.end34.setup_crit_edge ], [ 1, %sw.bb82 ], [ %retval2.1, %if.end75.setup_crit_edge ]
  %conv85 = zext i16 %csr.1 to i32
  %and86 = and i32 %conv85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %setup.cleanup199_crit_edge, label %if.then88

setup.cleanup199_crit_edge:                       ; preds = %setup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup199

if.then88:                                        ; preds = %setup
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %setup89) #7
  %72 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup89, i32 0, i32 1
  %73 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup89, i32 0, i32 3
  %74 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup89, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call3)
  %cmp91.not = icmp eq i8 %call3, 8
  %75 = ptrtoint ptr %setup89 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 -1, ptr %setup89, align 8
  br i1 %cmp91.not, label %if.end103, label %do.end97

do.end97:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 779, i32 noundef %conv5) #10
  br label %cleanup

if.end103:                                        ; preds = %if.then88
  %76 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup89, i32 0, i32 2
  %77 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs1, align 8
  call void @musb_read_fifo(ptr noundef %endpoints, i16 noundef zeroext 8, ptr noundef nonnull %setup89) #7
  %79 = ptrtoint ptr %setup89 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %setup89, align 8
  %conv.i289 = zext i8 %80 to i32
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %72, align 1
  %conv3.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %76, align 2
  %85 = call i16 @llvm.bswap.i16(i16 %84) #7
  %conv4.i = zext i16 %85 to i32
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %73, align 4
  %88 = call i16 @llvm.bswap.i16(i16 %87) #7
  %conv5.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %74, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #7
  %conv6.i = zext i16 %91 to i32
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.22, i32 noundef %conv.i289, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %conv6.i) #7
  %req_list.i.i.i290 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19, i32 10
  %92 = ptrtoint ptr %req_list.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %req_list.i.i.i290, align 4
  %cmp.i.not.i.i.i291 = icmp eq ptr %93, %req_list.i.i.i290
  %add.ptr.i.i.i292 = getelementptr i8, ptr %93, i32 -56
  %tobool.not64.i = icmp eq ptr %add.ptr.i.i.i292, null
  %tobool.not.i293 = or i1 %cmp.i.not.i.i.i291, %tobool.not64.i
  br i1 %tobool.not.i293, label %if.end103.if.end.i298_crit_edge, label %if.then.i295

if.end103.if.end.i298_crit_edge:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i298

if.then.i295:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %ep_in.i.i294 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19
  call void @musb_g_giveback(ptr noundef %ep_in.i.i294, ptr noundef nonnull %add.ptr.i.i.i292, i32 noundef 0) #7
  br label %if.end.i298

if.end.i298:                                      ; preds = %if.then.i295, %if.end103.if.end.i298_crit_edge
  %set_address.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %94 = ptrtoint ptr %set_address.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 3)
  %bf.load.i = load i24, ptr %set_address.i, align 8
  %bf.clear.i = and i24 %bf.load.i, -1025
  store i24 %bf.clear.i, ptr %set_address.i, align 8
  %ackpend.i296 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 54
  %95 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 64, ptr %ackpend.i296, align 2
  %96 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %74, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp.i297 = icmp eq i16 %97, 0
  %98 = ptrtoint ptr %setup89 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %setup89, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %99)
  %tobool15.not.i = icmp sgt i8 %99, -1
  br i1 %cmp.i297, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i298
  br i1 %tobool15.not.i, label %if.then12.i.if.end20.i_crit_edge, label %if.then16.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 66, ptr %ackpend.i296, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.then12.i.if.end20.i_crit_edge
  %101 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 6, ptr %ep0_state, align 8
  br label %musb_read_setup.exit

if.else.i:                                        ; preds = %if.end.i298
  br i1 %tobool15.not.i, label %if.else39.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else.i
  %102 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %ep0_state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %103 = load ptr, ptr @musb_writew, align 4
  call void %103(ptr noundef %78, i32 noundef 2, i16 noundef zeroext 64) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %104 = load ptr, ptr @musb_readw, align 4
  %call2765.i = call zeroext i16 %104(ptr noundef %78, i32 noundef 2) #7
  %105 = and i16 %call2765.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp30.not66.i = icmp eq i16 %105, 0
  br i1 %cmp30.not66.i, label %if.then25.i.while.end.i_crit_edge, label %if.then25.i.do.end.i_crit_edge

if.then25.i.do.end.i_crit_edge:                   ; preds = %if.then25.i
  br label %do.end.i

if.then25.i.while.end.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then25.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %106 = load ptr, ptr @musb_readw, align 4
  %call27.i = call zeroext i16 %106(ptr noundef %78, i32 noundef 2) #7
  %107 = and i16 %call27.i, 1
  %cmp30.not.i = icmp eq i16 %107, 0
  br i1 %cmp30.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %if.then25.i.while.end.i_crit_edge
  %108 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %ackpend.i296, align 2
  br label %musb_read_setup.exit

if.else39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %ep0_state, align 8
  br label %musb_read_setup.exit

musb_read_setup.exit:                             ; preds = %if.else39.i, %while.end.i, %if.end20.i
  %speed = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 5
  %110 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp104 = icmp eq i32 %111, 0
  br i1 %cmp104, label %if.then108, label %musb_read_setup.exit.if.end120_crit_edge, !prof !95

musb_read_setup.exit.if.end120_crit_edge:         ; preds = %musb_read_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then108:                                       ; preds = %musb_read_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @musb_driver_name) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %112 = load ptr, ptr @musb_readb, align 4
  %call114 = call zeroext i8 %112(ptr noundef %1, i32 noundef 1) #7
  %113 = and i8 %call114, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool117.not = icmp eq i8 %113, 0
  %cond = select i1 %tobool117.not, i32 2, i32 3
  %114 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %cond, ptr %speed, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then108, %musb_read_setup.exit.if.end120_crit_edge
  %115 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ep0_state, align 8
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %116, label %if.end120.sw.epilog141_crit_edge [
    i8 6, label %sw.bb123
    i8 2, label %sw.bb132
  ]

if.end120.sw.epilog141_crit_edge:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog141

sw.bb123:                                         ; preds = %if.end120
  %call124 = call fastcc i32 @service_zero_data_request(ptr noundef %musb, ptr noundef nonnull %setup89)
  %118 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ackpend.i296, align 2
  %120 = or i16 %119, 8
  store i16 %120, ptr %ackpend.i296, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp127 = icmp sgt i32 %call124, 0
  br i1 %cmp127, label %sw.epilog141.thread, label %sw.bb123.sw.epilog141thread-pre-split_crit_edge

sw.bb123.sw.epilog141thread-pre-split_crit_edge:  ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog141thread-pre-split

sw.epilog141.thread:                              ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 4, ptr %ep0_state, align 8
  br label %sw.bb5.i309

sw.bb132:                                         ; preds = %if.end120
  %122 = ptrtoint ptr %setup89 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %setup89, align 8
  %124 = and i8 %123, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp.i300 = icmp eq i8 %124, 0
  br i1 %cmp.i300, label %if.then.i302, label %sw.bb132.sw.epilog141thread-pre-split_crit_edge

sw.bb132.sw.epilog141thread-pre-split_crit_edge:  ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog141thread-pre-split

if.then.i302:                                     ; preds = %sw.bb132
  %125 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cond.i = icmp eq i8 %126, 0
  br i1 %cond.i, label %sw.bb.i, label %if.then.i302.sw.epilog141thread-pre-split_crit_edge

if.then.i302.sw.epilog141thread-pre-split_crit_edge: ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog141thread-pre-split

sw.bb.i:                                          ; preds = %if.then.i302
  %127 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mregs, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result.i.i) #7
  %129 = getelementptr inbounds [2 x i8], ptr %result.i.i, i32 0, i32 1
  %130 = and i8 %123, 31
  %131 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %129, align 1
  %conv2.i.i = zext i8 %130 to i32
  %132 = zext i32 %conv2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %conv2.i.i, label %sw.bb.i.service_in_request.exit.thread320_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb43.i.i
    i32 2, label %sw.bb45.i.i
  ]

sw.bb.i.service_in_request.exit.thread320_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %service_in_request.exit.thread320

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %is_selfpowered.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %133 = ptrtoint ptr %is_selfpowered.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %bf.load.i.i = load i32, ptr %is_selfpowered.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %134 = trunc i32 %bf.lshr.i.i to i8
  %conv3.i.i = and i8 %134, 1
  %135 = ptrtoint ptr %set_address.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 3)
  %bf.load5.i.i = load i24, ptr %set_address.i, align 8
  %136 = lshr i24 %bf.load5.i.i, 12
  %137 = trunc i24 %136 to i8
  %shl8.i.i = and i8 %137, 2
  %or.i.i = or i8 %shl8.i.i, %conv3.i.i
  %138 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %or.i.i, ptr %result.i.i, align 1
  %139 = and i32 %bf.load.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i.i = icmp eq i32 %139, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.sw.epilog141.thread326_crit_edge, label %if.then.i.i

sw.bb.i.i.sw.epilog141.thread326_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog141.thread326

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = lshr i32 %bf.load.i.i, 25
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 8
  %143 = lshr i32 %bf.load.i.i, 21
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 32
  %146 = lshr i32 %bf.load.i.i, 23
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 16
  %conv24.i.i = or i8 %145, %142
  %conv33.i.i = or i8 %conv24.i.i, %148
  %conv42.i.i = or i8 %conv33.i.i, %or.i.i
  %149 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv42.i.i, ptr %result.i.i, align 1
  br label %sw.epilog141.thread326

sw.bb43.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %result.i.i, align 1
  br label %sw.epilog141.thread326

sw.bb45.i.i:                                      ; preds = %sw.bb.i
  %151 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %73, align 4
  %conv46.i.i = trunc i16 %152 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv46.i.i)
  %tobool47.not.i.i = icmp eq i8 %conv46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.then48.i.i, label %if.end50.i.i

if.then48.i.i:                                    ; preds = %sw.bb45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %result.i.i, align 1
  br label %sw.epilog141.thread326

if.end50.i.i:                                     ; preds = %sw.bb45.i.i
  %conv55.i.i = and i8 %conv46.i.i, 15
  %conv56.i.i = zext i8 %conv55.i.i to i32
  %154 = and i16 %152, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool60.not.i.i = icmp eq i16 %154, 0
  %ep_in.i.i303 = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %conv56.i.i, i32 19
  %ep_out.i.i = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %conv56.i.i, i32 20
  %ep.0.i.i = select i1 %tobool60.not.i.i, ptr %ep_out.i.i, ptr %ep_in.i.i303
  %desc.i.i = getelementptr inbounds %struct.musb_ep, ptr %ep.0.i.i, i32 0, i32 8
  %155 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %desc.i.i, align 4
  %tobool71.not.i.i = icmp eq ptr %156, null
  br i1 %tobool71.not.i.i, label %if.end50.i.i.service_in_request.exit.thread320_crit_edge, label %if.end73.i.i

if.end50.i.i.service_in_request.exit.thread320_crit_edge: ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %service_in_request.exit.thread320

if.end73.i.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs70.i.i = getelementptr %struct.musb, ptr %musb, i32 0, i32 39, i32 %conv56.i.i, i32 2
  %157 = ptrtoint ptr %regs70.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs70.i.i, align 8
  %159 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ep_select, align 4
  call void %160(ptr noundef %128, i8 noundef zeroext %conv55.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %161 = load ptr, ptr @musb_readw, align 4
  %..i.i = select i1 %tobool60.not.i.i, i32 6, i32 2
  %.141.i.i = select i1 %tobool60.not.i.i, i16 32, i16 16
  %call80.i.i = call zeroext i16 %161(ptr noundef %158, i32 noundef %..i.i) #7
  %162 = and i16 %call80.i.i, %.141.i.i
  %163 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ep_select, align 4
  call void %164(ptr noundef %128, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool88.not.i.i = icmp ne i16 %162, 0
  %conv89.i.i = zext i1 %tobool88.not.i.i to i8
  %165 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv89.i.i, ptr %result.i.i, align 1
  br label %sw.epilog141.thread326

service_in_request.exit.thread320:                ; preds = %if.end50.i.i.service_in_request.exit.thread320_crit_edge, %sw.bb.i.service_in_request.exit.thread320_crit_edge
  %handled.1138.i.i.ph = phi i32 [ 0, %sw.bb.i.service_in_request.exit.thread320_crit_edge ], [ -22, %if.end50.i.i.service_in_request.exit.thread320_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i) #7
  br label %sw.epilog141thread-pre-split

sw.epilog141.thread326:                           ; preds = %if.end73.i.i, %if.then48.i.i, %sw.bb43.i.i, %if.then.i.i, %sw.bb.i.i.sw.epilog141.thread326_crit_edge
  %166 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %74, align 2
  %168 = call i16 @llvm.bswap.i16(i16 %167) #7
  %169 = call i16 @llvm.umin.i16(i16 %168, i16 2) #7
  call void @musb_write_fifo(ptr noundef %endpoints, i16 noundef zeroext %169, ptr noundef nonnull %result.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i) #7
  %170 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 10, ptr %ackpend.i296, align 2
  %171 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 5, ptr %ep0_state, align 8
  br label %sw.bb6.i310

sw.epilog141thread-pre-split:                     ; preds = %service_in_request.exit.thread320, %if.then.i302.sw.epilog141thread-pre-split_crit_edge, %sw.bb132.sw.epilog141thread-pre-split_crit_edge, %sw.bb123.sw.epilog141thread-pre-split_crit_edge
  %handled.0.ph = phi i32 [ %handled.1138.i.i.ph, %service_in_request.exit.thread320 ], [ %call124, %sw.bb123.sw.epilog141thread-pre-split_crit_edge ], [ 0, %if.then.i302.sw.epilog141thread-pre-split_crit_edge ], [ 0, %sw.bb132.sw.epilog141thread-pre-split_crit_edge ]
  %172 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %172)
  %.pr = load i8, ptr %ep0_state, align 8
  br label %sw.epilog141

sw.epilog141:                                     ; preds = %sw.epilog141thread-pre-split, %if.end120.sw.epilog141_crit_edge
  %173 = phi i8 [ %.pr, %sw.epilog141thread-pre-split ], [ %116, %if.end120.sw.epilog141_crit_edge ]
  %handled.0 = phi i32 [ %handled.0.ph, %sw.epilog141thread-pre-split ], [ 0, %if.end120.sw.epilog141_crit_edge ]
  %174 = zext i8 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %173, label %sw.default.i311 [
    i8 0, label %sw.epilog141.decode_ep0stage.exit313_crit_edge
    i8 1, label %sw.bb1.i305
    i8 2, label %sw.bb2.i306
    i8 3, label %sw.bb3.i307
    i8 6, label %sw.bb4.i308
    i8 4, label %sw.epilog141.sw.bb5.i309_crit_edge
    i8 5, label %sw.epilog141.sw.bb6.i310_crit_edge
  ]

sw.epilog141.sw.bb6.i310_crit_edge:               ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i310

sw.epilog141.sw.bb5.i309_crit_edge:               ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i309

sw.epilog141.decode_ep0stage.exit313_crit_edge:   ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit313

sw.bb1.i305:                                      ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit313

sw.bb2.i306:                                      ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit313

sw.bb3.i307:                                      ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit313

sw.bb4.i308:                                      ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit313

sw.bb5.i309:                                      ; preds = %sw.epilog141.sw.bb5.i309_crit_edge, %sw.epilog141.thread
  %handled.0324 = phi i32 [ %call124, %sw.epilog141.thread ], [ %handled.0, %sw.epilog141.sw.bb5.i309_crit_edge ]
  br label %decode_ep0stage.exit313

sw.bb6.i310:                                      ; preds = %sw.epilog141.sw.bb6.i310_crit_edge, %sw.epilog141.thread326
  %handled.0328 = phi i32 [ 1, %sw.epilog141.thread326 ], [ %handled.0, %sw.epilog141.sw.bb6.i310_crit_edge ]
  br label %decode_ep0stage.exit313

sw.default.i311:                                  ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #9
  br label %decode_ep0stage.exit313

decode_ep0stage.exit313:                          ; preds = %sw.default.i311, %sw.bb6.i310, %sw.bb5.i309, %sw.bb4.i308, %sw.bb3.i307, %sw.bb2.i306, %sw.bb1.i305, %sw.epilog141.decode_ep0stage.exit313_crit_edge
  %handled.0325 = phi i32 [ %handled.0, %sw.default.i311 ], [ %handled.0328, %sw.bb6.i310 ], [ %handled.0324, %sw.bb5.i309 ], [ %handled.0, %sw.bb4.i308 ], [ %handled.0, %sw.bb3.i307 ], [ %handled.0, %sw.bb2.i306 ], [ %handled.0, %sw.bb1.i305 ], [ %handled.0, %sw.epilog141.decode_ep0stage.exit313_crit_edge ]
  %retval.0.i312 = phi ptr [ @.str.20, %sw.default.i311 ], [ @.str.19, %sw.bb6.i310 ], [ @.str.18, %sw.bb5.i309 ], [ @.str.17, %sw.bb4.i308 ], [ @.str.16, %sw.bb3.i307 ], [ @.str.15, %sw.bb2.i306 ], [ @.str.14, %sw.bb1.i305 ], [ @.str.13, %sw.epilog141.decode_ep0stage.exit313_crit_edge ]
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.11, i32 noundef %handled.0325, i32 noundef %conv85, ptr noundef nonnull %retval.0.i312) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0325)
  %cmp145 = icmp slt i32 %handled.0325, 0
  br i1 %cmp145, label %decode_ep0stage.exit313.stall_crit_edge, label %if.else148

decode_ep0stage.exit313.stall_crit_edge:          ; preds = %decode_ep0stage.exit313
  call void @__sanitizer_cov_trace_pc() #9
  br label %stall

if.else148:                                       ; preds = %decode_ep0stage.exit313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0325)
  %cmp149.not = icmp eq i32 %handled.0325, 0
  br i1 %cmp149.not, label %if.end153, label %if.else148.finish_crit_edge

if.else148.finish_crit_edge:                      ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish

if.end153:                                        ; preds = %if.else148
  %gadget_driver.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 57
  %175 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %gadget_driver.i, align 8
  %tobool.not.i314 = icmp eq ptr %176, null
  br i1 %tobool.not.i314, label %if.end153.if.then157_crit_edge, label %forward_to_driver.exit

if.end153.if.then157_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157

forward_to_driver.exit:                           ; preds = %if.end153
  call void @_raw_spin_unlock(ptr noundef %musb) #7
  %177 = ptrtoint ptr %gadget_driver.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %gadget_driver.i, align 8
  %setup.i = getelementptr inbounds %struct.usb_gadget_driver, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %setup.i, align 4
  %g.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56
  %call.i = call i32 %180(ptr noundef %g.i, ptr noundef nonnull %setup89) #7
  call void @_raw_spin_lock(ptr noundef %musb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp155 = icmp slt i32 %call.i, 0
  br i1 %cmp155, label %forward_to_driver.exit.if.then157_crit_edge, label %forward_to_driver.exit.cleanup_crit_edge

forward_to_driver.exit.cleanup_crit_edge:         ; preds = %forward_to_driver.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

forward_to_driver.exit.if.then157_crit_edge:      ; preds = %forward_to_driver.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157

if.then157:                                       ; preds = %forward_to_driver.exit.if.then157_crit_edge, %if.end153.if.then157_crit_edge
  %retval.0.i316331 = phi i32 [ %call.i, %forward_to_driver.exit.if.then157_crit_edge ], [ -95, %if.end153.if.then157_crit_edge ]
  %181 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ep_select, align 4
  call void %182(ptr noundef %1, i8 noundef zeroext 0) #7
  br label %stall

stall:                                            ; preds = %if.then157, %decode_ep0stage.exit313.stall_crit_edge
  %handled.1 = phi i32 [ %handled.0325, %decode_ep0stage.exit313.stall_crit_edge ], [ %retval.0.i316331, %if.then157 ]
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.12, i32 noundef %handled.1) #7
  %183 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %ackpend.i296, align 2
  %185 = or i16 %184, 32
  store i16 %185, ptr %ackpend.i296, align 2
  %186 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %ep0_state, align 8
  br label %finish

finish:                                           ; preds = %stall, %if.else148.finish_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %187 = load ptr, ptr @musb_writew, align 4
  %188 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %ackpend.i296, align 2
  call void %187(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %189) #7
  %190 = ptrtoint ptr %ackpend.i296 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %ackpend.i296, align 2
  br label %cleanup

cleanup:                                          ; preds = %finish, %forward_to_driver.exit.cleanup_crit_edge, %do.end97
  %retval2.3 = phi i32 [ %retval2.2, %do.end97 ], [ 1, %finish ], [ 1, %forward_to_driver.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %setup89) #7
  br label %cleanup199

do.end183:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 879, i32 noundef 9, ptr noundef null) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %191 = load ptr, ptr @musb_writew, align 4
  tail call void %191(ptr noundef %3, i32 noundef 2, i16 noundef zeroext 32) #7
  %192 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %ep0_state, align 8
  br label %cleanup199

cleanup199:                                       ; preds = %do.end183, %cleanup, %setup.cleanup199_crit_edge, %if.end80, %if.end40.i, %if.then34.i.cleanup199_crit_edge, %sw.bb43.cleanup199_crit_edge, %if.then41, %sw.bb37.cleanup199_crit_edge, %if.end34.cleanup199_crit_edge, %decode_ep0stage.exit.cleanup199_crit_edge
  %retval.0 = phi i32 [ 1, %decode_ep0stage.exit.cleanup199_crit_edge ], [ %retval2.1, %do.end183 ], [ %retval2.3, %cleanup ], [ %retval2.2, %setup.cleanup199_crit_edge ], [ 1, %if.end80 ], [ %retval2.1, %sw.bb43.cleanup199_crit_edge ], [ 1, %if.then41 ], [ %retval2.1, %sw.bb37.cleanup199_crit_edge ], [ 1, %if.end34.cleanup199_crit_edge ], [ 1, %if.then34.i.cleanup199_crit_edge ], [ 1, %if.end40.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_txstate(ptr noundef %musb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 2
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %req_list.i.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19, i32 10
  %2 = ptrtoint ptr %req_list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %req_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %req_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -56
  %tobool.not69 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %cmp.i.not.i.i, %tobool.not69
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %4 = load ptr, ptr @musb_readw, align 4
  %call3 = tail call zeroext i16 %4(ptr noundef %1, i32 noundef 2) #7
  %conv = zext i16 %call3 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.21, i32 noundef %conv) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 4
  %actual = getelementptr i8, ptr %3, i32 -4
  %7 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %length = getelementptr i8, ptr %3, i32 -52
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %sub = sub i32 %10, %8
  %11 = tail call i32 @llvm.umin.i32(i32 %sub, i32 64)
  %12 = trunc i32 %11 to i16
  tail call void @musb_write_fifo(ptr noundef %endpoints, i16 noundef zeroext %12, ptr noundef %add.ptr) #7
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual, align 4
  %add = add i32 %14, %11
  store i32 %add, ptr %actual, align 4
  %15 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %if.end.if.then26_crit_edge, label %lor.lhs.false

if.end.if.then26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp18 = icmp eq i32 %add, %17
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false
  %zero = getelementptr i8, ptr %3, i32 -32
  %18 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %zero, align 4
  %19 = and i32 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.then26_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %land.lhs.true.if.then26_crit_edge, %if.end.if.then26_crit_edge
  %ep0_state = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 55
  %20 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %ep0_state, align 8
  %ackpend = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 54
  %21 = ptrtoint ptr %ackpend to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 10, ptr %ackpend, align 2
  %ep_in.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39, i32 0, i32 19
  tail call void @musb_g_giveback(ptr noundef %ep_in.i, ptr noundef nonnull %add.ptr.i.i, i32 noundef 0) #7
  %22 = ptrtoint ptr %ackpend to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ackpend, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool28.not = icmp eq i16 %23, 0
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %if.end30

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %ackpend to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %ackpend, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %land.lhs.true.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %csr.068 = phi i16 [ 10, %if.end30 ], [ 2, %land.lhs.true.if.end32_crit_edge ], [ 2, %lor.lhs.false.if.end32_crit_edge ]
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep_select, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %27 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mregs, align 8
  tail call void %26(ptr noundef %28, i8 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %29 = load ptr, ptr @musb_writew, align 4
  tail call void %29(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %csr.068) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then26.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_load_testpacket(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @service_zero_data_request(ptr noundef %musb, ptr nocapture noundef readonly %ctrlrequest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  %2 = ptrtoint ptr %ctrlrequest to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrlrequest, align 1
  %and = and i8 %3, 31
  %4 = and i8 %3, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end365_crit_edge

entry.if.end365_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.then:                                          ; preds = %entry
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 1
  %5 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bRequest, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %6, label %if.then.if.end365_crit_edge [
    i8 5, label %sw.bb
    i8 1, label %sw.bb10
    i8 3, label %sw.bb80
  ]

if.then.if.end365_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %set_address = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %8 = ptrtoint ptr %set_address to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load = load i24, ptr %set_address, align 8
  %bf.set = or i24 %bf.load, 1024
  store i24 %bf.set, ptr %set_address, align 8
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 2
  %9 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wValue, align 1
  %11 = trunc i16 %10 to i8
  %conv9 = and i8 %11, 127
  %address = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 52
  %12 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %address, align 1
  br label %if.end365

sw.bb10:                                          ; preds = %if.then
  %conv11 = zext i8 %and to i32
  %13 = zext i32 %conv11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %conv11, label %sw.default [
    i32 0, label %sw.bb12
    i32 1, label %sw.bb10.if.end365_crit_edge
    i32 2, label %sw.bb21
  ]

sw.bb10.if.end365_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

sw.bb12:                                          ; preds = %sw.bb10
  %wValue13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 2
  %14 = ptrtoint ptr %wValue13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wValue13, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp15.not = icmp eq i16 %15, 1
  br i1 %cmp15.not, label %if.end, label %sw.bb12.if.end365_crit_edge

sw.bb12.if.end365_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end:                                           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %may_wakeup = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %16 = ptrtoint ptr %may_wakeup to i32
  call void @__asan_loadN_noabort(i32 %16, i32 3)
  %bf.load18 = load i24, ptr %may_wakeup, align 8
  %bf.clear19 = and i24 %bf.load18, -8193
  store i24 %bf.clear19, ptr %may_wakeup, align 8
  br label %if.end365

sw.bb21:                                          ; preds = %sw.bb10
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 3
  %17 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wIndex, align 1
  %19 = trunc i16 %18 to i8
  %conv24 = and i8 %19, 15
  %conv25 = zext i8 %conv24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv24)
  %cmp26 = icmp eq i8 %conv24, 0
  br i1 %cmp26, label %sw.bb21.if.end365_crit_edge, label %lor.lhs.false31

sw.bb21.if.end365_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

lor.lhs.false31:                                  ; preds = %sw.bb21
  %wValue32 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 2
  %20 = ptrtoint ptr %wValue32 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wValue32, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp34.not = icmp eq i16 %21, 0
  br i1 %cmp34.not, label %if.end37, label %lor.lhs.false31.if.end365_crit_edge

lor.lhs.false31.if.end365_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end37:                                         ; preds = %lor.lhs.false31
  %endpoints = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %regs39 = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv25, i32 2
  %22 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs39, align 4
  %24 = and i16 %18, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not = icmp eq i16 %24, 0
  %ep_in = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv25, i32 19
  %ep_out = getelementptr %struct.musb_hw_ep, ptr %endpoints, i32 %conv25, i32 20
  %musb_ep.0 = select i1 %tobool.not, ptr %ep_out, ptr %ep_in
  %desc = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 8
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %tobool45.not = icmp eq ptr %26, null
  br i1 %tobool45.not, label %if.end37.if.end365_crit_edge, label %if.end47

if.end37.if.end365_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end47:                                         ; preds = %if.end37
  %wedged = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 11
  %27 = ptrtoint ptr %wedged to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wedged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool48.not = icmp eq i8 %28, 0
  br i1 %tobool48.not, label %if.end50, label %if.end47.if.end365_crit_edge

if.end47.if.end365_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end50:                                         ; preds = %if.end47
  %ep_select = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep_select, align 4
  tail call void %30(ptr noundef %1, i8 noundef zeroext %conv24) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %31 = load ptr, ptr @musb_readw, align 4
  %. = select i1 %tobool.not, i32 6, i32 2
  %.484 = select i1 %tobool.not, i16 -230, i16 -248
  %.485 = select i1 %tobool.not, i16 133, i16 198
  %call59 = tail call zeroext i16 %31(ptr noundef %23, i32 noundef %.) #7
  %32 = and i16 %call59, %.484
  %33 = or i16 %32, %.485
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %34 = load ptr, ptr @musb_writew, align 4
  tail call void %34(ptr noundef %23, i32 noundef %., i16 noundef zeroext %33) #7
  %req_list.i = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 10
  %35 = ptrtoint ptr %req_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %req_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %req_list.i
  %add.ptr.i = getelementptr i8, ptr %36, i32 -56
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  %busy = getelementptr inbounds %struct.musb_ep, ptr %musb_ep.0, i32 0, i32 12
  %37 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %busy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool68.not = icmp ne i8 %38, 0
  %tobool69.not = icmp eq ptr %spec.select.i, null
  %or.cond = select i1 %tobool68.not, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %if.end50.if.end71_crit_edge, label %if.then70

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then70:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.23) #7
  tail call void @musb_ep_restart(ptr noundef %musb, ptr noundef nonnull %spec.select.i) #7
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end50.if.end71_crit_edge
  %39 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep_select, align 4
  tail call void %40(ptr noundef %1, i8 noundef zeroext 0) #7
  br label %if.end365

sw.default:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

sw.bb80:                                          ; preds = %if.then
  %conv81 = zext i8 %and to i32
  %41 = zext i32 %conv81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %conv81, label %sw.default360 [
    i32 0, label %sw.bb82
    i32 1, label %sw.bb80.if.end365_crit_edge
    i32 2, label %sw.bb285
  ]

sw.bb80.if.end365_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

sw.bb82:                                          ; preds = %sw.bb80
  %wValue83 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 2
  %42 = ptrtoint ptr %wValue83 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wValue83, align 1
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %43, label %sw.bb82.sw.default283_crit_edge [
    i16 1, label %sw.bb85
    i16 2, label %sw.bb90
    i16 3, label %sw.bb245
    i16 4, label %sw.bb256
    i16 5, label %sw.bb269
    i16 6, label %sw.bb82.if.end365_crit_edge
  ]

sw.bb82.if.end365_crit_edge:                      ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

sw.bb82.sw.default283_crit_edge:                  ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

sw.bb85:                                          ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #9
  %may_wakeup86 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %45 = ptrtoint ptr %may_wakeup86 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 3)
  %bf.load87 = load i24, ptr %may_wakeup86, align 8
  %bf.set89 = or i24 %bf.load87, 8192
  store i24 %bf.set89, ptr %may_wakeup86, align 8
  br label %if.end365

sw.bb90:                                          ; preds = %sw.bb82
  %speed = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 5
  %46 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp91.not = icmp eq i32 %47, 3
  br i1 %cmp91.not, label %if.end94, label %sw.bb90.sw.default283_crit_edge

sw.bb90.sw.default283_crit_edge:                  ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

if.end94:                                         ; preds = %sw.bb90
  %wIndex95 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 3
  %48 = ptrtoint ptr %wIndex95 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %wIndex95, align 1
  %50 = and i16 %49, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool98.not = icmp eq i16 %50, 0
  br i1 %tobool98.not, label %if.end100, label %if.end94.sw.default283_crit_edge

if.end94.sw.default283_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

if.end100:                                        ; preds = %if.end94
  %51 = lshr i16 %49, 8
  %trunc = trunc i16 %51 to i8
  %52 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %trunc, label %if.end100.sw.default283_crit_edge [
    i8 1, label %do.body
    i8 2, label %do.body111
    i8 3, label %do.body129
    i8 4, label %do.body147
    i8 -64, label %do.body165
    i8 -63, label %do.body183
    i8 -62, label %do.body201
    i8 -61, label %do.body219
  ]

if.end100.sw.default283_crit_edge:                ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

do.body:                                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then108)) #7
          to label %if.then240 [label %if.then108], !srcloc !96

if.then108:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.26) #7
  br label %if.then240

do.body111:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then123)) #7
          to label %if.then240 [label %if.then123], !srcloc !96

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.27) #7
  br label %if.then240

do.body129:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then141)) #7
          to label %if.then240 [label %if.then141], !srcloc !96

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.28) #7
  br label %if.then240

do.body147:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then159)) #7
          to label %if.then240 [label %if.then159], !srcloc !96

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.29) #7
  br label %if.then240

do.body165:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then177)) #7
          to label %if.then240 [label %if.then177], !srcloc !96

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.30) #7
  br label %if.then240

do.body183:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then195)) #7
          to label %if.then240 [label %if.then195], !srcloc !96

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.31) #7
  br label %if.then240

do.body201:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then213)) #7
          to label %if.then240 [label %if.then213], !srcloc !96

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.32) #7
  br label %if.then240

do.body219:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @service_zero_data_request.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@service_zero_data_request, %if.then231)) #7
          to label %if.then240 [label %if.then231], !srcloc !96

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @service_zero_data_request.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.33) #7
  br label %if.then240

if.then240:                                       ; preds = %if.then231, %do.body219, %if.then213, %do.body201, %if.then195, %do.body183, %if.then177, %do.body165, %if.then159, %do.body147, %if.then141, %do.body129, %if.then123, %do.body111, %if.then108, %do.body
  %.sink483 = phi i8 [ 2, %do.body ], [ 2, %if.then108 ], [ 4, %do.body111 ], [ 4, %if.then123 ], [ 1, %do.body129 ], [ 1, %if.then141 ], [ 8, %do.body147 ], [ 8, %if.then159 ], [ 16, %do.body165 ], [ 16, %if.then177 ], [ 32, %do.body183 ], [ 32, %if.then195 ], [ 64, %do.body201 ], [ 64, %if.then213 ], [ -128, %do.body219 ], [ -128, %if.then231 ]
  %test_mode_nr = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 53
  %53 = ptrtoint ptr %test_mode_nr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink483, ptr %test_mode_nr, align 4
  %test_mode = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 51
  %54 = ptrtoint ptr %test_mode to i32
  call void @__asan_loadN_noabort(i32 %54, i32 3)
  %bf.load241 = load i24, ptr %test_mode, align 8
  %bf.set243 = or i24 %bf.load241, 512
  store i24 %bf.set243, ptr %test_mode, align 8
  br label %if.end365

sw.bb245:                                         ; preds = %sw.bb82
  %is_otg = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %55 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load247 = load i32, ptr %is_otg, align 4
  %56 = and i32 %bf.load247, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool249.not = icmp eq i32 %56, 0
  br i1 %tobool249.not, label %sw.bb245.sw.default283_crit_edge, label %if.end251

sw.bb245.sw.default283_crit_edge:                 ; preds = %sw.bb245
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

if.end251:                                        ; preds = %sw.bb245
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set255 = or i32 %bf.load247, 268435456
  %57 = ptrtoint ptr %is_otg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bf.set255, ptr %is_otg, align 4
  tail call fastcc void @musb_try_b_hnp_enable(ptr noundef %musb)
  br label %if.end365

sw.bb256:                                         ; preds = %sw.bb82
  %is_otg258 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %58 = ptrtoint ptr %is_otg258 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load259 = load i32, ptr %is_otg258, align 4
  %59 = and i32 %bf.load259, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool262.not = icmp eq i32 %59, 0
  br i1 %tobool262.not, label %sw.bb256.sw.default283_crit_edge, label %if.end264

sw.bb256.sw.default283_crit_edge:                 ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

if.end264:                                        ; preds = %sw.bb256
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set268 = or i32 %bf.load259, 134217728
  %60 = ptrtoint ptr %is_otg258 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %bf.set268, ptr %is_otg258, align 4
  br label %if.end365

sw.bb269:                                         ; preds = %sw.bb82
  %is_otg271 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 56, i32 17
  %61 = ptrtoint ptr %is_otg271 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load272 = load i32, ptr %is_otg271, align 4
  %62 = and i32 %bf.load272, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool275.not = icmp eq i32 %62, 0
  br i1 %tobool275.not, label %sw.bb269.sw.default283_crit_edge, label %if.end277

sw.bb269.sw.default283_crit_edge:                 ; preds = %sw.bb269
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default283

if.end277:                                        ; preds = %sw.bb269
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set281 = or i32 %bf.load272, 67108864
  %63 = ptrtoint ptr %is_otg271 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %bf.set281, ptr %is_otg271, align 4
  br label %if.end365

sw.default283:                                    ; preds = %sw.bb269.sw.default283_crit_edge, %sw.bb256.sw.default283_crit_edge, %sw.bb245.sw.default283_crit_edge, %if.end100.sw.default283_crit_edge, %if.end94.sw.default283_crit_edge, %sw.bb90.sw.default283_crit_edge, %sw.bb82.sw.default283_crit_edge
  br label %if.end365

sw.bb285:                                         ; preds = %sw.bb80
  %wIndex287 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 3
  %64 = ptrtoint ptr %wIndex287 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %wIndex287, align 1
  %66 = trunc i16 %65 to i8
  %conv290 = and i8 %66, 15
  %conv296 = zext i8 %conv290 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv290)
  %cmp297 = icmp eq i8 %conv290, 0
  br i1 %cmp297, label %sw.bb285.if.end365_crit_edge, label %lor.lhs.false303

sw.bb285.if.end365_crit_edge:                     ; preds = %sw.bb285
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

lor.lhs.false303:                                 ; preds = %sw.bb285
  %wValue304 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrlrequest, i32 0, i32 2
  %67 = ptrtoint ptr %wValue304 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %wValue304, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp306.not = icmp eq i16 %68, 0
  br i1 %cmp306.not, label %if.end309, label %lor.lhs.false303.if.end365_crit_edge

lor.lhs.false303.if.end365_crit_edge:             ; preds = %lor.lhs.false303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end309:                                        ; preds = %lor.lhs.false303
  %endpoints310 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 39
  %regs314 = getelementptr %struct.musb_hw_ep, ptr %endpoints310, i32 %conv296, i32 2
  %69 = ptrtoint ptr %regs314 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs314, align 4
  %71 = and i16 %65, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool318.not = icmp eq i16 %71, 0
  %ep_in320 = getelementptr %struct.musb_hw_ep, ptr %endpoints310, i32 %conv296, i32 19
  %ep_out322 = getelementptr %struct.musb_hw_ep, ptr %endpoints310, i32 %conv296, i32 20
  %musb_ep291.0 = select i1 %tobool318.not, ptr %ep_out322, ptr %ep_in320
  %desc324 = getelementptr inbounds %struct.musb_ep, ptr %musb_ep291.0, i32 0, i32 8
  %72 = ptrtoint ptr %desc324 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc324, align 4
  %tobool325.not = icmp eq ptr %73, null
  br i1 %tobool325.not, label %if.end309.if.end365_crit_edge, label %if.end327

if.end309.if.end365_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end327:                                        ; preds = %if.end309
  %ep_select329 = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %ep_select329 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ep_select329, align 4
  tail call void %75(ptr noundef %1, i8 noundef zeroext %conv290) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %76 = load ptr, ptr @musb_readw, align 4
  br i1 %tobool318.not, label %if.else344, label %if.then331

if.then331:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #9
  %call332 = tail call zeroext i16 %76(ptr noundef %70, i32 noundef 2) #7
  %77 = shl i16 %call332, 2
  %78 = and i16 %77, 8
  %79 = or i16 %call332, %78
  %80 = or i16 %79, 246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %81 = load ptr, ptr @musb_writew, align 4
  tail call void %81(ptr noundef %70, i32 noundef 2, i16 noundef zeroext %80) #7
  br label %if.end349

if.else344:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #9
  %call345 = tail call zeroext i16 %76(ptr noundef %70, i32 noundef 6) #7
  %82 = or i16 %call345, 245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %83 = load ptr, ptr @musb_writew, align 4
  tail call void %83(ptr noundef %70, i32 noundef 6, i16 noundef zeroext %82) #7
  br label %if.end349

if.end349:                                        ; preds = %if.else344, %if.then331
  %84 = ptrtoint ptr %ep_select329 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ep_select329, align 4
  tail call void %85(ptr noundef %1, i8 noundef zeroext 0) #7
  br label %if.end365

sw.default360:                                    ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end365

if.end365:                                        ; preds = %sw.default360, %if.end349, %if.end309.if.end365_crit_edge, %lor.lhs.false303.if.end365_crit_edge, %sw.bb285.if.end365_crit_edge, %sw.default283, %if.end277, %if.end264, %if.end251, %if.then240, %sw.bb85, %sw.bb82.if.end365_crit_edge, %sw.bb80.if.end365_crit_edge, %sw.default, %if.end71, %if.end47.if.end365_crit_edge, %if.end37.if.end365_crit_edge, %lor.lhs.false31.if.end365_crit_edge, %sw.bb21.if.end365_crit_edge, %if.end, %sw.bb12.if.end365_crit_edge, %sw.bb10.if.end365_crit_edge, %sw.bb, %if.then.if.end365_crit_edge, %entry.if.end365_crit_edge
  %handled.2 = phi i32 [ 0, %sw.default360 ], [ -22, %sw.bb80.if.end365_crit_edge ], [ -22, %sw.default283 ], [ 1, %if.end277 ], [ 1, %if.end264 ], [ 1, %if.end251 ], [ 1, %if.then240 ], [ 1, %sw.bb85 ], [ 0, %sw.default ], [ -22, %sw.bb10.if.end365_crit_edge ], [ -22, %sw.bb12.if.end365_crit_edge ], [ 1, %if.end ], [ 1, %sw.bb ], [ 1, %if.end71 ], [ -22, %lor.lhs.false31.if.end365_crit_edge ], [ -22, %sw.bb21.if.end365_crit_edge ], [ -22, %if.end37.if.end365_crit_edge ], [ 1, %if.end47.if.end365_crit_edge ], [ 0, %sw.bb82.if.end365_crit_edge ], [ 1, %if.end349 ], [ -22, %lor.lhs.false303.if.end365_crit_edge ], [ -22, %sw.bb285.if.end365_crit_edge ], [ -22, %if.end309.if.end365_crit_edge ], [ 0, %if.then.if.end365_crit_edge ], [ 0, %entry.if.end365_crit_edge ]
  ret i32 %handled.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @musb_g_ep0_enable(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @musb_g_ep0_disable(ptr nocapture noundef readnone %e) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @musb_alloc_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_free_request(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_g_ep0_queue(ptr noundef %e, ptr noundef %r, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %e, null
  %tobool1.not = icmp eq ptr %r, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.end:                                           ; preds = %entry
  %musb2 = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %musb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb2, align 4
  %regs3 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 39, i32 0, i32 2
  %2 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs3, align 8
  %musb7 = getelementptr inbounds %struct.musb_request, ptr %r, i32 0, i32 3
  %4 = ptrtoint ptr %musb7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %musb7, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %r, i32 0, i32 12
  %5 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actual, align 4
  %status9 = getelementptr inbounds %struct.usb_request, ptr %r, i32 0, i32 11
  %6 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -115, ptr %status9, align 4
  %is_in = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 6
  %7 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_in, align 2
  %tx = getelementptr inbounds %struct.musb_request, ptr %r, i32 0, i32 4
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %tx, align 4
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %req_list = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 10
  %10 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %req_list, align 4
  %cmp.i.not = icmp eq ptr %11, %req_list
  br i1 %cmp.i.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %ep0_state = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 55
  %12 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep0_state, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %13, label %sw.default [
    i8 3, label %if.end18.sw.bb_crit_edge
    i8 2, label %if.end18.sw.bb_crit_edge99
    i8 6, label %if.end18.sw.bb_crit_edge100
  ]

if.end18.sw.bb_crit_edge100:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end18.sw.bb_crit_edge99:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge99, %if.end18.sw.bb_crit_edge100
  %list = getelementptr inbounds %struct.musb_request, ptr %r, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %req_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.list_add_tail.exit_crit_edge

sw.bb.list_add_tail.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %req_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.musb_request, ptr %r, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.bb.list_add_tail.exit_crit_edge
  %name = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 1
  %21 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool26.not, ptr @.str.38, ptr @.str.37
  %length = getelementptr inbounds %struct.usb_request, ptr %r, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %24) #7
  %ep_select = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep_select, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %27 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mregs, align 8
  tail call void %26(ptr noundef %28, i8 noundef zeroext 0) #7
  %29 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ep0_state, align 8
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %30, label %if.else49 [
    i8 2, label %if.then32
    i8 6, label %if.then37
  ]

sw.default:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %conv19) #7
  br label %cleanup

if.then32:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ep0_txstate(ptr noundef %1)
  br label %cleanup

if.then37:                                        ; preds = %list_add_tail.exit
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %if.else42, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %ep0_state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %35 = load ptr, ptr @musb_writew, align 4
  %ackpend = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 54
  %36 = ptrtoint ptr %ackpend to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ackpend, align 2
  %38 = or i16 %37, 8
  tail call void %35(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %38) #7
  %39 = ptrtoint ptr %ackpend to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %ackpend, align 2
  %40 = ptrtoint ptr %musb2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %musb2, align 4
  %ep_in.i = getelementptr inbounds %struct.musb, ptr %41, i32 0, i32 39, i32 0, i32 19
  tail call void @musb_g_giveback(ptr noundef %ep_in.i, ptr noundef nonnull %r, i32 noundef 0) #7
  br label %cleanup

if.else49:                                        ; preds = %list_add_tail.exit
  %ackpend50 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 54
  %42 = ptrtoint ptr %ackpend50 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ackpend50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool51.not = icmp eq i16 %43, 0
  br i1 %tobool51.not, label %if.else49.cleanup_crit_edge, label %if.then52

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %44 = load ptr, ptr @musb_writew, align 4
  tail call void %44(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %43) #7
  %45 = ptrtoint ptr %ackpend50 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %ackpend50, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.else49.cleanup_crit_edge, %if.else42, %if.then37.cleanup_crit_edge, %if.then32, %sw.default, %if.end.cleanup_crit_edge
  %status.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then32 ], [ 0, %if.else42 ], [ 0, %if.then52 ], [ 0, %if.else49.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.then37.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #7
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ %status.0, %cleanup ], [ -22, %entry.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @musb_g_ep0_dequeue(ptr nocapture noundef readnone %ep, ptr nocapture noundef readnone %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @musb_g_ep0_halt(ptr noundef %e, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %e, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool1.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

if.end:                                           ; preds = %entry
  %musb2 = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %musb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %musb2, align 4
  %mregs = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mregs, align 8
  %regs3 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 39, i32 0, i32 2
  %4 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs3, align 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %req_list = getelementptr inbounds %struct.musb_ep, ptr %e, i32 0, i32 10
  %6 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %req_list, align 4
  %cmp.i.not = icmp eq ptr %7, %req_list
  br i1 %cmp.i.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %ep_select = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %ep_select to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_select, align 4
  tail call void %9(ptr noundef %3, i8 noundef zeroext 0) #7
  %ackpend = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 54
  %10 = ptrtoint ptr %ackpend to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ackpend, align 2
  %ep0_state = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 55
  %12 = ptrtoint ptr %ep0_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep0_state, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %13, label %sw.default [
    i8 2, label %if.end12.sw.bb_crit_edge
    i8 6, label %if.end12.sw.bb_crit_edge44
    i8 3, label %if.end12.sw.bb_crit_edge45
    i8 4, label %if.end12.sw.bb15_crit_edge
    i8 5, label %if.end12.sw.bb15_crit_edge46
  ]

if.end12.sw.bb15_crit_edge46:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

if.end12.sw.bb15_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

if.end12.sw.bb_crit_edge45:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.bb_crit_edge44:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge44, %if.end12.sw.bb_crit_edge45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readw to i32))
  %15 = load ptr, ptr @musb_readw, align 4
  %call14 = tail call zeroext i16 %15(ptr noundef %5, i32 noundef 2) #7
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb, %if.end12.sw.bb15_crit_edge, %if.end12.sw.bb15_crit_edge46
  %csr.0 = phi i16 [ %11, %if.end12.sw.bb15_crit_edge ], [ %11, %if.end12.sw.bb15_crit_edge46 ], [ %call14, %sw.bb ]
  %16 = or i16 %csr.0, 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writew to i32))
  %17 = load ptr, ptr @musb_writew, align 4
  tail call void %17(ptr noundef %5, i32 noundef 2, i16 noundef zeroext %16) #7
  %18 = ptrtoint ptr %ep0_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ep0_state, align 8
  %19 = ptrtoint ptr %ackpend to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %ackpend, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %conv13) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb15, %if.end.cleanup_crit_edge
  %status.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb15 ], [ -16, %if.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #7
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ %status.0, %cleanup ], [ -22, %entry.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_write_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_read_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_giveback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_ep_restart(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @musb_try_b_hnp_enable(ptr noundef %musb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %mregs = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 27
  %0 = ptrtoint ptr %mregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mregs, align 8
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %musb, ptr noundef nonnull @.str.34) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_readb to i32))
  %2 = load ptr, ptr @musb_readb, align 4
  %call = tail call zeroext i8 %2(ptr noundef %1, i32 noundef 96) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @musb_writeb to i32))
  %3 = load ptr, ptr @musb_writeb, align 4
  %4 = or i8 %call, 2
  tail call void %3(ptr noundef %1, i32 noundef 96, i8 noundef zeroext %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 653, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 686, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @musb_g_ep0_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @musb_g_ep0_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 730, i32 19}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 779, i32 5}
!12 = !{ptr @musb_g_ep0_irq._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @musb_g_ep0_irq._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 789, i32 5}
!16 = !{ptr @musb_g_ep0_irq._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @musb_g_ep0_irq._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 842, i32 19}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 859, i32 20}
!22 = !{ptr @musb_g_ep0_ops, !23, !"musb_g_ep0_ops", i1 false, i1 false}
!23 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 1050, i32 25}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 36, i32 35}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 37, i32 36}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 38, i32 34}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 39, i32 34}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 40, i32 38}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 41, i32 39}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 42, i32 40}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 43, i32 20}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 528, i32 18}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 585, i32 17}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 285, i32 21}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 315, i32 7}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug293, !47, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 320, i32 7}
!53 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug294, !52, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 325, i32 7}
!56 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug295, !55, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 330, i32 7}
!59 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug296, !58, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 337, i32 7}
!62 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug297, !61, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 343, i32 7}
!65 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug298, !64, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 349, i32 7}
!68 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug299, !67, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 355, i32 7}
!71 = !{ptr @service_zero_data_request.__UNIQUE_ID_ddebug300, !70, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 188, i32 17}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 939, i32 18}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 948, i32 17}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 949, i32 26}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 949, i32 36}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/musb/musb_gadget_ep0.c", i32 1041, i32 18}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2155405648}
!94 = !{i64 2155405490}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2148715835, i64 2148715840, i64 2148715853, i64 2148715897, i64 2148715931, i64 2148715952}
