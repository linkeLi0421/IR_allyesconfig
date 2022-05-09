; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-bcm-iproc.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-bcm-iproc.c"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.bcm_iproc_i2c_dev = type { ptr, i32, i32, ptr, ptr, i32, %struct.spinlock, %struct.i2c_adapter, i32, %struct.completion, i32, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i32, %struct.tasklet_struct }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_bcm_iproc__300_1275_bcm_iproc_i2c_driver_init6 = internal global ptr @bcm_iproc_i2c_driver_init, section ".initcall6.init", align 4
@bcm_iproc_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_iproc_i2c_probe, ptr @bcm_iproc_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_iproc_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_iproc_i2c_driver_exit = internal global ptr @bcm_iproc_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [49 x i8] c"i2c_bcm_iproc.author=Ray Jui <rjui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [52 x i8] c"i2c_bcm_iproc.description=Broadcom iProc I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [52 x i8] c"i2c_bcm_iproc.file=drivers/i2c/busses/i2c-bcm-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [29 x i8] c"i2c_bcm_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm-iproc-i2c\00", [18 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-nic-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_iproc_i2c_suspend, ptr @bcm_iproc_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcm,ape-hsls-addr-mask\00", [40 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1069, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"'brcm,ape-hsls-addr-mask' missing\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_iproc_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-bcm-iproc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_probe._entry_ptr = internal global ptr @bcm_iproc_i2c_probe._entry, section ".printk_index", align 4
@bcm_iproc_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&iproc_i2c->idm_lock\00", [43 x i8] zeroinitializer }, align 32
@bcm_iproc_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @bcm_iproc_i2c_xfer, ptr null, ptr null, ptr null, ptr @bcm_iproc_i2c_functionality, ptr @bcm_iproc_i2c_reg_slave, ptr @bcm_iproc_i2c_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1095, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %i\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_probe._entry_ptr.10 = internal global ptr @bcm_iproc_i2c_probe._entry.8, section ".printk_index", align 4
@bcm_iproc_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1102, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no irq resource, falling back to poll mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_probe._entry_ptr.14 = internal global ptr @bcm_iproc_i2c_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Broadcom iProc (%s)\00", [44 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 0, i16 0, i16 255, i16 64, i16 0 }, [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 960, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid repeated start\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_iproc_i2c_xfer\00", [45 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_xfer._entry_ptr = internal global ptr @bcm_iproc_i2c_xfer._entry, section ".printk_index", align 4
@bcm_iproc_i2c_xfer.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.18, ptr @.str.4, ptr @.str.20, i8 0, i8 -15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_bcm_iproc\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfer failed\0A\00", [19 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_xfer_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 841, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus is busy\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm_iproc_i2c_xfer_internal\00", [36 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_xfer_internal._entry_ptr = internal global ptr @bcm_iproc_i2c_xfer_internal._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm_iproc_i2c_xfer_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 804, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"transaction timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_iproc_i2c_xfer_wait\00", [40 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_xfer_wait._entry_ptr = internal global ptr @bcm_iproc_i2c_xfer_wait._entry, section ".printk_index", align 4
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_iproc_i2c_check_status\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lost bus arbitration\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 -73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NAK addr:0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.28, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NAK data\0A\00", [22 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.29, i8 0, i8 -71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.30, i8 0, i8 -70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIFO under-run\0A\00", [16 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.31, i8 0, i8 -69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RX FIFO full\0A\00", [18 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.25, ptr @.str.4, ptr @.str.32, i8 0, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown error code=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_cfg_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1007, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unable to interpret clock-frequency DT property\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_iproc_i2c_cfg_speed\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_cfg_speed._entry_ptr = internal global ptr @bcm_iproc_i2c_cfg_speed._entry, section ".printk_index", align 4
@bcm_iproc_i2c_cfg_speed._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.4, i32 1013, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d Hz bus speed not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_cfg_speed._entry_ptr.39 = internal global ptr @bcm_iproc_i2c_cfg_speed._entry.37, section ".printk_index", align 4
@bcm_iproc_i2c_cfg_speed._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.4, i32 1015, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"valid speeds are 100khz and 400khz\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_cfg_speed._entry_ptr.42 = internal global ptr @bcm_iproc_i2c_cfg_speed._entry.40, section ".printk_index", align 4
@bcm_iproc_i2c_cfg_speed._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.4, i32 1029, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bus set to %u Hz\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_cfg_speed._entry_ptr.45 = internal global ptr @bcm_iproc_i2c_cfg_speed._entry.43, section ".printk_index", align 4
@bcm_iproc_i2c_check_slave_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.46, ptr @.str.4, i32 340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm_iproc_i2c_check_slave_status\00", [63 x i8] zeroinitializer }, align 32
@bcm_iproc_i2c_check_slave_status._entry_ptr = internal global ptr @bcm_iproc_i2c_check_slave_status._entry, section ".printk_index", align 4
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"slave random stretch time timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Master aborted read transaction\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"bcm_iproc_i2c_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1266, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1268, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"bcm_iproc_i2c_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1254, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"bcm_iproc_i2c_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1187, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1065, i32 9 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1068, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1073, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"bcm_iproc_algo\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 986, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1094, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1101, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1110, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"bcm_iproc_i2c_quirks\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 993, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 960, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 967, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 841, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 804, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 729, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 733, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 737, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 741, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 745, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 749, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 753, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1004, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1006, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1012, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1014, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 1029, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-bcm-iproc.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 338, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 261, i32 30 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_bcm_iproc_i2c_driver_exit, ptr @__initcall__kmod_i2c_bcm_iproc__300_1275_bcm_iproc_i2c_driver_init6, ptr @bcm_iproc_i2c_cfg_speed._entry, ptr @bcm_iproc_i2c_cfg_speed._entry.37, ptr @bcm_iproc_i2c_cfg_speed._entry.40, ptr @bcm_iproc_i2c_cfg_speed._entry.43, ptr @bcm_iproc_i2c_cfg_speed._entry_ptr, ptr @bcm_iproc_i2c_cfg_speed._entry_ptr.39, ptr @bcm_iproc_i2c_cfg_speed._entry_ptr.42, ptr @bcm_iproc_i2c_cfg_speed._entry_ptr.45, ptr @bcm_iproc_i2c_check_slave_status._entry, ptr @bcm_iproc_i2c_check_slave_status._entry_ptr, ptr @bcm_iproc_i2c_driver_exit, ptr @bcm_iproc_i2c_probe._entry, ptr @bcm_iproc_i2c_probe._entry.11, ptr @bcm_iproc_i2c_probe._entry.8, ptr @bcm_iproc_i2c_probe._entry_ptr, ptr @bcm_iproc_i2c_probe._entry_ptr.10, ptr @bcm_iproc_i2c_probe._entry_ptr.14, ptr @bcm_iproc_i2c_xfer._entry, ptr @bcm_iproc_i2c_xfer._entry_ptr, ptr @bcm_iproc_i2c_xfer_internal._entry, ptr @bcm_iproc_i2c_xfer_internal._entry_ptr, ptr @bcm_iproc_i2c_xfer_wait._entry, ptr @bcm_iproc_i2c_xfer_wait._entry_ptr, ptr @bcm_iproc_i2c_driver, ptr @.str, ptr @bcm_iproc_i2c_of_match, ptr @bcm_iproc_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcm_iproc_i2c_probe.__key, ptr @.str.7, ptr @bcm_iproc_algo, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @bcm_iproc_i2c_quirks, ptr @init_completion.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_xfer_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_xfer_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_cfg_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_cfg_speed._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_cfg_speed._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_cfg_speed._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_i2c_check_slave_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_iproc_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_iproc_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_iproc_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1552, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %2 = ptrtoint ptr %call3 to i32
  %type = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 4
  %done = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #8
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %call4) #8
  %base = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then14, label %if.end12.if.end34_crit_edge

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then14:                                        ; preds = %if.end12
  %call15 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %call17 = tail call ptr @devm_ioremap_resource(ptr noundef %12, ptr noundef %call15) #8
  %idm_base = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %idm_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %idm_base, align 8
  %cmp.i130 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.then14
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %ape_addr_mask = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %ape_addr_mask, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp26 = icmp slt i32 %call.i.i, 0
  br i1 %cmp26, label %do.end, label %do.body30

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.2) #11
  br label %cleanup

do.body30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %idm_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @bcm_iproc_i2c_probe.__key, i16 noundef signext 3) #8
  store ptr null, ptr getelementptr inbounds (%struct.i2c_algorithm, ptr @bcm_iproc_algo, i32 0, i32 5), align 4
  store ptr null, ptr getelementptr inbounds (%struct.i2c_algorithm, ptr @bcm_iproc_algo, i32 0, i32 6), align 4
  br label %if.end34

if.end34:                                         ; preds = %do.body30, %if.end12.if.end34_crit_edge
  tail call fastcc void @bcm_iproc_i2c_init(ptr noundef nonnull %call.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_speed.i) #8
  %21 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %bus_speed.i, align 4, !annotation !127
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.33, ptr noundef nonnull %bus_speed.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i131 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i131, label %if.else.thread.i, label %if.end.i

if.else.thread.i:                                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.34) #11
  br label %29

if.end.i:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %bus_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.pr.i)
  %cmp2.i = icmp ult i32 %.pr.i, 100000
  br i1 %cmp2.i, label %bcm_iproc_i2c_cfg_speed.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %.pr.i)
  %cmp12.i = icmp ult i32 %.pr.i, 400000
  br i1 %cmp12.i, label %if.else.i._crit_edge, label %if.else.i._crit_edge136

if.else.i._crit_edge136:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %30

if.else.i._crit_edge:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

29:                                               ; preds = %if.else.i._crit_edge, %if.else.thread.i
  br label %30

30:                                               ; preds = %29, %if.else.i._crit_edge136
  %31 = phi i32 [ 100000, %29 ], [ 400000, %if.else.i._crit_edge136 ]
  %32 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bus_speed.i, align 4
  %bus_speed17.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %bus_speed17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %bus_speed17.i, align 8
  %idm_base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %30
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ape_addr_mask.i.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %idm_base.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #8, !srcloc !129
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %42, i32 4
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !130
  %44 = call i32 @llvm.bswap.i32(i32 %43) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i

if.else.i.i:                                      ; preds = %30
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %46, i32 4
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8, !srcloc !130
  %48 = call i32 @llvm.bswap.i32(i32 %47) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i

iproc_i2c_rd_reg.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %44, %if.then.i.i ], [ %48, %if.else.i.i ]
  %and.i = and i32 %val.0.i.i, 2147483647
  %49 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bus_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %50)
  %cmp19.i = icmp eq i32 %50, 400000
  %shl.i = select i1 %cmp19.i, i32 -2147483648, i32 0
  %or.i = or i32 %shl.i, %and.i
  %51 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i36.i = icmp eq ptr %52, null
  br i1 %tobool.not.i36.i, label %do.body6.i.i, label %if.then.i40.i

if.then.i40.i:                                    ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i37.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i37.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i38.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 5
  %53 = ptrtoint ptr %ape_addr_mask.i38.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ape_addr_mask.i38.i, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #8
  %56 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %idm_base.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %58 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %60, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %58) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i37.i) #8
  br label %if.end42

do.body6.i.i:                                     ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %61 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %63, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %61) #8, !srcloc !129
  br label %if.end42

bcm_iproc_i2c_cfg_speed.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.38, i32 noundef %.pr.i) #11
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.41) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed.i) #8
  br label %cleanup

if.end42:                                         ; preds = %do.body6.i.i, %if.then.i40.i
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 8
  %70 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bus_speed.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.44, i32 noundef %71) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed.i) #8
  %call43 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp sgt i32 %call43, 0
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 8
  br i1 %cmp44, label %if.then45, label %do.end58

if.then45:                                        ; preds = %if.end42
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %call.i132 = call i32 @devm_request_threaded_irq(ptr noundef %73, i32 noundef %call43, ptr noundef nonnull @bcm_iproc_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %75, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp48 = icmp slt i32 %call.i132, 0
  br i1 %cmp48, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.9, i32 noundef %call43) #11
  br label %cleanup

if.end54:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %irq55 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 2
  %78 = ptrtoint ptr %irq55 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call43, ptr %irq55, align 8
  br label %if.end60

do.end58:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.12) #11
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end54
  call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %adapter = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7
  %driver_data.i.i133 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7, i32 9, i32 8
  %79 = ptrtoint ptr %driver_data.i.i133 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %driver_data.i.i133, align 4
  %name61 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7, i32 12
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 8
  %of_node63 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %of_node63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node63, align 8
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.end60.of_node_full_name.exit_crit_edge, label %cond.true.i

if.end60.of_node_full_name.exit_crit_edge:        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.end60.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %85, %cond.true.i ], [ @.str.49, %if.end60.of_node_full_name.exit_crit_edge ]
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name61, i32 noundef 48, ptr noundef nonnull @.str.15, ptr noundef %cond.i)
  %algo = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7, i32 2
  %86 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @bcm_iproc_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7, i32 17
  %87 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @bcm_iproc_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7, i32 9, i32 1
  %88 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev, ptr %parent, align 8
  %of_node69 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %89 = ptrtoint ptr %of_node69 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %of_node69, align 8
  %of_node71 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %call.i, i32 0, i32 7, i32 9, i32 27
  %91 = ptrtoint ptr %of_node71 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %of_node71, align 8
  %call72 = call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %of_node_full_name.exit, %do.end52, %bcm_iproc_i2c_cfg_speed.exit, %do.end, %if.then20, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then9 ], [ %14, %if.then20 ], [ -22, %do.end ], [ %call.i132, %do.end52 ], [ %call72, %of_node_full_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ -22, %bcm_iproc_i2c_cfg_speed.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ape_addr_mask.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i
  %15 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i9 = icmp eq ptr %16, null
  br i1 %tobool.not.i9, label %if.else.i, label %if.then.i13

if.then.i13:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %ape_addr_mask.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ape_addr_mask.i11, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !129
  %base.i12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %base.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i12, align 4
  %add.ptr2.i = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i10) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i13
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %29) #8
  br label %if.end

if.end:                                           ; preds = %iproc_i2c_rd_reg.exit, %entry.if.end_crit_edge
  %adapter = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 7
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %1, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_init(ptr noundef %iproc_i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %0 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %2 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ape_addr_mask.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !130
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %11 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base7.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !130
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %10, %if.then.i ], [ %14, %if.else.i ]
  %or = and i32 %val.0.i, 1073741823
  %and = or i32 %or, -2147483648
  %15 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i2 = icmp eq ptr %16, null
  br i1 %tobool.not.i2, label %do.body6.i, label %if.then.i6

if.then.i6:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i3 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i4 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %17 = ptrtoint ptr %ape_addr_mask.i4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ape_addr_mask.i4, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %base.i5 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %23 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i3) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %26 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 21474800) #8
  %29 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i8 = icmp eq ptr %30, null
  br i1 %tobool.not.i8, label %do.body6.i14, label %if.then.i12

if.then.i12:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i9 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %31 = ptrtoint ptr %ape_addr_mask.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ape_addr_mask.i10, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %base.i11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %37 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i9) #8
  br label %iproc_i2c_wr_reg.exit15

do.body6.i14:                                     ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %base8.i13 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %40 = ptrtoint ptr %base8.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base8.i13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit15

iproc_i2c_wr_reg.exit15:                          ; preds = %do.body6.i14, %if.then.i12
  %42 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i17 = icmp eq ptr %43, null
  br i1 %tobool.not.i17, label %do.body6.i23, label %if.then.i21

if.then.i21:                                      ; preds = %iproc_i2c_wr_reg.exit15
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i18 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %44 = ptrtoint ptr %ape_addr_mask.i19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ape_addr_mask.i19, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  %47 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i20 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %49 = ptrtoint ptr %base.i20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i20, align 4
  %add.ptr4.i = getelementptr i8, ptr %50, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 192) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i18) #8
  br label %iproc_i2c_wr_reg.exit24

do.body6.i23:                                     ; preds = %iproc_i2c_wr_reg.exit15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i22 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %51 = ptrtoint ptr %base8.i22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base8.i22, align 4
  %add.ptr9.i = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 192) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit24

iproc_i2c_wr_reg.exit24:                          ; preds = %do.body6.i23, %if.then.i21
  %53 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i26 = icmp eq ptr %54, null
  br i1 %tobool.not.i26, label %if.else.i32, label %if.then.i30

if.then.i30:                                      ; preds = %iproc_i2c_wr_reg.exit24
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i27 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i28 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %55 = ptrtoint ptr %ape_addr_mask.i28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ape_addr_mask.i28, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  %58 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #8, !srcloc !129
  %base.i29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %60 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i29, align 4
  %add.ptr2.i = getelementptr i8, ptr %61, i32 56
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i27) #8
  br label %iproc_i2c_rd_reg.exit34

if.else.i32:                                      ; preds = %iproc_i2c_wr_reg.exit24
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i31 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %64 = ptrtoint ptr %base7.i31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base7.i31, align 4
  %add.ptr8.i = getelementptr i8, ptr %65, i32 56
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit34

iproc_i2c_rd_reg.exit34:                          ; preds = %if.else.i32, %if.then.i30
  %val.0.i33 = phi i32 [ %63, %if.then.i30 ], [ %67, %if.else.i32 ]
  %and3 = and i32 %val.0.i33, 268435455
  %68 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i36 = icmp eq ptr %69, null
  br i1 %tobool.not.i36, label %do.body6.i44, label %if.then.i41

if.then.i41:                                      ; preds = %iproc_i2c_rd_reg.exit34
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i37 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i38 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %70 = ptrtoint ptr %ape_addr_mask.i38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ape_addr_mask.i38, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #8
  %73 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %75 = tail call i32 @llvm.bswap.i32(i32 %and3) #8
  %base.i39 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %76 = ptrtoint ptr %base.i39 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i39, align 4
  %add.ptr4.i40 = getelementptr i8, ptr %77, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i40, i32 %75) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i37) #8
  br label %iproc_i2c_wr_reg.exit45

do.body6.i44:                                     ; preds = %iproc_i2c_rd_reg.exit34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %and3) #8
  %base8.i42 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %79 = ptrtoint ptr %base8.i42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base8.i42, align 4
  %add.ptr9.i43 = getelementptr i8, ptr %80, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i43, i32 %78) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit45

iproc_i2c_wr_reg.exit45:                          ; preds = %do.body6.i44, %if.then.i41
  %81 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i47 = icmp eq ptr %82, null
  br i1 %tobool.not.i47, label %do.body6.i55, label %if.then.i52

if.then.i52:                                      ; preds = %iproc_i2c_wr_reg.exit45
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i48 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i49 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %83 = ptrtoint ptr %ape_addr_mask.i49 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ape_addr_mask.i49, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  %86 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i50 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %88 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i50, align 4
  %add.ptr4.i51 = getelementptr i8, ptr %89, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i51, i32 -1) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i48) #8
  br label %iproc_i2c_wr_reg.exit56

do.body6.i55:                                     ; preds = %iproc_i2c_wr_reg.exit45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i53 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %90 = ptrtoint ptr %base8.i53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base8.i53, align 4
  %add.ptr9.i54 = getelementptr i8, ptr %91, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i54, i32 -1) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit56

iproc_i2c_wr_reg.exit56:                          ; preds = %do.body6.i55, %if.then.i52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ape_addr_mask.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %12, i32 60
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %10, %if.then.i ], [ %14, %if.else.i ]
  %15 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i23 = icmp eq ptr %16, null
  br i1 %tobool.not.i23, label %if.else.i31, label %if.then.i28

if.then.i28:                                      ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i24 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i25 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %17 = ptrtoint ptr %ape_addr_mask.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ape_addr_mask.i25, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !129
  %base.i26 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %22 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i26, align 4
  %add.ptr2.i27 = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i27) #8, !srcloc !130
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i24) #8
  br label %iproc_i2c_rd_reg.exit33

if.else.i31:                                      ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %base7.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base7.i29, align 4
  %add.ptr8.i30 = getelementptr i8, ptr %27, i32 56
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i30) #8, !srcloc !130
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit33

iproc_i2c_rd_reg.exit33:                          ; preds = %if.else.i31, %if.then.i28
  %val.0.i32 = phi i32 [ %25, %if.then.i28 ], [ %29, %if.else.i31 ]
  %and = and i32 %val.0.i32, %val.0.i
  %and2 = and i32 %and, 132120576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %iproc_i2c_rd_reg.exit33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %value.i, align 1, !annotation !127
  %and4.i = and i32 %and, 67108864
  %31 = and i32 %and, 85983232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.then.if.end15.i_crit_edge, label %if.then.i34

if.then.if.end15.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i34:                                      ; preds = %if.then
  %33 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %35 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ape_addr_mask.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !129
  %base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %41, i32 56
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !130
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i

if.else.i.i:                                      ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %44 = ptrtoint ptr %base7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base7.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %45, i32 56
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8, !srcloc !130
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i

iproc_i2c_rd_reg.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %43, %if.then.i.i ], [ %47, %if.else.i.i ]
  %slave_int_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 20
  %48 = ptrtoint ptr %slave_int_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slave_int_mask.i, align 4
  %neg.i = xor i32 %49, -1
  %and6.i = and i32 %val.0.i.i, %neg.i
  %50 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i3.i = icmp eq ptr %51, null
  br i1 %tobool.not.i3.i, label %do.body6.i.i, label %if.then.i7.i

if.then.i7.i:                                     ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i4.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i4.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i5.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %52 = ptrtoint ptr %ape_addr_mask.i5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ape_addr_mask.i5.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  %55 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #8
  %base.i6.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %58 = ptrtoint ptr %base.i6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i6.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %59, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %57) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i4.i) #8
  br label %iproc_i2c_wr_reg.exit.i

do.body6.i.i:                                     ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #8
  %base8.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %61 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %62, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %60) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit.i

iproc_i2c_wr_reg.exit.i:                          ; preds = %do.body6.i.i, %if.then.i7.i
  %and1.i = lshr exact i32 %and2, 21
  %63 = trunc i32 %and1.i to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  %66 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 16
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %66, align 4
  %state.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 21, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i8.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i8.i, label %if.then.i9.i, label %iproc_i2c_wr_reg.exit.i.tasklet_schedule.exit.i_crit_edge

iproc_i2c_wr_reg.exit.i.tasklet_schedule.exit.i_crit_edge: ; preds = %iproc_i2c_wr_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit.i

if.then.i9.i:                                     ; preds = %iproc_i2c_wr_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %slave_rx_tasklet.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %slave_rx_tasklet.i) #8
  br label %tasklet_schedule.exit.i

tasklet_schedule.exit.i:                          ; preds = %if.then.i9.i, %iproc_i2c_wr_reg.exit.i.tasklet_schedule.exit.i_crit_edge
  %68 = or i32 %and4.i, 16777216
  %69 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i11.i = icmp eq ptr %70, null
  br i1 %tobool.not.i11.i, label %do.body6.i19.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %tasklet_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i12.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i12.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i13.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %71 = ptrtoint ptr %ape_addr_mask.i13.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ape_addr_mask.i13.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %74 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %76 = lshr exact i32 %68, 24
  %base.i14.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %77 = ptrtoint ptr %base.i14.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i14.i, align 4
  %add.ptr4.i15.i = getelementptr i8, ptr %78, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i15.i, i32 %76) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i12.i) #8
  br label %if.end15.i

do.body6.i19.i:                                   ; preds = %tasklet_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %79 = lshr exact i32 %68, 24
  %base8.i17.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %80 = ptrtoint ptr %base8.i17.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base8.i17.i, align 4
  %add.ptr9.i18.i = getelementptr i8, ptr %81, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i18.i, i32 %79) #8, !srcloc !129
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.body6.i19.i, %if.then.i16.i, %if.then.if.end15.i_crit_edge
  %and16.i = and i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end26.i_crit_edge, label %if.then18.i

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then18.i:                                      ; preds = %if.end15.i
  %tx_underrun.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 19
  %82 = ptrtoint ptr %tx_underrun.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_underrun.i, align 8
  %inc.i = add i32 %83, 1
  store i32 %inc.i, ptr %tx_underrun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i = icmp eq i32 %83, 0
  %slave.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 12
  %84 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %slave.i, align 4
  %slave_cb.i.i = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %slave_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %slave_cb.i.i, align 8
  %..i = select i1 %cmp.i, i32 0, i32 2
  %call.i23.i = call i32 %87(ptr noundef %85, i32 noundef %..i, ptr noundef nonnull %value.i) #8
  %88 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %value.i, align 1
  %conv.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i25.i = icmp eq ptr %91, null
  br i1 %tobool.not.i25.i, label %do.body6.i33.i, label %if.then.i30.i

if.then.i30.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i26.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i26.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i27.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %92 = ptrtoint ptr %ape_addr_mask.i27.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ape_addr_mask.i27.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #8
  %95 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %97 = shl nuw i32 %conv.i, 24
  %base.i28.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %98 = ptrtoint ptr %base.i28.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i28.i, align 4
  %add.ptr4.i29.i = getelementptr i8, ptr %99, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i29.i, i32 %97) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i26.i) #8
  br label %iproc_i2c_wr_reg.exit34.i

do.body6.i33.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %100 = shl nuw i32 %conv.i, 24
  %base8.i31.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %101 = ptrtoint ptr %base8.i31.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base8.i31.i, align 4
  %add.ptr9.i32.i = getelementptr i8, ptr %102, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i32.i, i32 %100) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit34.i

iproc_i2c_wr_reg.exit34.i:                        ; preds = %do.body6.i33.i, %if.then.i30.i
  %103 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i36.i = icmp eq ptr %104, null
  br i1 %tobool.not.i36.i, label %do.body6.i44.i, label %if.then.i41.i

if.then.i41.i:                                    ; preds = %iproc_i2c_wr_reg.exit34.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i37.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i37.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i38.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %105 = ptrtoint ptr %ape_addr_mask.i38.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ape_addr_mask.i38.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #8
  %108 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %base.i39.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %110 = ptrtoint ptr %base.i39.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i39.i, align 4
  %add.ptr4.i40.i = getelementptr i8, ptr %111, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i40.i, i32 128) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i37.i) #8
  br label %iproc_i2c_wr_reg.exit45.i

do.body6.i44.i:                                   ; preds = %iproc_i2c_wr_reg.exit34.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %base8.i42.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %112 = ptrtoint ptr %base8.i42.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base8.i42.i, align 4
  %add.ptr9.i43.i = getelementptr i8, ptr %113, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i43.i, i32 128) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit45.i

iproc_i2c_wr_reg.exit45.i:                        ; preds = %do.body6.i44.i, %if.then.i41.i
  %114 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i47.i = icmp eq ptr %115, null
  br i1 %tobool.not.i47.i, label %do.body6.i55.i, label %if.then.i52.i

if.then.i52.i:                                    ; preds = %iproc_i2c_wr_reg.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i48.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i48.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i49.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %116 = ptrtoint ptr %ape_addr_mask.i49.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ape_addr_mask.i49.i, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117) #8
  %119 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %base.i50.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %121 = ptrtoint ptr %base.i50.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i50.i, align 4
  %add.ptr4.i51.i = getelementptr i8, ptr %122, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i51.i, i32 16384) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i48.i) #8
  br label %if.end26.i

do.body6.i55.i:                                   ; preds = %iproc_i2c_wr_reg.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %base8.i53.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %123 = ptrtoint ptr %base8.i53.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base8.i53.i, align 4
  %add.ptr9.i54.i = getelementptr i8, ptr %124, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i54.i, i32 16384) #8, !srcloc !129
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body6.i55.i, %if.then.i52.i, %if.end15.i.if.end26.i_crit_edge
  %and27.i = and i32 %and, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end37.i_crit_edge, label %if.then29.i

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.end26.i
  %slave_int_mask30.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 20
  %125 = ptrtoint ptr %slave_int_mask30.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %slave_int_mask30.i, align 4
  %and31.i = and i32 %126, -4194305
  store i32 %and31.i, ptr %slave_int_mask30.i, align 4
  %127 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i58.i = icmp eq ptr %128, null
  br i1 %tobool.not.i58.i, label %do.body6.i66.i, label %if.then.i63.i

if.then.i63.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i59.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i59.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i60.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %129 = ptrtoint ptr %ape_addr_mask.i60.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ape_addr_mask.i60.i, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #8
  %132 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %134 = call i32 @llvm.bswap.i32(i32 %and31.i) #8
  %base.i61.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %135 = ptrtoint ptr %base.i61.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i61.i, align 4
  %add.ptr4.i62.i = getelementptr i8, ptr %136, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i62.i, i32 %134) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i59.i) #8
  br label %iproc_i2c_wr_reg.exit67.i

do.body6.i66.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %137 = call i32 @llvm.bswap.i32(i32 %and31.i) #8
  %base8.i64.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %138 = ptrtoint ptr %base8.i64.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base8.i64.i, align 4
  %add.ptr9.i65.i = getelementptr i8, ptr %139, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i65.i, i32 %137) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit67.i

iproc_i2c_wr_reg.exit67.i:                        ; preds = %do.body6.i66.i, %if.then.i63.i
  %140 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i69.i = icmp eq ptr %141, null
  br i1 %tobool.not.i69.i, label %do.body6.i77.i, label %if.then.i74.i

if.then.i74.i:                                    ; preds = %iproc_i2c_wr_reg.exit67.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i70.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i70.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i71.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %142 = ptrtoint ptr %ape_addr_mask.i71.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ape_addr_mask.i71.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #8
  %145 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %base.i72.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %147 = ptrtoint ptr %base.i72.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i72.i, align 4
  %add.ptr4.i73.i = getelementptr i8, ptr %148, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i73.i, i32 128) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i70.i) #8
  br label %iproc_i2c_wr_reg.exit78.i

do.body6.i77.i:                                   ; preds = %iproc_i2c_wr_reg.exit67.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %base8.i75.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %149 = ptrtoint ptr %base8.i75.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base8.i75.i, align 4
  %add.ptr9.i76.i = getelementptr i8, ptr %150, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i76.i, i32 128) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit78.i

iproc_i2c_wr_reg.exit78.i:                        ; preds = %do.body6.i77.i, %if.then.i74.i
  %151 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i80.i = icmp eq ptr %152, null
  br i1 %tobool.not.i80.i, label %do.body6.i88.i, label %if.then.i85.i

if.then.i85.i:                                    ; preds = %iproc_i2c_wr_reg.exit78.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i81.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i81.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i82.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %153 = ptrtoint ptr %ape_addr_mask.i82.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ape_addr_mask.i82.i, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154) #8
  %156 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %base.i83.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %158 = ptrtoint ptr %base.i83.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i83.i, align 4
  %add.ptr4.i84.i = getelementptr i8, ptr %159, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i84.i, i32 128) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i81.i) #8
  br label %iproc_i2c_wr_reg.exit89.i

do.body6.i88.i:                                   ; preds = %iproc_i2c_wr_reg.exit78.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %base8.i86.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %160 = ptrtoint ptr %base8.i86.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base8.i86.i, align 4
  %add.ptr9.i87.i = getelementptr i8, ptr %161, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i87.i, i32 128) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit89.i

iproc_i2c_wr_reg.exit89.i:                        ; preds = %do.body6.i88.i, %if.then.i85.i
  %162 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i91.i = icmp eq ptr %163, null
  br i1 %tobool.not.i91.i, label %if.else.i99.i, label %if.then.i96.i

if.then.i96.i:                                    ; preds = %iproc_i2c_wr_reg.exit89.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i92.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i92.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i93.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %164 = ptrtoint ptr %ape_addr_mask.i93.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ape_addr_mask.i93.i, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %165) #8
  %167 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #8, !srcloc !129
  %base.i94.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %169 = ptrtoint ptr %base.i94.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i94.i, align 4
  %add.ptr2.i95.i = getelementptr i8, ptr %170, i32 16
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i95.i) #8, !srcloc !130
  %172 = call i32 @llvm.bswap.i32(i32 %171) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i92.i) #8
  br label %iproc_i2c_rd_reg.exit101.i

if.else.i99.i:                                    ; preds = %iproc_i2c_wr_reg.exit89.i
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i97.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %173 = ptrtoint ptr %base7.i97.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base7.i97.i, align 4
  %add.ptr8.i98.i = getelementptr i8, ptr %174, i32 16
  %175 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i98.i) #8, !srcloc !130
  %176 = call i32 @llvm.bswap.i32(i32 %175) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit101.i

iproc_i2c_rd_reg.exit101.i:                       ; preds = %if.else.i99.i, %if.then.i96.i
  %val.0.i100.i = phi i32 [ %172, %if.then.i96.i ], [ %176, %if.else.i99.i ]
  %or34.i = or i32 %val.0.i100.i, 1073741824
  %177 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i103.i = icmp eq ptr %178, null
  br i1 %tobool.not.i103.i, label %do.body6.i111.i, label %if.then.i108.i

if.then.i108.i:                                   ; preds = %iproc_i2c_rd_reg.exit101.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i104.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i104.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i105.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %179 = ptrtoint ptr %ape_addr_mask.i105.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ape_addr_mask.i105.i, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180) #8
  %182 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %184 = call i32 @llvm.bswap.i32(i32 %or34.i) #8
  %base.i106.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %185 = ptrtoint ptr %base.i106.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i106.i, align 4
  %add.ptr4.i107.i = getelementptr i8, ptr %186, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i107.i, i32 %184) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i104.i) #8
  br label %iproc_i2c_wr_reg.exit112.i

do.body6.i111.i:                                  ; preds = %iproc_i2c_rd_reg.exit101.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %187 = call i32 @llvm.bswap.i32(i32 %or34.i) #8
  %base8.i109.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %188 = ptrtoint ptr %base8.i109.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base8.i109.i, align 4
  %add.ptr9.i110.i = getelementptr i8, ptr %189, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i110.i, i32 %187) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit112.i

iproc_i2c_wr_reg.exit112.i:                       ; preds = %do.body6.i111.i, %if.then.i108.i
  %slave35.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 12
  %190 = ptrtoint ptr %slave35.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %slave35.i, align 4
  %slave_cb.i113.i = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %slave_cb.i113.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %slave_cb.i113.i, align 8
  %call.i114.i = call i32 %193(ptr noundef %191, i32 noundef 4, ptr noundef nonnull %value.i) #8
  %194 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i116.i = icmp eq ptr %195, null
  br i1 %tobool.not.i116.i, label %do.body6.i124.i, label %if.then.i121.i

if.then.i121.i:                                   ; preds = %iproc_i2c_wr_reg.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i117.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i117.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i118.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %196 = ptrtoint ptr %ape_addr_mask.i118.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ape_addr_mask.i118.i, align 4
  %198 = call i32 @llvm.bswap.i32(i32 %197) #8
  %199 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %base.i119.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %201 = ptrtoint ptr %base.i119.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base.i119.i, align 4
  %add.ptr4.i120.i = getelementptr i8, ptr %202, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i120.i, i32 32768) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i117.i) #8
  br label %if.end37.i

do.body6.i124.i:                                  ; preds = %iproc_i2c_wr_reg.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %base8.i122.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %203 = ptrtoint ptr %base8.i122.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base8.i122.i, align 4
  %add.ptr9.i123.i = getelementptr i8, ptr %204, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i123.i, i32 32768) #8, !srcloc !129
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body6.i124.i, %if.then.i121.i, %if.end26.i.if.end37.i_crit_edge
  %slave_rx_only38.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 16
  %205 = ptrtoint ptr %slave_rx_only38.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %slave_rx_only38.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool39.not.i = icmp eq i8 %206, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end37.i.bcm_iproc_i2c_slave_isr.exit_crit_edge

if.end37.i.bcm_iproc_i2c_slave_isr.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_slave_isr.exit

if.then40.i:                                      ; preds = %if.end37.i
  %207 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %208, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %idm_lock.i.i.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %ape_addr_mask.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %209 = ptrtoint ptr %ape_addr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %ape_addr_mask.i.i.i, align 4
  %211 = call i32 @llvm.bswap.i32(i32 %210) #8
  %212 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %idm_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #8, !srcloc !129
  %base.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %214 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %215, i32 52
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !130
  %217 = call i32 @llvm.bswap.i32(i32 %216) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %218 = ptrtoint ptr %base7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base7.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %219, i32 52
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #8, !srcloc !130
  %221 = call i32 @llvm.bswap.i32(i32 %220) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i.i

iproc_i2c_rd_reg.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %val.0.i.i.i = phi i32 [ %217, %if.then.i.i.i ], [ %221, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val.0.i.i.i)
  %tobool.not.i126.i = icmp sgt i32 %val.0.i.i.i, -1
  br i1 %tobool.not.i126.i, label %if.end.i.i, label %iproc_i2c_rd_reg.exit.i.i.bcm_iproc_i2c_slave_isr.exit_crit_edge

iproc_i2c_rd_reg.exit.i.i.bcm_iproc_i2c_slave_isr.exit_crit_edge: ; preds = %iproc_i2c_rd_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_slave_isr.exit

if.end.i.i:                                       ; preds = %iproc_i2c_rd_reg.exit.i.i
  %shr.i.i = lshr i32 %val.0.i.i.i, 23
  %and1.i.i = and i32 %shr.i.i, 7
  %222 = zext i32 %and1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1.i.i, label %if.end.i.i.bcm_iproc_i2c_slave_isr.exit_crit_edge [
    i32 5, label %if.end.i.i.do.end.i.i_crit_edge
    i32 7, label %do.end.fold.split.i.i
  ]

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.end.i.i.bcm_iproc_i2c_slave_isr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_slave_isr.exit

do.end.fold.split.i.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.fold.split.i.i, %if.end.i.i.do.end.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.47, %if.end.i.i.do.end.i.i_crit_edge ], [ @.str.48, %do.end.fold.split.i.i ]
  %223 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull %cond.i.i) #11
  call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %data, i1 noundef zeroext false) #8
  call fastcc void @bcm_iproc_i2c_slave_init(ptr noundef %data, i1 noundef zeroext true) #8
  call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %data, i1 noundef zeroext true) #8
  br label %bcm_iproc_i2c_slave_isr.exit

bcm_iproc_i2c_slave_isr.exit:                     ; preds = %do.end.i.i, %if.end.i.i.bcm_iproc_i2c_slave_isr.exit_crit_edge, %iproc_i2c_rd_reg.exit.i.i.bcm_iproc_i2c_slave_isr.exit_crit_edge, %if.end37.i.bcm_iproc_i2c_slave_isr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end:                                           ; preds = %iproc_i2c_rd_reg.exit33
  %and6 = and i32 %val.0.i, 1476395008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call fastcc void @bcm_iproc_i2c_process_m_event(ptr noundef %data, i32 noundef %and6)
  %225 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i36 = icmp eq ptr %226, null
  br i1 %tobool.not.i36, label %do.body6.i, label %if.then.i40

if.then.i40:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i37 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i38 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 5
  %227 = ptrtoint ptr %ape_addr_mask.i38 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ape_addr_mask.i38, align 4
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #8
  %230 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %232 = lshr exact i32 %and6, 24
  %base.i39 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %233 = ptrtoint ptr %base.i39 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %base.i39, align 4
  %add.ptr4.i = getelementptr i8, ptr %234, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %232) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i37) #8
  br label %cleanup

do.body6.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %235 = lshr exact i32 %and6, 24
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %data, i32 0, i32 3
  %236 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %base8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %237, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %235) #8, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.body6.i, %if.then.i40, %if.end.cleanup_crit_edge, %bcm_iproc_i2c_slave_isr.exit
  %retval.0 = phi i32 [ 1, %bcm_iproc_i2c_slave_isr.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then.i40 ], [ 1, %do.body6.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %iproc_i2c, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %0 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %2 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ape_addr_mask.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !130
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %11 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base7.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !130
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %10, %if.then.i ], [ %14, %if.else.i ]
  %and = and i32 %val.0.i, -1073741825
  %masksel = select i1 %enable, i32 1073741824, i32 0
  %val.0 = or i32 %and, %masksel
  %15 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i5 = icmp eq ptr %16, null
  br i1 %tobool.not.i5, label %do.body6.i, label %if.then.i9

if.then.i9:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i7 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %17 = ptrtoint ptr %ape_addr_mask.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ape_addr_mask.i7, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %base.i8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %23 = ptrtoint ptr %base.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i6) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %26 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp eq i32 %num, 2
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %do.end

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %idm_base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ape_addr_mask.i.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !129
  %base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !130
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i

if.else.i.i:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %base7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base7.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %19, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8, !srcloc !130
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i

iproc_i2c_rd_reg.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %17, %if.then.i.i ], [ %21, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val.0.i.i)
  %tobool.not.i = icmp sgt i32 %val.0.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.21) #11
  br label %do.body7

if.end.i:                                         ; preds = %iproc_i2c_rd_reg.exit.i
  %msg1.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msgs, ptr %msg1.i, align 8
  %25 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msgs, align 4
  %conv.i.i = zext i16 %26 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i.i, align 2
  %29 = and i16 %28, 1
  %30 = zext i16 %29 to i32
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv.i = or i32 %shl.i.masked.i, %30
  %31 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i156.i = icmp eq ptr %32, null
  br i1 %tobool.not.i156.i, label %do.body6.i.i, label %if.then.i160.i

if.then.i160.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i157.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i157.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i158.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %ape_addr_mask.i158.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ape_addr_mask.i158.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %38 = shl nuw i32 %conv.i, 24
  %base.i159.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %base.i159.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i159.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %40, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %38) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i157.i) #8
  br label %iproc_i2c_wr_reg.exit.i

do.body6.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %41 = shl nuw i32 %conv.i, 24
  %base8.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %43, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %41) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit.i

iproc_i2c_wr_reg.exit.i:                          ; preds = %do.body6.i.i, %if.then.i160.i
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len.i, align 4
  %46 = tail call i16 @llvm.umin.i16(i16 %45, i16 63) #8
  %cond.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags.i.i, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool8.not.i = icmp eq i16 %49, 0
  br i1 %tobool8.not.i, label %for.cond.preheader.i, label %iproc_i2c_wr_reg.exit.i.if.end22.i_crit_edge

iproc_i2c_wr_reg.exit.i.if.end22.i_crit_edge:     ; preds = %iproc_i2c_wr_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

for.cond.preheader.i:                             ; preds = %iproc_i2c_wr_reg.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp10224.not.i = icmp eq i16 %46, 0
  br i1 %cmp10224.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %idm_lock.i163.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  %ape_addr_mask.i164.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %base.i165.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %iproc_i2c_wr_reg.exit171.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0225.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %iproc_i2c_wr_reg.exit171.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf.i, align 4
  %arrayidx12.i = getelementptr i8, ptr %51, i32 %i.0225.i
  %52 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %53 to i32
  br i1 %cmp, label %for.body.i.if.end20.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end20.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len.i, align 4
  %conv16.i = zext i16 %55 to i32
  %sub.i = add nsw i32 %conv16.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0225.i, i32 %sub.i)
  %cmp17.i = icmp eq i32 %i.0225.i, %sub.i
  %or.i = or i32 %conv13.i, -2147483648
  %spec.select.i = select i1 %cmp17.i, i32 %or.i, i32 %conv13.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i, %for.body.i.if.end20.i_crit_edge
  %val.0.i = phi i32 [ %conv13.i, %for.body.i.if.end20.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %56 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i162.i = icmp eq ptr %57, null
  br i1 %tobool.not.i162.i, label %do.body6.i170.i, label %if.then.i167.i

if.then.i167.i:                                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i163.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %ape_addr_mask.i164.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ape_addr_mask.i164.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %61 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %64 = ptrtoint ptr %base.i165.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i165.i, align 4
  %add.ptr4.i166.i = getelementptr i8, ptr %65, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i166.i, i32 %63) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i163.i) #8
  br label %iproc_i2c_wr_reg.exit171.i

do.body6.i170.i:                                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %67 = ptrtoint ptr %base.i165.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i165.i, align 4
  %add.ptr9.i169.i = getelementptr i8, ptr %68, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i169.i, i32 %66) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit171.i

iproc_i2c_wr_reg.exit171.i:                       ; preds = %do.body6.i170.i, %if.then.i167.i
  %inc.i = add nuw nsw i32 %i.0225.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %iproc_i2c_wr_reg.exit171.i.for.end.i_crit_edge, label %iproc_i2c_wr_reg.exit171.i.for.body.i_crit_edge

iproc_i2c_wr_reg.exit171.i.for.body.i_crit_edge:  ; preds = %iproc_i2c_wr_reg.exit171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

iproc_i2c_wr_reg.exit171.i.for.end.i_crit_edge:   ; preds = %iproc_i2c_wr_reg.exit171.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %iproc_i2c_wr_reg.exit171.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %tx_bytes21.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 13
  %69 = ptrtoint ptr %tx_bytes21.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond.i, ptr %tx_bytes21.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.end.i, %iproc_i2c_wr_reg.exit.i.if.end22.i_crit_edge
  br i1 %cmp, label %if.then24.i, label %if.end22.i.if.end29.i_crit_edge

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end22.i
  %incdec.ptr.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %70 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %incdec.ptr.i, ptr %msg1.i, align 8
  %71 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %incdec.ptr.i, align 4
  %conv.i172.i = zext i16 %72 to i32
  %shl.i173.i = shl nuw nsw i32 %conv.i172.i, 1
  %flags.i174.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %73 = ptrtoint ptr %flags.i174.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags.i174.i, align 2
  %75 = and i16 %74, 1
  %76 = zext i16 %75 to i32
  %shl.i173.masked.i = and i32 %shl.i173.i, 254
  %conv27.i = or i32 %shl.i173.masked.i, %76
  %or28.i = or i32 %conv27.i, -2147483648
  %77 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i177.i = icmp eq ptr %78, null
  br i1 %tobool.not.i177.i, label %do.body6.i185.i, label %if.then.i182.i

if.then.i182.i:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i178.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i178.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i179.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %ape_addr_mask.i179.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ape_addr_mask.i179.i, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  %82 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %84 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #8
  %base.i180.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %base.i180.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i180.i, align 4
  %add.ptr4.i181.i = getelementptr i8, ptr %86, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i181.i, i32 %84) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i178.i) #8
  br label %if.end29.i

do.body6.i185.i:                                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %87 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #8
  %base8.i183.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %88 = ptrtoint ptr %base8.i183.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base8.i183.i, align 4
  %add.ptr9.i184.i = getelementptr i8, ptr %89, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i184.i, i32 %87) #8, !srcloc !129
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body6.i185.i, %if.then.i182.i, %if.end22.i.if.end29.i_crit_edge
  %msg.0.i = phi ptr [ %msgs, %if.end22.i.if.end29.i_crit_edge ], [ %incdec.ptr.i, %if.then.i182.i ], [ %incdec.ptr.i, %do.body6.i185.i ]
  %irq.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 2
  %90 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool30.not.i = icmp eq i32 %91, 0
  br i1 %tobool30.not.i, label %if.end29.i.if.end32.i_crit_edge, label %if.then31.i

if.end29.i.if.end32.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %done.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 9
  %92 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %done.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end29.i.if.end32.i_crit_edge
  %xfer_is_done.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 10
  %93 = ptrtoint ptr %xfer_is_done.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %xfer_is_done.i, align 4
  br i1 %cmp, label %if.end32.i.if.end47.i_crit_edge, label %land.lhs.true34.i

if.end32.i.if.end47.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

land.lhs.true34.i:                                ; preds = %if.end32.i
  %flags35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flags35.i, align 2
  %96 = and i16 %95, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool38.not.i = icmp eq i16 %96, 0
  br i1 %tobool38.not.i, label %land.lhs.true39.i, label %land.lhs.true34.i.if.end47.i_crit_edge

land.lhs.true34.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

land.lhs.true39.i:                                ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  %len40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 2
  %97 = ptrtoint ptr %len40.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %len40.i, align 4
  %conv41.i = zext i16 %98 to i32
  %tx_bytes42.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 13
  %99 = ptrtoint ptr %tx_bytes42.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_bytes42.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %conv41.i)
  %cmp43.i = icmp ult i32 %100, %conv41.i
  %spec.select154.i = select i1 %cmp43.i, i32 402653184, i32 268435456
  br label %if.end47.i

if.end47.i:                                       ; preds = %land.lhs.true39.i, %land.lhs.true34.i.if.end47.i_crit_edge, %if.end32.i.if.end47.i_crit_edge
  %val_intr_en.0.i = phi i32 [ 268435456, %if.end32.i.if.end47.i_crit_edge ], [ 268435456, %land.lhs.true34.i.if.end47.i_crit_edge ], [ %spec.select154.i, %land.lhs.true39.i ]
  %len48.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 2
  %101 = ptrtoint ptr %len48.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %len48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp50.i = icmp eq i16 %102, 0
  br i1 %cmp50.i, label %if.end47.i.if.end86.i_crit_edge, label %if.else.i

if.end47.i.if.end86.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.i

if.else.i:                                        ; preds = %if.end47.i
  %flags54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 1
  %103 = ptrtoint ptr %flags54.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %flags54.i, align 2
  %105 = and i16 %104, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool57.not.i = icmp eq i16 %105, 0
  br i1 %tobool57.not.i, label %if.else.i.if.end86.i_crit_edge, label %if.then58.i

if.else.i.if.end86.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86.i

if.then58.i:                                      ; preds = %if.else.i
  %rx_bytes.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 14
  %106 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %rx_bytes.i, align 4
  %107 = ptrtoint ptr %len48.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %len48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %108)
  %cmp61.i = icmp ugt i16 %108, 63
  %narrow.i = select i1 %cmp61.i, i16 50, i16 %108
  %spec.select226.i = zext i16 %narrow.i to i32
  %109 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 15
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select226.i, ptr %109, align 8
  %111 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i188.i = icmp eq ptr %112, null
  br i1 %tobool.not.i188.i, label %if.else.i196.i, label %if.then.i193.i

if.then.i193.i:                                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i189.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i189.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i190.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %113 = ptrtoint ptr %ape_addr_mask.i190.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ape_addr_mask.i190.i, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #8
  %116 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #8, !srcloc !129
  %base.i191.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %118 = ptrtoint ptr %base.i191.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i191.i, align 4
  %add.ptr2.i192.i = getelementptr i8, ptr %119, i32 12
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i192.i) #8, !srcloc !130
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i189.i) #8
  br label %iproc_i2c_rd_reg.exit198.i

if.else.i196.i:                                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i194.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %122 = ptrtoint ptr %base7.i194.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base7.i194.i, align 4
  %add.ptr8.i195.i = getelementptr i8, ptr %123, i32 12
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i195.i) #8, !srcloc !130
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit198.i

iproc_i2c_rd_reg.exit198.i:                       ; preds = %if.else.i196.i, %if.then.i193.i
  %val.0.i197.i = phi i32 [ %121, %if.then.i193.i ], [ %125, %if.else.i196.i ]
  %and70.i = and i32 %val.0.i197.i, -16129
  %126 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %109, align 8
  %shl.i = shl i32 %127, 8
  %or72.i = or i32 %shl.i, %and70.i
  %128 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i200.i = icmp eq ptr %129, null
  br i1 %tobool.not.i200.i, label %do.body6.i208.i, label %if.then.i205.i

if.then.i205.i:                                   ; preds = %iproc_i2c_rd_reg.exit198.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i201.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i201.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i202.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %130 = ptrtoint ptr %ape_addr_mask.i202.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ape_addr_mask.i202.i, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #8
  %133 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %135 = tail call i32 @llvm.bswap.i32(i32 %or72.i) #8
  %base.i203.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %136 = ptrtoint ptr %base.i203.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i203.i, align 4
  %add.ptr4.i204.i = getelementptr i8, ptr %137, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i204.i, i32 %135) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i201.i) #8
  br label %iproc_i2c_wr_reg.exit209.i

do.body6.i208.i:                                  ; preds = %iproc_i2c_rd_reg.exit198.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %138 = tail call i32 @llvm.bswap.i32(i32 %or72.i) #8
  %base8.i206.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %139 = ptrtoint ptr %base8.i206.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base8.i206.i, align 4
  %add.ptr9.i207.i = getelementptr i8, ptr %140, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i207.i, i32 %138) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit209.i

iproc_i2c_wr_reg.exit209.i:                       ; preds = %do.body6.i208.i, %if.then.i205.i
  %or73.i = or i32 %val_intr_en.0.i, 1073741824
  %141 = ptrtoint ptr %len48.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %len48.i, align 4
  %conv79.i = zext i16 %142 to i32
  %or81.i = select i1 %cmp, i32 -2147478528, i32 -2147479552
  %or82.i = or i32 %or81.i, %conv79.i
  br label %if.end86.i

if.end86.i:                                       ; preds = %iproc_i2c_wr_reg.exit209.i, %if.else.i.if.end86.i_crit_edge, %if.end47.i.if.end86.i_crit_edge
  %val.1.i = phi i32 [ %or82.i, %iproc_i2c_wr_reg.exit209.i ], [ -2147483648, %if.end47.i.if.end86.i_crit_edge ], [ -2147480064, %if.else.i.if.end86.i_crit_edge ]
  %val_intr_en.1.i = phi i32 [ %or73.i, %iproc_i2c_wr_reg.exit209.i ], [ %val_intr_en.0.i, %if.end47.i.if.end86.i_crit_edge ], [ %val_intr_en.0.i, %if.else.i.if.end86.i_crit_edge ]
  %143 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool88.not.i = icmp eq i32 %144, 0
  br i1 %tobool88.not.i, label %if.end86.i.if.end90.i_crit_edge, label %if.then89.i

if.end86.i.if.end90.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then89.i:                                      ; preds = %if.end86.i
  %145 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i211.i = icmp eq ptr %146, null
  br i1 %tobool.not.i211.i, label %do.body6.i219.i, label %if.then.i216.i

if.then.i216.i:                                   ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i212.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i212.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i213.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %147 = ptrtoint ptr %ape_addr_mask.i213.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ape_addr_mask.i213.i, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  %150 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %152 = tail call i32 @llvm.bswap.i32(i32 %val_intr_en.1.i) #8
  %base.i214.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %153 = ptrtoint ptr %base.i214.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i214.i, align 4
  %add.ptr4.i215.i = getelementptr i8, ptr %154, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i215.i, i32 %152) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i212.i) #8
  br label %if.end90.i

do.body6.i219.i:                                  ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %155 = tail call i32 @llvm.bswap.i32(i32 %val_intr_en.1.i) #8
  %base8.i217.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %156 = ptrtoint ptr %base8.i217.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base8.i217.i, align 4
  %add.ptr9.i218.i = getelementptr i8, ptr %157, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i218.i, i32 %155) #8, !srcloc !129
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.body6.i219.i, %if.then.i216.i, %if.end86.i.if.end90.i_crit_edge
  %158 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %159, null
  br i1 %tobool.not.i.i.i, label %do.body6.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %160 = ptrtoint ptr %ape_addr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ape_addr_mask.i.i.i, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #8
  %163 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %165 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #8
  %base.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %166 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %167, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %165) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i.i) #8
  br label %iproc_i2c_wr_reg.exit.i.i

do.body6.i.i.i:                                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %168 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #8
  %base8.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %169 = ptrtoint ptr %base8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base8.i.i.i, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %170, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %168) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit.i.i

iproc_i2c_wr_reg.exit.i.i:                        ; preds = %do.body6.i.i.i, %if.then.i.i.i
  %171 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i221.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i221.i, label %if.else.i223.i, label %if.then.i222.i

if.then.i222.i:                                   ; preds = %iproc_i2c_wr_reg.exit.i.i
  %done.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 9
  %call1.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef 5000) #8
  %173 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i53.i.i = icmp eq ptr %174, null
  br i1 %tobool.not.i53.i.i, label %do.body6.i61.i.i, label %if.then.i58.i.i

if.then.i58.i.i:                                  ; preds = %if.then.i222.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i54.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i54.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i55.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %175 = ptrtoint ptr %ape_addr_mask.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ape_addr_mask.i55.i.i, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #8
  %178 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i56.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %180 = ptrtoint ptr %base.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i56.i.i, align 4
  %add.ptr4.i57.i.i = getelementptr i8, ptr %181, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i57.i.i, i32 0) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i54.i.i) #8
  br label %iproc_i2c_wr_reg.exit62.i.i

do.body6.i61.i.i:                                 ; preds = %if.then.i222.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i59.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %182 = ptrtoint ptr %base8.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base8.i59.i.i, align 4
  %add.ptr9.i60.i.i = getelementptr i8, ptr %183, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i60.i.i, i32 0) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit62.i.i

iproc_i2c_wr_reg.exit62.i.i:                      ; preds = %do.body6.i61.i.i, %if.then.i58.i.i
  %184 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i64.i.i = icmp eq ptr %185, null
  br i1 %tobool.not.i64.i.i, label %if.else.i.i.i, label %if.then.i68.i.i

if.then.i68.i.i:                                  ; preds = %iproc_i2c_wr_reg.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i65.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i65.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i66.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %186 = ptrtoint ptr %ape_addr_mask.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ape_addr_mask.i66.i.i, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #8
  %189 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #8, !srcloc !129
  %base.i67.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %191 = ptrtoint ptr %base.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i67.i.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %192, i32 56
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i65.i.i) #8
  br label %if.end17.i.i

if.else.i.i.i:                                    ; preds = %iproc_i2c_wr_reg.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %194 = ptrtoint ptr %base7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base7.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %195, i32 56
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %if.end17.i.i

if.else.i223.i:                                   ; preds = %iproc_i2c_wr_reg.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %197 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %197, 5000
  %idm_lock.i71.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  %ape_addr_mask.i72.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %base.i73.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %if.else.i223.i
  %198 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i70.i.i = icmp eq ptr %199, null
  br i1 %tobool.not.i70.i.i, label %if.else.i78.i.i, label %if.then.i75.i.i

if.then.i75.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i71.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %200 = ptrtoint ptr %ape_addr_mask.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ape_addr_mask.i72.i.i, align 4
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #8
  %203 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #8, !srcloc !129
  %205 = ptrtoint ptr %base.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i73.i.i, align 4
  %add.ptr2.i74.i.i = getelementptr i8, ptr %206, i32 60
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i74.i.i) #8, !srcloc !130
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i71.i.i) #8
  br label %iproc_i2c_rd_reg.exit80.i.i

if.else.i78.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %base.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i73.i.i, align 4
  %add.ptr8.i77.i.i = getelementptr i8, ptr %210, i32 60
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i77.i.i) #8, !srcloc !130
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit80.i.i

iproc_i2c_rd_reg.exit80.i.i:                      ; preds = %if.else.i78.i.i, %if.then.i75.i.i
  %val.0.i79.i.i = phi i32 [ %208, %if.then.i75.i.i ], [ %212, %if.else.i78.i.i ]
  %and.i.i = and i32 %val.0.i79.i.i, 1476395008
  tail call fastcc void @bcm_iproc_i2c_process_m_event(ptr noundef %1, i32 noundef %and.i.i) #8
  %213 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i82.i.i = icmp eq ptr %214, null
  br i1 %tobool.not.i82.i.i, label %do.body6.i90.i.i, label %if.then.i87.i.i

if.then.i87.i.i:                                  ; preds = %iproc_i2c_rd_reg.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i71.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %215 = ptrtoint ptr %ape_addr_mask.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %ape_addr_mask.i72.i.i, align 4
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #8
  %218 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %217) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %220 = lshr exact i32 %and.i.i, 24
  %221 = ptrtoint ptr %base.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base.i73.i.i, align 4
  %add.ptr4.i86.i.i = getelementptr i8, ptr %222, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i86.i.i, i32 %220) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i71.i.i) #8
  br label %iproc_i2c_wr_reg.exit91.i.i

do.body6.i90.i.i:                                 ; preds = %iproc_i2c_rd_reg.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %223 = lshr exact i32 %and.i.i, 24
  %224 = ptrtoint ptr %base.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base.i73.i.i, align 4
  %add.ptr9.i89.i.i = getelementptr i8, ptr %225, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i89.i.i, i32 %223) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit91.i.i

iproc_i2c_wr_reg.exit91.i.i:                      ; preds = %do.body6.i90.i.i, %if.then.i87.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %iproc_i2c_wr_reg.exit91.i.i.land.lhs.true.i.i_crit_edge, label %do.end.i.i

iproc_i2c_wr_reg.exit91.i.i.land.lhs.true.i.i_crit_edge: ; preds = %iproc_i2c_wr_reg.exit91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

do.end.i.i:                                       ; preds = %iproc_i2c_wr_reg.exit91.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !138
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 799, i32 noundef 0) #8
  %call.i.i.i = tail call i32 @__cond_resched() #8
  %227 = ptrtoint ptr %xfer_is_done.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %xfer_is_done.i, align 4
  %tobool15.not.i.i = icmp eq i32 %228, 0
  br i1 %tobool15.not.i.i, label %do.end.i.i.do.body.i.i_crit_edge, label %do.end.i.i.if.end25.i.i_crit_edge

do.end.i.i.if.end25.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i68.i.i
  %229 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %irq.i, align 8
  tail call void @synchronize_irq(i32 noundef %230) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool18.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end17.i.i.land.lhs.true.i.i_crit_edge, label %if.end17.i.i.if.end25.i.i_crit_edge

if.end17.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

if.end17.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end17.i.i.land.lhs.true.i.i_crit_edge, %iproc_i2c_wr_reg.exit91.i.i.land.lhs.true.i.i_crit_edge
  %231 = ptrtoint ptr %xfer_is_done.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %xfer_is_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool20.not.i.i = icmp eq i32 %232, 0
  br i1 %tobool20.not.i.i, label %do.end24.i.i, label %land.lhs.true.i.i.if.end25.i.i_crit_edge

land.lhs.true.i.i.if.end25.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.end24.i.i:                                     ; preds = %land.lhs.true.i.i
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.23) #11
  %235 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i93.i.i = icmp eq ptr %236, null
  br i1 %tobool.not.i93.i.i, label %do.body6.i101.i.i, label %if.then.i98.i.i

if.then.i98.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i94.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i94.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i95.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %237 = ptrtoint ptr %ape_addr_mask.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ape_addr_mask.i95.i.i, align 4
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #8
  %240 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %239) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i96.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %242 = ptrtoint ptr %base.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base.i96.i.i, align 4
  %add.ptr4.i97.i.i = getelementptr i8, ptr %243, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i97.i.i, i32 192) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i94.i.i) #8
  br label %do.body7

do.body6.i101.i.i:                                ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i99.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %244 = ptrtoint ptr %base8.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base8.i99.i.i, align 4
  %add.ptr9.i100.i.i = getelementptr i8, ptr %245, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i100.i.i, i32 192) #8, !srcloc !129
  br label %do.body7

if.end25.i.i:                                     ; preds = %land.lhs.true.i.i.if.end25.i.i_crit_edge, %if.end17.i.i.if.end25.i.i_crit_edge, %do.end.i.i.if.end25.i.i_crit_edge
  %call26.i.i = tail call fastcc i32 @bcm_iproc_i2c_check_status(ptr noundef %1, ptr noundef %msg.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end25.i.i.cleanup_crit_edge, label %if.then28.i.i

if.end25.i.i.cleanup_crit_edge:                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28.i.i:                                    ; preds = %if.end25.i.i
  %246 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i104.i.i = icmp eq ptr %247, null
  br i1 %tobool.not.i104.i.i, label %do.body6.i112.i.i, label %if.then.i109.i.i

if.then.i109.i.i:                                 ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i105.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i105.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i106.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %248 = ptrtoint ptr %ape_addr_mask.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %ape_addr_mask.i106.i.i, align 4
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #8
  %251 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i107.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %253 = ptrtoint ptr %base.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %base.i107.i.i, align 4
  %add.ptr4.i108.i.i = getelementptr i8, ptr %254, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i108.i.i, i32 192) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i105.i.i) #8
  br label %do.body7

do.body6.i112.i.i:                                ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i110.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %255 = ptrtoint ptr %base8.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base8.i110.i.i, align 4
  %add.ptr9.i111.i.i = getelementptr i8, ptr %256, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i111.i.i, i32 192) #8, !srcloc !129
  br label %do.body7

do.body7:                                         ; preds = %do.body6.i112.i.i, %if.then.i109.i.i, %do.body6.i101.i.i, %if.then.i98.i.i, %do.end.i
  %retval.0.i26.ph = phi i32 [ %call26.i.i, %do.body6.i112.i.i ], [ %call26.i.i, %if.then.i109.i.i ], [ -110, %do.body6.i101.i.i ], [ -110, %if.then.i98.i.i ], [ -16, %do.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_xfer.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_xfer, %cleanup)) #8
          to label %if.then13 [label %cleanup], !srcloc !139

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %257 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_xfer.__UNIQUE_ID_ddebug299, ptr noundef %258, ptr noundef nonnull @.str.20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body7, %if.end25.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %retval.0.i26.ph, %if.then13 ], [ %num, %if.end25.i.i.cleanup_crit_edge ], [ %retval.0.i26.ph, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_iproc_i2c_functionality(ptr nocapture noundef readonly %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo, align 8
  %reg_slave = getelementptr inbounds %struct.i2c_algorithm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg_slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_slave, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, i32 251592713, i32 251592745
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_reg_slave(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %slave, align 8
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %slave, ptr %slave1, align 4
  %slave_rx_tasklet = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %3 to i32
  tail call void @tasklet_init(ptr noundef %slave_rx_tasklet, ptr noundef nonnull @slave_rx_tasklet_fn, i32 noundef %10) #8
  tail call fastcc void @bcm_iproc_i2c_slave_init(ptr noundef %3, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_unreg_slave(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %7) #8
  %slave_rx_tasklet = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %slave_rx_tasklet) #8
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ape_addr_mask.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %13 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 56
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %20, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %18, %if.then.i ], [ %22, %if.else.i ]
  %and = and i32 %val.0.i, -132120577
  %23 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i23 = icmp eq ptr %24, null
  br i1 %tobool.not.i23, label %do.body6.i, label %if.then.i27

if.then.i27:                                      ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i24 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i25 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %ape_addr_mask.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ape_addr_mask.i25, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %28 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %base.i26 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i26, align 4
  %add.ptr4.i = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %30) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i24) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %35, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %33) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i27
  %36 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i29 = icmp eq ptr %37, null
  br i1 %tobool.not.i29, label %if.else.i37, label %if.then.i34

if.then.i34:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i30 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i31 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %38 = ptrtoint ptr %ape_addr_mask.i31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ape_addr_mask.i31, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !129
  %base.i32 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %base.i32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i32, align 4
  %add.ptr2.i33 = getelementptr i8, ptr %44, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i33) #8, !srcloc !130
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i30) #8
  br label %iproc_i2c_rd_reg.exit39

if.else.i37:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i35 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %base7.i35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base7.i35, align 4
  %add.ptr8.i36 = getelementptr i8, ptr %48, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i36) #8, !srcloc !130
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit39

iproc_i2c_rd_reg.exit39:                          ; preds = %if.else.i37, %if.then.i34
  %val.0.i38 = phi i32 [ %46, %if.then.i34 ], [ %50, %if.else.i37 ]
  %and4 = and i32 %val.0.i38, 2147483647
  %51 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i41 = icmp eq ptr %52, null
  br i1 %tobool.not.i41, label %do.body6.i49, label %if.then.i46

if.then.i46:                                      ; preds = %iproc_i2c_rd_reg.exit39
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i42 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i43 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %53 = ptrtoint ptr %ape_addr_mask.i43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ape_addr_mask.i43, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %56 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %58 = tail call i32 @llvm.bswap.i32(i32 %and4) #8
  %base.i44 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %59 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i44, align 4
  %add.ptr4.i45 = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i45, i32 %58) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i42) #8
  br label %iproc_i2c_wr_reg.exit50

do.body6.i49:                                     ; preds = %iproc_i2c_rd_reg.exit39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %61 = tail call i32 @llvm.bswap.i32(i32 %and4) #8
  %base8.i47 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %62 = ptrtoint ptr %base8.i47 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base8.i47, align 4
  %add.ptr9.i48 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i48, i32 %61) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit50

iproc_i2c_wr_reg.exit50:                          ; preds = %do.body6.i49, %if.then.i46
  %64 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i52 = icmp eq ptr %65, null
  br i1 %tobool.not.i52, label %do.body6.i60, label %if.then.i57

if.then.i57:                                      ; preds = %iproc_i2c_wr_reg.exit50
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i53 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i54 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %66 = ptrtoint ptr %ape_addr_mask.i54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ape_addr_mask.i54, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %69 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i55 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i55, align 4
  %add.ptr4.i56 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i56, i32 192) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i53) #8
  br label %iproc_i2c_wr_reg.exit61

do.body6.i60:                                     ; preds = %iproc_i2c_wr_reg.exit50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i58 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %73 = ptrtoint ptr %base8.i58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base8.i58, align 4
  %add.ptr9.i59 = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i59, i32 192) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit61

iproc_i2c_wr_reg.exit61:                          ; preds = %do.body6.i60, %if.then.i57
  %75 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i63 = icmp eq ptr %76, null
  br i1 %tobool.not.i63, label %do.body6.i71, label %if.then.i68

if.then.i68:                                      ; preds = %iproc_i2c_wr_reg.exit61
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i64 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i65 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %77 = ptrtoint ptr %ape_addr_mask.i65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ape_addr_mask.i65, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %80 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i66 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %82 = ptrtoint ptr %base.i66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i66, align 4
  %add.ptr4.i67 = getelementptr i8, ptr %83, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i67, i32 57351) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i64) #8
  br label %iproc_i2c_wr_reg.exit72

do.body6.i71:                                     ; preds = %iproc_i2c_wr_reg.exit61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i69 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %84 = ptrtoint ptr %base8.i69 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base8.i69, align 4
  %add.ptr9.i70 = getelementptr i8, ptr %85, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i70, i32 57351) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit72

iproc_i2c_wr_reg.exit72:                          ; preds = %do.body6.i71, %if.then.i68
  %86 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %slave1, align 4
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %88) #8
  br label %cleanup

cleanup:                                          ; preds = %iproc_i2c_wr_reg.exit72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %iproc_i2c_wr_reg.exit72 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_process_m_event(ptr noundef %iproc_i2c, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %msg1.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 11
  %0 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1.i, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %3 to i32
  %tx_bytes2.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 13
  %4 = ptrtoint ptr %tx_bytes2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes2.i, align 8
  %sub.i = sub i32 %conv.i, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp453.not.i = icmp eq i32 %6, 0
  br i1 %cmp453.not.i, label %if.then.bcm_iproc_i2c_send.exit_crit_edge, label %for.body.lr.ph.i

if.then.bcm_iproc_i2c_send.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_send.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %irq.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 2
  %idm_base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %idm_lock.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  %ape_addr_mask.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %iproc_i2c_wr_reg.exit52.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %iproc_i2c_wr_reg.exit52.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %tx_bytes2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_bytes2.i, align 8
  %add.i = add i32 %8, %i.054.i
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %10, i32 %add.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv7.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len.i, align 4
  %conv9.i = zext i16 %14 to i32
  %sub10.i = add nsw i32 %conv9.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub10.i)
  %cmp11.i = icmp eq i32 %add.i, %sub10.i
  br i1 %cmp11.i, label %if.then.i, label %for.body.i.if.end15.i_crit_edge

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %for.body.i
  %or.i = or i32 %conv7.i, -2147483648
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.i.if.end15.i_crit_edge, label %if.then13.i

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.then.i
  %17 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ape_addr_mask.i.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !129
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %25, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !130
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i

if.else.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %29, i32 56
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8, !srcloc !130
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i

iproc_i2c_rd_reg.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %27, %if.then.i.i ], [ %31, %if.else.i.i ]
  %and.i = and i32 %val.0.i.i, -134217729
  %32 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i37.i = icmp eq ptr %33, null
  br i1 %tobool.not.i37.i, label %do.body6.i.i, label %if.then.i41.i

if.then.i41.i:                                    ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ape_addr_mask.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %37 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %39) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %if.end15.i

do.body6.i.i:                                     ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %42) #8, !srcloc !129
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.body6.i.i, %if.then.i41.i, %if.then.i.if.end15.i_crit_edge, %for.body.i.if.end15.i_crit_edge
  %val.0.i = phi i32 [ %or.i, %if.then.i.if.end15.i_crit_edge ], [ %conv7.i, %for.body.i.if.end15.i_crit_edge ], [ %or.i, %if.then.i41.i ], [ %or.i, %do.body6.i.i ]
  %45 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i43.i = icmp eq ptr %46, null
  br i1 %tobool.not.i43.i, label %do.body6.i51.i, label %if.then.i48.i

if.then.i48.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ape_addr_mask.i.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %idm_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i47.i = getelementptr i8, ptr %54, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i47.i, i32 %52) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_wr_reg.exit52.i

do.body6.i51.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i50.i = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i50.i, i32 %55) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit52.i

iproc_i2c_wr_reg.exit52.i:                        ; preds = %do.body6.i51.i, %if.then.i48.i
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %iproc_i2c_wr_reg.exit52.i.bcm_iproc_i2c_send.exit_crit_edge, label %iproc_i2c_wr_reg.exit52.i.for.body.i_crit_edge

iproc_i2c_wr_reg.exit52.i.for.body.i_crit_edge:   ; preds = %iproc_i2c_wr_reg.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

iproc_i2c_wr_reg.exit52.i.bcm_iproc_i2c_send.exit_crit_edge: ; preds = %iproc_i2c_wr_reg.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_send.exit

bcm_iproc_i2c_send.exit:                          ; preds = %iproc_i2c_wr_reg.exit52.i.bcm_iproc_i2c_send.exit_crit_edge, %if.then.bcm_iproc_i2c_send.exit_crit_edge
  %58 = ptrtoint ptr %tx_bytes2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_bytes2.i, align 8
  %add17.i = add i32 %59, %6
  store i32 %add17.i, ptr %tx_bytes2.i, align 8
  br label %if.end

if.end:                                           ; preds = %bcm_iproc_i2c_send.exit, %entry.if.end_crit_edge
  %and1 = and i32 %status, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %msg1.i18 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 11
  %60 = ptrtoint ptr %msg1.i18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg1.i18, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 14
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_bytes.i.i, align 4
  %64 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len.i.i, align 4
  %conv14.i.i = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv14.i.i)
  %cmp15.i.i = icmp ult i32 %63, %conv14.i.i
  br i1 %cmp15.i.i, label %while.body.lr.ph.i.i, label %if.then3.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge

if.then3.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_read_valid_bytes.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then3
  %idm_base.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %idm_lock.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  %ape_addr_mask.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %base.i.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %66 = ptrtoint ptr %idm_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %idm_base.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %ape_addr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ape_addr_mask.i.i.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = ptrtoint ptr %idm_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %idm_base.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #8, !srcloc !129
  %73 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %74, i32 68
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !130
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %78, i32 68
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #8, !srcloc !130
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i.i

iproc_i2c_rd_reg.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %val.0.i.i.i = phi i32 [ %76, %if.then.i.i.i ], [ %80, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %val.0.i.i.i)
  %tobool.not.i.i19 = icmp ult i32 %val.0.i.i.i, 1073741824
  br i1 %tobool.not.i.i19, label %iproc_i2c_rd_reg.exit.i.i.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge, label %if.end.i.i

iproc_i2c_rd_reg.exit.i.i.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge: ; preds = %iproc_i2c_rd_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_read_valid_bytes.exit.i

if.end.i.i:                                       ; preds = %iproc_i2c_rd_reg.exit.i.i
  %conv5.i.i = trunc i32 %val.0.i.i.i to i8
  %81 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buf.i.i, align 4
  %83 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_bytes.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv5.i.i, ptr %arrayidx.i.i, align 1
  %86 = load i32, ptr %rx_bytes.i.i, align 4
  %inc.i.i = add i32 %86, 1
  store i32 %inc.i.i, ptr %rx_bytes.i.i, align 4
  %87 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %88 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge

if.end.i.i.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_read_valid_bytes.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

bcm_iproc_i2c_read_valid_bytes.exit.i:            ; preds = %if.end.i.i.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge, %iproc_i2c_rd_reg.exit.i.i.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge, %if.then3.bcm_iproc_i2c_read_valid_bytes.exit.i_crit_edge
  %89 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len.i.i, align 4
  %conv.i20 = zext i16 %90 to i32
  %91 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_bytes.i.i, align 4
  %sub.i21 = sub i32 %conv.i20, %92
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %conv.i20)
  %cmp.i = icmp eq i32 %92, %conv.i20
  br i1 %cmp.i, label %if.then.i24, label %if.else.i

if.then.i24:                                      ; preds = %bcm_iproc_i2c_read_valid_bytes.exit.i
  %irq.i22 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 2
  %93 = ptrtoint ptr %irq.i22 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %irq.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i23 = icmp eq i32 %94, 0
  br i1 %tobool.not.i23, label %if.then.i24.if.end4_crit_edge, label %if.then3.i

if.then.i24.if.end4_crit_edge:                    ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3.i:                                       ; preds = %if.then.i24
  %idm_base.i.i25 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %95 = ptrtoint ptr %idm_base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %idm_base.i.i25, align 8
  %tobool.not.i28.i = icmp eq ptr %96, null
  br i1 %tobool.not.i28.i, label %if.else.i.i32, label %if.then.i.i30

if.then.i.i30:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i.i26 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i.i26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i.i27 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %97 = ptrtoint ptr %ape_addr_mask.i.i27 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ape_addr_mask.i.i27, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #8
  %100 = ptrtoint ptr %idm_base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %idm_base.i.i25, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #8, !srcloc !129
  %base.i.i28 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %102 = ptrtoint ptr %base.i.i28 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i28, align 4
  %add.ptr2.i.i29 = getelementptr i8, ptr %103, i32 56
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i29) #8, !srcloc !130
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i26) #8
  br label %iproc_i2c_rd_reg.exit.i35

if.else.i.i32:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %106 = ptrtoint ptr %base7.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base7.i.i, align 4
  %add.ptr8.i.i31 = getelementptr i8, ptr %107, i32 56
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i31) #8, !srcloc !130
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i35

iproc_i2c_rd_reg.exit.i35:                        ; preds = %if.else.i.i32, %if.then.i.i30
  %val.0.i.i33 = phi i32 [ %105, %if.then.i.i30 ], [ %109, %if.else.i.i32 ]
  %and.i34 = and i32 %val.0.i.i33, -1073741825
  %110 = ptrtoint ptr %idm_base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %idm_base.i.i25, align 8
  %tobool.not.i31.i = icmp eq ptr %111, null
  br i1 %tobool.not.i31.i, label %do.body6.i.i38, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %iproc_i2c_rd_reg.exit.i35
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i32.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i32.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i33.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %112 = ptrtoint ptr %ape_addr_mask.i33.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ape_addr_mask.i33.i, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %115 = ptrtoint ptr %idm_base.i.i25 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %idm_base.i.i25, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %117 = tail call i32 @llvm.bswap.i32(i32 %and.i34) #8
  %base.i34.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %118 = ptrtoint ptr %base.i34.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i34.i, align 4
  %add.ptr4.i.i36 = getelementptr i8, ptr %119, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i36, i32 %117) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i32.i) #8
  br label %if.end4

do.body6.i.i38:                                   ; preds = %iproc_i2c_rd_reg.exit.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %120 = tail call i32 @llvm.bswap.i32(i32 %and.i34) #8
  %base8.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %121 = ptrtoint ptr %base8.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base8.i.i, align 4
  %add.ptr9.i.i37 = getelementptr i8, ptr %122, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i37, i32 %120) #8, !srcloc !129
  br label %if.end4

if.else.i:                                        ; preds = %bcm_iproc_i2c_read_valid_bytes.exit.i
  %thld_bytes.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 15
  %123 = ptrtoint ptr %thld_bytes.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %thld_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i21, i32 %124)
  %cmp4.i = icmp ult i32 %sub.i21, %124
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i.if.end4_crit_edge

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then6.i:                                       ; preds = %if.else.i
  %idm_base.i37.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %125 = ptrtoint ptr %idm_base.i37.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %idm_base.i37.i, align 8
  %tobool.not.i38.i = icmp eq ptr %126, null
  br i1 %tobool.not.i38.i, label %if.else.i46.i, label %if.then.i43.i

if.then.i43.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i39.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i39.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i40.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %127 = ptrtoint ptr %ape_addr_mask.i40.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ape_addr_mask.i40.i, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #8
  %130 = ptrtoint ptr %idm_base.i37.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %idm_base.i37.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #8, !srcloc !129
  %base.i41.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %132 = ptrtoint ptr %base.i41.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i41.i, align 4
  %add.ptr2.i42.i = getelementptr i8, ptr %133, i32 12
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i42.i) #8, !srcloc !130
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i39.i) #8
  br label %iproc_i2c_rd_reg.exit49.i

if.else.i46.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i44.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %136 = ptrtoint ptr %base7.i44.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base7.i44.i, align 4
  %add.ptr8.i45.i = getelementptr i8, ptr %137, i32 12
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i45.i) #8, !srcloc !130
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit49.i

iproc_i2c_rd_reg.exit49.i:                        ; preds = %if.else.i46.i, %if.then.i43.i
  %val.0.i47.i = phi i32 [ %135, %if.then.i43.i ], [ %139, %if.else.i46.i ]
  %and8.i = and i32 %val.0.i47.i, -16129
  %shl.i = shl i32 %sub.i21, 8
  %or.i39 = or i32 %and8.i, %shl.i
  %140 = ptrtoint ptr %idm_base.i37.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %idm_base.i37.i, align 8
  %tobool.not.i51.i = icmp eq ptr %141, null
  br i1 %tobool.not.i51.i, label %do.body6.i59.i, label %if.then.i56.i

if.then.i56.i:                                    ; preds = %iproc_i2c_rd_reg.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i52.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i52.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i53.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %142 = ptrtoint ptr %ape_addr_mask.i53.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ape_addr_mask.i53.i, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #8
  %145 = ptrtoint ptr %idm_base.i37.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %idm_base.i37.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %147 = tail call i32 @llvm.bswap.i32(i32 %or.i39) #8
  %base.i54.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %148 = ptrtoint ptr %base.i54.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i54.i, align 4
  %add.ptr4.i55.i = getelementptr i8, ptr %149, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i55.i, i32 %147) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i52.i) #8
  br label %iproc_i2c_wr_reg.exit61.i

do.body6.i59.i:                                   ; preds = %iproc_i2c_rd_reg.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %150 = tail call i32 @llvm.bswap.i32(i32 %or.i39) #8
  %base8.i57.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %151 = ptrtoint ptr %base8.i57.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base8.i57.i, align 4
  %add.ptr9.i58.i = getelementptr i8, ptr %152, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i58.i, i32 %150) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit61.i

iproc_i2c_wr_reg.exit61.i:                        ; preds = %do.body6.i59.i, %if.then.i56.i
  %153 = ptrtoint ptr %thld_bytes.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %sub.i21, ptr %thld_bytes.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %iproc_i2c_wr_reg.exit61.i, %if.else.i.if.end4_crit_edge, %do.body6.i.i38, %if.then.i35.i, %if.then.i24.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %and5 = and i32 %status, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %if.then7

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  %xfer_is_done = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 10
  %154 = ptrtoint ptr %xfer_is_done to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %xfer_is_done, align 4
  %irq = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 2
  %155 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool8.not = icmp eq i32 %156, 0
  br i1 %tobool8.not, label %if.then7.if.end11_crit_edge, label %if.then9

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 9
  tail call void @complete(ptr noundef %done) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_iproc_i2c_check_status(ptr noundef %iproc_i2c, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %0 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %2 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ape_addr_mask.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %5 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %11 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %12, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %10, %if.then.i ], [ %14, %if.else.i ]
  %shr = lshr i32 %val.0.i, 25
  %and = and i32 %shr, 7
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and, label %do.body106 [
    i32 0, label %iproc_i2c_rd_reg.exit.cleanup_crit_edge
    i32 1, label %do.body
    i32 2, label %do.body7
    i32 3, label %do.body27
    i32 4, label %do.body47
    i32 5, label %do.body67
    i32 6, label %do.body87
  ]

iproc_i2c_rd_reg.exit.cleanup_crit_edge:          ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %cleanup)) #8
          to label %if.then [label %cleanup], !srcloc !139

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iproc_i2c, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.26) #8
  br label %cleanup

do.body7:                                         ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %cleanup)) #8
          to label %if.then21 [label %cleanup], !srcloc !139

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iproc_i2c, align 8
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %msg, align 4
  %conv = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug291, ptr noundef %19, ptr noundef nonnull @.str.27, i32 noundef %conv) #8
  br label %cleanup

do.body27:                                        ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %cleanup)) #8
          to label %if.then41 [label %cleanup], !srcloc !139

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iproc_i2c, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug292, ptr noundef %23, ptr noundef nonnull @.str.28) #8
  br label %cleanup

do.body47:                                        ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %cleanup)) #8
          to label %if.then61 [label %cleanup], !srcloc !139

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iproc_i2c, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug293, ptr noundef %25, ptr noundef nonnull @.str.29) #8
  br label %cleanup

do.body67:                                        ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %cleanup)) #8
          to label %if.then81 [label %cleanup], !srcloc !139

if.then81:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iproc_i2c, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug294, ptr noundef %27, ptr noundef nonnull @.str.30) #8
  br label %cleanup

do.body87:                                        ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %cleanup)) #8
          to label %if.then101 [label %cleanup], !srcloc !139

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iproc_i2c, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug295, ptr noundef %29, ptr noundef nonnull @.str.31) #8
  br label %cleanup

do.body106:                                       ; preds = %iproc_i2c_rd_reg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_iproc_i2c_check_status, %do.end124)) #8
          to label %if.then120 [label %do.end124], !srcloc !139

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %iproc_i2c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iproc_i2c, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug296, ptr noundef %31, ptr noundef nonnull @.str.32, i32 noundef %and) #8
  br label %do.end124

do.end124:                                        ; preds = %if.then120, %do.body106
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %iproc_i2c, i1 noundef zeroext false)
  tail call fastcc void @bcm_iproc_i2c_init(ptr noundef %iproc_i2c)
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %iproc_i2c, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %if.then101, %do.body87, %if.then81, %do.body67, %if.then61, %do.body47, %if.then41, %do.body27, %if.then21, %do.body7, %if.then, %do.body, %iproc_i2c_rd_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end124 ], [ %and, %iproc_i2c_rd_reg.exit.cleanup_crit_edge ], [ -11, %if.then ], [ -6, %if.then21 ], [ -6, %if.then41 ], [ -110, %if.then61 ], [ -6, %if.then81 ], [ -110, %if.then101 ], [ -11, %do.body ], [ -6, %do.body7 ], [ -6, %do.body27 ], [ -110, %do.body47 ], [ -6, %do.body67 ], [ -110, %do.body87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slave_rx_tasklet_fn(i32 noundef %data) #2 align 64 {
entry:
  %rx_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rx_data.i) #8
  %1 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rx_data.i, align 1, !annotation !127
  %idm_base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %idm_lock.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  %ape_addr_mask.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %base.i.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %rx_start_rcvd21.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 17
  %slave_rx_only.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 16
  %slave27.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 12
  %slave_read_complete.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 18
  br label %while.body.i

while.body.i:                                     ; preds = %if.end41.i.while.body.i_crit_edge, %entry
  %rx_bytes.064.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end41.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ape_addr_mask.i.i, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idm_base.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !129
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %10, i32 76
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !130
  %12 = call i32 @llvm.bswap.i32(i32 %11) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_rd_reg.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %14, i32 76
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8, !srcloc !130
  %16 = call i32 @llvm.bswap.i32(i32 %15) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit.i

iproc_i2c_rd_reg.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %12, %if.then.i.i ], [ %16, %if.else.i.i ]
  %shr.i = lshr i32 %val.0.i.i, 30
  %conv3.i = trunc i32 %val.0.i.i to i8
  %17 = ptrtoint ptr %rx_data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %rx_data.i, align 1
  %18 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr.i, label %iproc_i2c_rd_reg.exit.i.if.else31.i_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %land.lhs.true.i
    i32 3, label %land.lhs.true20.i
  ]

iproc_i2c_rd_reg.exit.i.if.else31.i_crit_edge:    ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else31.i

if.then.i:                                        ; preds = %iproc_i2c_rd_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %slave27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave27.i, align 4
  %slave_cb.i.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %slave_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave_cb.i.i, align 8
  %call.i.i = call i32 %22(ptr noundef %20, i32 noundef 1, ptr noundef nonnull %rx_data.i) #8
  %23 = ptrtoint ptr %rx_start_rcvd21.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %rx_start_rcvd21.i, align 1
  %24 = ptrtoint ptr %slave_read_complete.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %slave_read_complete.i, align 2
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %iproc_i2c_rd_reg.exit.i
  %25 = ptrtoint ptr %rx_start_rcvd21.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rx_start_rcvd21.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else31.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.else31.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else31.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %slave27.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave27.i, align 4
  %slave_cb.i58.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %slave_cb.i58.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave_cb.i58.i, align 8
  %call.i59.i = call i32 %30(ptr noundef %28, i32 noundef 3, ptr noundef nonnull %rx_data.i) #8
  br label %if.end41.i

land.lhs.true20.i:                                ; preds = %iproc_i2c_rd_reg.exit.i
  %31 = ptrtoint ptr %rx_start_rcvd21.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_start_rcvd21.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not.i = icmp eq i8 %32, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.if.else31.i_crit_edge, label %if.then24.i

land.lhs.true20.i.if.else31.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else31.i

if.then24.i:                                      ; preds = %land.lhs.true20.i
  %33 = ptrtoint ptr %slave_rx_only.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %slave_rx_only.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not.i = icmp eq i8 %34, 0
  br i1 %tobool25.not.i, label %if.then24.i.if.end.i_crit_edge, label %if.then26.i

if.then24.i.if.end.i_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then26.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %slave27.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave27.i, align 4
  %slave_cb.i60.i = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %slave_cb.i60.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slave_cb.i60.i, align 8
  %call.i61.i = call i32 %38(ptr noundef %36, i32 noundef 3, ptr noundef nonnull %rx_data.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then26.i, %if.then24.i.if.end.i_crit_edge
  %39 = ptrtoint ptr %slave27.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slave27.i, align 4
  %slave_cb.i62.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %slave_cb.i62.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave_cb.i62.i, align 8
  %call.i63.i = call i32 %42(ptr noundef %40, i32 noundef 4, ptr noundef nonnull %rx_data.i) #8
  br label %if.end41.i

if.else31.i:                                      ; preds = %land.lhs.true20.i.if.else31.i_crit_edge, %land.lhs.true.i.if.else31.i_crit_edge, %iproc_i2c_rd_reg.exit.i.if.else31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %val.0.i.i)
  %cmp33.i = icmp ult i32 %val.0.i.i, 1073741824
  br i1 %cmp33.i, label %if.then35.i, label %if.else31.i.if.end41.i_crit_edge

if.else31.i.if.end41.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %rx_start_rcvd21.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %rx_start_rcvd21.i, align 1
  %44 = ptrtoint ptr %slave_read_complete.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %slave_read_complete.i, align 2
  br label %bcm_iproc_i2c_slave_read.exit

if.end41.i:                                       ; preds = %if.else31.i.if.end41.i_crit_edge, %if.end.i, %if.then13.i, %if.then.i
  %inc.i = add nuw nsw i32 %rx_bytes.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end41.i.bcm_iproc_i2c_slave_read.exit_crit_edge, label %if.end41.i.while.body.i_crit_edge

if.end41.i.while.body.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end41.i.bcm_iproc_i2c_slave_read.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm_iproc_i2c_slave_read.exit

bcm_iproc_i2c_slave_read.exit:                    ; preds = %if.end41.i.bcm_iproc_i2c_slave_read.exit_crit_edge, %if.then35.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rx_data.i) #8
  %45 = ptrtoint ptr %slave_rx_only.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %slave_rx_only.i, align 4, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %land.lhs.true, label %bcm_iproc_i2c_slave_read.exit.if.end_crit_edge

bcm_iproc_i2c_slave_read.exit.if.end_crit_edge:   ; preds = %bcm_iproc_i2c_slave_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %bcm_iproc_i2c_slave_read.exit
  %47 = ptrtoint ptr %slave_read_complete.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %slave_read_complete.i, align 2, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool1.not = icmp eq i8 %48, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %tx_underrun = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 19
  %49 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %tx_underrun, align 8
  %slave_int_mask = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 20
  %50 = ptrtoint ptr %slave_int_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slave_int_mask, align 4
  %or = or i32 %51, 4194304
  store i32 %or, ptr %slave_int_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %bcm_iproc_i2c_slave_read.exit.if.end_crit_edge
  %int_clr.0 = phi i32 [ 16777216, %bcm_iproc_i2c_slave_read.exit.if.end_crit_edge ], [ 18874368, %if.then ], [ 16777216, %land.lhs.true.if.end_crit_edge ]
  %52 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i12 = icmp eq ptr %53, null
  br i1 %tobool.not.i12, label %do.body6.i, label %if.then.i13

if.then.i13:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ape_addr_mask.i.i, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  %57 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %idm_base.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %59 = call i32 @llvm.bswap.i32(i32 %int_clr.0) #8
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %61, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %59) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %62 = call i32 @llvm.bswap.i32(i32 %int_clr.0) #8
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %64, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %62) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i13
  %slave_int_mask3 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 20
  %65 = ptrtoint ptr %slave_int_mask3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slave_int_mask3, align 4
  %67 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %idm_base.i.i, align 8
  %tobool.not.i16 = icmp eq ptr %68, null
  br i1 %tobool.not.i16, label %do.body6.i24, label %if.then.i21

if.then.i21:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock(ptr noundef %idm_lock.i.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %ape_addr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ape_addr_mask.i.i, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #8
  %72 = ptrtoint ptr %idm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %idm_base.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %74 = call i32 @llvm.bswap.i32(i32 %66) #8
  %75 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i20 = getelementptr i8, ptr %76, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i20, i32 %74) #8, !srcloc !129
  call void @_raw_spin_unlock(ptr noundef %idm_lock.i.i) #8
  br label %iproc_i2c_wr_reg.exit26

do.body6.i24:                                     ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %77 = call i32 @llvm.bswap.i32(i32 %66) #8
  %78 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i23 = getelementptr i8, ptr %79, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i23, i32 %77) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit26

iproc_i2c_wr_reg.exit26:                          ; preds = %do.body6.i24, %if.then.i21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_slave_init(ptr noundef %iproc_i2c, i1 noundef zeroext %need_reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_underrun = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 19
  %0 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_underrun, align 8
  br i1 %need_reset, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %1 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %3 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ape_addr_mask.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %6 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !130
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %12 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base7.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !130
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %11, %if.then.i ], [ %15, %if.else.i ]
  %or = or i32 %val.0.i, -2147483648
  %16 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i40 = icmp eq ptr %17, null
  br i1 %tobool.not.i40, label %do.body6.i, label %if.then.i44

if.then.i44:                                      ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i41 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i42 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %18 = ptrtoint ptr %ape_addr_mask.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ape_addr_mask.i42, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %base.i43 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %24 = ptrtoint ptr %base.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i41) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %27 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base8.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #8
  %and = and i32 %val.0.i, 2147483647
  %30 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i46 = icmp eq ptr %31, null
  br i1 %tobool.not.i46, label %do.body6.i52, label %if.then.i50

if.then.i50:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i47 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i48 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %32 = ptrtoint ptr %ape_addr_mask.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ape_addr_mask.i48, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %35 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %base.i49 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %38 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i47) #8
  br label %if.end

do.body6.i52:                                     ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %base8.i51 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %41 = ptrtoint ptr %base8.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base8.i51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !129
  br label %if.end

if.end:                                           ; preds = %do.body6.i52, %if.then.i50, %entry.if.end_crit_edge
  %idm_base.i54 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 4
  %43 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i55 = icmp eq ptr %44, null
  br i1 %tobool.not.i55, label %do.body6.i61, label %if.then.i59

if.then.i59:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i56 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %45 = ptrtoint ptr %ape_addr_mask.i57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ape_addr_mask.i57, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %48 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i58 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %50 = ptrtoint ptr %base.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i58, align 4
  %add.ptr4.i = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 192) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i56) #8
  br label %iproc_i2c_wr_reg.exit62

do.body6.i61:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i60 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %52 = ptrtoint ptr %base8.i60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base8.i60, align 4
  %add.ptr9.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 192) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit62

iproc_i2c_wr_reg.exit62:                          ; preds = %do.body6.i61, %if.then.i59
  %54 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i64 = icmp eq ptr %55, null
  br i1 %tobool.not.i64, label %if.else.i70, label %if.then.i68

if.then.i68:                                      ; preds = %iproc_i2c_wr_reg.exit62
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i65 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i66 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %56 = ptrtoint ptr %ape_addr_mask.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ape_addr_mask.i66, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !129
  %base.i67 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %61 = ptrtoint ptr %base.i67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i67, align 4
  %add.ptr2.i = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i65) #8
  br label %iproc_i2c_rd_reg.exit72

if.else.i70:                                      ; preds = %iproc_i2c_wr_reg.exit62
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i69 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %65 = ptrtoint ptr %base7.i69 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base7.i69, align 4
  %add.ptr8.i = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit72

iproc_i2c_rd_reg.exit72:                          ; preds = %if.else.i70, %if.then.i68
  %val.0.i71 = phi i32 [ %64, %if.then.i68 ], [ %68, %if.else.i70 ]
  %and2 = and i32 %val.0.i71, -2130706433
  %or3 = or i32 %and2, 419430400
  %69 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i74 = icmp eq ptr %70, null
  br i1 %tobool.not.i74, label %do.body6.i82, label %if.then.i79

if.then.i79:                                      ; preds = %iproc_i2c_rd_reg.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i75 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i76 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %71 = ptrtoint ptr %ape_addr_mask.i76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ape_addr_mask.i76, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %74 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %or3) #8
  %base.i77 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %77 = ptrtoint ptr %base.i77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i77, align 4
  %add.ptr4.i78 = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i78, i32 %76) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i75) #8
  br label %iproc_i2c_wr_reg.exit83

do.body6.i82:                                     ; preds = %iproc_i2c_rd_reg.exit72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %79 = tail call i32 @llvm.bswap.i32(i32 %or3) #8
  %base8.i80 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %80 = ptrtoint ptr %base8.i80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base8.i80, align 4
  %add.ptr9.i81 = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i81, i32 %79) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit83

iproc_i2c_wr_reg.exit83:                          ; preds = %do.body6.i82, %if.then.i79
  %82 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i85 = icmp eq ptr %83, null
  br i1 %tobool.not.i85, label %if.else.i93, label %if.then.i90

if.then.i90:                                      ; preds = %iproc_i2c_wr_reg.exit83
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i86 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i86) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i87 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %84 = ptrtoint ptr %ape_addr_mask.i87 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ape_addr_mask.i87, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  %87 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #8, !srcloc !129
  %base.i88 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %89 = ptrtoint ptr %base.i88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i88, align 4
  %add.ptr2.i89 = getelementptr i8, ptr %90, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i89) #8, !srcloc !130
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i86) #8
  br label %iproc_i2c_rd_reg.exit95

if.else.i93:                                      ; preds = %iproc_i2c_wr_reg.exit83
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i91 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %93 = ptrtoint ptr %base7.i91 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base7.i91, align 4
  %add.ptr8.i92 = getelementptr i8, ptr %94, i32 8
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i92) #8, !srcloc !130
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit95

iproc_i2c_rd_reg.exit95:                          ; preds = %if.else.i93, %if.then.i90
  %val.0.i94 = phi i32 [ %92, %if.then.i90 ], [ %96, %if.else.i93 ]
  %or5 = and i32 %val.0.i94, 16777215
  %slave = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 12
  %97 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %slave, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %addr, align 2
  %conv = zext i16 %100 to i32
  %shl = shl i32 %conv, 24
  %and6 = or i32 %shl, %or5
  %or7 = or i32 %and6, -2147483648
  %101 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i97 = icmp eq ptr %102, null
  br i1 %tobool.not.i97, label %do.body6.i105, label %if.then.i102

if.then.i102:                                     ; preds = %iproc_i2c_rd_reg.exit95
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i98 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i98) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i99 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %103 = ptrtoint ptr %ape_addr_mask.i99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ape_addr_mask.i99, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #8
  %106 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %108 = tail call i32 @llvm.bswap.i32(i32 %or7) #8
  %base.i100 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %109 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i100, align 4
  %add.ptr4.i101 = getelementptr i8, ptr %110, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i101, i32 %108) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i98) #8
  br label %iproc_i2c_wr_reg.exit106

do.body6.i105:                                    ; preds = %iproc_i2c_rd_reg.exit95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %111 = tail call i32 @llvm.bswap.i32(i32 %or7) #8
  %base8.i103 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %112 = ptrtoint ptr %base8.i103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base8.i103, align 4
  %add.ptr9.i104 = getelementptr i8, ptr %113, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i104, i32 %111) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit106

iproc_i2c_wr_reg.exit106:                         ; preds = %do.body6.i105, %if.then.i102
  %114 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i108 = icmp eq ptr %115, null
  br i1 %tobool.not.i108, label %do.body6.i116, label %if.then.i113

if.then.i113:                                     ; preds = %iproc_i2c_wr_reg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i109 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i109) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i110 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %116 = ptrtoint ptr %ape_addr_mask.i110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ape_addr_mask.i110, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  %119 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i111 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %121 = ptrtoint ptr %base.i111 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i111, align 4
  %add.ptr4.i112 = getelementptr i8, ptr %122, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i112, i32 57351) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i109) #8
  br label %iproc_i2c_wr_reg.exit117

do.body6.i116:                                    ; preds = %iproc_i2c_wr_reg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i114 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %123 = ptrtoint ptr %base8.i114 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base8.i114, align 4
  %add.ptr9.i115 = getelementptr i8, ptr %124, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i115, i32 57351) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit117

iproc_i2c_wr_reg.exit117:                         ; preds = %do.body6.i116, %if.then.i113
  %slave_int_mask = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 20
  %125 = ptrtoint ptr %slave_int_mask to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 94371840, ptr %slave_int_mask, align 4
  %126 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %idm_base.i54, align 8
  %tobool.not.i119 = icmp eq ptr %127, null
  br i1 %tobool.not.i119, label %do.body6.i127, label %if.then.i124

if.then.i124:                                     ; preds = %iproc_i2c_wr_reg.exit117
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i120 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i120) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i121 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 5
  %128 = ptrtoint ptr %ape_addr_mask.i121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ape_addr_mask.i121, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #8
  %131 = ptrtoint ptr %idm_base.i54 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %idm_base.i54, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i122 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %133 = ptrtoint ptr %base.i122 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i122, align 4
  %add.ptr4.i123 = getelementptr i8, ptr %134, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i123, i32 40965) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i120) #8
  br label %iproc_i2c_wr_reg.exit128

do.body6.i127:                                    ; preds = %iproc_i2c_wr_reg.exit117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i125 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %iproc_i2c, i32 0, i32 3
  %135 = ptrtoint ptr %base8.i125 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base8.i125, align 4
  %add.ptr9.i126 = getelementptr i8, ptr %136, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i126, i32 40965) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit128

iproc_i2c_wr_reg.exit128:                         ; preds = %do.body6.i127, %if.then.i124
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ape_addr_mask.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i
  %15 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i8 = icmp eq ptr %16, null
  br i1 %tobool.not.i8, label %if.else.i, label %if.then.i12

if.then.i12:                                      ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i9 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %ape_addr_mask.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ape_addr_mask.i10, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !129
  %base.i11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i11, align 4
  %add.ptr2.i = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i9) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %iproc_i2c_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i12
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %29) #8
  br label %if.end

if.end:                                           ; preds = %iproc_i2c_rd_reg.exit, %entry.if.end_crit_edge
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %1, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @bcm_iproc_i2c_init(ptr noundef %1)
  %idm_base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ape_addr_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ape_addr_mask.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !129
  %base.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !130
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i) #8
  br label %iproc_i2c_rd_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base7.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %base7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !130
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %iproc_i2c_rd_reg.exit

iproc_i2c_rd_reg.exit:                            ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %12, %if.then.i ], [ %16, %if.else.i ]
  %and = and i32 %val.0.i, 2147483647
  %bus_speed = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %18)
  %cmp = icmp eq i32 %18, 400000
  %shl = select i1 %cmp, i32 -2147483648, i32 0
  %or = or i32 %shl, %and
  %19 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idm_base.i, align 8
  %tobool.not.i13 = icmp eq ptr %20, null
  br i1 %tobool.not.i13, label %do.body6.i, label %if.then.i17

if.then.i17:                                      ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %idm_lock.i14 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %idm_lock.i14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %ape_addr_mask.i15 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %ape_addr_mask.i15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ape_addr_mask.i15, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %idm_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %idm_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %base.i16 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %base.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i16, align 4
  %add.ptr4.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %26) #8, !srcloc !129
  tail call void @_raw_spin_unlock(ptr noundef %idm_lock.i14) #8
  br label %iproc_i2c_wr_reg.exit

do.body6.i:                                       ; preds = %iproc_i2c_rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %base8.i = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %base8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %29) #8, !srcloc !129
  br label %iproc_i2c_wr_reg.exit

iproc_i2c_wr_reg.exit:                            ; preds = %do.body6.i, %if.then.i17
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %1, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_i2c_bcm_iproc__300_1275_bcm_iproc_i2c_driver_init6, !1, !"__initcall__kmod_i2c_bcm_iproc__300_1275_bcm_iproc_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1275, i32 1}
!2 = !{ptr @__exitcall_bcm_iproc_i2c_driver_exit, !1, !"__exitcall_bcm_iproc_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1277, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1278, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1279, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1268, i32 11}
!12 = !{ptr @bcm_iproc_i2c_driver, !13, !"bcm_iproc_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1266, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1065, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1068, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bcm_iproc_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm_iproc_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @bcm_iproc_i2c_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1073, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1094, i32 4}
!29 = !{ptr @bcm_iproc_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm_iproc_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1101, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bcm_iproc_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @bcm_iproc_i2c_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1110, i32 3}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @bcm_iproc_algo, !42, !"bcm_iproc_algo", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 986, i32 29}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 960, i32 4}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @bcm_iproc_i2c_xfer._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm_iproc_i2c_xfer._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 967, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bcm_iproc_i2c_xfer.__UNIQUE_ID_ddebug299, !49, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 841, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bcm_iproc_i2c_xfer_internal._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm_iproc_i2c_xfer_internal._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 804, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @bcm_iproc_i2c_xfer_wait._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @bcm_iproc_i2c_xfer_wait._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 729, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug290, !63, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 733, i32 3}
!68 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug291, !67, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 737, i32 3}
!71 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug292, !70, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 741, i32 3}
!74 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug293, !73, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 745, i32 3}
!77 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug294, !76, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 749, i32 3}
!80 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug295, !79, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 753, i32 3}
!83 = !{ptr @bcm_iproc_i2c_check_status.__UNIQUE_ID_ddebug296, !82, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1004, i32 12}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1006, i32 3}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bcm_iproc_i2c_cfg_speed._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @bcm_iproc_i2c_cfg_speed._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1012, i32 3}
!94 = !{ptr @bcm_iproc_i2c_cfg_speed._entry.37, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bcm_iproc_i2c_cfg_speed._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1014, i32 3}
!98 = !{ptr @bcm_iproc_i2c_cfg_speed._entry.40, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @bcm_iproc_i2c_cfg_speed._entry_ptr.42, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1029, i32 2}
!102 = !{ptr @bcm_iproc_i2c_cfg_speed._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @bcm_iproc_i2c_cfg_speed._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 338, i32 3}
!106 = !{ptr @bcm_iproc_i2c_check_slave_status._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @bcm_iproc_i2c_check_slave_status._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/of.h", i32 261, i32 30}
!112 = !{ptr @bcm_iproc_i2c_quirks, !113, !"bcm_iproc_i2c_quirks", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 993, i32 40}
!114 = !{ptr @bcm_iproc_i2c_of_match, !115, !"bcm_iproc_i2c_of_match", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1254, i32 34}
!116 = !{ptr @bcm_iproc_i2c_pm_ops, !117, !"bcm_iproc_i2c_pm_ops", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-bcm-iproc.c", i32 1187, i32 32}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{i64 2155603733}
!129 = !{i64 6865304}
!130 = !{i64 6865722}
!131 = !{i64 2155604494}
!132 = !{i64 2155605008}
!133 = !{i64 2155605426}
!134 = !{i64 2155605894}
!135 = !{i64 2155606297}
!136 = !{i8 0, i8 2}
!137 = !{i64 2155633715}
!138 = !{i64 2155633557}
!139 = !{i64 2148791074, i64 2148791079, i64 2148791092, i64 2148791136, i64 2148791170, i64 2148791191}
