; ModuleID = '/llk/IR_all_yes/drivers/mailbox/tegra-hsp.c_pt.bc'
source_filename = "../drivers/mailbox/tegra-hsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.tegra_hsp_soc = type { ptr, i8 }
%struct.tegra_hsp_db_map = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_hsp = type { ptr, ptr, %struct.mbox_controller, %struct.mbox_controller, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.tegra_hsp_channel = type { ptr, ptr, ptr }
%struct.tegra_hsp_doorbell = type { %struct.tegra_hsp_channel, %struct.list_head, ptr, i32, i32 }
%struct.tegra_hsp_mailbox = type { %struct.tegra_hsp_channel, i32, i8 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_tegra_hsp__188_858_tegra_hsp_init1 = internal global ptr @tegra_hsp_init, section ".initcall1.init", align 4
@tegra_hsp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_hsp_probe, ptr @tegra_hsp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_hsp_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_hsp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-hsp\00", [22 x i8] zeroinitializer }, align 32
@tegra_hsp_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-hsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_hsp_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-hsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_hsp_soc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_hsp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_hsp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_hsp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hsp->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"doorbell\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shared%u\00", [23 x i8] zeroinitializer }, align 32
@tegra_hsp_db_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @tegra_hsp_doorbell_send_data, ptr null, ptr @tegra_hsp_doorbell_startup, ptr @tegra_hsp_doorbell_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 720, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add doorbells: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_hsp_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mailbox/tegra-hsp.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry_ptr = internal global ptr @tegra_hsp_probe._entry, section ".printk_index", align 4
@tegra_hsp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 728, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register doorbell mailbox: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry_ptr.11 = internal global ptr @tegra_hsp_probe._entry.9, section ".printk_index", align 4
@tegra_hsp_sm_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @tegra_hsp_mailbox_send_data, ptr @tegra_hsp_mailbox_flush, ptr @tegra_hsp_mailbox_startup, ptr @tegra_hsp_mailbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 748, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mailboxes: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry_ptr.14 = internal global ptr @tegra_hsp_probe._entry.12, section ".printk_index", align 4
@tegra_hsp_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 756, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register shared mailbox: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry_ptr.17 = internal global ptr @tegra_hsp_probe._entry.15, section ".printk_index", align 4
@tegra_hsp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 769, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request doorbell IRQ#%u: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_hsp_probe._entry_ptr.20 = internal global ptr @tegra_hsp_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hsp->lock_key\00", [17 x i8] zeroinitializer }, align 32
@tegra_hsp_doorbell_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 321, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid master ID %u for HSP channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_hsp_doorbell_startup\00", [37 x i8] zeroinitializer }, align 32
@tegra_hsp_doorbell_startup._entry_ptr = internal global ptr @tegra_hsp_doorbell_startup._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_hsp_request_shared_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 618, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request interrupt: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_hsp_request_shared_irq\00", [35 x i8] zeroinitializer }, align 32
@tegra_hsp_request_shared_irq._entry_ptr = internal global ptr @tegra_hsp_request_shared_irq._entry, section ".printk_index", align 4
@tegra_hsp_request_shared_irq.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.25, ptr @.str.6, ptr @.str.27, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_hsp\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"interrupt requested: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_hsp_request_shared_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.6, i32 633, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to find available interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_hsp_request_shared_irq._entry_ptr.30 = internal global ptr @tegra_hsp_request_shared_irq._entry.28, section ".printk_index", align 4
@tegra186_hsp_soc = internal constant { %struct.tegra_hsp_soc, [24 x i8] } { %struct.tegra_hsp_soc { ptr @tegra186_hsp_db_map, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tegra194_hsp_soc = internal constant { %struct.tegra_hsp_soc, [24 x i8] } { %struct.tegra_hsp_soc { ptr @tegra186_hsp_db_map, i8 1 }, [24 x i8] zeroinitializer }, align 32
@tegra186_hsp_db_map = internal constant { [3 x %struct.tegra_hsp_db_map], [60 x i8] } { [3 x %struct.tegra_hsp_db_map] [%struct.tegra_hsp_db_map { ptr @.str.31, i32 17, i32 1 }, %struct.tegra_hsp_db_map { ptr @.str.32, i32 19, i32 3 }, %struct.tegra_hsp_db_map zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccplex\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bpmp\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"tegra_hsp_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 844, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 846, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"tegra_hsp_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 838, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"tegra_hsp_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 818, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 655, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 669, i32 47 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 685, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"tegra_hsp_db_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 369, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 719, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 727, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"tegra_hsp_sm_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 495, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 747, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 755, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 767, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 781, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 319, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 617, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 627, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 633, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"tegra186_hsp_soc\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 828, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"tegra194_hsp_soc\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 833, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"tegra186_hsp_db_map\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 822, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 823, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [31 x i8] c"../drivers/mailbox/tegra-hsp.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 824, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__initcall__kmod_tegra_hsp__188_858_tegra_hsp_init1, ptr @tegra_hsp_doorbell_startup._entry, ptr @tegra_hsp_doorbell_startup._entry_ptr, ptr @tegra_hsp_probe._entry, ptr @tegra_hsp_probe._entry.12, ptr @tegra_hsp_probe._entry.15, ptr @tegra_hsp_probe._entry.18, ptr @tegra_hsp_probe._entry.9, ptr @tegra_hsp_probe._entry_ptr, ptr @tegra_hsp_probe._entry_ptr.11, ptr @tegra_hsp_probe._entry_ptr.14, ptr @tegra_hsp_probe._entry_ptr.17, ptr @tegra_hsp_probe._entry_ptr.20, ptr @tegra_hsp_request_shared_irq._entry, ptr @tegra_hsp_request_shared_irq._entry.28, ptr @tegra_hsp_request_shared_irq._entry_ptr, ptr @tegra_hsp_request_shared_irq._entry_ptr.30, ptr @tegra_hsp_driver, ptr @.str, ptr @tegra_hsp_match, ptr @tegra_hsp_pm_ops, ptr @tegra_hsp_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tegra_hsp_db_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @tegra_hsp_sm_ops, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @tegra186_hsp_soc, ptr @tegra194_hsp_soc, ptr @tegra186_hsp_db_map, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_db_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_sm_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_doorbell_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_request_shared_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_hsp_request_shared_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_hsp_soc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_hsp_soc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_hsp_db_map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_hsp_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 288, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup170_crit_edge, label %if.end

entry.cleanup170_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup170

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %soc = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %soc, align 4
  %doorbells = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %doorbells to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %doorbells, ptr %doorbells, align 4
  %prev.i = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %doorbells, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_hsp_probe.__key, i16 noundef signext 3) #7
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #7
  %regs = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup170

if.end14:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call8, i32 896
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and = and i32 %7, 15
  %num_sm = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %num_sm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %num_sm, align 8
  %shr16 = lshr i32 %7, 4
  %and17 = and i32 %shr16, 15
  %num_ss = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %num_ss to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and17, ptr %num_ss, align 8
  %shr18 = lshr i32 %7, 8
  %and19 = and i32 %shr18, 15
  %num_as = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %num_as to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and19, ptr %num_as, align 4
  %shr20 = lshr i32 %7, 12
  %and21 = and i32 %shr20, 15
  %num_db = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %num_db to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and21, ptr %num_db, align 4
  %shr22 = lshr i32 %7, 16
  %and23 = and i32 %shr22, 15
  %num_si = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %num_si to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and23, ptr %num_si, align 8
  %call24 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp = icmp sgt i32 %call24, -1
  br i1 %cmp, label %if.then25, label %if.end14.if.end26_crit_edge

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %doorbell_irq = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %doorbell_irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call24, ptr %doorbell_irq, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end14.if.end26_crit_edge
  %14 = ptrtoint ptr %num_si to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_si, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not = icmp eq i32 %15, 0
  br i1 %cmp28.not, label %if.end26.if.end58_crit_edge, label %if.then29

if.end26.if.end58_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then29:                                        ; preds = %if.end26
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #7
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !86

devm_kcalloc.exit.thread:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %shared_irqs305 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %shared_irqs305 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %shared_irqs305, align 8
  br label %cleanup170

devm_kcalloc.exit:                                ; preds = %if.then29
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %19, i32 noundef 3520) #7
  %shared_irqs = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i, ptr %shared_irqs, align 8
  %tobool34.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool34.not, label %devm_kcalloc.exit.cleanup170_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup170_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup170

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %21 = ptrtoint ptr %num_si to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_si, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp38317.not = icmp eq i32 %22, 0
  br i1 %cmp38317.not, label %for.cond.preheader.if.then50_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then50_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.0320 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0318 = phi i32 [ %inc48, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call39 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %i.0318) #7
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %for.body.cleanup170_crit_edge, label %if.end42

for.body.cleanup170_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup170

if.end42:                                         ; preds = %for.body
  %call43 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull %call39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %cmp44 = icmp sgt i32 %call43, -1
  br i1 %cmp44, label %if.then45, label %if.end42.for.inc_crit_edge

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %shared_irqs, align 8
  %arrayidx = getelementptr i32, ptr %24, i32 %i.0318
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call43, ptr %arrayidx, align 4
  %inc = add i32 %count.0320, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %if.end42.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %if.then45 ], [ %count.0320, %if.end42.for.inc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call39) #7
  %inc48 = add nuw i32 %i.0318, 1
  %26 = ptrtoint ptr %num_si to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_si, align 8
  %cmp38 = icmp ult i32 %inc48, %27
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp49 = icmp eq i32 %count.1, 0
  br i1 %cmp49, label %for.end.if.then50_crit_edge, label %for.end.if.end58_crit_edge

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.end.if.then50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.then50:                                        ; preds = %for.end.if.then50_crit_edge, %for.cond.preheader.if.then50_crit_edge
  %28 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shared_irqs, align 8
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %29) #7
  %30 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %shared_irqs, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %for.end.if.end58_crit_edge, %if.end26.if.end58_crit_edge
  %mbox_db = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 2
  %of_xlate = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 2, i32 7
  %31 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tegra_hsp_db_xlate, ptr %of_xlate, align 8
  %num_chans = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 32, ptr %num_chans, align 4
  %33 = ptrtoint ptr %mbox_db to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %mbox_db, align 8
  %ops = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tegra_hsp_db_ops, ptr %ops, align 4
  %call5.i.i287 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6656, i32 noundef 3520) #7
  %chans = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i287, ptr %chans, align 8
  %tobool71.not = icmp eq ptr %call5.i.i287, null
  br i1 %tobool71.not, label %if.end58.cleanup170_crit_edge, label %if.end73

if.end58.cleanup170_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup170

if.end73:                                         ; preds = %if.end58
  %doorbell_irq74 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %doorbell_irq74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %doorbell_irq74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool75.not = icmp eq i32 %37, 0
  br i1 %tobool75.not, label %if.end73.if.end85_crit_edge, label %if.then76

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then76:                                        ; preds = %if.end73
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not15.i = icmp eq ptr %43, null
  br i1 %tobool.not15.i, label %if.then76.if.end85_crit_edge, label %if.then76.while.body.i_crit_edge

if.then76.while.body.i_crit_edge:                 ; preds = %if.then76
  br label %while.body.i

if.then76.if.end85_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

while.cond.i:                                     ; preds = %tegra_hsp_doorbell_create.exit.i
  %incdec.ptr.i = getelementptr %struct.tegra_hsp_db_map, ptr %map.016.i, i32 1
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %while.cond.i.if.end85_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.i.if.end85_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.then76.while.body.i_crit_edge
  %46 = phi ptr [ %45, %while.cond.i.while.body.i_crit_edge ], [ %43, %if.then76.while.body.i_crit_edge ]
  %map.016.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ], [ %41, %if.then76.while.body.i_crit_edge ]
  %master.i = getelementptr inbounds %struct.tegra_hsp_db_map, ptr %map.016.i, i32 0, i32 1
  %47 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %master.i, align 4
  %index.i = getelementptr inbounds %struct.tegra_hsp_db_map, ptr %map.016.i, i32 0, i32 2
  %49 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 8
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.do.end82_crit_edge, label %if.end.i.i290

while.body.i.do.end82_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

if.end.i.i290:                                    ; preds = %while.body.i
  %53 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_sm, align 8
  %div41.i.i = lshr i32 %54, 1
  %add.i.i = add nuw i32 %div41.i.i, 1
  %55 = ptrtoint ptr %num_ss to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_ss, align 8
  %add2.i.i = add i32 %add.i.i, %56
  %57 = ptrtoint ptr %num_as to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_as, align 4
  %add3.i.i = add i32 %add2.i.i, %58
  %mul.i.i = shl i32 %add3.i.i, 16
  %mul4.i.i = shl i32 %50, 8
  %add5.i.i = add i32 %mul.i.i, %mul4.i.i
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 %add5.i.i
  %regs6.i.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %call.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %regs6.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i.i, ptr %regs6.i.i, align 4
  %62 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %call.i.i.i, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 8
  %call10.i.i = tail call ptr @devm_kstrdup_const(ptr noundef %64, ptr noundef nonnull %46, i32 noundef 3264) #7
  %name11.i.i = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %call.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %name11.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call10.i.i, ptr %name11.i.i, align 4
  %master12.i.i = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %call.i.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %master12.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %48, ptr %master12.i.i, align 4
  %index13.i.i = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %call.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %index13.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %50, ptr %index13.i.i, align 4
  %call16.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %list.i.i = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %call.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %69, ptr noundef %doorbells) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i290.tegra_hsp_doorbell_create.exit.i_crit_edge

if.end.i.i290.tegra_hsp_doorbell_create.exit.i_crit_edge: ; preds = %if.end.i.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_hsp_doorbell_create.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i290
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %list.i.i, ptr %prev.i, align 4
  %71 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %doorbells, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %list.i.i, ptr %69, align 4
  br label %tegra_hsp_doorbell_create.exit.i

tegra_hsp_doorbell_create.exit.i:                 ; preds = %if.end.i.i.i.i, %if.end.i.i290.tegra_hsp_doorbell_create.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16.i.i) #7
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tegra_hsp_add_doorbells.exit, label %while.cond.i

tegra_hsp_add_doorbells.exit:                     ; preds = %tegra_hsp_doorbell_create.exit.i
  %cmp78 = icmp slt ptr %call.i.i.i, null
  br i1 %cmp78, label %tegra_hsp_add_doorbells.exit.do.end82_crit_edge, label %tegra_hsp_add_doorbells.exit.if.end85_crit_edge

tegra_hsp_add_doorbells.exit.if.end85_crit_edge:  ; preds = %tegra_hsp_add_doorbells.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

tegra_hsp_add_doorbells.exit.do.end82_crit_edge:  ; preds = %tegra_hsp_add_doorbells.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

do.end82:                                         ; preds = %tegra_hsp_add_doorbells.exit.do.end82_crit_edge, %while.body.i.do.end82_crit_edge
  %retval.0.i14.i325 = phi ptr [ %call.i.i.i, %tegra_hsp_add_doorbells.exit.do.end82_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.body.i.do.end82_crit_edge ]
  %74 = ptrtoint ptr %retval.0.i14.i325 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %74) #10
  br label %cleanup170

if.end85:                                         ; preds = %tegra_hsp_add_doorbells.exit.if.end85_crit_edge, %while.cond.i.if.end85_crit_edge, %if.then76.if.end85_crit_edge, %if.end73.if.end85_crit_edge
  %call88 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %mbox_db) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call88) #10
  br label %cleanup170

if.end95:                                         ; preds = %if.end85
  %mbox_sm = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 3
  %of_xlate96 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 3, i32 7
  %75 = ptrtoint ptr %of_xlate96 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @tegra_hsp_sm_xlate, ptr %of_xlate96, align 8
  %76 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_sm, align 8
  %num_chans99 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 3, i32 3
  %78 = ptrtoint ptr %num_chans99 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %num_chans99, align 4
  %79 = ptrtoint ptr %mbox_sm to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dev, ptr %mbox_sm, align 8
  %ops104 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %ops104 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tegra_hsp_sm_ops, ptr %ops104, align 4
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %77, i32 208) #7
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %devm_kcalloc.exit294.thread, label %devm_kcalloc.exit294, !prof !86

devm_kcalloc.exit294.thread:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %chans110311 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 3, i32 2
  %83 = ptrtoint ptr %chans110311 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %chans110311, align 8
  br label %cleanup170

devm_kcalloc.exit294:                             ; preds = %if.end95
  %84 = extractvalue { i32, i1 } %81, 0
  %call5.i.i291 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %84, i32 noundef 3520) #7
  %chans110 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 3, i32 2
  %85 = ptrtoint ptr %chans110 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call5.i.i291, ptr %chans110, align 8
  %tobool113.not = icmp eq ptr %call5.i.i291, null
  br i1 %tobool113.not, label %devm_kcalloc.exit294.cleanup170_crit_edge, label %if.end115

devm_kcalloc.exit294.cleanup170_crit_edge:        ; preds = %devm_kcalloc.exit294
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup170

if.end115:                                        ; preds = %devm_kcalloc.exit294
  %shared_irqs116 = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 6
  %86 = ptrtoint ptr %shared_irqs116 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %shared_irqs116, align 8
  %tobool117.not = icmp eq ptr %87, null
  br i1 %tobool117.not, label %if.end115.if.end128_crit_edge, label %if.then118

if.end115.if.end128_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then118:                                       ; preds = %if.end115
  %88 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_sm, align 8
  %90 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 20) #7
  %91 = extractvalue { i32, i1 } %90, 1
  br i1 %91, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !86

devm_kcalloc.exit.thread.i:                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  %mailboxes30.i = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 16
  %92 = ptrtoint ptr %mailboxes30.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %mailboxes30.i, align 8
  br label %do.end125

devm_kcalloc.exit.i:                              ; preds = %if.then118
  %93 = extractvalue { i32, i1 } %90, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %93, i32 noundef 3520) #7
  %mailboxes.i = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 16
  %94 = ptrtoint ptr %mailboxes.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call5.i.i.i, ptr %mailboxes.i, align 8
  %tobool.not.i295 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i295, label %devm_kcalloc.exit.i.do.end125_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.do.end125_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end125

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %95 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_sm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp32.not.i = icmp eq i32 %96, 0
  br i1 %cmp32.not.i, label %for.cond.preheader.i.if.end128_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end128_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %97 = ptrtoint ptr %mailboxes.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mailboxes.i, align 8
  %arrayidx.i = getelementptr %struct.tegra_hsp_mailbox, ptr %98, i32 %i.033.i
  %index.i297 = getelementptr %struct.tegra_hsp_mailbox, ptr %98, i32 %i.033.i, i32 1
  %99 = ptrtoint ptr %index.i297 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %i.033.i, ptr %index.i297, align 4
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 8
  %add.ptr.i298 = getelementptr i8, ptr %102, i32 65536
  %mul.i = shl i32 %i.033.i, 15
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i298, i32 %mul.i
  %regs7.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %arrayidx.i, i32 0, i32 2
  %103 = ptrtoint ptr %regs7.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr5.i, ptr %regs7.i, align 4
  %104 = ptrtoint ptr %chans110 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chans110, align 8
  %arrayidx8.i = getelementptr %struct.mbox_chan, ptr %105, i32 %i.033.i
  %chan.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %arrayidx.i, i32 0, i32 1
  %106 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %arrayidx8.i, ptr %chan.i, align 4
  %con_priv.i = getelementptr %struct.mbox_chan, ptr %105, i32 %i.033.i, i32 9
  %107 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.i, ptr %con_priv.i, align 4
  %inc.i = add nuw i32 %i.033.i, 1
  %108 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_sm, align 8
  %cmp.i299 = icmp ult i32 %inc.i, %109
  br i1 %cmp.i299, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end128_crit_edge

for.body.i.if.end128_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end125:                                        ; preds = %devm_kcalloc.exit.i.do.end125_crit_edge, %devm_kcalloc.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef -12) #10
  br label %cleanup170

if.end128:                                        ; preds = %for.body.i.if.end128_crit_edge, %for.cond.preheader.i.if.end128_crit_edge, %if.end115.if.end128_crit_edge
  %call131 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %mbox_sm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %do.end136, label %if.end138

do.end136:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call131) #10
  br label %cleanup170

if.end138:                                        ; preds = %if.end128
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %111 = ptrtoint ptr %doorbell_irq74 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %doorbell_irq74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool140.not = icmp eq i32 %112, 0
  br i1 %tobool140.not, label %if.end138.if.end155_crit_edge, label %if.then141

if.end138.if.end155_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then141:                                       ; preds = %if.end138
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %113 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i301 = icmp eq ptr %114, null
  br i1 %tobool.not.i301, label %if.end.i, label %if.then141.dev_name.exit_crit_edge

if.then141.dev_name.exit_crit_edge:               ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then141.dev_name.exit_crit_edge
  %retval.0.i302 = phi ptr [ %116, %if.end.i ], [ %114, %if.then141.dev_name.exit_crit_edge ]
  %call.i303 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %112, ptr noundef nonnull @tegra_hsp_doorbell_irq, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i302, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %cmp147 = icmp slt i32 %call.i303, 0
  br i1 %cmp147, label %do.end151, label %dev_name.exit.if.end155_crit_edge

dev_name.exit.if.end155_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

do.end151:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %doorbell_irq74 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %doorbell_irq74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %118, i32 noundef %call.i303) #10
  br label %cleanup170

if.end155:                                        ; preds = %dev_name.exit.if.end155_crit_edge, %if.end138.if.end155_crit_edge
  %119 = ptrtoint ptr %shared_irqs116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %shared_irqs116, align 8
  %tobool157.not = icmp eq ptr %120, null
  br i1 %tobool157.not, label %if.end155.if.end163_crit_edge, label %if.then158

if.end155.if.end163_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then158:                                       ; preds = %if.end155
  %call159 = tail call fastcc i32 @tegra_hsp_request_shared_irq(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then158.cleanup170_crit_edge, label %if.then158.if.end163_crit_edge

if.then158.if.end163_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then158.cleanup170_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup170

if.end163:                                        ; preds = %if.then158.if.end163_crit_edge, %if.end155.if.end163_crit_edge
  %lock_key = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 14
  tail call void @lockdep_register_key(ptr noundef %lock_key) #7
  %dep_map = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 13, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.tegra_hsp, ptr %call.i, i32 0, i32 13, i32 0, i32 0, i32 4, i32 4
  %121 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.21, ptr noundef %lock_key, i32 noundef 0, i8 noundef zeroext %122, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %cleanup170

cleanup170:                                       ; preds = %if.end163, %if.then158.cleanup170_crit_edge, %do.end151, %do.end136, %do.end125, %devm_kcalloc.exit294.cleanup170_crit_edge, %devm_kcalloc.exit294.thread, %do.end93, %do.end82, %if.end58.cleanup170_crit_edge, %for.body.cleanup170_crit_edge, %devm_kcalloc.exit.cleanup170_crit_edge, %devm_kcalloc.exit.thread, %if.then11, %entry.cleanup170_crit_edge
  %retval.3 = phi i32 [ %5, %if.then11 ], [ %74, %do.end82 ], [ %call88, %do.end93 ], [ -12, %do.end125 ], [ %call131, %do.end136 ], [ %call.i303, %do.end151 ], [ 0, %if.end163 ], [ -12, %entry.cleanup170_crit_edge ], [ -12, %if.end58.cleanup170_crit_edge ], [ -12, %devm_kcalloc.exit294.cleanup170_crit_edge ], [ %call159, %if.then158.cleanup170_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup170_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit294.thread ], [ -12, %for.body.cleanup170_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock_key = getelementptr inbounds %struct.tegra_hsp, ptr %1, i32 0, i32 14
  tail call void @lockdep_unregister_key(ptr noundef %lock_key) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_hsp_db_xlate(ptr noundef %mbox, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %doorbell_irq = getelementptr i8, ptr %mbox, i32 180
  %4 = ptrtoint ptr %doorbell_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %doorbell_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock.i = getelementptr i8, ptr %mbox, i32 212
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %doorbells.i.i = getelementptr i8, ptr %mbox, i32 264
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ %doorbells.i.i, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %doorbells.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.tegra_hsp_doorbell_get.exit_crit_edge, label %for.body.i.i

for.cond.i.i.tegra_hsp_doorbell_get.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_hsp_doorbell_get.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %master3.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %7 = ptrtoint ptr %master3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %master3.i.i, align 4
  %cmp4.i.i = icmp eq i32 %8, %3
  br i1 %cmp4.i.i, label %cleanup.split.loop.exit14.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

cleanup.split.loop.exit14.i.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  br label %tegra_hsp_doorbell_get.exit

tegra_hsp_doorbell_get.exit:                      ; preds = %cleanup.split.loop.exit14.i.i, %for.cond.i.i.tegra_hsp_doorbell_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %entry1.0.le.i.i, %cleanup.split.loop.exit14.i.i ], [ null, %for.cond.i.i.tegra_hsp_doorbell_get.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %tobool6.not = icmp eq ptr %retval.0.i.i, null
  %spec.select = select i1 %tobool6.not, ptr inttoptr (i32 -19 to ptr), ptr %retval.0.i.i
  %cmp.i = icmp ugt ptr %spec.select, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, label %do.body14

tegra_hsp_doorbell_get.exit.cleanup_crit_edge:    ; preds = %tegra_hsp_doorbell_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14:                                        ; preds = %tegra_hsp_doorbell_get.exit
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %9 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2158.not = icmp eq i32 %10, 0
  br i1 %cmp2158.not, label %do.body14.for.end_crit_edge, label %for.body.lr.ph

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body14
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %11 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chans, align 8
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %con_priv = getelementptr %struct.mbox_chan, ptr %12, i32 %i.059, i32 9
  %13 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %con_priv, align 4
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx23 = getelementptr %struct.mbox_chan, ptr %12, i32 %i.059
  %chan26 = getelementptr inbounds %struct.tegra_hsp_channel, ptr %spec.select, i32 0, i32 1
  %15 = ptrtoint ptr %chan26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx23, ptr %chan26, align 4
  %16 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i.i, ptr %con_priv, align 4
  br label %for.end

if.end28:                                         ; preds = %for.body
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %if.then25, %do.body14.for.end_crit_edge
  %chan.1 = phi ptr [ %arrayidx23, %if.then25 ], [ inttoptr (i32 -1 to ptr), %do.body14.for.end_crit_edge ], [ null, %if.end28.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call18) #7
  %tobool30.not = icmp eq ptr %chan.1, null
  %spec.select54 = select i1 %tobool30.not, ptr inttoptr (i32 -16 to ptr), ptr %chan.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge ], [ %spec.select54, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tegra_hsp_sm_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %args) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %shared_irqs = getelementptr i8, ptr %mbox, i32 96
  %4 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shared_irqs, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %num_sm = getelementptr i8, ptr %mbox, i32 104
  %6 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp5.not = icmp ult i32 %and, %7
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  %mailboxes = getelementptr i8, ptr %mbox, i32 184
  %8 = ptrtoint ptr %mailboxes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mailboxes, align 8
  %.lobit = lshr i32 %3, 31
  %10 = trunc i32 %.lobit to i8
  %11 = getelementptr %struct.tegra_hsp_mailbox, ptr %9, i32 %and, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %11, align 4
  %chan = getelementptr %struct.tegra_hsp_mailbox, ptr %9, i32 %and, i32 0, i32 1
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.end ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false4.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_doorbell_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %lock.i = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %doorbells.i.i = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ %doorbells.i.i, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %doorbells.i.i
  br i1 %cmp.not.i.i, label %tegra_hsp_doorbell_get.exit.thread, label %for.body.i.i

tegra_hsp_doorbell_get.exit.thread:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %master3.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %1 = ptrtoint ptr %master3.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %master3.i.i, align 4
  %cmp4.i.i = icmp eq i32 %2, 17
  br i1 %cmp4.i.i, label %tegra_hsp_doorbell_get.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

tegra_hsp_doorbell_get.exit:                      ; preds = %for.body.i.i
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %tobool.not = icmp eq ptr %entry1.0.le.i.i, null
  br i1 %tobool.not, label %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, label %if.end

tegra_hsp_doorbell_get.exit.cleanup_crit_edge:    ; preds = %tegra_hsp_doorbell_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tegra_hsp_doorbell_get.exit
  %regs.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %5) #7, !srcloc !89
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %num_chans = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_chans, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %value, i32 noundef %11, i32 noundef 0) #7
  %12 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %13)
  %cmp42 = icmp ult i32 %call3, %13
  br i1 %cmp42, label %if.end.for.cond.i.preheader_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.end14.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  %master.043 = phi i32 [ %call17, %if.end14.for.cond.i.preheader_crit_edge ], [ %call3, %if.end.for.cond.i.preheader_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %doorbells.i.i, %for.cond.i.preheader ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %doorbells.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.end14_crit_edge, label %for.body.i

for.cond.i.if.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.body.i:                                       ; preds = %for.cond.i
  %master3.i = getelementptr i8, ptr %.pn.i, i32 12
  %15 = ptrtoint ptr %master3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %master3.i, align 4
  %cmp4.i = icmp eq i32 %16, %master.043
  br i1 %cmp4.i, label %__tegra_hsp_doorbell_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__tegra_hsp_doorbell_get.exit:                    ; preds = %for.body.i
  %entry1.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool8.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %tobool8.not, label %__tegra_hsp_doorbell_get.exit.if.end14_crit_edge, label %land.lhs.true

__tegra_hsp_doorbell_get.exit.if.end14_crit_edge: ; preds = %__tegra_hsp_doorbell_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %__tegra_hsp_doorbell_get.exit
  %chan = getelementptr i8, ptr %.pn.i, i32 -8
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @mbox_chan_received_data(ptr noundef nonnull %18, ptr noundef null) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %__tegra_hsp_doorbell_get.exit.if.end14_crit_edge, %for.cond.i.if.end14_crit_edge
  %19 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_chans, align 4
  %add = add i32 %master.043, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %value, i32 noundef %20, i32 noundef %add) #7
  %21 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_chans, align 4
  %cmp = icmp ult i32 %call17, %22
  br i1 %cmp, label %if.end14.for.cond.i.preheader_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end14.for.cond.i.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, %tegra_hsp_doorbell_get.exit.thread
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge ], [ 0, %tegra_hsp_doorbell_get.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_hsp_request_shared_irq(ptr noundef %hsp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_si = getelementptr inbounds %struct.tegra_hsp, ptr %hsp, i32 0, i32 12
  %0 = ptrtoint ptr %num_si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_si, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53.not = icmp eq i32 %1, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shared_irqs = getelementptr inbounds %struct.tegra_hsp, ptr %hsp, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shared_irqs, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %i.054
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsp, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i46 = phi ptr [ %11, %if.end.i ], [ %9, %if.end.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %5, ptr noundef nonnull @tegra_hsp_shared_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i46, ptr noundef %hsp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hsp, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef %call.i) #10
  br label %for.inc

if.end7:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shared_irq = getelementptr inbounds %struct.tegra_hsp, ptr %hsp, i32 0, i32 7
  %14 = ptrtoint ptr %shared_irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.054, ptr %shared_irq, align 4
  %mul = shl i32 %i.054, 2
  %add = add i32 %mul, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.tegra_hsp, ptr %hsp, i32 0, i32 4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_hsp_request_shared_irq.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_hsp_request_shared_irq, %if.then13)) #7
          to label %for.end [label %if.then13], !srcloc !91

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hsp, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_hsp_request_shared_irq.__UNIQUE_ID_ddebug187, ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %5) #7
  br label %for.end

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %19 = ptrtoint ptr %num_si to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_si, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then13, %if.end7, %entry.for.end_crit_edge
  %i.051 = phi i32 [ %i.054, %if.end7 ], [ %i.054, %if.then13 ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %21 = ptrtoint ptr %num_si to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_si, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.051, i32 %22)
  %cmp19 = icmp eq i32 %i.051, %22
  br i1 %cmp19, label %do.end23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hsp, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.29) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end23 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_register_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_doorbell_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #7, !srcloc !89
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_doorbell_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %master = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %lock.i = getelementptr inbounds %struct.tegra_hsp, ptr %11, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %doorbells.i.i = getelementptr inbounds %struct.tegra_hsp, ptr %11, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end
  %.pn.in.i.i = phi ptr [ %doorbells.i.i, %if.end ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %doorbells.i.i
  br i1 %cmp.not.i.i, label %tegra_hsp_doorbell_get.exit.thread, label %for.body.i.i

tegra_hsp_doorbell_get.exit.thread:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %master3.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %13 = ptrtoint ptr %master3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %master3.i.i, align 4
  %cmp4.i.i = icmp eq i32 %14, 17
  br i1 %cmp4.i.i, label %tegra_hsp_doorbell_get.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

tegra_hsp_doorbell_get.exit:                      ; preds = %for.body.i.i
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %tobool.not = icmp eq ptr %entry1.0.le.i.i, null
  br i1 %tobool.not, label %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, label %if.end5

tegra_hsp_doorbell_get.exit.cleanup_crit_edge:    ; preds = %tegra_hsp_doorbell_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %tegra_hsp_doorbell_get.exit
  %call6 = tail call zeroext i1 @tegra_is_silicon() #7
  br i1 %call6, label %land.lhs.true, label %if.end5.do.body11_crit_edge

if.end5.do.body11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

land.lhs.true:                                    ; preds = %if.end5
  %regs.i.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %18 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not = icmp eq i32 %18, 0
  br i1 %cmp.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body11_crit_edge

land.lhs.true.do.body11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body11:                                        ; preds = %land.lhs.true.do.body11_crit_edge, %if.end5.do.body11_crit_edge
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %regs.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %master, align 4
  %shl = shl nuw i32 1, %24
  %or = or i32 %shl, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %25) #7, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call14) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %land.lhs.true.cleanup_crit_edge, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, %tegra_hsp_doorbell_get.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body11 ], [ -19, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %tegra_hsp_doorbell_get.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_hsp_doorbell_shutdown(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock.i = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %doorbells.i.i = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %.pn.in.i.i = phi ptr [ %doorbells.i.i, %entry ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %doorbells.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup.sink.split_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup.sink.split_crit_edge:        ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.i.i:                                     ; preds = %for.cond.i.i
  %master3.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %5 = ptrtoint ptr %master3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %master3.i.i, align 4
  %cmp4.i.i = icmp eq i32 %6, 17
  br i1 %cmp4.i.i, label %tegra_hsp_doorbell_get.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

tegra_hsp_doorbell_get.exit:                      ; preds = %for.body.i.i
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %tobool.not = icmp eq ptr %entry1.0.le.i.i, null
  br i1 %tobool.not, label %tegra_hsp_doorbell_get.exit.cleanup_crit_edge, label %do.body2

tegra_hsp_doorbell_get.exit.cleanup_crit_edge:    ; preds = %tegra_hsp_doorbell_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %tegra_hsp_doorbell_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %regs.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %master = getelementptr inbounds %struct.tegra_hsp_doorbell, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %master, align 4
  %shl = shl nuw i32 1, %12
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %13) #7, !srcloc !89
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body2, %for.cond.i.i.cleanup.sink.split_crit_edge
  %call2.i.sink = phi i32 [ %call4, %do.body2 ], [ %call2.i, %for.cond.i.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %tegra_hsp_doorbell_get.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_is_silicon() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kstrdup_const(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_mailbox_send_data(ptr nocapture noundef readonly %chan, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %producer = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %producer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %producer, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !86

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 382, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %data to i32
  %or = or i32 %6, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %regs.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !89
  %lock = getelementptr inbounds %struct.tegra_hsp, ptr %5, i32 0, i32 13
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %index = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %11
  %mask = getelementptr inbounds %struct.tegra_hsp, ptr %5, i32 0, i32 17
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %or34 = or i32 %13, %shl
  store i32 %or34, ptr %mask, align 4
  %shared_irq = getelementptr inbounds %struct.tegra_hsp, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shared_irq, align 4
  %mul = shl i32 %15, 2
  %add36 = add i32 %mul, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or34) #7
  %regs.i51 = getelementptr inbounds %struct.tegra_hsp, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %regs.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i51, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_mailbox_flush(ptr noundef %chan, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #7
  %3 = add i32 %call2.i, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub7 = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_hsp_channel, ptr %1, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %.mask = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp2 = icmp eq i32 %.mask, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mbox_chan_txdone(ptr noundef %chan, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %3
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -62, %entry.cleanup_crit_edge ], [ -62, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_mailbox_startup(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %txdone_method to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %txdone_method, align 4
  %lock = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %producer = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %producer to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %producer, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %index7 = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %8
  %neg = xor i32 %shl, -1
  %mask = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %and = and i32 %10, %neg
  store i32 %and, ptr %mask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add8 = add i32 %8, 8
  %shl9 = shl nuw i32 1, %add8
  %mask10 = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %mask10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask10, align 4
  %or = or i32 %shl9, %12
  store i32 %or, ptr %mask10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mask11 = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask11, align 4
  %shared_irq = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shared_irq, align 4
  %mul = shl i32 %16, 2
  %add12 = add i32 %mul, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %regs.i = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %soc = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %has_per_mb_ie = getelementptr inbounds %struct.tegra_hsp_soc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_per_mb_ie to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_per_mb_ie, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %if.then15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then15:                                        ; preds = %if.end
  %24 = ptrtoint ptr %producer to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %producer, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %regs.i38 = getelementptr inbounds %struct.tegra_hsp_channel, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %regs.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i38, align 4
  br i1 %tobool17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i37 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #7, !srcloc !89
  br label %if.end21

if.else19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i39 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 16777216) #7, !srcloc !89
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18, %if.end.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_hsp_mailbox_shutdown(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %soc = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %has_per_mb_ie = getelementptr inbounds %struct.tegra_hsp_soc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %has_per_mb_ie to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_per_mb_ie, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %if.then

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.then:                                          ; preds = %entry
  %producer = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %producer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %producer, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %regs.i37 = getelementptr inbounds %struct.tegra_hsp_channel, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i37, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !89
  br label %do.body6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i38 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #7, !srcloc !89
  br label %do.body6

do.body6:                                         ; preds = %if.else, %if.then4, %entry.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %producer10 = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %producer10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %producer10, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  %index14 = getelementptr inbounds %struct.tegra_hsp_mailbox, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index14, align 4
  %add15 = add i32 %15, 8
  %add15.sink = select i1 %tobool11.not, i32 %add15, i32 %15
  %shl16 = shl nuw i32 1, %add15.sink
  %neg17 = xor i32 %shl16, -1
  %mask18 = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %mask18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask18, align 4
  %and19 = and i32 %17, %neg17
  store i32 %and19, ptr %mask18, align 4
  %shared_irq = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shared_irq, align 4
  %mul = shl i32 %19, 2
  %add22 = add i32 %mul, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and19) #7
  %regs.i39 = getelementptr inbounds %struct.tegra_hsp, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %regs.i39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i39, align 8
  %add.ptr.i40 = getelementptr i8, ptr %22, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %20) #7, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_shared_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %regs.i = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 772
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %mask1 = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 17
  %4 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask1, align 4
  %and = and i32 %5, %3
  %and2 = and i32 %and, 255
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %mask, align 4
  %num_sm = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 8
  %7 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_sm, align 8
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %8, i32 noundef 0) #7
  %9 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_sm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %10)
  %cmp70 = icmp ult i32 %call3, %10
  br i1 %cmp70, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mailboxes = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 16
  %lock = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 13
  %shared_irq = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %bit.071 = phi i32 [ %call3, %for.body.lr.ph ], [ %call12, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %mailboxes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mailboxes, align 8
  %producer = getelementptr %struct.tegra_hsp_mailbox, ptr %12, i32 %bit.071, i32 2
  %13 = ptrtoint ptr %producer to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %producer, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %index = getelementptr %struct.tegra_hsp_mailbox, ptr %12, i32 %bit.071, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %16
  %neg = xor i32 %shl, -1
  %17 = ptrtoint ptr %mask1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask1, align 4
  %and6 = and i32 %18, %neg
  store i32 %and6, ptr %mask1, align 4
  %19 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shared_irq, align 4
  %mul = shl i32 %20, 2
  %add8 = add i32 %mul, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  call void @arm_heavy_mb() #7
  %21 = call i32 @llvm.bswap.i32(i32 %and6) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %23, i32 %add8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %21) #7, !srcloc !89
  call void @_raw_spin_unlock(ptr noundef %lock) #7
  %chan = getelementptr %struct.tegra_hsp_mailbox, ptr %12, i32 %bit.071, i32 0, i32 1
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan, align 4
  call void @mbox_chan_txdone(ptr noundef %25, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %26 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sm, align 8
  %add11 = add nuw i32 %bit.071, 1
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %27, i32 noundef %add11) #7
  %28 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_sm, align 8
  %cmp = icmp ult i32 %call12, %29
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %10, %entry.for.end_crit_edge ], [ %29, %if.end.for.end_crit_edge ]
  %shr13 = lshr i32 %and, 8
  %and14 = and i32 %shr13, 255
  %30 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and14, ptr %mask, align 4
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %.lcssa, i32 noundef 0) #7
  %31 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_sm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %32)
  %cmp1973 = icmp ult i32 %call16, %32
  br i1 %cmp1973, label %for.body20.lr.ph, label %for.end.for.end38_crit_edge

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body20.lr.ph:                                 ; preds = %for.end
  %mailboxes22 = getelementptr inbounds %struct.tegra_hsp, ptr %data, i32 0, i32 16
  br label %for.body20

for.body20:                                       ; preds = %if.end33.for.body20_crit_edge, %for.body20.lr.ph
  %bit.174 = phi i32 [ %call16, %for.body20.lr.ph ], [ %call37, %if.end33.for.body20_crit_edge ]
  %33 = ptrtoint ptr %mailboxes22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mailboxes22, align 8
  %producer24 = getelementptr %struct.tegra_hsp_mailbox, ptr %34, i32 %bit.174, i32 2
  %35 = ptrtoint ptr %producer24 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %producer24, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool25.not = icmp eq i8 %36, 0
  br i1 %tobool25.not, label %if.then26, label %for.body20.if.end33_crit_edge

for.body20.if.end33_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then26:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx23 = getelementptr %struct.tegra_hsp_mailbox, ptr %34, i32 %bit.174
  %regs.i68 = getelementptr inbounds %struct.tegra_hsp_channel, ptr %arrayidx23, i32 0, i32 2
  %37 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i68, align 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %40 = and i32 %39, -129
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = inttoptr i32 %41 to ptr
  %chan31 = getelementptr inbounds %struct.tegra_hsp_channel, ptr %arrayidx23, i32 0, i32 1
  %43 = ptrtoint ptr %chan31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan31, align 4
  call void @mbox_chan_received_data(ptr noundef %44, ptr noundef %42) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i68, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #7, !srcloc !89
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %for.body20.if.end33_crit_edge
  %47 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_sm, align 8
  %add36 = add nuw i32 %bit.174, 1
  %call37 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef %48, i32 noundef %add36) #7
  %49 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_sm, align 8
  %cmp19 = icmp ult i32 %call37, %50
  br i1 %cmp19, label %if.end33.for.body20_crit_edge, label %if.end33.for.end38_crit_edge

if.end33.for.end38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

if.end33.for.body20_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.end38:                                        ; preds = %if.end33.for.end38_crit_edge, %for.end.for.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_unregister_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hsp_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %doorbells = getelementptr inbounds %struct.tegra_hsp, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %doorbells to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn39 = load ptr, ptr %doorbells, align 4
  %cmp.not40 = icmp eq ptr %.pn39, %doorbells
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %entry.for.body_crit_edge ]
  %db.0 = getelementptr i8, ptr %.pn41, i32 -12
  %tobool.not = icmp eq ptr %db.0, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %chan = getelementptr i8, ptr %.pn41, i32 -8
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @tegra_hsp_doorbell_startup(ptr noundef nonnull %4)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, %doorbells
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %mailboxes = getelementptr inbounds %struct.tegra_hsp, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %mailboxes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mailboxes, align 8
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %for.end.if.end27_crit_edge, label %for.cond13.preheader

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.cond13.preheader:                             ; preds = %for.end
  %num_sm = getelementptr inbounds %struct.tegra_hsp, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1442.not = icmp eq i32 %9, 0
  br i1 %cmp1442.not, label %for.cond13.preheader.if.end27_crit_edge, label %for.cond13.preheader.for.body15_crit_edge

for.cond13.preheader.for.body15_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body15

for.cond13.preheader.if.end27_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.body15:                                       ; preds = %if.end24.for.body15_crit_edge, %for.cond13.preheader.for.body15_crit_edge
  %i.043 = phi i32 [ %inc, %if.end24.for.body15_crit_edge ], [ 0, %for.cond13.preheader.for.body15_crit_edge ]
  %10 = ptrtoint ptr %mailboxes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mailboxes, align 8
  %chan18 = getelementptr %struct.tegra_hsp_mailbox, ptr %11, i32 %i.043, i32 0, i32 1
  %12 = ptrtoint ptr %chan18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan18, align 4
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %for.body15.if.end24_crit_edge, label %if.then20

for.body15.if.end24_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @tegra_hsp_mailbox_startup(ptr noundef %13)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.body15.if.end24_crit_edge
  %inc = add nuw i32 %i.043, 1
  %16 = ptrtoint ptr %num_sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_sm, align 8
  %cmp14 = icmp ult i32 %inc, %17
  br i1 %cmp14, label %if.end24.for.body15_crit_edge, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end24.for.body15_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

if.end27:                                         ; preds = %if.end24.if.end27_crit_edge, %for.cond13.preheader.if.end27_crit_edge, %for.end.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_tegra_hsp__188_858_tegra_hsp_init1, !1, !"__initcall__kmod_tegra_hsp__188_858_tegra_hsp_init1", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/tegra-hsp.c", i32 858, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/tegra-hsp.c", i32 846, i32 11}
!4 = !{ptr @tegra_hsp_driver, !5, !"tegra_hsp_driver", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/tegra-hsp.c", i32 844, i32 31}
!6 = !{ptr @tegra_hsp_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/tegra-hsp.c", i32 655, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mailbox/tegra-hsp.c", i32 669, i32 47}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/tegra-hsp.c", i32 685, i32 33}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mailbox/tegra-hsp.c", i32 719, i32 4}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tegra_hsp_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @tegra_hsp_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mailbox/tegra-hsp.c", i32 727, i32 3}
!23 = !{ptr @tegra_hsp_probe._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_hsp_probe._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mailbox/tegra-hsp.c", i32 747, i32 4}
!27 = !{ptr @tegra_hsp_probe._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra_hsp_probe._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/tegra-hsp.c", i32 755, i32 3}
!31 = !{ptr @tegra_hsp_probe._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tegra_hsp_probe._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/tegra-hsp.c", i32 767, i32 4}
!35 = !{ptr @tegra_hsp_probe._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_hsp_probe._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/tegra-hsp.c", i32 781, i32 2}
!39 = !{ptr @tegra_hsp_db_ops, !40, !"tegra_hsp_db_ops", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/tegra-hsp.c", i32 369, i32 35}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mailbox/tegra-hsp.c", i32 319, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tegra_hsp_doorbell_startup._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_hsp_doorbell_startup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @tegra_hsp_sm_ops, !47, !"tegra_hsp_sm_ops", i1 false, i1 false}
!47 = !{!"../drivers/mailbox/tegra-hsp.c", i32 495, i32 35}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mailbox/tegra-hsp.c", i32 617, i32 4}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tegra_hsp_request_shared_irq._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tegra_hsp_request_shared_irq._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mailbox/tegra-hsp.c", i32 627, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tegra_hsp_request_shared_irq.__UNIQUE_ID_ddebug187, !54, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mailbox/tegra-hsp.c", i32 633, i32 3}
!59 = !{ptr @tegra_hsp_request_shared_irq._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_hsp_request_shared_irq._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @tegra_hsp_match, !62, !"tegra_hsp_match", i1 false, i1 false}
!62 = !{!"../drivers/mailbox/tegra-hsp.c", i32 838, i32 34}
!63 = !{ptr @tegra186_hsp_soc, !64, !"tegra186_hsp_soc", i1 false, i1 false}
!64 = !{!"../drivers/mailbox/tegra-hsp.c", i32 828, i32 35}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mailbox/tegra-hsp.c", i32 823, i32 4}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mailbox/tegra-hsp.c", i32 824, i32 4}
!69 = !{ptr @tegra186_hsp_db_map, !70, !"tegra186_hsp_db_map", i1 false, i1 false}
!70 = !{!"../drivers/mailbox/tegra-hsp.c", i32 822, i32 38}
!71 = !{ptr @tegra194_hsp_soc, !72, !"tegra194_hsp_soc", i1 false, i1 false}
!72 = !{!"../drivers/mailbox/tegra-hsp.c", i32 833, i32 35}
!73 = !{ptr @tegra_hsp_pm_ops, !74, !"tegra_hsp_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/mailbox/tegra-hsp.c", i32 818, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4225090}
!85 = !{i64 2153158989}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2153160232}
!88 = !{i64 2153160622}
!89 = !{i64 4224672}
!90 = !{i64 2153159375}
!91 = !{i64 2148775563, i64 2148775568, i64 2148775581, i64 2148775625, i64 2148775659, i64 2148775680}
!92 = !{i8 0, i8 2}
