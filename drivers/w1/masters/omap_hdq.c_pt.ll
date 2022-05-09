; ModuleID = '/llk/IR_all_yes/drivers/w1/masters/omap_hdq.c_pt.bc'
source_filename = "../drivers/w1/masters/omap_hdq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hdq_data = type { ptr, ptr, %struct.mutex, i8, %struct.spinlock, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_w1_id = internal constant [15 x i8] c"omap_hdq.w1_id\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@w1_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_w1_id = internal constant %struct.kernel_param { ptr @__param_str_w1_id, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @w1_id } }, section "__param", align 4
@__UNIQUE_ID_w1_idtype188 = internal constant [28 x i8] c"omap_hdq.parmtype=w1_id:int\00", section ".modinfo", align 1
@__UNIQUE_ID_w1_id189 = internal constant [66 x i8] c"omap_hdq.parm=w1_id:1-wire id for the slave detection in HDQ mode\00", section ".modinfo", align 1
@__initcall__kmod_omap_hdq__210_692_omap_hdq_driver_init6 = internal global ptr @omap_hdq_driver_init, section ".initcall6.init", align 4
@omap_hdq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_hdq_probe, ptr @omap_hdq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_hdq_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_hdq_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_hdq_driver_exit = internal global ptr @omap_hdq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [34 x i8] c"omap_hdq.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [43 x i8] c"omap_hdq.description=HDQ-1W driver Library\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [42 x i8] c"omap_hdq.file=drivers/w1/masters/omap_hdq\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [21 x i8] c"omap_hdq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_hdq\00", [23 x i8] zeroinitializer }, align 32
@omap_hdq_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-1w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-hdq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@omap_hdq_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_hdq_runtime_suspend, ptr @omap_hdq_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_hdq_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/masters/omap_hdq.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hdq_data->hdq_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,mode\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hdq\00", [28 x i8] zeroinitializer }, align 32
@omap_w1_master = internal global { %struct.w1_bus_master, [44 x i8] } { %struct.w1_bus_master { ptr null, ptr null, ptr null, ptr null, ptr @omap_w1_read_byte, ptr @omap_w1_write_byte, ptr null, ptr null, ptr null, ptr @omap_w1_reset_bus, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_hdq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 617, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"OMAP HDQ Hardware Rev %c.%c. Driver in %s mode\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_hdq_probe._entry_ptr = internal global ptr @omap_hdq_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Interrupt\00", [22 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&hdq_data->hdq_spinlock\00", [40 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_hdq_probe.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failure in registering w1 master\0A\00", [62 x i8] zeroinitializer }, align 32
@hdq_wait_queue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @hdq_wait_queue, i64 44), ptr getelementptr (i8, ptr @hdq_wait_queue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@hdq_read_byte.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdq_read_byte\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for RXCOMPLETE, %x\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdq_wait_queue.lock\00", [44 x i8] zeroinitializer }, align 32
@omap_w1_write_byte.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_w1_write_byte\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX failure:Ctrl status %x\0A\00", [37 x i8] zeroinitializer }, align 32
@hdq_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 151, ptr @.str.24, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX irqstatus not cleared (%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdq_write_byte\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hdq_write_byte._entry_ptr = internal global ptr @hdq_write_byte._entry, section ".printk_index", align 4
@hdq_write_byte.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX wait elapsed\0A\00", [47 x i8] zeroinitializer }, align 32
@hdq_write_byte.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"timeout waiting for TXCOMPLETE/RXCOMPLETE, %x\0A\00", [49 x i8] zeroinitializer }, align 32
@hdq_write_byte.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timeout waiting GO bit return to zero, %x\0A\00", [53 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@omap_w1_triplet.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_w1_triplet\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not acquire mutex\0A\00", [39 x i8] zeroinitializer }, align 32
@omap_w1_triplet.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX wait elapsed\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_w1_triplet.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@omap_w1_triplet.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.25, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hdq_isr.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdq_isr\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdq_isr: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@omap_hdq_break.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.29, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_hdq_break\00", [17 x i8] zeroinitializer }, align 32
@omap_hdq_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.33, ptr @.str.2, i32 252, ptr @.str.24, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"break irqstatus not cleared (%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_hdq_break._entry_ptr = internal global ptr @omap_hdq_break._entry, section ".printk_index", align 4
@omap_hdq_break.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"break wait elapsed\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_hdq_break.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for TIMEOUT, %x\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_hdq_break.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.37, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Presence bit not set\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_hdq_break.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.38, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timeout waiting INIT&GO bits return to zero, %x\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"w1_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 50, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"omap_hdq_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 683, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 687, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"omap_hdq_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 676, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"omap_hdq_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 568, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 583, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 594, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 596, i32 51 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 597, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"omap_w1_master\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 538, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 611, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 616, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 619, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 623, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 630, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 643, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"hdq_wait_queue\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 344, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 48, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 529, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 150, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 166, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 173, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 184, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 384, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 399, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 203, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 245, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 251, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 266, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 273, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 285, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [33 x i8] c"../drivers/w1/masters/omap_hdq.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 299, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__UNIQUE_ID_w1_id189, ptr @__UNIQUE_ID_w1_idtype188, ptr @__exitcall_omap_hdq_driver_exit, ptr @__initcall__kmod_omap_hdq__210_692_omap_hdq_driver_init6, ptr @__param_w1_id, ptr @hdq_write_byte._entry, ptr @hdq_write_byte._entry_ptr, ptr @omap_hdq_break._entry, ptr @omap_hdq_break._entry_ptr, ptr @omap_hdq_driver_exit, ptr @omap_hdq_probe._entry, ptr @omap_hdq_probe._entry_ptr, ptr @w1_id, ptr @omap_hdq_driver, ptr @.str, ptr @omap_hdq_dt_ids, ptr @omap_hdq_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @omap_hdq_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @omap_w1_master, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @omap_hdq_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @hdq_wait_queue, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_w1_master to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdq_wait_queue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdq_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdq_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_hdq_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_hdq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_hdq_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mode, align 4, !annotation !131
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 152, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_probe.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_probe, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !132

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_probe.__UNIQUE_ID_ddebug205, ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %hdq_base = getelementptr inbounds %struct.hdq_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %hdq_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %hdq_base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %do.body17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.body17:                                        ; preds = %if.end8
  %hdq_mutex = getelementptr inbounds %struct.hdq_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %hdq_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @omap_hdq_probe.__key) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call21 = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.body17.if.then24_crit_edge, label %lor.lhs.false

do.body17.if.then24_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false:                                    ; preds = %do.body17
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode, align 4
  %call22 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(4) @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false.if.then24_crit_edge, label %if.else

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %do.body17.if.then24_crit_edge
  %mode25 = getelementptr inbounds %struct.hdq_data, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %mode25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mode25, align 4
  store ptr @omap_w1_search_bus, ptr getelementptr inbounds (%struct.w1_bus_master, ptr @omap_w1_master, i32 0, i32 11), align 4
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %mode26 = getelementptr inbounds %struct.hdq_data, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %mode26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode26, align 4
  store ptr @omap_w1_triplet, ptr getelementptr inbounds (%struct.w1_bus_master, ptr @omap_w1_master, i32 0, i32 8), align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 300) #8
  %call.i198 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %cmp33 = icmp slt i32 %call.i198, 0
  br i1 %cmp33, label %if.then34, label %if.end53

if.then34:                                        ; preds = %if.end27
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then34.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then34.pm_runtime_put_noidle.exit_crit_edge:   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then34.pm_runtime_put_noidle.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_probe.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_probe, %if.then48)) #8
          to label %err_w1 [label %if.then48], !srcloc !132

if.then48:                                        ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_probe.__UNIQUE_ID_ddebug206, ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %err_w1

if.end53:                                         ; preds = %if.end27
  %12 = ptrtoint ptr %hdq_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hdq_base, align 4
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !136
  %conv = lshr i32 %14, 4
  %15 = and i32 %conv, 15
  %add = or i32 %15, 48
  %and = and i32 %14, 15
  %add60 = or i32 %and, 48
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %add, i32 noundef %add60, ptr noundef nonnull @.str.11) #12
  %hdq_spinlock = getelementptr inbounds %struct.hdq_data, ptr %call.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %hdq_spinlock, ptr noundef nonnull @.str.13, ptr noundef nonnull @omap_hdq_probe.__key.12, i16 noundef signext 3) #8
  %call65 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.body69, label %if.end86

do.body69:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_probe.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_probe, %if.then81)) #8
          to label %err_irq [label %if.then81], !srcloc !132

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_probe.__UNIQUE_ID_ddebug207, ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call65) #8
  br label %err_irq

if.end86:                                         ; preds = %if.end53
  %call.i199 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call65, ptr noundef nonnull @hdq_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp88 = icmp slt i32 %call.i199, 0
  br i1 %cmp88, label %do.body91, label %if.end108

do.body91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_probe.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_probe, %if.then103)) #8
          to label %err_irq [label %if.then103], !srcloc !132

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_probe.__UNIQUE_ID_ddebug208, ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %err_irq

if.end108:                                        ; preds = %if.end86
  call fastcc void @omap_hdq_break(ptr noundef nonnull %call.i)
  %call.i200 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i200, ptr %last_busy.i, align 8
  %call.i201 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  store ptr %call.i, ptr @omap_w1_master, align 4
  %call113 = call i32 @w1_add_master_device(ptr noundef nonnull @omap_w1_master) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end108.cleanup_crit_edge, label %do.body116

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body116:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_probe.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_probe, %if.then128)) #8
          to label %err_w1 [label %if.then128], !srcloc !132

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_probe.__UNIQUE_ID_ddebug209, ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %err_w1

err_irq:                                          ; preds = %if.then103, %do.body91, %if.then81, %do.body69
  %ret.0 = phi i32 [ %call.i199, %if.then103 ], [ %call65, %if.then81 ], [ %call65, %do.body69 ], [ %call.i199, %do.body91 ]
  %call.i202 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  br label %err_w1

err_w1:                                           ; preds = %err_irq, %if.then128, %do.body116, %if.then48, %pm_runtime_put_noidle.exit
  %ret.1 = phi i32 [ %call.i198, %if.then48 ], [ %ret.0, %err_irq ], [ %call113, %if.then128 ], [ %call.i198, %pm_runtime_put_noidle.exit ], [ %call113, %do.body116 ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #8
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_w1, %if.end108.cleanup_crit_edge, %if.then13, %if.then6, %do.body
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %ret.1, %err_w1 ], [ -12, %if.then6 ], [ 0, %if.end108.cleanup_crit_edge ], [ -12, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdq_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @w1_remove_master_device(ptr noundef nonnull @omap_w1_master) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp3 = icmp sgt i32 %call.i, -1
  br i1 %cmp3, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i14 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_w1_search_bus(ptr nocapture noundef readnone %_hdq, ptr noundef %master_dev, i8 noundef zeroext %search_type, ptr nocapture noundef readonly %slave_found) #2 align 64 {
entry:
  %rn_le = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn_le) #8
  %0 = load i32, ptr @w1_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %narrow = select i1 %tobool.not, i32 1, i32 %0
  %module_id.0 = sext i32 %narrow to i64
  %1 = tail call i64 @llvm.bswap.i64(i64 %module_id.0)
  %2 = ptrtoint ptr %rn_le to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %rn_le, align 8
  %call = call zeroext i8 @w1_calc_crc8(ptr noundef nonnull %rn_le, i32 noundef 7) #8
  %conv1 = zext i8 %call to i64
  %shl = shl nuw i64 %conv1, 56
  %or = or i64 %shl, %module_id.0
  call void %slave_found(ptr noundef %master_dev, i64 noundef %or) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn_le) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @omap_w1_triplet(ptr noundef %_hdq, i8 noundef zeroext %bdir) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry132 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry246 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_hdq, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_hdq, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %conv4 = trunc i32 %call.i to i8
  br label %cleanup311

if.end:                                           ; preds = %entry
  %hdq_mutex = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 2
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hdq_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_w1_triplet.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_w1_triplet, %if.then12)) #8
          to label %rtn [label %if.then12], !srcloc !132

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_hdq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_w1_triplet.__UNIQUE_ID_ddebug200, ptr noundef %6, ptr noundef nonnull @.str.29) #8
  br label %rtn

if.end15:                                         ; preds = %if.end
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 1
  %7 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %conv4.i = and i32 %9, 45
  %conv5.i = or i32 %conv4.i, 210
  %10 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %conv5.i) #8, !srcloc !137
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 394) #8
  %hdq_irqstatus = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 3
  %12 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdq_irqstatus, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool27.not = icmp eq i8 %14, 0
  br i1 %tobool27.not, label %if.then41, label %if.end15.if.end70_crit_edge

if.end15.if.end70_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then41:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call43452 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %16 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdq_irqstatus, align 4
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool48.not453.not = icmp eq i8 %18, 0
  br i1 %tobool48.not453.not, label %if.then41.cleanup_crit_edge, label %if.then41.for.end_crit_edge

if.then41.for.end_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then41.cleanup_crit_edge
  %__ret42.1455 = phi i32 [ %__ret42.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then41.cleanup_crit_edge ]
  %call68 = call i32 @schedule_timeout(i32 noundef %__ret42.1455) #8
  %call43 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %19 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdq_irqstatus, align 4
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool48.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool53.not = icmp eq i32 %call68, 0
  %spec.store.select318 = select i1 %tobool53.not, i32 1, i32 %call68
  %__ret42.1 = select i1 %tobool48.not, i32 %call68, i32 %spec.store.select318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret42.1)
  %tobool60.not = icmp eq i32 %__ret42.1, 0
  %not.tobool48.not = xor i1 %tobool48.not, true
  %22 = select i1 %not.tobool48.not, i1 true, i1 %tobool60.not
  br i1 %22, label %for.end.loopexit, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret42.1)
  %phi.cmp471 = icmp eq i32 %__ret42.1, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then41.for.end_crit_edge
  %__ret42.1.lcssa = phi i1 [ false, %if.then41.for.end_crit_edge ], [ %phi.cmp471, %for.end.loopexit ]
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end70

if.end70:                                         ; preds = %for.end, %if.end15.if.end70_crit_edge
  %__ret.1 = phi i1 [ false, %if.end15.if.end70_crit_edge ], [ %__ret42.1.lcssa, %for.end ]
  %hdq_spinlock.i = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %23 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdq_irqstatus, align 4
  %and.i398 = and i8 %24, -3
  store i8 %and.i398, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i) #8
  br i1 %__ret.1, label %do.body76, label %if.end93

do.body76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_w1_triplet.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_w1_triplet, %if.then88)) #8
          to label %out [label %if.then88], !srcloc !132

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_hdq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_w1_triplet.__UNIQUE_ID_ddebug201, ptr noundef %26, ptr noundef nonnull @.str.30) #8
  br label %out

if.end93:                                         ; preds = %if.end70
  %27 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i400 = getelementptr i8, ptr %28, i32 8
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i400) #8, !srcloc !136
  %conv.i = trunc i32 %29 to i8
  %30 = and i8 %conv.i, 1
  %31 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i402 = getelementptr i8, ptr %32, i32 12
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i402) #8, !srcloc !136
  %conv4.i404 = and i32 %33, 45
  %conv5.i405 = or i32 %conv4.i404, 210
  %34 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i406 = getelementptr i8, ptr %35, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i406, i32 %conv5.i405) #8, !srcloc !137
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 410) #8
  %36 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hdq_irqstatus, align 4
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool113.not = icmp eq i8 %38, 0
  br i1 %tobool113.not, label %if.then131, label %if.end93.if.end191.sink.split_crit_edge

if.end93.if.end191.sink.split_crit_edge:          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.sink.split

if.then131:                                       ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry132) #8
  %39 = call ptr @memset(ptr %__wq_entry132, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry132, i32 noundef 0) #8
  %call136456 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry132, i32 noundef 2) #8
  %40 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hdq_irqstatus, align 4
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool141.not457.not = icmp eq i8 %42, 0
  br i1 %tobool141.not457.not, label %if.then131.cleanup162_crit_edge, label %if.end191.critedge475

if.then131.cleanup162_crit_edge:                  ; preds = %if.then131
  br label %cleanup162

cleanup162:                                       ; preds = %cleanup162.cleanup162_crit_edge, %if.then131.cleanup162_crit_edge
  %__ret133.1459 = phi i32 [ %__ret133.1, %cleanup162.cleanup162_crit_edge ], [ 20, %if.then131.cleanup162_crit_edge ]
  %call161 = call i32 @schedule_timeout(i32 noundef %__ret133.1459) #8
  %call136 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry132, i32 noundef 2) #8
  %43 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hdq_irqstatus, align 4
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool141.not = icmp eq i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool146.not = icmp eq i32 %call161, 0
  %spec.store.select320 = select i1 %tobool146.not, i32 1, i32 %call161
  %__ret133.1 = select i1 %tobool141.not, i32 %call161, i32 %spec.store.select320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret133.1)
  %tobool153.not = icmp eq i32 %__ret133.1, 0
  %not.tobool141.not = xor i1 %tobool141.not, true
  %46 = select i1 %not.tobool141.not, i1 true, i1 %tobool153.not
  br i1 %46, label %for.end165.loopexit, label %cleanup162.cleanup162_crit_edge

cleanup162.cleanup162_crit_edge:                  ; preds = %cleanup162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup162

for.end165.loopexit:                              ; preds = %cleanup162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret133.1)
  %phi.cmp470 = icmp eq i32 %__ret133.1, 0
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry132) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry132) #8
  %call2.i408 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %47 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hdq_irqstatus, align 4
  %and.i410 = and i8 %48, -3
  store i8 %and.i410, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i408) #8
  br i1 %phi.cmp470, label %do.body174, label %for.end165.loopexit.if.end191_crit_edge

for.end165.loopexit.if.end191_crit_edge:          ; preds = %for.end165.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.body174:                                       ; preds = %for.end165.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_w1_triplet.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_w1_triplet, %if.then186)) #8
          to label %out [label %if.then186], !srcloc !132

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_hdq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_w1_triplet.__UNIQUE_ID_ddebug202, ptr noundef %50, ptr noundef nonnull @.str.30) #8
  br label %out

if.end191.critedge475:                            ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry132) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry132) #8
  br label %if.end191.sink.split

if.end191.sink.split:                             ; preds = %if.end191.critedge475, %if.end93.if.end191.sink.split_crit_edge
  %call2.i408.c476 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %51 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hdq_irqstatus, align 4
  %and.i410.c477 = and i8 %52, -3
  store i8 %and.i410.c477, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i408.c476) #8
  br label %if.end191

if.end191:                                        ; preds = %if.end191.sink.split, %for.end165.loopexit.if.end191_crit_edge
  %53 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i412 = getelementptr i8, ptr %54, i32 8
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412) #8, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool197.not = icmp eq i8 %30, 0
  %56 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool200.not = icmp eq i32 %56, 0
  %or.cond = select i1 %tobool197.not, i1 true, i1 %tobool200.not
  br i1 %or.cond, label %if.end202, label %if.end191.out_crit_edge

if.end191.out_crit_edge:                          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end202:                                        ; preds = %if.end191
  %or.cond387 = select i1 %tobool197.not, i1 %tobool200.not, i1 false
  %conv213 = select i1 %tobool197.not, i8 2, i8 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bdir)
  %tobool208.not = icmp eq i8 %bdir, 0
  %conv209 = select i1 %tobool208.not, i8 0, i8 4
  %ret.0 = select i1 %or.cond387, i8 %conv209, i8 %conv213
  %bdir.addr.0 = select i1 %or.cond387, i8 %bdir, i8 %30
  %conv.i414 = zext i8 %bdir.addr.0 to i32
  %57 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i416 = getelementptr i8, ptr %58, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i416, i32 %conv.i414) #8, !srcloc !137
  %59 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i418 = getelementptr i8, ptr %60, i32 12
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418) #8, !srcloc !136
  %62 = and i32 %61, 45
  %conv4.i420 = or i32 %62, 208
  %63 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i422 = getelementptr i8, ptr %64, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i422, i32 %conv4.i420) #8, !srcloc !137
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 439) #8
  %65 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hdq_irqstatus, align 4
  %67 = and i8 %66, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool227.not = icmp eq i8 %67, 0
  br i1 %tobool227.not, label %if.then245, label %if.end202.if.end305.sink.split_crit_edge

if.end202.if.end305.sink.split_crit_edge:         ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end305.sink.split

if.then245:                                       ; preds = %if.end202
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry246) #8
  %68 = call ptr @memset(ptr %__wq_entry246, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry246, i32 noundef 0) #8
  %call250461 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry246, i32 noundef 2) #8
  %69 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hdq_irqstatus, align 4
  %71 = and i8 %70, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool255.not462.not = icmp eq i8 %71, 0
  br i1 %tobool255.not462.not, label %if.then245.cleanup276_crit_edge, label %if.end305.critedge478

if.then245.cleanup276_crit_edge:                  ; preds = %if.then245
  br label %cleanup276

cleanup276:                                       ; preds = %cleanup276.cleanup276_crit_edge, %if.then245.cleanup276_crit_edge
  %__ret247.1464 = phi i32 [ %__ret247.1, %cleanup276.cleanup276_crit_edge ], [ 20, %if.then245.cleanup276_crit_edge ]
  %call275 = call i32 @schedule_timeout(i32 noundef %__ret247.1464) #8
  %call250 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry246, i32 noundef 2) #8
  %72 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %hdq_irqstatus, align 4
  %74 = and i8 %73, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool255.not = icmp eq i8 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool260.not = icmp eq i32 %call275, 0
  %spec.store.select322 = select i1 %tobool260.not, i32 1, i32 %call275
  %__ret247.1 = select i1 %tobool255.not, i32 %call275, i32 %spec.store.select322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret247.1)
  %tobool267.not = icmp eq i32 %__ret247.1, 0
  %not.tobool255.not = xor i1 %tobool255.not, true
  %75 = select i1 %not.tobool255.not, i1 true, i1 %tobool267.not
  br i1 %75, label %for.end279.loopexit, label %cleanup276.cleanup276_crit_edge

cleanup276.cleanup276_crit_edge:                  ; preds = %cleanup276
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup276

for.end279.loopexit:                              ; preds = %cleanup276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret247.1)
  %phi.cmp469 = icmp eq i32 %__ret247.1, 0
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry246) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry246) #8
  %call2.i424 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %76 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hdq_irqstatus, align 4
  %and.i426 = and i8 %77, -5
  store i8 %and.i426, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i424) #8
  br i1 %phi.cmp469, label %do.body288, label %for.end279.loopexit.if.end305_crit_edge

for.end279.loopexit.if.end305_crit_edge:          ; preds = %for.end279.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end305

do.body288:                                       ; preds = %for.end279.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_w1_triplet.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_w1_triplet, %if.then300)) #8
          to label %out [label %if.then300], !srcloc !132

if.then300:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_hdq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_w1_triplet.__UNIQUE_ID_ddebug203, ptr noundef %79, ptr noundef nonnull @.str.25) #8
  br label %out

if.end305.critedge478:                            ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry246) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry246) #8
  br label %if.end305.sink.split

if.end305.sink.split:                             ; preds = %if.end305.critedge478, %if.end202.if.end305.sink.split_crit_edge
  %call2.i424.c479 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %80 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hdq_irqstatus, align 4
  %and.i426.c480 = and i8 %81, -5
  store i8 %and.i426.c480, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i424.c479) #8
  br label %if.end305

if.end305:                                        ; preds = %if.end305.sink.split, %for.end279.loopexit.if.end305_crit_edge
  %82 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i428 = getelementptr i8, ptr %83, i32 12
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428) #8, !srcloc !136
  %85 = and i32 %84, 127
  %86 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i431 = getelementptr i8, ptr %87, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i431, i32 %85) #8, !srcloc !137
  br label %out

out:                                              ; preds = %if.end305, %if.then300, %do.body288, %if.end191.out_crit_edge, %if.then186, %do.body174, %if.then88, %do.body76
  %ret.1 = phi i8 [ 3, %if.then88 ], [ 3, %if.then186 ], [ %ret.0, %if.then300 ], [ %ret.0, %if.end305 ], [ 3, %if.end191.out_crit_edge ], [ 3, %do.body76 ], [ 3, %do.body174 ], [ %ret.0, %do.body288 ]
  call void @mutex_unlock(ptr noundef %hdq_mutex) #8
  br label %rtn

rtn:                                              ; preds = %out, %if.then12, %do.body
  %ret.2 = phi i8 [ 3, %if.then12 ], [ %ret.1, %out ], [ 3, %do.body ]
  %88 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %_hdq, align 4
  %call.i432 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 12, i32 22
  %90 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store volatile i64 %call.i432, ptr %last_busy.i, align 8
  %91 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_hdq, align 4
  %call.i433 = call i32 @__pm_runtime_suspend(ptr noundef %92, i32 noundef 13) #8
  br label %cleanup311

cleanup311:                                       ; preds = %rtn, %pm_runtime_put_noidle.exit
  %retval.0 = phi i8 [ %conv4, %pm_runtime_put_noidle.exit ], [ %ret.2, %rtn ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdq_isr(i32 noundef %irq, ptr noundef %_hdq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdq_spinlock = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock) #8
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 1
  %0 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %conv.i = trunc i32 %2 to i8
  %hdq_irqstatus = getelementptr inbounds %struct.hdq_data, ptr %_hdq, i32 0, i32 3
  %3 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdq_irqstatus, align 4
  %or30 = or i8 %4, %conv.i
  store i8 %or30, ptr %hdq_irqstatus, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock, i32 noundef %call2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdq_isr.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdq_isr, %if.then)) #8
          to label %do.end18 [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_hdq, align 4
  %7 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hdq_irqstatus, align 4
  %conv16 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdq_isr.__UNIQUE_ID_ddebug193, ptr noundef %6, ptr noundef nonnull @.str.32, i32 noundef %conv16) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hdq_irqstatus, align 4
  %11 = and i8 %10, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %do.end18.if.end23_crit_edge, label %if.then22

do.end18.if.end23_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef nonnull @hdq_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end18.if.end23_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_hdq_break(ptr noundef %hdq_data) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdq_mutex = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 2
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hdq_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_break.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_break, %if.then4)) #8
          to label %rtn [label %if.then4], !srcloc !132

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdq_data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_break.__UNIQUE_ID_ddebug194, ptr noundef %1, ptr noundef nonnull @.str.29) #8
  br label %rtn

if.end5:                                          ; preds = %entry
  %hdq_irqstatus = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 3
  %2 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdq_irqstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %do.end10

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdq_data, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34, i32 noundef %conv) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end5.if.end13_crit_edge
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 1
  %6 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %9 = and i32 %8, 233
  %conv4.i = or i32 %9, 20
  %10 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %conv4.i) #8, !srcloc !137
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 263) #8
  %12 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdq_irqstatus, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.then37, label %if.end13.if.end66_crit_edge

if.end13.if.end66_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then37:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call3932 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %16 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdq_irqstatus, align 4
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool44.not33.not = icmp eq i8 %18, 0
  br i1 %tobool44.not33.not, label %if.then37.cleanup_crit_edge, label %if.then37.for.end_crit_edge

if.then37.for.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %__ret38.135 = phi i32 [ %__ret38.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then37.cleanup_crit_edge ]
  %call64 = call i32 @schedule_timeout(i32 noundef %__ret38.135) #8
  %call39 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %19 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hdq_irqstatus, align 4
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool49.not = icmp eq i32 %call64, 0
  %spec.store.select161 = select i1 %tobool49.not, i32 1, i32 %call64
  %__ret38.1 = select i1 %tobool44.not, i32 %call64, i32 %spec.store.select161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %tobool56.not = icmp eq i32 %__ret38.1, 0
  %not.tobool44.not = xor i1 %tobool44.not, true
  %22 = select i1 %not.tobool44.not, i1 true, i1 %tobool56.not
  br i1 %22, label %for.end.loopexit, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %phi.cmp41 = icmp eq i32 %__ret38.1, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then37.for.end_crit_edge
  %__ret38.1.lcssa = phi i1 [ false, %if.then37.for.end_crit_edge ], [ %phi.cmp41, %for.end.loopexit ]
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end66

if.end66:                                         ; preds = %for.end, %if.end13.if.end66_crit_edge
  %__ret.1 = phi i1 [ false, %if.end13.if.end66_crit_edge ], [ %__ret38.1.lcssa, %for.end ]
  %hdq_spinlock.i = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %23 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hdq_irqstatus, align 4
  %and.i13 = and i8 %24, -2
  store i8 %and.i13, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i) #8
  br i1 %__ret.1, label %do.body72, label %if.end89

do.body72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_break.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_break, %if.then84)) #8
          to label %out [label %if.then84], !srcloc !132

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdq_data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_break.__UNIQUE_ID_ddebug195, ptr noundef %26, ptr noundef nonnull @.str.35) #8
  br label %out

if.end89:                                         ; preds = %if.end66
  %27 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool92.not = icmp eq i8 %27, 0
  br i1 %tobool92.not, label %do.body94, label %if.end112

do.body94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_break.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_break, %if.then106)) #8
          to label %out [label %if.then106], !srcloc !132

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hdq_data, align 4
  %conv108 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_break.__UNIQUE_ID_ddebug196, ptr noundef %29, ptr noundef nonnull @.str.36, i32 noundef %conv108) #8
  br label %out

if.end112:                                        ; preds = %if.end89
  %30 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %31, i32 12
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #8, !srcloc !136
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool116.not = icmp eq i32 %33, 0
  br i1 %tobool116.not, label %do.body118, label %if.end135

do.body118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_break.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_break, %if.then130)) #8
          to label %out [label %if.then130], !srcloc !132

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hdq_data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_break.__UNIQUE_ID_ddebug197, ptr noundef %35, ptr noundef nonnull @.str.37) #8
  br label %out

if.end135:                                        ; preds = %if.end112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %37 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %38, i32 12
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #8, !srcloc !136
  %and15.i30 = and i32 %39, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i30)
  %tobool.not6.i = icmp eq i32 %and15.i30, 0
  br i1 %tobool.not6.i, label %if.end135.out_crit_edge, label %land.rhs.lr.ph.i

if.end135.out_crit_edge:                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.rhs.lr.ph.i:                                 ; preds = %if.end135
  %add.neg.i = sub i32 -20, %36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i36 = add i32 %add.neg.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i36)
  %cmp4.i37 = icmp slt i32 %sub.i36, 0
  br i1 %cmp4.i37, label %land.rhs.lr.ph.i.while.body.i_crit_edge, label %land.rhs.lr.ph.i.do.body139_crit_edge

land.rhs.lr.ph.i.do.body139_crit_edge:            ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body139

land.rhs.lr.ph.i.while.body.i_crit_edge:          ; preds = %land.rhs.lr.ph.i
  br label %while.body.i

land.rhs.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %41
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %land.rhs.i.while.body.i_crit_edge, label %land.rhs.i.do.body139_crit_edge

land.rhs.i.do.body139_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body139

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.lr.ph.i.while.body.i_crit_edge
  %call6.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  %42 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 12
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !136
  %and1.i29 = and i32 %44, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i29)
  %tobool.not.i = icmp eq i32 %and1.i29, 0
  br i1 %tobool.not.i, label %while.body.i.out_crit_edge, label %land.rhs.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body139:                                       ; preds = %land.rhs.i.do.body139_crit_edge, %land.rhs.lr.ph.i.do.body139_crit_edge
  %tmp_status.0.lcssa = phi i32 [ %39, %land.rhs.lr.ph.i.do.body139_crit_edge ], [ %44, %land.rhs.i.do.body139_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_hdq_break.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_hdq_break, %if.then151)) #8
          to label %out [label %if.then151], !srcloc !132

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdq_data, align 4
  %conv153 = and i32 %tmp_status.0.lcssa, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_hdq_break.__UNIQUE_ID_ddebug198, ptr noundef %46, ptr noundef nonnull @.str.38, i32 noundef %conv153) #8
  br label %out

out:                                              ; preds = %if.then151, %do.body139, %while.body.i.out_crit_edge, %if.end135.out_crit_edge, %if.then130, %do.body118, %if.then106, %do.body94, %if.then84, %do.body72
  call void @mutex_unlock(ptr noundef %hdq_mutex) #8
  br label %rtn

rtn:                                              ; preds = %out, %if.then4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_add_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_calc_crc8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @omap_w1_read_byte(ptr noundef %_hdq) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val, align 1
  %1 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_hdq, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_hdq, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @hdq_read_byte(ptr noundef %_hdq, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %7 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_hdq, align 4
  %call.i15 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i15, ptr %last_busy.i, align 8
  %10 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_hdq, align 4
  %call.i16 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ %13, %if.end4 ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.end11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_w1_write_byte(ptr noundef %_hdq, i8 noundef zeroext %byte) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !131
  %1 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_hdq, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_hdq, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %byte)
  %cmp2 = icmp eq i8 %byte, -52
  br i1 %cmp2, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @omap_hdq_break(ptr noundef %_hdq)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call7 = call fastcc i32 @hdq_write_byte(ptr noundef %_hdq, i8 noundef zeroext %byte, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.body, label %if.end6.out_err_crit_edge

if.end6.out_err_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_w1_write_byte.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_w1_write_byte, %if.then14)) #8
          to label %out_err [label %if.then14], !srcloc !132

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_hdq, align 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  %conv16 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_w1_write_byte.__UNIQUE_ID_ddebug204, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %conv16) #8
  br label %out_err

out_err:                                          ; preds = %if.then14, %do.body, %if.end6.out_err_crit_edge
  %10 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_hdq, align 4
  %call.i32 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i32, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_hdq, align 4
  %call.i33 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @omap_w1_reset_bus(ptr noundef %_hdq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_hdq, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_hdq, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !134
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %conv = trunc i32 %call.i to i8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @omap_hdq_break(ptr noundef %_hdq)
  %5 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_hdq, align 4
  %call.i12 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i12, ptr %last_busy.i, align 8
  %8 = ptrtoint ptr %_hdq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_hdq, align 4
  %call.i13 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pm_runtime_put_noidle.exit
  %retval.0 = phi i8 [ %conv, %pm_runtime_put_noidle.exit ], [ 0, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdq_read_byte(ptr noundef %hdq_data, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdq_mutex = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 2
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hdq_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.rtn_crit_edge, label %if.end

entry.rtn_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtn

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdq_data, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.out_crit_edge, label %pm_runtime_suspended.exit.if.end3_crit_edge

pm_runtime_suspended.exit.if.end3_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

pm_runtime_suspended.exit.out_crit_edge:          ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3:                                          ; preds = %pm_runtime_suspended.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %hdq_irqstatus = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 3
  %5 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdq_irqstatus, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 1
  %8 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  %conv4.i = and i32 %10, 237
  %conv5.i = or i32 %conv4.i, 18
  %11 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %conv5.i) #8, !srcloc !137
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 335) #8
  %13 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hdq_irqstatus, align 4
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.then22, label %if.then4.if.end50_crit_edge

if.then4.if.end50_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then22:                                        ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call24116 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %17 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdq_irqstatus, align 4
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not117.not = icmp eq i8 %19, 0
  br i1 %tobool29.not117.not, label %if.then22.cleanup_crit_edge, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then22.cleanup_crit_edge
  %__ret23.1119 = phi i32 [ %__ret23.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then22.cleanup_crit_edge ]
  %call48 = call i32 @schedule_timeout(i32 noundef %__ret23.1119) #8
  %call24 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %20 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdq_irqstatus, align 4
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool34.not = icmp eq i32 %call48, 0
  %spec.store.select79 = select i1 %tobool34.not, i32 1, i32 %call48
  %__ret23.1 = select i1 %tobool29.not, i32 %call48, i32 %spec.store.select79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool41.not = icmp eq i32 %__ret23.1, 0
  %not.tobool29.not = xor i1 %tobool29.not, true
  %23 = select i1 %not.tobool29.not, i1 true, i1 %tobool41.not
  br i1 %23, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then22.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end50

if.end50:                                         ; preds = %for.end, %if.then4.if.end50_crit_edge
  %hdq_spinlock.i = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %24 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdq_irqstatus, align 4
  %and.i100 = and i8 %25, -4
  store i8 %and.i100, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i) #8
  %26 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %27, i32 12
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #8, !srcloc !136
  %29 = and i32 %28, 253
  %30 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i105 = getelementptr i8, ptr %31, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i105, i32 %29) #8, !srcloc !137
  %conv54 = zext i8 %25 to i32
  %and55 = and i32 %conv54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body58, label %if.end50.if.end74_crit_edge

if.end50.if.end74_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.body58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdq_read_byte.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdq_read_byte, %if.then66)) #8
          to label %out [label %if.then66], !srcloc !132

if.then66:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdq_data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdq_read_byte.__UNIQUE_ID_ddebug199, ptr noundef %33, ptr noundef nonnull @.str.18, i32 noundef %conv54) #8
  br label %out

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %hdq_spinlock.i106 = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 4
  %call2.i107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i106) #8
  %34 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hdq_irqstatus, align 4
  %and.i109 = and i8 %35, -3
  store i8 %and.i109, ptr %hdq_irqstatus, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i106, i32 noundef %call2.i107) #8
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end50.if.end74_crit_edge
  %hdq_base.i110 = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 1
  %36 = ptrtoint ptr %hdq_base.i110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdq_base.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %37, i32 8
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #8, !srcloc !136
  %conv.i = trunc i32 %38 to i8
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %val, align 1
  br label %out

out:                                              ; preds = %if.end74, %if.then66, %do.body58, %pm_runtime_suspended.exit.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end74 ], [ -22, %pm_runtime_suspended.exit.out_crit_edge ], [ -110, %if.then66 ], [ -110, %do.body58 ]
  call void @mutex_unlock(ptr noundef %hdq_mutex) #8
  br label %rtn

rtn:                                              ; preds = %out, %entry.rtn_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out ], [ -4, %entry.rtn_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdq_write_byte(ptr noundef %hdq_data, i8 noundef zeroext %val, ptr nocapture noundef %status) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdq_mutex = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 2
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hdq_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.rtn_crit_edge, label %if.end

entry.rtn_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtn

if.end:                                           ; preds = %entry
  %hdq_irqstatus = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 3
  %0 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdq_irqstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdq_data, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %conv) #12
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %status, align 1
  %conv.i = zext i8 %val to i32
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 1
  %5 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #8, !srcloc !137
  %7 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #8, !srcloc !136
  %10 = and i32 %9, 237
  %conv4.i = or i32 %10, 16
  %11 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %conv4.i) #8, !srcloc !137
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 163) #8
  %13 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hdq_irqstatus, align 4
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then23, label %if.end3.if.end51_crit_edge

if.end3.if.end51_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then23:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call25168 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %17 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdq_irqstatus, align 4
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool30.not169.not = icmp eq i8 %19, 0
  br i1 %tobool30.not169.not, label %if.then23.cleanup_crit_edge, label %if.then23.for.end_crit_edge

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then23.cleanup_crit_edge
  %__ret24.1171 = phi i32 [ %__ret24.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then23.cleanup_crit_edge ]
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret24.1171) #8
  %call25 = call i32 @prepare_to_wait_event(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %20 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdq_irqstatus, align 4
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool30.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool35.not = icmp eq i32 %call49, 0
  %spec.store.select119 = select i1 %tobool35.not, i32 1, i32 %call49
  %__ret24.1 = select i1 %tobool30.not, i32 %call49, i32 %spec.store.select119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool42.not = icmp eq i32 %__ret24.1, 0
  %not.tobool30.not = xor i1 %tobool30.not, true
  %23 = select i1 %not.tobool30.not, i1 true, i1 %tobool42.not
  br i1 %23, label %for.end.loopexit, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %phi.cmp177 = icmp eq i32 %__ret24.1, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then23.for.end_crit_edge
  %__ret24.1.lcssa = phi i1 [ false, %if.then23.for.end_crit_edge ], [ %phi.cmp177, %for.end.loopexit ]
  call void @finish_wait(ptr noundef nonnull @hdq_wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end51

if.end51:                                         ; preds = %for.end, %if.end3.if.end51_crit_edge
  %__ret.1 = phi i1 [ false, %if.end3.if.end51_crit_edge ], [ %__ret24.1.lcssa, %for.end ]
  %hdq_spinlock.i = getelementptr inbounds %struct.hdq_data, ptr %hdq_data, i32 0, i32 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hdq_spinlock.i) #8
  %24 = ptrtoint ptr %hdq_irqstatus to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdq_irqstatus, align 4
  %and.i154 = and i8 %25, -5
  store i8 %and.i154, ptr %hdq_irqstatus, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hdq_spinlock.i, i32 noundef %call2.i) #8
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %status, align 1
  br i1 %__ret.1, label %do.body57, label %if.end70

do.body57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdq_write_byte.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdq_write_byte, %if.then65)) #8
          to label %out [label %if.then65], !srcloc !132

if.then65:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdq_data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdq_write_byte.__UNIQUE_ID_ddebug190, ptr noundef %28, ptr noundef nonnull @.str.25) #8
  br label %out

if.end70:                                         ; preds = %if.end51
  %29 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool73.not = icmp eq i8 %29, 0
  br i1 %tobool73.not, label %do.body75, label %if.end93

do.body75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdq_write_byte.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdq_write_byte, %if.then87)) #8
          to label %out [label %if.then87], !srcloc !132

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdq_data, align 4
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %status, align 1
  %conv89 = zext i8 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdq_write_byte.__UNIQUE_ID_ddebug191, ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %conv89) #8
  br label %out

if.end93:                                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %36, i32 12
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #8, !srcloc !136
  %and15.i166 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i166)
  %tobool.not6.i = icmp eq i32 %and15.i166, 0
  br i1 %tobool.not6.i, label %if.end93.out_crit_edge, label %land.rhs.lr.ph.i

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.rhs.lr.ph.i:                                 ; preds = %if.end93
  %add.neg.i = sub i32 -20, %34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i172 = add i32 %add.neg.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i172)
  %cmp4.i173 = icmp slt i32 %sub.i172, 0
  br i1 %cmp4.i173, label %land.rhs.lr.ph.i.while.body.i_crit_edge, label %land.rhs.lr.ph.i.do.body97_crit_edge

land.rhs.lr.ph.i.do.body97_crit_edge:             ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

land.rhs.lr.ph.i.while.body.i_crit_edge:          ; preds = %land.rhs.lr.ph.i
  br label %while.body.i

land.rhs.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %39
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %land.rhs.i.while.body.i_crit_edge, label %land.rhs.i.do.body97_crit_edge

land.rhs.i.do.body97_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.lr.ph.i.while.body.i_crit_edge
  %call6.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  %40 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 12
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !136
  %and1.i165 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i165)
  %tobool.not.i = icmp eq i32 %and1.i165, 0
  br i1 %tobool.not.i, label %while.body.i.out_crit_edge, label %land.rhs.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body97:                                        ; preds = %land.rhs.i.do.body97_crit_edge, %land.rhs.lr.ph.i.do.body97_crit_edge
  %tmp_status.0.lcssa = phi i32 [ %37, %land.rhs.lr.ph.i.do.body97_crit_edge ], [ %42, %land.rhs.i.do.body97_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdq_write_byte.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdq_write_byte, %if.then109)) #8
          to label %out [label %if.then109], !srcloc !132

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %hdq_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hdq_data, align 4
  %conv111 = and i32 %tmp_status.0.lcssa, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdq_write_byte.__UNIQUE_ID_ddebug192, ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %conv111) #8
  br label %out

out:                                              ; preds = %if.then109, %do.body97, %while.body.i.out_crit_edge, %if.end93.out_crit_edge, %if.then87, %do.body75, %if.then65, %do.body57
  %ret.0 = phi i32 [ -110, %if.then109 ], [ -110, %if.then65 ], [ -110, %if.then87 ], [ -110, %do.body57 ], [ -110, %do.body75 ], [ -110, %do.body97 ], [ 0, %if.end93.out_crit_edge ], [ 0, %while.body.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %hdq_mutex) #8
  br label %rtn

rtn:                                              ; preds = %out, %entry.rtn_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out ], [ -4, %entry.rtn_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_remove_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdq_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.hdq_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %conv.i = and i32 %3, 255
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdq_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %conv.i) #8, !srcloc !137
  %6 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !136
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdq_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.hdq_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %conv = and i32 %3, 159
  %conv.i = or i32 %conv, 96
  %hdq_base.i = getelementptr inbounds %struct.hdq_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #8, !srcloc !137
  %6 = ptrtoint ptr %hdq_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdq_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #8, !srcloc !136
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !37, !39, !40, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__param_w1_id, !1, !"__param_w1_id", i1 false, i1 false}
!1 = !{!"../drivers/w1/masters/omap_hdq.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_w1_idtype188, !1, !"__UNIQUE_ID_w1_idtype188", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_w1_id189, !4, !"__UNIQUE_ID_w1_id189", i1 false, i1 false}
!4 = !{!"../drivers/w1/masters/omap_hdq.c", i32 52, i32 1}
!5 = !{ptr @__initcall__kmod_omap_hdq__210_692_omap_hdq_driver_init6, !6, !"__initcall__kmod_omap_hdq__210_692_omap_hdq_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/w1/masters/omap_hdq.c", i32 692, i32 1}
!7 = !{ptr @__exitcall_omap_hdq_driver_exit, !6, !"__exitcall_omap_hdq_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author211, !9, !"__UNIQUE_ID_author211", i1 false, i1 false}
!9 = !{!"../drivers/w1/masters/omap_hdq.c", i32 694, i32 1}
!10 = !{ptr @__UNIQUE_ID_description212, !11, !"__UNIQUE_ID_description212", i1 false, i1 false}
!11 = !{!"../drivers/w1/masters/omap_hdq.c", i32 695, i32 1}
!12 = !{ptr @__UNIQUE_ID_file213, !13, !"__UNIQUE_ID_file213", i1 false, i1 false}
!13 = !{!"../drivers/w1/masters/omap_hdq.c", i32 696, i32 1}
!14 = !{ptr @__UNIQUE_ID_license214, !13, !"__UNIQUE_ID_license214", i1 false, i1 false}
!15 = !{ptr @w1_id, !16, !"w1_id", i1 false, i1 false}
!16 = !{!"../drivers/w1/masters/omap_hdq.c", i32 50, i32 12}
!17 = !{ptr @__param_str_w1_id, !1, !"__param_str_w1_id", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/w1/masters/omap_hdq.c", i32 687, i32 11}
!20 = !{ptr @omap_hdq_driver, !21, !"omap_hdq_driver", i1 false, i1 false}
!21 = !{!"../drivers/w1/masters/omap_hdq.c", i32 683, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/masters/omap_hdq.c", i32 583, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @omap_hdq_probe.__UNIQUE_ID_ddebug205, !23, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!27 = !{ptr @omap_hdq_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/w1/masters/omap_hdq.c", i32 594, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/w1/masters/omap_hdq.c", i32 596, i32 51}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/w1/masters/omap_hdq.c", i32 597, i32 31}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/w1/masters/omap_hdq.c", i32 611, i32 3}
!36 = !{ptr @omap_hdq_probe.__UNIQUE_ID_ddebug206, !35, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/w1/masters/omap_hdq.c", i32 616, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @omap_hdq_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap_hdq_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @omap_hdq_probe.__key.12, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/w1/masters/omap_hdq.c", i32 619, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/w1/masters/omap_hdq.c", i32 623, i32 3}
!49 = !{ptr @omap_hdq_probe.__UNIQUE_ID_ddebug207, !48, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/w1/masters/omap_hdq.c", i32 630, i32 3}
!52 = !{ptr @omap_hdq_probe.__UNIQUE_ID_ddebug208, !51, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/w1/masters/omap_hdq.c", i32 643, i32 3}
!55 = !{ptr @omap_hdq_probe.__UNIQUE_ID_ddebug209, !54, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!56 = !{ptr @omap_w1_master, !57, !"omap_w1_master", i1 false, i1 false}
!57 = !{!"../drivers/w1/masters/omap_hdq.c", i32 538, i32 29}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/w1/masters/omap_hdq.c", i32 344, i32 4}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hdq_read_byte.__UNIQUE_ID_ddebug199, !59, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/w1/masters/omap_hdq.c", i32 48, i32 8}
!64 = !{ptr @hdq_wait_queue, !63, !"hdq_wait_queue", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/w1/masters/omap_hdq.c", i32 529, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @omap_w1_write_byte.__UNIQUE_ID_ddebug204, !66, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/w1/masters/omap_hdq.c", i32 150, i32 3}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @hdq_write_byte._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @hdq_write_byte._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/w1/masters/omap_hdq.c", i32 166, i32 3}
!77 = !{ptr @hdq_write_byte.__UNIQUE_ID_ddebug190, !76, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/w1/masters/omap_hdq.c", i32 173, i32 3}
!80 = !{ptr @hdq_write_byte.__UNIQUE_ID_ddebug191, !79, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/w1/masters/omap_hdq.c", i32 184, i32 3}
!83 = !{ptr @hdq_write_byte.__UNIQUE_ID_ddebug192, !82, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/w1/masters/omap_hdq.c", i32 384, i32 3}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @omap_w1_triplet.__UNIQUE_ID_ddebug200, !85, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/w1/masters/omap_hdq.c", i32 399, i32 3}
!90 = !{ptr @omap_w1_triplet.__UNIQUE_ID_ddebug201, !89, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!91 = !{ptr @omap_w1_triplet.__UNIQUE_ID_ddebug202, !92, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!92 = !{!"../drivers/w1/masters/omap_hdq.c", i32 415, i32 3}
!93 = !{ptr @omap_w1_triplet.__UNIQUE_ID_ddebug203, !94, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!94 = !{!"../drivers/w1/masters/omap_hdq.c", i32 444, i32 3}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/w1/masters/omap_hdq.c", i32 203, i32 2}
!97 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hdq_isr.__UNIQUE_ID_ddebug193, !96, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/w1/masters/omap_hdq.c", i32 245, i32 3}
!101 = !{ptr @omap_hdq_break.__UNIQUE_ID_ddebug194, !100, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/w1/masters/omap_hdq.c", i32 251, i32 3}
!104 = !{ptr @omap_hdq_break._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @omap_hdq_break._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/w1/masters/omap_hdq.c", i32 266, i32 3}
!108 = !{ptr @omap_hdq_break.__UNIQUE_ID_ddebug195, !107, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/w1/masters/omap_hdq.c", i32 273, i32 3}
!111 = !{ptr @omap_hdq_break.__UNIQUE_ID_ddebug196, !110, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/w1/masters/omap_hdq.c", i32 285, i32 3}
!114 = !{ptr @omap_hdq_break.__UNIQUE_ID_ddebug197, !113, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/w1/masters/omap_hdq.c", i32 299, i32 3}
!117 = !{ptr @omap_hdq_break.__UNIQUE_ID_ddebug198, !116, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!118 = !{ptr @omap_hdq_dt_ids, !119, !"omap_hdq_dt_ids", i1 false, i1 false}
!119 = !{!"../drivers/w1/masters/omap_hdq.c", i32 676, i32 34}
!120 = !{ptr @omap_hdq_pm_ops, !121, !"omap_hdq_pm_ops", i1 false, i1 false}
!121 = !{!"../drivers/w1/masters/omap_hdq.c", i32 568, i32 32}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i64 2148707265, i64 2148707270, i64 2148707283, i64 2148707327, i64 2148707361, i64 2148707382}
!133 = !{i64 2148224869}
!134 = !{i64 709692, i64 709717, i64 709739, i64 709755, i64 709767, i64 709787, i64 709811, i64 709827, i64 709839}
!135 = !{i64 2148225057}
!136 = !{i64 4888353}
!137 = !{i64 4887935}
