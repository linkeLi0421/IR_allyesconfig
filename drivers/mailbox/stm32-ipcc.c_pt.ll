; ModuleID = '/llk/IR_all_yes/drivers/mailbox/stm32-ipcc.c_pt.bc'
source_filename = "../drivers/mailbox/stm32-ipcc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.stm32_ipcc = type { %struct.mbox_controller, ptr, ptr, ptr, %struct.spinlock, [2 x i32], i32, i32, i32, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }

@__initcall__kmod_stm32_ipcc__210_386_stm32_ipcc_driver_init6 = internal global ptr @stm32_ipcc_driver_init, section ".initcall6.init", align 4
@stm32_ipcc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_ipcc_probe, ptr @stm32_ipcc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_ipcc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_ipcc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_ipcc_driver_exit = internal global ptr @stm32_ipcc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [55 x i8] c"stm32_ipcc.author=Ludovic Barre <ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [59 x i8] c"stm32_ipcc.author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [41 x i8] c"stm32_ipcc.description=STM32 IPCC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [43 x i8] c"stm32_ipcc.file=drivers/mailbox/stm32-ipcc\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [26 x i8] c"stm32_ipcc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32-ipcc\00", [21 x i8] zeroinitializer }, align 32
@stm32_ipcc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-ipcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_ipcc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_ipcc_suspend, ptr @stm32_ipcc_resume, ptr @stm32_ipcc_suspend, ptr @stm32_ipcc_resume, ptr @stm32_ipcc_suspend, ptr @stm32_ipcc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No DT found\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_ipcc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mailbox/stm32-ipcc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr = internal global ptr @stm32_ipcc_probe._entry, section ".printk_index", align 4
@stm32_ipcc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ipcc->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,proc-id\00", [21 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 227, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Missing st,proc-id\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr.12 = internal global ptr @stm32_ipcc_probe._entry.10, section ".printk_index", align 4
@stm32_ipcc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid proc_id (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr.15 = internal global ptr @stm32_ipcc_probe._entry.13, section ".printk_index", align 4
@stm32_ipcc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 250, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can not enable the clock\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr.18 = internal global ptr @stm32_ipcc_probe._entry.16, section ".printk_index", align 4
@stm32_ipcc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request irq %lu (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr.21 = internal global ptr @stm32_ipcc_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set wake up irq\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr.25 = internal global ptr @stm32_ipcc_probe._entry.23, section ".printk_index", align 4
@stm32_ipcc_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @stm32_ipcc_send_data, ptr null, ptr @stm32_ipcc_startup, ptr @stm32_ipcc_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 318, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ipcc rev:%ld.%ld enabled, %d chans, proc %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_ipcc_probe._entry_ptr.29 = internal global ptr @stm32_ipcc_probe._entry.26, section ".printk_index", align 4
@stm32_ipcc_rx_irq.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stm32_ipcc\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_ipcc_rx_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: chan:%d rx\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_ipcc_tx_irq.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_ipcc_tx_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: chan:%d tx\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_ipcc_send_data.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_ipcc_send_data\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: chan:%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@stm32_ipcc_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.37, ptr @.str.5, i32 173, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_ipcc_startup\00", [45 x i8] zeroinitializer }, align 32
@stm32_ipcc_startup._entry_ptr = internal global ptr @stm32_ipcc_startup._entry, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"stm32_ipcc_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 376, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 378, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"stm32_ipcc_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 370, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"stm32_ipcc_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 367, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 211, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 211, i32 48 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 215, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 223, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 226, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 227, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 232, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 250, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 266, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 278, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 283, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"stm32_ipcc_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 197, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 315, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 101, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 131, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 151, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [32 x i8] c"../drivers/mailbox/stm32-ipcc.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 173, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_stm32_ipcc_driver_exit, ptr @__initcall__kmod_stm32_ipcc__210_386_stm32_ipcc_driver_init6, ptr @stm32_ipcc_driver_exit, ptr @stm32_ipcc_probe._entry, ptr @stm32_ipcc_probe._entry.10, ptr @stm32_ipcc_probe._entry.13, ptr @stm32_ipcc_probe._entry.16, ptr @stm32_ipcc_probe._entry.19, ptr @stm32_ipcc_probe._entry.23, ptr @stm32_ipcc_probe._entry.26, ptr @stm32_ipcc_probe._entry_ptr, ptr @stm32_ipcc_probe._entry_ptr.12, ptr @stm32_ipcc_probe._entry_ptr.15, ptr @stm32_ipcc_probe._entry_ptr.18, ptr @stm32_ipcc_probe._entry_ptr.21, ptr @stm32_ipcc_probe._entry_ptr.25, ptr @stm32_ipcc_probe._entry_ptr.29, ptr @stm32_ipcc_startup._entry, ptr @stm32_ipcc_startup._entry_ptr, ptr @stm32_ipcc_driver, ptr @.str, ptr @stm32_ipcc_of_match, ptr @stm32_ipcc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stm32_ipcc_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @stm32_ipcc_ops, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_ipcc_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_ipcc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_ipcc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_ipcc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.stm32_ipcc, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @stm32_ipcc_probe.__key, i16 noundef signext 3) #5
  %proc_id = getelementptr inbounds %struct.stm32_ipcc, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef %proc_id, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end15:                                         ; preds = %do.body5
  %2 = ptrtoint ptr %proc_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %3) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %reg_base = getelementptr inbounds %struct.stm32_ipcc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call23, ptr %reg_base, align 8
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %6 = ptrtoint ptr %proc_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %proc_id, align 8
  %mul = shl i32 %7, 4
  %add.ptr = getelementptr i8, ptr %call23, i32 %mul
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reg_proc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %reg_proc, align 4
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.stm32_ipcc, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call32, ptr %clk, align 8
  %cmp.i265 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %call.i266 = tail call i32 @clk_prepare(ptr noundef %call32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool.not.i = icmp eq i32 %call.i266, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.do.end45_crit_edge

if.end38.do.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

if.end.i:                                         ; preds = %if.end38
  %call1.i = tail call i32 @clk_enable(ptr noundef %call32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.then3.i

for.cond.preheader:                               ; preds = %if.end.i
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %call48 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %arrayidx49 = getelementptr %struct.stm32_ipcc, ptr %call.i, i32 0, i32 5, i32 0
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call48, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp52 = icmp slt i32 %call48, 0
  br i1 %cmp52, label %for.cond.preheader.err_clk_crit_edge, label %if.end56

for.cond.preheader.err_clk_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call32) #5
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i, %if.end38.do.end45_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i266, %if.end38.do.end45_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end56:                                         ; preds = %for.cond.preheader
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i267 = icmp eq ptr %13, null
  br i1 %tobool.not.i267, label %if.end.i268, label %if.end56.dev_name.exit_crit_edge

if.end56.dev_name.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i268:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i268, %if.end56.dev_name.exit_crit_edge
  %retval.0.i269 = phi ptr [ %15, %if.end.i268 ], [ %13, %if.end56.dev_name.exit_crit_edge ]
  %call61 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call48, ptr noundef null, ptr noundef nonnull @stm32_ipcc_rx_irq, i32 noundef 8192, ptr noundef %retval.0.i269, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.inc, label %dev_name.exit.do.end66_crit_edge

dev_name.exit.do.end66_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

do.end66:                                         ; preds = %dev_name.exit.1.do.end66_crit_edge, %dev_name.exit.do.end66_crit_edge
  %call61.lcssa = phi i32 [ %call61, %dev_name.exit.do.end66_crit_edge ], [ %call61.1, %dev_name.exit.1.do.end66_crit_edge ]
  %i.0283.lcssa288 = phi i32 [ 0, %dev_name.exit.do.end66_crit_edge ], [ 1, %dev_name.exit.1.do.end66_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %i.0283.lcssa288, i32 noundef %call61.lcssa) #8
  br label %err_clk

for.inc:                                          ; preds = %dev_name.exit
  %call48.1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #5
  %arrayidx49.1 = getelementptr %struct.stm32_ipcc, ptr %call.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call48.1, ptr %arrayidx49.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1)
  %cmp52.1 = icmp slt i32 %call48.1, 0
  br i1 %cmp52.1, label %for.inc.err_clk_crit_edge, label %if.end56.1

for.inc.err_clk_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end56.1:                                       ; preds = %for.inc
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i267.1 = icmp eq ptr %18, null
  br i1 %tobool.not.i267.1, label %if.end.i268.1, label %if.end56.1.dev_name.exit.1_crit_edge

if.end56.1.dev_name.exit.1_crit_edge:             ; preds = %if.end56.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.1

if.end.i268.1:                                    ; preds = %if.end56.1
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.1

dev_name.exit.1:                                  ; preds = %if.end.i268.1, %if.end56.1.dev_name.exit.1_crit_edge
  %retval.0.i269.1 = phi ptr [ %20, %if.end.i268.1 ], [ %18, %if.end56.1.dev_name.exit.1_crit_edge ]
  %call61.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call48.1, ptr noundef null, ptr noundef nonnull @stm32_ipcc_tx_irq, i32 noundef 8192, ptr noundef %retval.0.i269.1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.1)
  %tobool62.not.1 = icmp eq i32 %call61.1, 0
  br i1 %tobool62.not.1, label %for.inc.1, label %dev_name.exit.1.do.end66_crit_edge

dev_name.exit.1.do.end66_crit_edge:               ; preds = %dev_name.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

for.inc.1:                                        ; preds = %dev_name.exit.1
  %21 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_proc, align 4
  %add.ptr70 = getelementptr i8, ptr %22, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #5, !srcloc !94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 -1) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  %24 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_proc, align 4
  %call2.i270 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !94
  %27 = or i32 %26, 16777472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i270) #5
  %call.i271 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i271, null
  br i1 %tobool.i.not, label %for.inc.1.if.end85_crit_edge, label %if.then75

for.inc.1.if.end85_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then75:                                        ; preds = %for.inc.1
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 8
  %call78 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev1, i32 noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then75.if.end85_crit_edge, label %do.end83

if.then75.if.end85_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end83:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  br label %err_init_wkp

if.end85:                                         ; preds = %if.then75.if.end85_crit_edge, %for.inc.1.if.end85_crit_edge
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 8
  %add.ptr87 = getelementptr i8, ptr %31, i32 1008
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #5, !srcloc !94
  %33 = lshr i32 %32, 24
  %n_chans = getelementptr inbounds %struct.stm32_ipcc, ptr %call.i, i32 0, i32 7
  %34 = ptrtoint ptr %n_chans to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %n_chans, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev1, ptr %call.i, align 8
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %txdone_irq, align 8
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @stm32_ipcc_ops, ptr %ops, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %num_chans, align 4
  %39 = mul nuw nsw i32 %33, 208
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %39, i32 noundef 3520) #5
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i, ptr %chans, align 8
  %tobool101.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool101.not, label %if.end85.err_irq_wkp_crit_edge, label %for.cond104.preheader

if.end85.err_irq_wkp_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq_wkp

for.cond104.preheader:                            ; preds = %if.end85
  %41 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp107284.not = icmp eq i32 %42, 0
  br i1 %cmp107284.not, label %for.cond104.preheader.for.end114_crit_edge, label %for.cond104.preheader.for.body108_crit_edge

for.cond104.preheader.for.body108_crit_edge:      ; preds = %for.cond104.preheader
  br label %for.body108

for.cond104.preheader.for.end114_crit_edge:       ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end114

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %for.cond104.preheader.for.body108_crit_edge
  %i.1285 = phi i32 [ %inc113, %for.body108.for.body108_crit_edge ], [ 0, %for.cond104.preheader.for.body108_crit_edge ]
  %43 = inttoptr i32 %i.1285 to ptr
  %44 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chans, align 8
  %con_priv = getelementptr %struct.mbox_chan, ptr %45, i32 %i.1285, i32 9
  %46 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %con_priv, align 4
  %inc113 = add nuw i32 %i.1285, 1
  %47 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_chans, align 4
  %cmp107 = icmp ult i32 %inc113, %48
  br i1 %cmp107, label %for.body108.for.body108_crit_edge, label %for.body108.for.end114_crit_edge

for.body108.for.end114_crit_edge:                 ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end114

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body108

for.end114:                                       ; preds = %for.body108.for.end114_crit_edge, %for.cond104.preheader.for.end114_crit_edge
  %call116 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %for.end114.err_irq_wkp_crit_edge

for.end114.err_irq_wkp_crit_edge:                 ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq_wkp

if.end119:                                        ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 8
  %add.ptr122 = getelementptr i8, ptr %51, i32 1012
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #5, !srcloc !94
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %and144 = lshr i32 %53, 4
  %shr = and i32 %and144, 15
  %and161 = and i32 %53, 15
  %54 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_chans, align 4
  %56 = ptrtoint ptr %proc_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %proc_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %shr, i32 noundef %and161, i32 noundef %55, i32 noundef %57) #8
  %58 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %59) #5
  tail call void @clk_unprepare(ptr noundef %59) #5
  br label %cleanup

err_irq_wkp:                                      ; preds = %for.end114.err_irq_wkp_crit_edge, %if.end85.err_irq_wkp_crit_edge
  %ret.0 = phi i32 [ %call116, %for.end114.err_irq_wkp_crit_edge ], [ -12, %if.end85.err_irq_wkp_crit_edge ]
  %call.i272 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef null) #5
  %tobool.i273.not = icmp eq ptr %call.i272, null
  br i1 %tobool.i273.not, label %err_irq_wkp.err_init_wkp_crit_edge, label %if.then168

err_irq_wkp.err_init_wkp_crit_edge:               ; preds = %err_irq_wkp
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_init_wkp

if.then168:                                       ; preds = %err_irq_wkp
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev1) #5
  br label %err_init_wkp

err_init_wkp:                                     ; preds = %if.then168, %err_irq_wkp.err_init_wkp_crit_edge, %do.end83
  %ret.1 = phi i32 [ %call78, %do.end83 ], [ %ret.0, %if.then168 ], [ %ret.0, %err_irq_wkp.err_init_wkp_crit_edge ]
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext false) #5
  br label %err_clk

err_clk:                                          ; preds = %err_init_wkp, %for.inc.err_clk_crit_edge, %do.end66, %for.cond.preheader.err_clk_crit_edge
  %ret.2 = phi i32 [ %call61.lcssa, %do.end66 ], [ %ret.1, %err_init_wkp ], [ %call48, %for.cond.preheader.err_clk_crit_edge ], [ %call48.1, %for.inc.err_clk_crit_edge ]
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %61) #5
  tail call void @clk_unprepare(ptr noundef %61) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end119, %do.end45, %if.then35, %if.then26, %do.end20, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end14 ], [ -22, %do.end20 ], [ %5, %if.then26 ], [ %10, %if.then35 ], [ %retval.0.i.ph, %do.end45 ], [ %ret.2, %err_clk ], [ 0, %if.end119 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_rx_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %proc_id = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %proc_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 16, i32 -16
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_proc, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %cond
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !94
  %7 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_proc, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !94
  %10 = and i32 %9, -65536
  %11 = xor i32 %10, -65536
  %12 = and i32 %11, %6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %n_chans = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 7
  %14 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51.not = icmp eq i32 %15, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %data, i32 0, i32 2
  %lock = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chan.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.052 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %chan.053
  %and22 = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.body.for.inc_crit_edge, label %do.body24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body24:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_ipcc_rx_irq.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_ipcc_rx_irq, %if.then30)) #5
          to label %do.end33 [label %if.then30], !srcloc !96

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_ipcc_rx_irq.__UNIQUE_ID_ddebug192, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %chan.053) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body24
  %16 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chans, align 8
  %arrayidx = getelementptr %struct.mbox_chan, ptr %17, i32 %chan.053
  tail call void @mbox_chan_received_data(ptr noundef %arrayidx, ptr noundef null) #5
  %18 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_proc, align 4
  %add.ptr36 = getelementptr i8, ptr %19, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #5, !srcloc !94
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %or.i = or i32 %21, %shl
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %22) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end33, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ 1, %do.end33 ], [ %ret.052, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %chan.053, 1
  %23 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_tx_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_proc, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !94
  %5 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_proc, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !94
  %8 = xor i32 %4, -1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = and i32 %7, 65535
  %11 = xor i32 %10, 65535
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %shr = lshr exact i32 %12, 16
  %and21 = and i32 %shr, %9
  %n_chans = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp49.not = icmp eq i32 %14, 0
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_ipcc, ptr %data, i32 0, i32 4
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %data, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chan.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.050 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %chan.051
  %and22 = and i32 %and21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body23:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_ipcc_tx_irq.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_ipcc_tx_irq, %if.then29)) #5
          to label %do.end32 [label %if.then29], !srcloc !96

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_ipcc_tx_irq.__UNIQUE_ID_ddebug198, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %chan.051) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body23
  %15 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_proc, align 4
  %add.ptr34 = getelementptr i8, ptr %16, i32 4
  %add = add i32 %chan.051, 16
  %shl35 = shl nuw i32 1, %add
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #5, !srcloc !94
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %or.i = or i32 %18, %shl35
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %19) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  %20 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chans, align 8
  %arrayidx = getelementptr %struct.mbox_chan, ptr %21, i32 %chan.051
  tail call void @mbox_chan_txdone(ptr noundef %arrayidx, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end32, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ 1, %do.end32 ], [ %ret.050, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %chan.051, 1
  %22 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_send_data(ptr nocapture noundef readonly %link, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %link, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_ipcc_send_data.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_ipcc_send_data, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_ipcc_send_data.__UNIQUE_ID_ddebug199, ptr noundef %6, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.stm32_ipcc, ptr %4, i32 0, i32 4
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_proc, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 8
  %add = add i32 %2, 16
  %shl = shl nuw i32 1, %add
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !94
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %or.i = or i32 %10, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %11) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  %12 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_proc, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !94
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %15, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %16) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i17) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_startup(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %link, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %clk = getelementptr inbounds %struct.stm32_ipcc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  %lock = getelementptr inbounds %struct.stm32_ipcc, ptr %3, i32 0, i32 4
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_proc, align 4
  %add.ptr1 = getelementptr i8, ptr %10, i32 4
  %shl = shl nuw i32 1, %8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !94
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %12, %neg.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %13) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_ipcc_shutdown(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %link, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  %lock = getelementptr inbounds %struct.stm32_ipcc, ptr %4, i32 0, i32 4
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_proc, align 4
  %add.ptr1 = getelementptr i8, ptr %6, i32 4
  %shl = shl nuw i32 1, %2
  %add = add i32 %2, 16
  %shl2 = shl nuw i32 1, %add
  %or = or i32 %shl2, %shl
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !94
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %or.i = or i32 %or, %8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %9) #5, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #5
  %clk = getelementptr inbounds %struct.stm32_ipcc, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_proc, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !94
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %xmr = getelementptr inbounds %struct.stm32_ipcc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %xmr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %xmr, align 4
  %7 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_proc, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !94
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %xcr = getelementptr inbounds %struct.stm32_ipcc, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %xcr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %xcr, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_ipcc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %xmr = getelementptr inbounds %struct.stm32_ipcc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %xmr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xmr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %reg_proc = getelementptr inbounds %struct.stm32_ipcc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_proc, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !95
  %xcr = getelementptr inbounds %struct.stm32_ipcc, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %xcr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xcr, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %reg_proc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_proc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !95
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_stm32_ipcc__210_386_stm32_ipcc_driver_init6, !1, !"__initcall__kmod_stm32_ipcc__210_386_stm32_ipcc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_stm32_ipcc_driver_exit, !1, !"__exitcall_stm32_ipcc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author211, !4, !"__UNIQUE_ID_author211", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 388, i32 1}
!5 = !{ptr @__UNIQUE_ID_author212, !6, !"__UNIQUE_ID_author212", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 389, i32 1}
!7 = !{ptr @__UNIQUE_ID_description213, !8, !"__UNIQUE_ID_description213", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 390, i32 1}
!9 = !{ptr @__UNIQUE_ID_file214, !10, !"__UNIQUE_ID_file214", i1 false, i1 false}
!10 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 391, i32 1}
!11 = !{ptr @__UNIQUE_ID_license215, !10, !"__UNIQUE_ID_license215", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 378, i32 11}
!14 = !{ptr @stm32_ipcc_driver, !15, !"stm32_ipcc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 376, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 211, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 211, i32 48}
!20 = distinct !{null, !21, !"irq_name", i1 false, i1 false}
!21 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 211, i32 28}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 215, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stm32_ipcc_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_ipcc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @stm32_ipcc_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 223, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 226, i32 31}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 227, i32 3}
!37 = !{ptr @stm32_ipcc_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @stm32_ipcc_probe._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 232, i32 3}
!41 = !{ptr @stm32_ipcc_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @stm32_ipcc_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 250, i32 3}
!45 = !{ptr @stm32_ipcc_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm32_ipcc_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 266, i32 4}
!49 = !{ptr @stm32_ipcc_probe._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stm32_ipcc_probe._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 278, i32 32}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 283, i32 4}
!55 = !{ptr @stm32_ipcc_probe._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @stm32_ipcc_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 315, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stm32_ipcc_probe._entry.26, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @stm32_ipcc_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 101, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @stm32_ipcc_rx_irq.__UNIQUE_ID_ddebug192, !63, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 131, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @stm32_ipcc_tx_irq.__UNIQUE_ID_ddebug198, !68, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!71 = !{ptr @stm32_ipcc_ops, !72, !"stm32_ipcc_ops", i1 false, i1 false}
!72 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 197, i32 35}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 151, i32 2}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stm32_ipcc_send_data.__UNIQUE_ID_ddebug199, !74, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 173, i32 3}
!79 = !{ptr @stm32_ipcc_startup._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @stm32_ipcc_startup._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @stm32_ipcc_of_match, !82, !"stm32_ipcc_of_match", i1 false, i1 false}
!82 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 370, i32 34}
!83 = !{ptr @stm32_ipcc_pm_ops, !84, !"stm32_ipcc_pm_ops", i1 false, i1 false}
!84 = !{!"../drivers/mailbox/stm32-ipcc.c", i32 367, i32 8}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 4269206}
!95 = !{i64 4268788}
!96 = !{i64 2148761075, i64 2148761080, i64 2148761093, i64 2148761137, i64 2148761171, i64 2148761192}
