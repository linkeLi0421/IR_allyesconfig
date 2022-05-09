; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/svc-i3c-master.c_pt.bc'
source_filename = "../drivers/i3c/master/svc-i3c-master.c"
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
%struct.i3c_master_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.svc_i3c_master = type { %struct.i3c_master_controller, ptr, ptr, i32, [32 x i8], [32 x ptr], %struct.work_struct, %struct.work_struct, i32, ptr, ptr, ptr, %struct.anon.90, %struct.anon.91 }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.89, %struct.i3c_bus, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.89 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.84, %struct.anon.85, %struct.rw_semaphore }
%struct.anon.84 = type { i32, i32 }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.90 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.anon.91 = type { i32, ptr, ptr, %struct.spinlock }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.svc_i3c_i2c_dev_data = type { i8, i32, ptr }
%struct.i3c_ibi_slot = type { %struct.work_struct, ptr, i32, ptr }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_ccc_cmd = type { i8, i8, i32, ptr, i32 }
%struct.i3c_ccc_cmd_dest = type { i8, %struct.i3c_ccc_cmd_payload }
%struct.i3c_ccc_cmd_payload = type { i16, ptr }
%struct.svc_i3c_xfer = type { %struct.list_head, %struct.completion, i32, i32, i32, [0 x %struct.svc_i3c_cmd] }
%struct.svc_i3c_cmd = type { i8, i8, ptr, ptr, i32, i32, i8 }
%struct.i3c_priv_xfer = type { i8, i16, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.i2c_dev_desc = type { %struct.i3c_i2c_dev_desc, ptr, ptr, i16, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i3c_device_ibi_info = type { %struct.completion, %struct.atomic_t, i32, i32, i32, ptr }

@__initcall__kmod_svc_i3c_master__487_1630_svc_i3c_master_init6 = internal global ptr @svc_i3c_master_init, section ".initcall6.init", align 4
@svc_i3c_master = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @svc_i3c_master_probe, ptr @svc_i3c_master_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @svc_i3c_master_of_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @svc_i3c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_svc_i3c_master_exit = internal global ptr @svc_i3c_master_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author488 = internal constant [64 x i8] c"svc_i3c_master.author=Conor Culhane <conor.culhane@silvaco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author489 = internal constant [64 x i8] c"svc_i3c_master.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description490 = internal constant [63 x i8] c"svc_i3c_master.description=Silvaco dual-role I3C master driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file491 = internal constant [54 x i8] c"svc_i3c_master.file=drivers/i3c/master/svc-i3c-master\00", section ".modinfo", align 1
@__UNIQUE_ID_license492 = internal constant [30 x i8] c"svc_i3c_master.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"silvaco-i3c-master\00", [45 x i8] zeroinitializer }, align 32
@svc_i3c_master_of_match_tbl = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silvaco,i3c-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@svc_i3c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @svc_i3c_runtime_suspend, ptr @svc_i3c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fast_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slow_clk\00", [23 x i8] zeroinitializer }, align 32
@svc_i3c_master_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&master->hj_work)\00", [60 x i8] zeroinitializer }, align 32
@svc_i3c_master_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&master->ibi_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"svc-i3c-irq\00", [20 x i8] zeroinitializer }, align 32
@svc_i3c_master_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&master->xferqueue.lock\00", [40 x i8] zeroinitializer }, align 32
@svc_i3c_master_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&master->ibi.lock\00", [46 x i8] zeroinitializer }, align 32
@svc_i3c_master_ops = internal constant { %struct.i3c_master_controller_ops, [60 x i8] } { %struct.i3c_master_controller_ops { ptr @svc_i3c_master_bus_init, ptr @svc_i3c_master_bus_cleanup, ptr @svc_i3c_master_attach_i3c_dev, ptr @svc_i3c_master_reattach_i3c_dev, ptr @svc_i3c_master_detach_i3c_dev, ptr @svc_i3c_master_do_daa, ptr @svc_i3c_master_supports_ccc_cmd, ptr @svc_i3c_master_send_ccc_cmd, ptr @svc_i3c_master_priv_xfers, ptr @svc_i3c_master_attach_i2c_dev, ptr @svc_i3c_master_detach_i2c_dev, ptr @svc_i3c_master_i2c_xfers, ptr @svc_i3c_master_request_ibi, ptr @svc_i3c_master_free_ibi, ptr @svc_i3c_master_enable_ibi, ptr @svc_i3c_master_disable_ibi, ptr @svc_i3c_master_recycle_ibi_slot }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i3c/master/svc-i3c-master.c\00", [60 x i8] zeroinitializer }, align 32
@svc_i3c_master_ibi_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.12, i32 388, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout when polling for IBIWON\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"svc_i3c_master_ibi_work\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@svc_i3c_master_ibi_work._entry_ptr = internal global ptr @svc_i3c_master_ibi_work._entry, section ".printk_index", align 4
@svc_i3c_master_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.12, i32 222, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Error condition: MSTATUS 0x%08x, MERRWARN 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"svc_i3c_master_error\00", [43 x i8] zeroinitializer }, align 32
@svc_i3c_master_error._entry_ptr = internal global ptr @svc_i3c_master_error._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@svc_i3c_master_bus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.12, i32 490, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"<%s> cannot resume i3c bus master, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"svc_i3c_master_bus_init\00", [40 x i8] zeroinitializer }, align 32
@svc_i3c_master_bus_init._entry_ptr = internal global ptr @svc_i3c_master_bus_init._entry, section ".printk_index", align 4
@svc_i3c_master_bus_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.12, i32 586, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"<%s> Cannot get runtime PM.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"svc_i3c_master_bus_cleanup\00", [37 x i8] zeroinitializer }, align 32
@svc_i3c_master_bus_cleanup._entry_ptr = internal global ptr @svc_i3c_master_bus_cleanup._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@svc_i3c_master_do_daa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.12, i32 897, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"svc_i3c_master_do_daa\00", [42 x i8] zeroinitializer }, align 32
@svc_i3c_master_do_daa._entry_ptr = internal global ptr @svc_i3c_master_do_daa._entry, section ".printk_index", align 4
@svc_i3c_master_do_daa._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.12, i32 920, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot handle such a list of devices\00", [59 x i8] zeroinitializer }, align 32
@svc_i3c_master_do_daa._entry_ptr.26 = internal global ptr @svc_i3c_master_do_daa._entry.24, section ".printk_index", align 4
@svc_i3c_master_do_daa_locked.__UNIQUE_ID_ddebug434 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.12, ptr @.str.29, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svc_i3c_master\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"svc_i3c_master_do_daa_locked\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DAA: device %d assigned to 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@svc_i3c_master_start_xfer_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.31, ptr @.str.12, i32 1095, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"svc_i3c_master_start_xfer_locked\00", [63 x i8] zeroinitializer }, align 32
@svc_i3c_master_start_xfer_locked._entry_ptr = internal global ptr @svc_i3c_master_start_xfer_locked._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@svc_i3c_master_read.__UNIQUE_ID_ddebug450 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.32, ptr @.str.12, ptr @.str.33, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"svc_i3c_master_read\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I3C read timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@svc_i3c_master_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.12, i32 951, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I3C receive length too long!\0A\00", [34 x i8] zeroinitializer }, align 32
@svc_i3c_master_read._entry_ptr = internal global ptr @svc_i3c_master_read._entry, section ".printk_index", align 4
@svc_i3c_master_request_ibi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.12, i32 1347, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IBI max payload %d should be < %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"svc_i3c_master_request_ibi\00", [37 x i8] zeroinitializer }, align 32
@svc_i3c_master_request_ibi._entry_ptr = internal global ptr @svc_i3c_master_request_ibi._entry, section ".printk_index", align 4
@svc_i3c_master_enable_ibi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.37, ptr @.str.12, i32 1397, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"svc_i3c_master_enable_ibi\00", [38 x i8] zeroinitializer }, align 32
@svc_i3c_master_enable_ibi._entry_ptr = internal global ptr @svc_i3c_master_enable_ibi._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"svc_i3c_master\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1621, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1625, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"svc_i3c_master_of_match_tbl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1615, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"svc_i3c_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1608, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1495, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1499, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1503, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1517, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1518, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1520, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1526, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1529, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"svc_i3c_master_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1430, i32 47 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 385, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 388, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 220, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 488, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 586, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 897, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 920, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 821, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 87, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1095, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 944, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 951, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1346, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [39 x i8] c"../drivers/i3c/master/svc-i3c-master.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1397, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author488, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description490, ptr @__UNIQUE_ID_file491, ptr @__UNIQUE_ID_license492, ptr @__exitcall_svc_i3c_master_exit, ptr @__initcall__kmod_svc_i3c_master__487_1630_svc_i3c_master_init6, ptr @svc_i3c_master_bus_cleanup._entry, ptr @svc_i3c_master_bus_cleanup._entry_ptr, ptr @svc_i3c_master_bus_init._entry, ptr @svc_i3c_master_bus_init._entry_ptr, ptr @svc_i3c_master_do_daa._entry, ptr @svc_i3c_master_do_daa._entry.24, ptr @svc_i3c_master_do_daa._entry_ptr, ptr @svc_i3c_master_do_daa._entry_ptr.26, ptr @svc_i3c_master_enable_ibi._entry, ptr @svc_i3c_master_enable_ibi._entry_ptr, ptr @svc_i3c_master_error._entry, ptr @svc_i3c_master_error._entry_ptr, ptr @svc_i3c_master_exit, ptr @svc_i3c_master_ibi_work._entry, ptr @svc_i3c_master_ibi_work._entry_ptr, ptr @svc_i3c_master_read._entry, ptr @svc_i3c_master_read._entry_ptr, ptr @svc_i3c_master_request_ibi._entry, ptr @svc_i3c_master_request_ibi._entry_ptr, ptr @svc_i3c_master_start_xfer_locked._entry, ptr @svc_i3c_master_start_xfer_locked._entry_ptr, ptr @svc_i3c_master, ptr @.str, ptr @svc_i3c_master_of_match_tbl, ptr @svc_i3c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @svc_i3c_master_probe.__key, ptr @.str.4, ptr @svc_i3c_master_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @svc_i3c_master_probe.__key.8, ptr @.str.9, ptr @svc_i3c_master_probe.__key.10, ptr @.str.11, ptr @svc_i3c_master_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @init_completion.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_of_match_tbl to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_ibi_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_bus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_bus_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_do_daa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_do_daa._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_start_xfer_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_request_ibi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_i3c_master_enable_ibi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @svc_i3c_master, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @svc_i3c_master) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2880, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %regs = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  %pclk = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %pclk, align 8
  %cmp.i169 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #12
  %fclk = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %fclk, align 4
  %cmp.i170 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  %sclk = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %sclk, align 8
  %cmp.i171 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %irq = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call30, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp = icmp slt i32 %call30, 1
  br i1 %cmp, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %dev34 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %dev34, align 8
  %call35 = tail call fastcc i32 @svc_i3c_master_prepare_clks(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end33
  %hj_work = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %hj_work, i32 noundef 0) #12
  %10 = ptrtoint ptr %hj_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %hj_work, align 4
  %lockdep_map = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @svc_i3c_master_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry42 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry42, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @svc_i3c_master_hj_work, ptr %func, align 4
  %ibi_work = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %ibi_work, i32 noundef 0) #12
  %14 = ptrtoint ptr %ibi_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %ibi_work, align 8
  %lockdep_map50 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map50, ptr noundef nonnull @.str.6, ptr noundef nonnull @svc_i3c_master_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry52 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry52, ptr %entry52, align 4
  %prev.i172 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry52, ptr %prev.i172, align 4
  %func54 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %func54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @svc_i3c_master_ibi_work, ptr %func54, align 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call.i173 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @svc_i3c_master_irq_handler, ptr noundef null, i32 noundef 16384, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool59.not = icmp eq i32 %call.i173, 0
  br i1 %tobool59.not, label %if.end61, label %do.body.err_disable_clks_crit_edge

do.body.err_disable_clks_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_disable_clks

if.end61:                                         ; preds = %do.body
  %free_slots = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %free_slots to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %free_slots, align 8
  %xferqueue = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 12
  %lock = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @svc_i3c_master_probe.__key.8, i16 noundef signext 3) #12
  %21 = ptrtoint ptr %xferqueue to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %xferqueue, ptr %xferqueue, align 4
  %prev.i174 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i174 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %xferqueue, ptr %prev.i174, align 4
  %ibi = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 13
  %lock68 = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 13, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock68, ptr noundef nonnull @.str.11, ptr noundef nonnull @svc_i3c_master_probe.__key.10, i16 noundef signext 3) #12
  %23 = ptrtoint ptr %ibi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %ibi, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #12
  %slots = getelementptr inbounds %struct.svc_i3c_master, ptr %call.i, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %slots, align 4
  %tobool80.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool80.not, label %if.end61.err_disable_clks_crit_edge, label %if.end82

if.end61.err_disable_clks_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_disable_clks

if.end82:                                         ; preds = %if.end61
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #12
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !112
  %call.i175 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %dev1) #12
  tail call fastcc void @svc_i3c_master_reset(ptr noundef nonnull %call.i)
  %call90 = tail call i32 @i3c_master_register(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @svc_i3c_master_ops, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %rpm_disable

if.end93:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %call.i176 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i176, ptr %last_busy.i, align 8
  %call.i177 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #12
  br label %cleanup

rpm_disable:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #12
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  %call.i178 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #12
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %rpm_disable, %if.end61.err_disable_clks_crit_edge, %do.body.err_disable_clks_crit_edge
  %ret.0 = phi i32 [ %call.i173, %do.body.err_disable_clks_crit_edge ], [ %call90, %rpm_disable ], [ -12, %if.end61.err_disable_clks_crit_edge ]
  tail call fastcc void @svc_i3c_master_unprepare_clks(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clks, %if.end93, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then26, %if.then19, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then12 ], [ %5, %if.then19 ], [ %7, %if.then26 ], [ %ret.0, %err_disable_clks ], [ 0, %if.end93 ], [ -12, %entry.cleanup_crit_edge ], [ -2, %if.end29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i3c_master_unregister(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_i3c_master_prepare_clks(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 9
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %fclk = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 10
  %2 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fclk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end.cleanup.sink.split.sink.split_crit_edge

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split

if.end.i26:                                       ; preds = %if.end
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end5, label %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.sink.split

if.end5:                                          ; preds = %if.end.i26
  %sclk = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 11
  %4 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sclk, align 8
  %call.i30 = tail call i32 @clk_prepare(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i34, label %if.end5.if.then8_crit_edge

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end.i34:                                       ; preds = %if.end5
  %call1.i32 = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool2.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool2.not.i33, label %if.end.i34.cleanup_crit_edge, label %if.then3.i35

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i35:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i35, %if.end5.if.then8_crit_edge
  %retval.0.i36.ph = phi i32 [ %call1.i32, %if.then3.i35 ], [ %call.i30, %if.end5.if.then8_crit_edge ]
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 8
  tail call void @clk_disable(ptr noundef %7) #12
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then8, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.sink47 = phi ptr [ %7, %if.then8 ], [ %3, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %.sink46.in.ph = phi ptr [ %fclk, %if.then8 ], [ %pclk, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %retval.0.i36.ph, %if.then8 ], [ %call1.i24, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink47) #12
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.cleanup.sink.split.sink.split_crit_edge
  %.sink46.in = phi ptr [ %pclk, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %.sink46.in.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call.i22, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %8 = ptrtoint ptr %.sink46.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink46 = load ptr, ptr %.sink46.in, align 4
  tail call void @clk_disable(ptr noundef %.sink46) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.end.i.cleanup.sink.split_crit_edge ], [ %.sink46, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i34.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_hj_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2660
  %call = tail call i32 @i3c_master_do_daa(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_ibi_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr i8, ptr %work, i32 -212
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 117440512) #12, !srcloc !114
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 1000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !115
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end64_crit_edge

for.cond.do.end64_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end64

land.lhs.true:                                    ; preds = %for.cond
  %call35 = tail call i64 @ktime_get() #12
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %if.then38, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %8, i32 136
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #12, !srcloc !115
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  br label %do.end64

do.end64:                                         ; preds = %if.then38, %for.cond.do.end64_crit_edge
  %val.0 = phi i32 [ %10, %if.then38 ], [ %5, %for.cond.do.end64_crit_edge ]
  %11 = and i32 %val.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool68.not = icmp eq i32 %11, 0
  br i1 %tobool68.not, label %do.end73, label %do.body76

do.end73:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  %dev74 = getelementptr i8, ptr %work, i32 -216
  %12 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13) #15
  br label %reenable_ibis

do.body76:                                        ; preds = %do.end64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !116
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr80 = getelementptr i8, ptr %15, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 2097152) #12, !srcloc !114
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr83 = getelementptr i8, ptr %17, i32 136
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #12, !srcloc !115
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !117
  %and103 = lshr i32 %19, 6
  %shr104 = and i32 %and103, 3
  %20 = zext i32 %shr104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr104, label %do.body76.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb128
    i32 2, label %sw.bb129
  ]

do.body76.sw.epilog_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body76
  %and121 = lshr i32 %19, 24
  %shr122 = and i32 %and121, 127
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.016.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.svc_i3c_master, ptr %add.ptr, i32 0, i32 4, i32 %i.016.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr122, i32 %conv.i)
  %cmp1.i = icmp eq i32 %shr122, %conv.i
  br i1 %cmp1.i, label %svc_i3c_master_dev_from_addr.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.if.then125_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then125_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

svc_i3c_master_dev_from_addr.exit:                ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.svc_i3c_master, ptr %add.ptr, i32 0, i32 5, i32 %i.016.i
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7.i, align 4
  %tobool124.not = icmp eq ptr %24, null
  br i1 %tobool124.not, label %svc_i3c_master_dev_from_addr.exit.if.then125_crit_edge, label %if.else

svc_i3c_master_dev_from_addr.exit.if.then125_crit_edge: ; preds = %svc_i3c_master_dev_from_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then125

if.then125:                                       ; preds = %svc_i3c_master_dev_from_addr.exit.if.then125_crit_edge, %for.inc.i.if.then125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !118
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1124073472) #12, !srcloc !114
  br label %sw.epilog

if.else:                                          ; preds = %svc_i3c_master_dev_from_addr.exit
  %master_priv.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %master_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master_priv.i.i, align 4
  %ibi_pool.i = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ibi_pool.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibi_pool.i, align 4
  %call1.i = tail call ptr @i3c_generic_ibi_get_free_slot(ptr noundef %30) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.else.sw.epilog_crit_edge, label %if.end.i

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.else
  %len.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call1.i, i32 0, i32 2
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %len.i, align 4
  %data2.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call1.i, i32 0, i32 3
  %32 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data2.i, align 4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %35, i32 136
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !119
  %37 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not2.i = icmp eq i32 %37, 0
  br i1 %tobool18.not2.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %buf.03.i = phi ptr [ %add.ptr48.i, %while.body.i.land.rhs.i_crit_edge ], [ %33, %if.end.i.land.rhs.i_crit_edge ]
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %39)
  %cmp.i188 = icmp ult i32 %39, 16
  br i1 %cmp.i188, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr23.i = getelementptr i8, ptr %41, i32 172
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  %and43.i = and i32 %42, 31
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr46.i = getelementptr i8, ptr %44, i32 192
  tail call void @__raw_readsl(ptr noundef %add.ptr46.i, ptr noundef %buf.03.i, i32 noundef %and43.i) #12
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %add.i189 = add i32 %46, %and43.i
  store i32 %add.i189, ptr %len.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %buf.03.i, i32 %and43.i
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr.i190 = getelementptr i8, ptr %48, i32 136
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !119
  %50 = and i32 %49, 524288
  %tobool18.not.i = icmp eq i32 %50, 0
  br i1 %tobool18.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %tbq_slot.i = getelementptr i8, ptr %work, i32 124
  %51 = ptrtoint ptr %tbq_slot.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call1.i, ptr %tbq_slot.i, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i192 = getelementptr i8, ptr %53, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 50331648) #12, !srcloc !114
  br label %sw.epilog

sw.bb129:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !118
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr.i194 = getelementptr i8, ptr %55, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 1124073472) #12, !srcloc !114
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb129, %sw.bb128, %while.end.i, %if.else.sw.epilog_crit_edge, %if.then125, %do.body76.sw.epilog_crit_edge
  %dev.0 = phi ptr [ inttoptr (i32 -1 to ptr), %do.body76.sw.epilog_crit_edge ], [ inttoptr (i32 -1 to ptr), %sw.bb129 ], [ inttoptr (i32 -1 to ptr), %sw.bb128 ], [ null, %if.then125 ], [ %24, %if.else.sw.epilog_crit_edge ], [ %24, %while.end.i ]
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i196 = getelementptr i8, ptr %57, i32 136
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #12, !srcloc !115
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !122
  %60 = and i32 %59, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i197 = icmp eq i32 %60, 0
  br i1 %tobool.not.i197, label %if.end140, label %if.then131

if.then131:                                       ; preds = %sw.epilog
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr18.i = getelementptr i8, ptr %62, i32 156
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #12, !srcloc !115
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  tail call void @arm_heavy_mb() #12
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr26.i = getelementptr i8, ptr %66, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %63) #12, !srcloc !114
  %dev.i = getelementptr i8, ptr %work, i32 -216
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.17, i32 noundef %59, i32 noundef %64) #15
  %tbq_slot = getelementptr i8, ptr %work, i32 124
  %69 = ptrtoint ptr %tbq_slot to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tbq_slot, align 4
  %tobool132.not = icmp eq ptr %70, null
  br i1 %tobool132.not, label %if.then131.if.end139_crit_edge, label %if.then133

if.then131.if.end139_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then133:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev.0, i32 0, i32 2
  %71 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master_priv.i, align 4
  %ibi_pool = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %74, ptr noundef nonnull %70) #12
  %75 = ptrtoint ptr %tbq_slot to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %tbq_slot, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then133, %if.then131.if.end139_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr.i199 = getelementptr i8, ptr %77, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 33554432) #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #12
  br label %reenable_ibis

if.end140:                                        ; preds = %sw.epilog
  %79 = zext i32 %shr104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %shr104, label %if.end140.reenable_ibis_crit_edge [
    i32 1, label %sw.bb141
    i32 3, label %sw.bb149
  ]

if.end140.reenable_ibis_crit_edge:                ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %reenable_ibis

sw.bb141:                                         ; preds = %if.end140
  %tobool142.not = icmp eq ptr %dev.0, null
  br i1 %tobool142.not, label %sw.bb141.if.end148_crit_edge, label %if.then143

sw.bb141.if.end148_crit_edge:                     ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then143:                                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #14
  %tbq_slot145 = getelementptr i8, ptr %work, i32 124
  %80 = ptrtoint ptr %tbq_slot145 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tbq_slot145, align 4
  tail call void @i3c_master_queue_ibi(ptr noundef nonnull %dev.0, ptr noundef %81) #12
  %82 = ptrtoint ptr %tbq_slot145 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %tbq_slot145, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %sw.bb141.if.end148_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr.i201 = getelementptr i8, ptr %84, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 33554432) #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748) #12
  br label %reenable_ibis

sw.bb149:                                         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  %wq = getelementptr i8, ptr %work, i32 -220
  %86 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wq, align 4
  %hj_work = getelementptr i8, ptr %work, i32 -44
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %87, ptr noundef %hj_work) #12
  br label %reenable_ibis

reenable_ibis:                                    ; preds = %sw.bb149, %if.end148, %if.end140.reenable_ibis_crit_edge, %if.end139, %do.end73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr.i203 = getelementptr i8, ptr %89, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203, i32 65536) #12, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.svc_i3c_master, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !128
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 65536) #12, !srcloc !114
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #12, !srcloc !114
  %wq = getelementptr inbounds %struct.i3c_master_controller, ptr %dev_id, i32 0, i32 7
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 4
  %ibi_work = getelementptr inbounds %struct.svc_i3c_master, ptr %dev_id, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %ibi_work) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_i3c_master_reset(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !131
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 156
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %2) #12, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %6, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 989855744) #12, !srcloc !114
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 144
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i7 = getelementptr i8, ptr %11, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i7, i32 %9) #12, !srcloc !114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_register(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #12, !srcloc !135
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_i3c_master_unprepare_clks(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 9
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 8
  tail call void @clk_disable(ptr noundef %1) #12
  tail call void @clk_unprepare(ptr noundef %1) #12
  %fclk = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 10
  %2 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fclk, align 4
  tail call void @clk_disable(ptr noundef %3) #12
  tail call void @clk_unprepare(ptr noundef %3) #12
  %sclk = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 11
  %4 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sclk, align 8
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_do_daa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_recycle_slot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_master_queue_ibi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_get_free_slot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_bus_init(ptr noundef %m) #2 align 64 {
entry:
  %info = alloca %struct.i3c_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #12
  %0 = call ptr @memset(ptr %info, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fclk = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 10
  %6 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fclk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.rpm_out_crit_edge, label %if.end6

if.end.rpm_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpm_out

if.end6:                                          ; preds = %if.end
  %sub = add i32 %call4, 999999999
  %div = udiv i32 %sub, %call4
  %sub8 = add i32 %div, 39
  %div9 = udiv i32 %sub8, %div
  %mul = mul i32 %div9, %div
  %div15 = udiv i32 239, %mul
  %mul18 = mul i32 %div15, %mul
  %mode = getelementptr inbounds %struct.i3c_master_controller, ptr %m, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %9, label %if.end6.rpm_out_crit_edge [
    i32 0, label %if.end6.do.end219_crit_edge
    i32 1, label %if.end6.do.end43.sink.split_crit_edge
    i32 2, label %if.end6.do.end43.sink.split_crit_edge336
    i32 3, label %sw.bb24
  ]

if.end6.do.end43.sink.split_crit_edge336:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.sink.split

if.end6.do.end43.sink.split_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.sink.split

if.end6.do.end219_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end219

if.end6.rpm_out_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpm_out

sw.bb24:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.sink.split

do.end43.sink.split:                              ; preds = %sw.bb24, %if.end6.do.end43.sink.split_crit_edge, %if.end6.do.end43.sink.split_crit_edge336
  %.sink = phi i32 [ 2499, %sw.bb24 ], [ 999, %if.end6.do.end43.sink.split_crit_edge ], [ 999, %if.end6.do.end43.sink.split_crit_edge336 ]
  %sub21 = add i32 %mul18, %.sink
  %div22 = udiv i32 %sub21, %mul18
  %sub23 = shl i32 %div22, 28
  %phi.bo = add i32 %sub23, -536870912
  br label %do.end219

do.end219:                                        ; preds = %do.end43.sink.split, %if.end6.do.end219_crit_edge
  %odstop.0 = phi i32 [ %9, %if.end6.do.end219_crit_edge ], [ 64, %do.end43.sink.split ]
  %i2cbaud.0 = phi i32 [ %9, %if.end6.do.end219_crit_edge ], [ %phi.bo, %do.end43.sink.split ]
  %sub10 = shl i32 %div9, 8
  %shl104 = add i32 %sub10, 3840
  %and105 = and i32 %shl104, 3840
  %sub16 = shl nuw nsw i32 %div15, 16
  %shl154 = add nuw nsw i32 %sub16, 16711680
  %and155 = and i32 %shl154, 16711680
  %or81 = or i32 %and105, %and155
  %or106 = or i32 %or81, %odstop.0
  %or181 = or i32 %or106, %i2cbaud.0
  %or223 = or i32 %or181, 16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %or223)
  %regs = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 2
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #12, !srcloc !114
  %call227 = tail call i32 @i3c_master_get_free_addr(ptr noundef %m, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228 = icmp slt i32 %call227, 0
  br i1 %cmp228, label %do.end219.rpm_out_crit_edge, label %if.end230

do.end219.rpm_out_crit_edge:                      ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpm_out

if.end230:                                        ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %call227 to i8
  %dyn_addr = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %dyn_addr, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  tail call void @arm_heavy_mb() #12
  %shl261 = shl i32 %call227, 25
  %or263 = or i32 %shl261, 16777216
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr265 = getelementptr i8, ptr %16, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr265, i32 %or263) #12, !srcloc !114
  %call266 = call i32 @i3c_master_set_info(ptr noundef %m, ptr noundef nonnull %info) #12
  br label %rpm_out

rpm_out:                                          ; preds = %if.end230, %do.end219.rpm_out_crit_edge, %if.end6.rpm_out_crit_edge, %if.end.rpm_out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6.rpm_out_crit_edge ], [ %call227, %do.end219.rpm_out_crit_edge ], [ %call266, %if.end230 ], [ -22, %if.end.rpm_out_crit_edge ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %call.i331 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i331, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %call.i332 = call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %rpm_out, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %rpm_out ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_bus_cleanup(ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 144
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #12, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #12, !srcloc !114
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call.i15 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i15, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call.i16 = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_attach_i3c_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %free_slots.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #12, !range !140
  %shl.i = shl nuw i32 1, %4
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %3, %neg.i
  %5 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.i, ptr %free_slots.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_slots.i, align 8
  %or.i = or i32 %8, %shl.i
  store i32 %or.i, ptr %free_slots.i, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ibi = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ibi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ibi, align 4
  %conv = trunc i32 %4 to i8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %call7.i.i, align 8
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dyn_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %cond.false, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %static_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %static_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %static_addr, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %cond.in = phi i8 [ %14, %cond.false ], [ %12, %if.end5.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.svc_i3c_master, ptr %1, i32 0, i32 4, i32 %4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond.in, ptr %arrayidx, align 1
  %arrayidx14 = getelementptr %struct.svc_i3c_master, ptr %1, i32 0, i32 5, i32 %4
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %arrayidx14, align 4
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -12, %if.then4 ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_i3c_master_reattach_i3c_dev(ptr nocapture noundef readonly %dev, i8 noundef zeroext %old_dyn_addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dyn_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %static_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %static_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %static_addr, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %7, %cond.false ], [ %5, %entry.cond.end_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %struct.svc_i3c_master, ptr %1, i32 0, i32 4, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond.in, ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_detach_i3c_dev(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.svc_i3c_master, ptr %3, i32 0, i32 4, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %7 = load i8, ptr %1, align 4
  %conv = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv
  %free_slots.i = getelementptr inbounds %struct.svc_i3c_master, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %free_slots.i, align 8
  %or.i = or i32 %shl.i, %9
  store i32 %or.i, ptr %free_slots.i, align 8
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_do_daa(ptr noundef %m) #2 align 64 {
entry:
  %addrs = alloca [32 x i8], align 1
  %dev_nb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %addrs) #12
  %0 = call ptr @memset(ptr %addrs, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_nb) #12
  %1 = ptrtoint ptr %dev_nb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dev_nb, align 4, !annotation !141
  %dev = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body4

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23) #15
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 12, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call12 = call fastcc i32 @svc_i3c_master_do_daa_locked(ptr noundef %m, ptr noundef nonnull %addrs, ptr noundef nonnull %dev_nb)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then15

for.cond.preheader:                               ; preds = %do.body4
  %7 = ptrtoint ptr %dev_nb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_nb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1768.not = icmp eq i32 %8, 0
  br i1 %cmp1768.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !131
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %13, i32 156
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #12, !srcloc !114
  br label %rpm_out

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr %addrs, i32 0, i32 %i.069
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %call19 = tail call i32 @i3c_master_add_i3c_dev_locked(ptr noundef %m, i8 noundef zeroext %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.cond, label %for.body.rpm_out_crit_edge

for.body.rpm_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpm_out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %devs.i = getelementptr inbounds %struct.i3c_master_controller, ptr %m, i32 0, i32 6, i32 5
  %19 = ptrtoint ptr %devs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %dev.0196.i = load ptr, ptr %devs.i, align 4
  %cmp.not197.i = icmp eq ptr %dev.0196.i, %devs.i
  br i1 %cmp.not197.i, label %for.end.for.end.i_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.for.end.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %dev.0204.i = phi ptr [ %dev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dev.0196.i, %for.end.for.body.i_crit_edge ]
  %reg_mbyte.0203.i = phi i32 [ %reg_mbyte.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %reg_nobyte.0202.i = phi i32 [ %reg_nobyte.1.i, %for.inc.i.for.body.i_crit_edge ], [ -2147483648, %for.end.for.body.i_crit_edge ]
  %mbyte_addr_ok.0201.i = phi i32 [ %mbyte_addr_ok.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %mbyte_addr_ko.0200.i = phi i32 [ %mbyte_addr_ko.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %nobyte_addr_ko.0199.i = phi i32 [ %nobyte_addr_ko.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %nobyte_addr_ok.0198.i = phi i32 [ %nobyte_addr_ok.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %bcr.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev.0204.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %bcr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bcr.i, align 8
  %conv.i = zext i8 %21 to i32
  %and.i = and i32 %conv.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 64
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %and10.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  %dyn_addr63.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev.0204.i, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %dyn_addr63.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dyn_addr63.i, align 1
  br i1 %tobool.not.i, label %do.end87.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end.i
  %mul.i = mul i32 %mbyte_addr_ok.0201.i, 6
  %conv40.i = zext i8 %23 to i32
  %and41.i = and i32 %conv40.i, 63
  %shl43.i = shl i32 %and41.i, %mul.i
  %and45.i = and i32 %shl43.i, 1073741823
  %or.i = or i32 %and45.i, %reg_mbyte.0203.i
  %and49.i = and i32 %conv40.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.else.i, label %if.then51.i

if.then51.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %mbyte_addr_ko.0200.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc52.i = add i32 %mbyte_addr_ok.0201.i, 1
  br label %for.inc.i

do.end87.i:                                       ; preds = %if.end.i
  %mul66.i = mul i32 %nobyte_addr_ok.0198.i, 6
  %conv91.i = zext i8 %23 to i32
  %and92.i = and i32 %conv91.i, 63
  %shl94.i = shl i32 %and92.i, %mul66.i
  %and96.i = and i32 %shl94.i, 1073741823
  %or97.i = or i32 %and96.i, %reg_nobyte.0202.i
  %and101.i = and i32 %conv91.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %if.else105.i, label %if.then103.i

if.then103.i:                                     ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc104.i = add i32 %nobyte_addr_ko.0199.i, 1
  br label %for.inc.i

if.else105.i:                                     ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc106.i = add i32 %nobyte_addr_ok.0198.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else105.i, %if.then103.i, %if.else.i, %if.then51.i, %for.body.i.for.inc.i_crit_edge
  %nobyte_addr_ok.1.i = phi i32 [ %nobyte_addr_ok.0198.i, %for.body.i.for.inc.i_crit_edge ], [ %nobyte_addr_ok.0198.i, %if.then51.i ], [ %nobyte_addr_ok.0198.i, %if.else.i ], [ %nobyte_addr_ok.0198.i, %if.then103.i ], [ %inc106.i, %if.else105.i ]
  %nobyte_addr_ko.1.i = phi i32 [ %nobyte_addr_ko.0199.i, %for.body.i.for.inc.i_crit_edge ], [ %nobyte_addr_ko.0199.i, %if.then51.i ], [ %nobyte_addr_ko.0199.i, %if.else.i ], [ %inc104.i, %if.then103.i ], [ %nobyte_addr_ko.0199.i, %if.else105.i ]
  %mbyte_addr_ko.1.i = phi i32 [ %mbyte_addr_ko.0200.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then51.i ], [ %mbyte_addr_ko.0200.i, %if.else.i ], [ %mbyte_addr_ko.0200.i, %if.then103.i ], [ %mbyte_addr_ko.0200.i, %if.else105.i ]
  %mbyte_addr_ok.1.i = phi i32 [ %mbyte_addr_ok.0201.i, %for.body.i.for.inc.i_crit_edge ], [ %mbyte_addr_ok.0201.i, %if.then51.i ], [ %inc52.i, %if.else.i ], [ %mbyte_addr_ok.0201.i, %if.then103.i ], [ %mbyte_addr_ok.0201.i, %if.else105.i ]
  %reg_nobyte.1.i = phi i32 [ %reg_nobyte.0202.i, %for.body.i.for.inc.i_crit_edge ], [ %reg_nobyte.0202.i, %if.then51.i ], [ %reg_nobyte.0202.i, %if.else.i ], [ %or97.i, %if.then103.i ], [ %or97.i, %if.else105.i ]
  %reg_mbyte.1.i = phi i32 [ %reg_mbyte.0203.i, %for.body.i.for.inc.i_crit_edge ], [ %or.i, %if.then51.i ], [ %or.i, %if.else.i ], [ %reg_mbyte.0203.i, %if.then103.i ], [ %reg_mbyte.0203.i, %if.else105.i ]
  %24 = ptrtoint ptr %dev.0204.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %dev.0.i = load ptr, ptr %dev.0204.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devs.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.end.for.end.i_crit_edge
  %nobyte_addr_ok.0.lcssa.i = phi i32 [ 0, %for.end.for.end.i_crit_edge ], [ %nobyte_addr_ok.1.i, %for.inc.i.for.end.i_crit_edge ]
  %nobyte_addr_ko.0.lcssa.i = phi i32 [ 0, %for.end.for.end.i_crit_edge ], [ %nobyte_addr_ko.1.i, %for.inc.i.for.end.i_crit_edge ]
  %mbyte_addr_ko.0.lcssa.i = phi i32 [ 0, %for.end.for.end.i_crit_edge ], [ %mbyte_addr_ko.1.i, %for.inc.i.for.end.i_crit_edge ]
  %mbyte_addr_ok.0.lcssa.i = phi i32 [ 0, %for.end.for.end.i_crit_edge ], [ %mbyte_addr_ok.1.i, %for.inc.i.for.end.i_crit_edge ]
  %reg_nobyte.0.lcssa.i = phi i32 [ -2147483648, %for.end.for.end.i_crit_edge ], [ %reg_nobyte.1.i, %for.inc.i.for.end.i_crit_edge ]
  %reg_mbyte.0.lcssa.i = phi i32 [ 0, %for.end.for.end.i_crit_edge ], [ %reg_mbyte.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mbyte_addr_ko.0.lcssa.i)
  %tobool115.not.i = icmp eq i32 %mbyte_addr_ko.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mbyte_addr_ok.0.lcssa.i)
  %cmp116.i = icmp ult i32 %mbyte_addr_ok.0.lcssa.i, 6
  %or.cond181.i = select i1 %tobool115.not.i, i1 %cmp116.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nobyte_addr_ko.0.lcssa.i)
  %tobool120.not.i = icmp eq i32 %nobyte_addr_ko.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %nobyte_addr_ok.0.lcssa.i)
  %cmp122.i = icmp ult i32 %nobyte_addr_ok.0.lcssa.i, 6
  %or.cond182.i = select i1 %tobool120.not.i, i1 %cmp122.i, i1 false
  %brmerge.i = or i1 %or.cond182.i, %or.cond181.i
  br i1 %brmerge.i, label %if.end130.i, label %do.end28

if.end130.i:                                      ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  br i1 %or.cond181.i, label %do.body133.i, label %do.body138.i

do.body133.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %reg_mbyte.0.lcssa.i) #12
  %regs.i59 = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 2
  %26 = ptrtoint ptr %regs.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i59, align 4
  %add.ptr136.i = getelementptr i8, ptr %27, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136.i, i32 %25) #12, !srcloc !114
  br label %rpm_out

do.body138.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %reg_nobyte.0.lcssa.i) #12
  %regs141.i = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 2
  %29 = ptrtoint ptr %regs141.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs141.i, align 4
  %add.ptr142.i = getelementptr i8, ptr %30, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 %28) #12, !srcloc !114
  br label %rpm_out

do.end28:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.25) #15
  br label %rpm_out

rpm_out:                                          ; preds = %do.end28, %do.body138.i, %do.body133.i, %for.body.rpm_out_crit_edge, %if.then15
  %ret.0 = phi i32 [ %call12, %if.then15 ], [ -34, %do.end28 ], [ 0, %do.body138.i ], [ 0, %do.body133.i ], [ %call19, %for.body.rpm_out_crit_edge ]
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %call.i61 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i61, ptr %last_busy.i, align 8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %call.i62 = tail call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %rpm_out, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %rpm_out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_nb) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %addrs) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @svc_i3c_master_supports_ccc_cmd(ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %cmd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ndests = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %ndests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_send_ccc_cmd(ptr noundef %m, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp sgt i8 %1, -1
  %dests.i = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %dests.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dests.i, align 4
  %payload.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %payload.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %payload.i, align 4
  %conv.i = zext i16 %5 to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.i = add nuw nsw i32 %conv.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 100) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %ncmds2.i.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ncmds2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ncmds2.i.i, align 8
  %ret.i.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -110, ptr %ret.i.i, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #17
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end4.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 1
  %13 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call9.i.i, align 128
  %arrayidx6.i = getelementptr i8, ptr %call9.i.i, i32 1
  %14 = ptrtoint ptr %dests.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dests.i, align 4
  %payload9.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %15, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %payload9.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %payload9.i, align 4
  %conv14.i = zext i16 %19 to i32
  %20 = call ptr @memcpy(ptr %arrayidx6.i, ptr %17, i32 %conv14.i)
  %type.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type.i, align 4
  %cmds.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 4
  %24 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %cmds.i, align 4
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.i = icmp ne i8 %26, 0
  %rnw20.i = getelementptr inbounds %struct.svc_i3c_cmd, ptr %cmds.i, i32 0, i32 1
  %frombool.i = zext i1 %tobool19.i to i8
  %27 = ptrtoint ptr %rnw20.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool.i, ptr %rnw20.i, align 1
  %in.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %in.i, align 8
  %out.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1
  %29 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %out.i, align 4
  %len21.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %len21.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %len21.i, align 8
  %read_len.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %read_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %read_len.i, align 4
  %continued.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %continued.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %continued.i, align 8
  tail call fastcc void @svc_i3c_master_enqueue_xfer(ptr noundef %m, ptr noundef nonnull %call7.i.i.i.i) #12
  %comp.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i, i32 0, i32 1
  %call23.i = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end4.i.if.end26.i_crit_edge

if.end4.i.if.end26.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end4.i
  %lock.i.i = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 12, i32 2
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  %cur.i.i.i = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 12, i32 1
  %33 = ptrtoint ptr %cur.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i.i.i, align 4
  %cmp.i.i59.i = icmp eq ptr %34, %call7.i.i.i.i
  br i1 %cmp.i.i59.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %cur.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cur.i.i.i, align 4
  br label %svc_i3c_master_dequeue_xfer.exit.i

if.else.i.i.i:                                    ; preds = %if.then25.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i.i.i, align 8
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %42 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  br label %svc_i3c_master_dequeue_xfer.exit.i

svc_i3c_master_dequeue_xfer.exit.i:               ; preds = %list_del_init.exit.i.i.i, %if.then.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #12
  br label %if.end26.i

if.end26.i:                                       ; preds = %svc_i3c_master_dequeue_xfer.exit.i, %if.end4.i.if.end26.i_crit_edge
  %44 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ret.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %46 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 124) #16
  %tobool.not.i.i12 = icmp eq ptr %call7.i.i.i.i11, null
  br i1 %tobool.not.i.i12, label %if.else.cleanup_crit_edge, label %if.end.i23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i23:                                       ; preds = %if.else
  %49 = ptrtoint ptr %call7.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i.i.i.i11, ptr %call7.i.i.i.i11, align 8
  %prev.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i11, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i.i.i11, ptr %prev.i.i.i13, align 4
  %ncmds2.i.i14 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 0, i32 4
  %51 = ptrtoint ptr %ncmds2.i.i14 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %ncmds2.i.i14, align 8
  %ret.i.i15 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 0, i32 2
  %52 = ptrtoint ptr %ret.i.i15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -110, ptr %ret.i.i15, align 8
  %type.i16 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 0, i32 3
  %53 = ptrtoint ptr %type.i16 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %type.i16, align 4
  %cmds.i17 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 0, i32 5
  %54 = ptrtoint ptr %cmds.i17 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 126, ptr %cmds.i17, align 4
  %rnw4.i = getelementptr inbounds %struct.svc_i3c_cmd, ptr %cmds.i17, i32 0, i32 1
  %55 = ptrtoint ptr %rnw4.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %rnw4.i, align 1
  %in.i18 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %in.i18 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %in.i18, align 8
  %out.i20 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1
  %57 = ptrtoint ptr %out.i20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %id, ptr %out.i20, align 4
  %len5.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1
  %58 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %len5.i, align 8
  %read_len6.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %read_len6.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %read_len6.i, align 4
  %continued.i21 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %continued.i21 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %continued.i21, align 8
  %arrayidx8.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 3
  %61 = ptrtoint ptr %dests.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dests.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 4
  %65 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx8.i, align 4
  %66 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool14.i = icmp ne i8 %67, 0
  %rnw15.i = getelementptr inbounds %struct.svc_i3c_cmd, ptr %arrayidx8.i, i32 0, i32 1
  %frombool.i22 = zext i1 %tobool14.i to i8
  %68 = ptrtoint ptr %rnw15.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool.i22, ptr %rnw15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool18.not.i = icmp eq i8 %67, 0
  br i1 %tobool18.not.i, label %cond.false31.i, label %cond.end24.i

cond.end24.i:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  %data.i24 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %62, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %data.i24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i24, align 4
  %in26.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 4
  %71 = ptrtoint ptr %in26.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %in26.i, align 8
  br label %cond.end36.i

cond.false31.i:                                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  %in2699.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 4
  %72 = ptrtoint ptr %in2699.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %in2699.i, align 8
  %data35.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %62, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %data35.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data35.i, align 4
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.false31.i, %cond.end24.i
  %cond37.i = phi ptr [ %74, %cond.false31.i ], [ null, %cond.end24.i ]
  %out38.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %out38.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cond37.i, ptr %out38.i, align 4
  %len39.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 4, i32 1, i32 1
  %76 = ptrtoint ptr %len39.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv.i, ptr %len39.i, align 8
  %read_len40.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 4, i32 2
  %77 = ptrtoint ptr %read_len40.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.select.i, ptr %read_len40.i, align 4
  %continued41.i = getelementptr %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 1, i32 1, i32 1, i32 0, i32 4, i32 3
  %78 = ptrtoint ptr %continued41.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %continued41.i, align 8
  tail call fastcc void @svc_i3c_master_enqueue_xfer(ptr noundef %m, ptr noundef nonnull %call7.i.i.i.i11) #12
  %comp.i25 = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call7.i.i.i.i11, i32 0, i32 1
  %call43.i = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i25, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %cond.end36.i.if.end46.i_crit_edge

cond.end36.i.if.end46.i_crit_edge:                ; preds = %cond.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.then45.i:                                      ; preds = %cond.end36.i
  %lock.i.i26 = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 12, i32 2
  %call2.i.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i26) #12
  %cur.i.i.i28 = getelementptr inbounds %struct.svc_i3c_master, ptr %m, i32 0, i32 12, i32 1
  %79 = ptrtoint ptr %cur.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i.i.i28, align 4
  %cmp.i.i.i29 = icmp eq ptr %80, %call7.i.i.i.i11
  br i1 %cmp.i.i.i29, label %if.then.i.i.i30, label %if.else.i.i.i32

if.then.i.i.i30:                                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %cur.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %cur.i.i.i28, align 4
  br label %svc_i3c_master_dequeue_xfer.exit.i36

if.else.i.i.i32:                                  ; preds = %if.then45.i
  %call.i.i.i.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i.i11) #12
  br i1 %call.i.i.i.i.i31, label %if.end.i.i.i.i.i34, label %if.else.i.i.i32.list_del_init.exit.i.i.i35_crit_edge

if.else.i.i.i32.list_del_init.exit.i.i.i35_crit_edge: ; preds = %if.else.i.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i35

if.end.i.i.i.i.i34:                               ; preds = %if.else.i.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %prev.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i.i13, align 4
  %84 = ptrtoint ptr %call7.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call7.i.i.i.i11, align 8
  %prev1.i.i.i.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i.i.i.i33, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del_init.exit.i.i.i35

list_del_init.exit.i.i.i35:                       ; preds = %if.end.i.i.i.i.i34, %if.else.i.i.i32.list_del_init.exit.i.i.i35_crit_edge
  %88 = ptrtoint ptr %call7.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %call7.i.i.i.i11, ptr %call7.i.i.i.i11, align 8
  %89 = ptrtoint ptr %prev.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i.i.i11, ptr %prev.i.i.i13, align 4
  br label %svc_i3c_master_dequeue_xfer.exit.i36

svc_i3c_master_dequeue_xfer.exit.i36:             ; preds = %list_del_init.exit.i.i.i35, %if.then.i.i.i30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i26, i32 noundef %call2.i.i27) #12
  br label %if.end46.i

if.end46.i:                                       ; preds = %svc_i3c_master_dequeue_xfer.exit.i36, %cond.end36.i.if.end46.i_crit_edge
  %90 = ptrtoint ptr %read_len40.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %read_len40.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %91, %conv.i
  br i1 %cmp.not.i, label %if.end46.i.if.end56.i_crit_edge, label %if.then49.i

if.end46.i.if.end56.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv51.i = trunc i32 %91 to i16
  %92 = ptrtoint ptr %dests.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dests.i, align 4
  %payload54.i = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %payload54.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv51.i, ptr %payload54.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end56.i_crit_edge
  %95 = ptrtoint ptr %ret.i.i15 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ret.i.i15, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end56.i, %if.end26.i, %if.end.i.cleanup.sink.split_crit_edge
  %call7.i.i.i.i11.sink = phi ptr [ %call7.i.i.i.i11, %if.end56.i ], [ %call7.i.i.i.i, %if.end26.i ], [ %call7.i.i.i.i, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %96, %if.end56.i ], [ %45, %if.end26.i ], [ -12, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i11.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_priv_xfers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xfers, i32 noundef %nxfers) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nxfers, i32 24) #12
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 76) #12
  %retval.0.i.i = select i1 %5, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nxfers, ptr %ncmds2.i, align 8
  %ret.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -110, ptr %ret.i, align 64
  %type = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %cmp95 = icmp sgt i32 %nxfers, 0
  br i1 %cmp95, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.096 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx4 = getelementptr %struct.svc_i3c_master, ptr %1, i32 0, i32 4, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.096
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6 = icmp ne i8 %18, 0
  %rnw7 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096, i32 1
  %frombool = zext i1 %tobool6 to i8
  %19 = ptrtoint ptr %rnw7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %rnw7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  %data20 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.096, i32 2
  %20 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data20, align 4
  %len92 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.096, i32 1
  %22 = ptrtoint ptr %len92 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len92, align 2
  %conv2493 = zext i16 %23 to i32
  %. = select i1 %tobool10.not, ptr null, ptr %21
  %.99 = select i1 %tobool10.not, ptr %21, ptr null
  %.conv2493 = select i1 %tobool10.not, i32 0, i32 %conv2493
  %24 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %., ptr %24, align 8
  %26 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.99, ptr %26, align 4
  %28 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv2493, ptr %28, align 8
  %read_len = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096, i32 5
  %30 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.conv2493, ptr %read_len, align 4
  %add = add nuw nsw i32 %i.096, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %nxfers)
  %cmp37 = icmp slt i32 %add, %nxfers
  %continued = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.096, i32 6
  %frombool39 = zext i1 %cmp37 to i8
  %31 = ptrtoint ptr %continued to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool39, ptr %continued, align 8
  %exitcond.not = icmp eq i32 %add, %nxfers
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @svc_i3c_master_enqueue_xfer(ptr noundef %1, ptr noundef nonnull %call9.i.i.i)
  %comp = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1
  %call41 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %for.end.if.end44_crit_edge

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then43:                                        ; preds = %for.end
  %lock.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 12, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %cur.i.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 12, i32 1
  %32 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i.i, align 4
  %cmp.i.i = icmp eq ptr %33, %call9.i.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cur.i.i, align 4
  br label %svc_i3c_master_dequeue_xfer.exit

if.else.i.i:                                      ; preds = %if.then43
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call9.i.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call9.i.i.i, align 128
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else.i.i.list_del_init.exit.i.i_crit_edge
  %41 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  br label %svc_i3c_master_dequeue_xfer.exit

svc_i3c_master_dequeue_xfer.exit:                 ; preds = %list_del_init.exit.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %if.end44

if.end44:                                         ; preds = %svc_i3c_master_dequeue_xfer.exit, %for.end.if.end44_crit_edge
  %43 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ret.i, align 64
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.end44 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_attach_i2c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %free_slots.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #12, !range !140
  %shl.i = shl nuw i32 1, %4
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %3, %neg.i
  %5 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.i, ptr %free_slots.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_slots.i, align 8
  %or.i = or i32 %8, %shl.i
  store i32 %or.i, ptr %free_slots.i, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %4 to i8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.i2c_dev_desc, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 4
  %conv6 = trunc i16 %11 to i8
  %arrayidx = getelementptr %struct.svc_i3c_master, ptr %1, i32 0, i32 4, i32 %4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %arrayidx, align 1
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_detach_i2c_dev(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %conv = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv
  %free_slots.i = getelementptr inbounds %struct.svc_i3c_master, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_slots.i, align 8
  %or.i = or i32 %shl.i, %7
  store i32 %or.i, ptr %free_slots.i, align 8
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_i2c_xfers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xfers, i32 noundef %nxfers) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nxfers, i32 24) #12
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 76) #12
  %retval.0.i.i = select i1 %5, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %nxfers, ptr %ncmds2.i, align 8
  %ret.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -110, ptr %ret.i, align 64
  %type = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %cmp93 = icmp sgt i32 %nxfers, 0
  br i1 %cmp93, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cond.end31.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.094 = phi i32 [ %add, %cond.end31.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 4
  %idxprom = zext i8 %13 to i32
  %arrayidx4 = getelementptr %struct.svc_i3c_master, ptr %1, i32 0, i32 4, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.094, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool6.not = icmp eq i16 %19, 0
  %rnw = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 1
  %20 = trunc i16 %19 to i8
  %21 = ptrtoint ptr %rnw to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rnw, align 1
  br i1 %tobool6.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %in82 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 2
  %22 = ptrtoint ptr %in82 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %in82, align 8
  br label %cond.end18

cond.end:                                         ; preds = %for.body
  %buf = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.094, i32 3
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %in = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 2
  %25 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not = icmp eq i8 %20, 0
  br i1 %tobool12.not, label %cond.end.cond.end18_crit_edge, label %cond.end18.thread

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end18

cond.end18.thread:                                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %out88 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 3
  %26 = ptrtoint ptr %out88 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %out88, align 4
  %len89 = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.094, i32 2
  %27 = ptrtoint ptr %len89 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len89, align 4
  %conv2190 = zext i16 %28 to i32
  br label %cond.end31

cond.end18:                                       ; preds = %cond.end.cond.end18_crit_edge, %cond.end.thread
  %buf17 = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.094, i32 3
  %29 = ptrtoint ptr %buf17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf17, align 4
  %out = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 3
  %31 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %out, align 4
  %len = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.094, i32 2
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len, align 4
  %conv21 = zext i16 %33 to i32
  br label %cond.end31

cond.end31:                                       ; preds = %cond.end18, %cond.end18.thread
  %conv21.sink = phi i32 [ %conv21, %cond.end18 ], [ %conv2190, %cond.end18.thread ]
  %cond32 = phi i32 [ 0, %cond.end18 ], [ %conv2190, %cond.end18.thread ]
  %len22 = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 4
  %34 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv21.sink, ptr %len22, align 8
  %read_len = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 5
  %35 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond32, ptr %read_len, align 4
  %add = add nuw nsw i32 %i.094, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %nxfers)
  %cmp33 = icmp slt i32 %add, %nxfers
  %continued = getelementptr %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 5, i32 %i.094, i32 6
  %frombool35 = zext i1 %cmp33 to i8
  %36 = ptrtoint ptr %continued to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool35, ptr %continued, align 8
  %exitcond.not = icmp eq i32 %add, %nxfers
  br i1 %exitcond.not, label %cond.end31.for.end_crit_edge, label %cond.end31.for.body_crit_edge

cond.end31.for.body_crit_edge:                    ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cond.end31.for.end_crit_edge:                     ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.end31.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @svc_i3c_master_enqueue_xfer(ptr noundef %1, ptr noundef nonnull %call9.i.i.i)
  %comp = getelementptr inbounds %struct.svc_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1
  %call37 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %for.end
  %lock.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 12, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %cur.i.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i.i, align 4
  %cmp.i.i = icmp eq ptr %38, %call9.i.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %cur.i.i, align 4
  br label %svc_i3c_master_dequeue_xfer.exit

if.else.i.i:                                      ; preds = %if.then39
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call9.i.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.list_del_init.exit.i.i_crit_edge

if.else.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call9.i.i.i, align 128
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else.i.i.list_del_init.exit.i.i_crit_edge
  %46 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  br label %svc_i3c_master_dequeue_xfer.exit

svc_i3c_master_dequeue_xfer.exit:                 ; preds = %list_del_init.exit.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %if.end40

if.end40:                                         ; preds = %svc_i3c_master_dequeue_xfer.exit, %for.end.if.end40_crit_edge
  %48 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ret.i, align 64
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %if.end40 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_request_ibi(ptr noundef %dev, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %ibi = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %ibi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ibi, align 4
  %max_payload_len = getelementptr inbounds %struct.i3c_device_ibi_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %max_payload_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_payload_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp = icmp ugt i32 %7, 16
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev3 = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %7, i32 noundef 16) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @i3c_generic_ibi_alloc_pool(ptr noundef %dev, ptr noundef %req) #12
  %ibi_pool = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %ibi_pool, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %do.body14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call6 to i32
  br label %cleanup

do.body14:                                        ; preds = %if.end
  %ibi16 = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 13
  %lock = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 13, i32 3
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %12 = ptrtoint ptr %ibi16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ibi16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2470.not = icmp eq i32 %13, 0
  br i1 %cmp2470.not, label %do.body14.for.end_crit_edge, label %for.body.lr.ph

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body14
  %slots = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slots, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.071
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.then27, label %for.inc

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ibi28 = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %ibi28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.071, ptr %ibi28, align 4
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slots, align 4
  %arrayidx31 = getelementptr ptr, ptr %20, i32 %i.071
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %arrayidx31, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then27, %do.body14.for.end_crit_edge
  %i.069 = phi i32 [ %i.071, %if.then27 ], [ 0, %do.body14.for.end_crit_edge ], [ %13, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #12
  %22 = ptrtoint ptr %ibi16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ibi16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.069, i32 %23)
  %cmp37 = icmp ult i32 %i.069, %23
  br i1 %cmp37, label %for.end.cleanup_crit_edge, label %if.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_free_pool(ptr noundef %25) #12
  %26 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ibi_pool, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %for.end.cleanup_crit_edge, %if.then9, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ %11, %if.then9 ], [ -28, %if.end40 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_free_ibi(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %lock = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 13, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %slots = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slots, align 4
  %ibi9 = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ibi9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ibi9, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  store i32 -1, ptr %ibi9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %ibi_pool = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_free_pool(ptr noundef %10) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_enable_ibi(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %dev2 = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.37) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #12, !srcloc !114
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dyn_addr, align 1
  %call5 = tail call i32 @i3c_master_enec_locked(ptr noundef %1, i8 noundef zeroext %10, i8 noundef zeroext 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_master_disable_ibi(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %regs.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 144
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %6, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %4) #12, !srcloc !114
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dyn_addr, align 1
  %call2 = tail call i32 @i3c_master_disec_locked(ptr noundef %1, i8 noundef zeroext %8, i8 noundef zeroext 1) #12
  %dev3 = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 8
  %call.i10 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_i3c_master_recycle_ibi_slot(ptr nocapture noundef readonly %dev, ptr noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %ibi_pool = getelementptr inbounds %struct.svc_i3c_i2c_dev_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %3, ptr noundef %slot) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_get_free_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_set_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_i3c_master_do_daa_locked(ptr noundef %master, ptr nocapture noundef %addrs, ptr nocapture noundef writeonly %count) unnamed_addr #2 align 64 {
entry:
  %prov_id = alloca [32 x i64], align 8
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %prov_id) #12
  %0 = call ptr @memset(ptr %prov_id, i32 0, i32 256)
  %regs = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 2
  %1 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %dev = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %do.body431, %entry
  %last_addr.0.ph = phi i8 [ %101, %do.body431 ], [ 0, %entry ]
  %dev_nb.0.ph = phi i32 [ %inc438, %do.body431 ], [ 0, %entry ]
  %nacking_prov_id.0.ph = phi i64 [ %nacking_prov_id.0, %do.body431 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %if.end239, %while.cond.outer
  %dev_nb.0 = phi i32 [ %dec, %if.end239 ], [ %dev_nb.0.ph, %while.cond.outer ]
  %nacking_prov_id.0 = phi i64 [ %75, %if.end239 ], [ %nacking_prov_id.0.ph, %while.cond.outer ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1140850688) #12, !srcloc !114
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 1000000
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr18572 = getelementptr i8, ptr %9, i32 136
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18572) #12, !srcloc !115
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  %and573 = lshr i32 %11, 11
  %and54574 = lshr i32 %11, 9
  %shr508575 = or i32 %and573, %and54574
  %or56576 = and i32 %shr508575, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or56576)
  %tobool.not577 = icmp eq i32 %or56576, 0
  br i1 %tobool.not577, label %while.cond.land.lhs.true_crit_edge, label %while.cond.do.end91_crit_edge

while.cond.do.end91_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

while.cond.land.lhs.true_crit_edge:               ; preds = %while.cond
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %while.cond.land.lhs.true_crit_edge
  %call58 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call58, %add.i
  br i1 %cmp3.i, label %if.then60, label %cond.false

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr64 = getelementptr i8, ptr %13, i32 136
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #12, !srcloc !115
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.pre = lshr i32 %15, 11
  %.pre593 = lshr i32 %15, 9
  br label %do.end91

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #12
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 136
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #12, !srcloc !115
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  %and = lshr i32 %20, 11
  %and54 = lshr i32 %20, 9
  %shr508 = or i32 %and, %and54
  %or56 = and i32 %shr508, 1
  %tobool.not = icmp eq i32 %or56, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.do.end91_crit_edge

cond.false.do.end91_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

do.end91:                                         ; preds = %cond.false.do.end91_crit_edge, %if.then60, %while.cond.do.end91_crit_edge
  %and111.pre-phi = phi i32 [ %and54574, %while.cond.do.end91_crit_edge ], [ %.pre593, %if.then60 ], [ %and54, %cond.false.do.end91_crit_edge ]
  %and93.pre-phi = phi i32 [ %and573, %while.cond.do.end91_crit_edge ], [ %.pre, %if.then60 ], [ %and, %cond.false.do.end91_crit_edge ]
  %reg.0 = phi i32 [ %11, %while.cond.do.end91_crit_edge ], [ %15, %if.then60 ], [ %20, %cond.false.do.end91_crit_edge ]
  %shr94 = and i32 %and93.pre-phi, 1
  %shr112 = and i32 %and111.pre-phi, 1
  %or113 = or i32 %shr94, %shr112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or113)
  %tobool114.not = icmp eq i32 %or113, 0
  br i1 %tobool114.not, label %do.end91.cleanup441_crit_edge, label %do.end132

do.end91.cleanup441_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

do.end132:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr94)
  %tobool136.not = icmp eq i32 %shr94, 0
  br i1 %tobool136.not, label %do.end167, label %if.then137

if.then137:                                       ; preds = %do.end132
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #12
  %21 = call ptr @memset(ptr %data, i32 255, i32 6)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end60.i.for.body.i_crit_edge, %if.then137
  %i.087.i = phi i32 [ 0, %if.then137 ], [ %inc.i, %if.end60.i.for.body.i_crit_edge ]
  %call.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond2.i

for.cond2.i:                                      ; preds = %land.lhs.true.i.for.cond2.i_crit_edge, %for.body.i
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 136
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %25 = and i32 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond2.i.if.end60.i_crit_edge

for.cond2.i.if.end60.i_crit_edge:                 ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %for.cond2.i
  %call19.i = tail call i64 @ktime_get() #12
  %cmp3.i.i = icmp sgt i64 %call19.i, %add.i.i
  br i1 %cmp3.i.i, label %do.end53.i, label %land.lhs.true.i.for.cond2.i_crit_edge

land.lhs.true.i.for.cond2.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.i

do.end53.i:                                       ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr26.i = getelementptr i8, ptr %27, i32 136
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %29 = and i32 %28, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool57.not.i = icmp eq i32 %29, 0
  br i1 %tobool57.not.i, label %cleanup.thread, label %do.end53.i.if.end60.i_crit_edge

do.end53.i.if.end60.i_crit_edge:                  ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

cleanup.thread:                                   ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #12
  br label %cleanup441

if.end60.i:                                       ; preds = %do.end53.i.if.end60.i_crit_edge, %for.cond2.i.if.end60.i_crit_edge
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr64.i = getelementptr i8, ptr %31, i32 192
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #12, !srcloc !115
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  %conv.i = trunc i32 %33 to i8
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.087.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.cond142.preheader, label %if.end60.i.for.body.i_crit_edge

if.end60.i.for.body.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond142.preheader:                            ; preds = %if.end60.i
  %arrayidx145 = getelementptr [32 x i64], ptr %prov_id, i32 0, i32 %dev_nb.0
  %35 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load8_noabort(i32 %35)
  %arrayidx145.promoted = load i64, ptr %arrayidx145, align 8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data, align 1
  %conv = zext i8 %37 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %or146 = or i64 %shl, %arrayidx145.promoted
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %1, align 1
  %conv.1 = zext i8 %39 to i64
  %shl.1 = shl nuw nsw i64 %conv.1, 32
  %or146.1 = or i64 %shl.1, %or146
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 1
  %conv.2 = zext i8 %41 to i64
  %shl.2 = shl nuw nsw i64 %conv.2, 24
  %or146.2 = or i64 %shl.2, %or146.1
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 1
  %conv.3 = zext i8 %43 to i64
  %shl.3 = shl nuw nsw i64 %conv.3, 16
  %or146.3 = or i64 %shl.3, %or146.2
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  %conv.4 = zext i8 %45 to i64
  %shl.4 = shl nuw nsw i64 %conv.4, 8
  %or146.4 = or i64 %shl.4, %or146.3
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %5, align 1
  %conv.5 = zext i8 %47 to i64
  %or146.5 = or i64 %or146.4, %conv.5
  store i64 %or146.5, ptr %arrayidx145, align 8
  %call.i517 = tail call i64 @ktime_get() #12
  %add.i.i518 = add i64 %call.i517, 1000000
  br label %for.cond2.i522

for.cond2.i522:                                   ; preds = %land.lhs.true.i525.for.cond2.i522_crit_edge, %for.cond142.preheader
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr.i520 = getelementptr i8, ptr %49, i32 136
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i520) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %51 = and i32 %50, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i521 = icmp eq i32 %51, 0
  br i1 %tobool.not.i521, label %land.lhs.true.i525, label %for.cond2.i522.if.end60.i534_crit_edge

for.cond2.i522.if.end60.i534_crit_edge:           ; preds = %for.cond2.i522
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i534

land.lhs.true.i525:                               ; preds = %for.cond2.i522
  %call19.i523 = tail call i64 @ktime_get() #12
  %cmp3.i.i524 = icmp sgt i64 %call19.i523, %add.i.i518
  br i1 %cmp3.i.i524, label %do.end53.i528, label %land.lhs.true.i525.for.cond2.i522_crit_edge

land.lhs.true.i525.for.cond2.i522_crit_edge:      ; preds = %land.lhs.true.i525
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.i522

do.end53.i528:                                    ; preds = %land.lhs.true.i525
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr26.i526 = getelementptr i8, ptr %53, i32 136
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i526) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %55 = and i32 %54, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool57.not.i527 = icmp eq i32 %55, 0
  br i1 %tobool57.not.i527, label %do.end53.i528.cleanup_crit_edge, label %do.end53.i528.if.end60.i534_crit_edge

do.end53.i528.if.end60.i534_crit_edge:            ; preds = %do.end53.i528
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i534

do.end53.i528.cleanup_crit_edge:                  ; preds = %do.end53.i528
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end60.i534:                                    ; preds = %do.end53.i528.if.end60.i534_crit_edge, %for.cond2.i522.if.end60.i534_crit_edge
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr64.i529 = getelementptr i8, ptr %57, i32 192
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i529) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  %call.i517.1 = tail call i64 @ktime_get() #12
  %add.i.i518.1 = add i64 %call.i517.1, 1000000
  br label %for.cond2.i522.1

for.cond2.i522.1:                                 ; preds = %land.lhs.true.i525.1.for.cond2.i522.1_crit_edge, %if.end60.i534
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr.i520.1 = getelementptr i8, ptr %60, i32 136
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i520.1) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %62 = and i32 %61, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i521.1 = icmp eq i32 %62, 0
  br i1 %tobool.not.i521.1, label %land.lhs.true.i525.1, label %for.cond2.i522.1.if.end60.i534.1_crit_edge

for.cond2.i522.1.if.end60.i534.1_crit_edge:       ; preds = %for.cond2.i522.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i534.1

land.lhs.true.i525.1:                             ; preds = %for.cond2.i522.1
  %call19.i523.1 = tail call i64 @ktime_get() #12
  %cmp3.i.i524.1 = icmp sgt i64 %call19.i523.1, %add.i.i518.1
  br i1 %cmp3.i.i524.1, label %do.end53.i528.1, label %land.lhs.true.i525.1.for.cond2.i522.1_crit_edge

land.lhs.true.i525.1.for.cond2.i522.1_crit_edge:  ; preds = %land.lhs.true.i525.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.i522.1

do.end53.i528.1:                                  ; preds = %land.lhs.true.i525.1
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr26.i526.1 = getelementptr i8, ptr %64, i32 136
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i526.1) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %66 = and i32 %65, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool57.not.i527.1 = icmp eq i32 %66, 0
  br i1 %tobool57.not.i527.1, label %do.end53.i528.1.cleanup_crit_edge, label %do.end53.i528.1.if.end60.i534.1_crit_edge

do.end53.i528.1.if.end60.i534.1_crit_edge:        ; preds = %do.end53.i528.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i534.1

do.end53.i528.1.cleanup_crit_edge:                ; preds = %do.end53.i528.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end60.i534.1:                                  ; preds = %do.end53.i528.1.if.end60.i534.1_crit_edge, %for.cond2.i522.1.if.end60.i534.1_crit_edge
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr64.i529.1 = getelementptr i8, ptr %68, i32 192
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i529.1) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #12
  br label %if.end243

cleanup:                                          ; preds = %do.end53.i528.1.cleanup_crit_edge, %do.end53.i528.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #12
  br label %cleanup441

do.end167:                                        ; preds = %do.end132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr112)
  %tobool171.not = icmp eq i32 %shr112, 0
  br i1 %tobool171.not, label %do.end167.if.end243_crit_edge, label %do.end187

do.end167.if.end243_crit_edge:                    ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

do.end187:                                        ; preds = %do.end167
  %70 = and i32 %reg.0, 1031
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %70)
  %.not553 = icmp eq i32 %70, 1024
  br i1 %.not553, label %while.end, label %do.end229

do.end229:                                        ; preds = %do.end187
  %71 = and i32 %reg.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool233.not = icmp eq i32 %71, 0
  br i1 %tobool233.not, label %do.end229.cleanup441_crit_edge, label %if.then234

do.end229.cleanup441_crit_edge:                   ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.then234:                                       ; preds = %do.end229
  %arrayidx235 = getelementptr [32 x i64], ptr %prov_id, i32 0, i32 %dev_nb.0
  %72 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx235, align 8
  %cmp236 = icmp eq i64 %73, %nacking_prov_id.0
  br i1 %cmp236, label %if.then234.cleanup441_crit_edge, label %if.end239

if.then234.cleanup441_crit_edge:                  ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end239:                                        ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %dev_nb.0, -1
  %arrayidx240 = getelementptr [32 x i64], ptr %prov_id, i32 0, i32 %dec
  %74 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx240, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr.i538 = getelementptr i8, ptr %77, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i538, i32 33554432) #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #12
  br label %while.cond

if.end243:                                        ; preds = %do.end167.if.end243_crit_edge, %if.end60.i534.1
  %call247 = tail call i64 @ktime_get() #12
  %add.i539 = add i64 %call247, 1000000
  br label %for.cond249

for.cond249:                                      ; preds = %land.lhs.true320.for.cond249_crit_edge, %if.end243
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr253 = getelementptr i8, ptr %80, i32 136
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #12, !srcloc !115
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  %83 = and i32 %82, 535
  call void @__sanitizer_cov_trace_const_cmp4(i32 533, i32 %83)
  %.not = icmp eq i32 %83, 533
  br i1 %.not, label %for.cond249.do.end362_crit_edge, label %land.lhs.true320

for.cond249.do.end362_crit_edge:                  ; preds = %for.cond249
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end362

land.lhs.true320:                                 ; preds = %for.cond249
  %call321 = tail call i64 @ktime_get() #12
  %cmp3.i541 = icmp sgt i64 %call321, %add.i539
  br i1 %cmp3.i541, label %if.then325, label %land.lhs.true320.for.cond249_crit_edge

land.lhs.true320.for.cond249_crit_edge:           ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond249

if.then325:                                       ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %add.ptr329 = getelementptr i8, ptr %85, i32 136
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr329) #12, !srcloc !115
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  br label %do.end362

do.end362:                                        ; preds = %if.then325, %for.cond249.do.end362_crit_edge
  %reg.1 = phi i32 [ %87, %if.then325 ], [ %82, %for.cond249.do.end362_crit_edge ]
  %88 = and i32 %reg.1, 535
  call void @__sanitizer_cov_trace_const_cmp4(i32 533, i32 %88)
  %89 = icmp eq i32 %88, 533
  br i1 %89, label %if.end410, label %do.end362.cleanup441_crit_edge

do.end362.cleanup441_crit_edge:                   ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end410:                                        ; preds = %do.end362
  %conv411 = add i8 %last_addr.0.ph, 1
  %call412 = tail call i32 @i3c_master_get_free_addr(ptr noundef %master, i8 noundef zeroext %conv411) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %cmp413 = icmp slt i32 %call412, 0
  br i1 %cmp413, label %if.end410.cleanup441_crit_edge, label %if.end416

if.end410.cleanup441_crit_edge:                   ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup441

if.end416:                                        ; preds = %if.end410
  %conv417 = trunc i32 %call412 to i8
  %arrayidx418 = getelementptr i8, ptr %addrs, i32 %dev_nb.0
  %90 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv417, ptr %arrayidx418, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_i3c_master_do_daa_locked.__UNIQUE_ID_ddebug434, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_i3c_master_do_daa_locked, %if.then425)) #12
          to label %do.body431 [label %if.then425], !srcloc !150

if.then425:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 8
  %93 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx418, align 1
  %conv427 = zext i8 %94 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @svc_i3c_master_do_daa_locked.__UNIQUE_ID_ddebug434, ptr noundef %92, ptr noundef nonnull @.str.29, i32 noundef %dev_nb.0, i32 noundef %conv427) #12
  br label %do.body431

do.body431:                                       ; preds = %if.then425, %if.end416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  %95 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx418, align 1
  %conv435 = zext i8 %96 to i32
  %97 = shl nuw i32 %conv435, 24
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr437 = getelementptr i8, ptr %99, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr437, i32 %97) #12, !srcloc !114
  %inc438 = add i32 %dev_nb.0, 1
  %100 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx418, align 1
  br label %while.cond.outer

while.end:                                        ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %dev_nb.0, ptr %count, align 4
  br label %cleanup441

cleanup441:                                       ; preds = %while.end, %if.end410.cleanup441_crit_edge, %do.end362.cleanup441_crit_edge, %if.then234.cleanup441_crit_edge, %do.end229.cleanup441_crit_edge, %cleanup, %cleanup.thread, %do.end91.cleanup441_crit_edge
  %retval.3 = phi i32 [ -110, %cleanup ], [ 0, %while.end ], [ -110, %cleanup.thread ], [ -110, %do.end91.cleanup441_crit_edge ], [ -5, %if.then234.cleanup441_crit_edge ], [ -5, %do.end229.cleanup441_crit_edge ], [ %call412, %if.end410.cleanup441_crit_edge ], [ -110, %do.end362.cleanup441_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %prov_id) #12
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_add_i3c_dev_locked(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_i3c_master_enqueue_xfer(ptr noundef %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.svc_i3c_xfer, ptr %xfer, i32 0, i32 1
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %xfer, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #12
  %lock = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 12, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %cur = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %xferqueue = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 12, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xfer, ptr noundef %4, ptr noundef %xferqueue) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfer, ptr %prev.i, align 4
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xferqueue, ptr %xfer, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %xfer, ptr %4, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xfer, ptr %cur, align 4
  %xferqueue.i = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 12
  %tobool.not95.i = icmp eq ptr %xfer, null
  br i1 %tobool.not95.i, label %if.else.if.end_crit_edge, label %if.end.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.lr.ph.i:                                   ; preds = %if.else
  %dev.i = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 1
  %regs.i.i = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %call.i.i1825 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1825)
  %cmp.i.i26 = icmp slt i32 %call.i.i1825, 0
  br i1 %cmp.i.i26, label %if.end.lr.ph.i.if.then.i.i_crit_edge, label %if.end.lr.ph.i.if.end3.i_crit_edge

if.end.lr.ph.i.if.end3.i_crit_edge:               ; preds = %if.end.lr.ph.i
  br label %if.end3.i

if.end.lr.ph.i.if.then.i.i_crit_edge:             ; preds = %if.end.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end27.i.if.then.i.i_crit_edge, %if.end.lr.ph.i.if.then.i.i_crit_edge
  %.lcssa21 = phi ptr [ %11, %if.end.lr.ph.i.if.then.i.i_crit_edge ], [ %125, %if.end27.i.if.then.i.i_crit_edge ]
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %.lcssa21, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.31) #15
  br label %if.end

if.end3.i:                                        ; preds = %if.end27.i.if.end3.i_crit_edge, %if.end.lr.ph.i.if.end3.i_crit_edge
  %15 = phi ptr [ %114, %if.end27.i.if.end3.i_crit_edge ], [ %xfer, %if.end.lr.ph.i.if.end3.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !131
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 156
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %20, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %18) #12, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %22, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 50331648) #12, !srcloc !114
  %ncmds.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %15, i32 0, i32 4
  %23 = ptrtoint ptr %ncmds.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ncmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp493.not.i = icmp eq i32 %24, 0
  br i1 %cmp493.not.i, label %if.end3.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  %type.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %15, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.094.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i
  %rnw.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i, i32 1
  %25 = ptrtoint ptr %rnw.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rnw.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 4
  %in.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i, i32 2
  %31 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i, i32 3
  %33 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out.i, align 4
  %len.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i, i32 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %read_len.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i, i32 5
  %continued.i = getelementptr %struct.svc_i3c_xfer, ptr %15, i32 0, i32 5, i32 %i.094.i, i32 6
  %37 = ptrtoint ptr %continued.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %continued.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool6.not.i = icmp eq i8 %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %read_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read_len.i, align 4
  %shl.i.i = select i1 %tobool5.not.i, i32 0, i32 256
  %conv47.i.i = zext i8 %30 to i32
  %shl48.i.i = shl nuw nsw i32 %conv47.i.i, 9
  %and49.i.i = and i32 %shl48.i.i, 65024
  %shl73.i.i = shl i32 %40, 16
  %and74.i.i = and i32 %shl73.i.i, 16711680
  %or2.i.i = or i32 %28, %shl.i.i
  %or23.i.i = or i32 %or2.i.i, %and49.i.i
  %or50.i.i = or i32 %or23.i.i, %and74.i.i
  %or75.i.i = or i32 %or50.i.i, 65
  %41 = tail call i32 @llvm.bswap.i32(i32 %or75.i.i) #12
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %43, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %41) #12, !srcloc !114
  %call.i73.i = tail call i64 @ktime_get() #12
  %add.i.i.i = add i64 %call.i73.i, 1000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %for.body.i
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr90.i.i = getelementptr i8, ptr %45, i32 136
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %47 = and i32 %46, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool111.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool111.not.i.i, label %land.lhs.true.i.i, label %for.cond.i.i.if.end154.i.i_crit_edge

for.cond.i.i.if.end154.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call115.i.i = tail call i64 @ktime_get() #12
  %cmp3.i.i.i = icmp sgt i64 %call115.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %do.end147.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

do.end147.i.i:                                    ; preds = %land.lhs.true.i.i
  %48 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i, align 4
  %add.ptr123.i.i = getelementptr i8, ptr %49, i32 136
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !156
  %51 = and i32 %50, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %phi.cmp.i.i = icmp eq i32 %51, 0
  br i1 %phi.cmp.i.i, label %do.end147.i.i.svc_i3c_master_xfer.exit.i_crit_edge, label %do.end147.i.i.if.end154.i.i_crit_edge

do.end147.i.i.if.end154.i.i_crit_edge:            ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i.i

do.end147.i.i.svc_i3c_master_xfer.exit.i_crit_edge: ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_i3c_master_xfer.exit.i

if.end154.i.i:                                    ; preds = %do.end147.i.i.if.end154.i.i_crit_edge, %for.cond.i.i.if.end154.i.i_crit_edge
  br i1 %tobool5.not.i, label %if.else.i.i, label %if.end159.i.i

if.else.i.i:                                      ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp74.not.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp74.not.i.i.i, label %if.else.i.i.if.end166.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.else.i.i.if.end166.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.else.i.i
  %sub.i.i.i = add i32 %36, -1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end53.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %offset.075.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %offset.1.i.i.i, %if.end53.i.i.i.while.body.i.i.i_crit_edge ]
  %call.i.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i.i = add i64 %call.i.i.i, 1000000
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.for.cond.i.i.i_crit_edge, %while.body.i.i.i
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 172
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !115
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  %and.i.i.i = and i32 %55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i.for.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.cond.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.cond.i.i.i
  %call14.i.i.i = tail call i64 @ktime_get() #12
  %cmp3.i.i.i.i = icmp sgt i64 %call14.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then17.i.i.i, label %land.lhs.true.i.i.i.for.cond.i.i.i_crit_edge

land.lhs.true.i.i.i.for.cond.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

if.then17.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %add.ptr21.i.i.i = getelementptr i8, ptr %57, i32 172
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i.i) #12, !srcloc !115
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.then17.i.i.i, %for.cond.i.i.i.for.end.i.i.i_crit_edge
  %mdctrl.0.i.i.i = phi i32 [ %59, %if.then17.i.i.i ], [ %55, %for.cond.i.i.i.for.end.i.i.i_crit_edge ]
  %and30.i.i.i = and i32 %mdctrl.0.i.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.end34.i.i.i, label %for.end.i.i.i.svc_i3c_master_xfer.exit.i_crit_edge

for.end.i.i.i.svc_i3c_master_xfer.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_i3c_master_xfer.exit.i

if.end34.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.075.i.i.i, i32 %sub.i.i.i)
  %cmp35.i.i.i = icmp ult i32 %offset.075.i.i.i, %sub.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %arrayidx.i.i.i = getelementptr i8, ptr %34, i32 %offset.075.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %61 to i32
  %62 = shl nuw i32 %conv.i.i.i, 24
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  br i1 %cmp35.i.i.i, label %do.body40.i.i.i, label %do.body45.i.i.i, !prof !159

do.body40.i.i.i:                                  ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr44.i.i.i = getelementptr i8, ptr %64, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i.i, i32 %62) #12, !srcloc !114
  br label %if.end53.i.i.i

do.body45.i.i.i:                                  ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr52.i.i.i = getelementptr i8, ptr %64, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i.i.i, i32 %62) #12, !srcloc !114
  br label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %do.body45.i.i.i, %do.body40.i.i.i
  %offset.1.i.i.i = add nuw i32 %offset.075.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %offset.1.i.i.i, %36
  br i1 %exitcond.not.i.i.i, label %if.end53.i.i.i.if.end166.i.i_crit_edge, label %if.end53.i.i.i.while.body.i.i.i_crit_edge

if.end53.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

if.end53.i.i.i.if.end166.i.i_crit_edge:           ; preds = %if.end53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166.i.i

if.end159.i.i:                                    ; preds = %if.end154.i.i
  %call157.i.i = tail call fastcc i32 @svc_i3c_master_read(ptr noundef %master, ptr noundef %32, i32 noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i.i)
  %cmp160.i.i = icmp slt i32 %call157.i.i, 0
  br i1 %cmp160.i.i, label %if.end159.i.i.svc_i3c_master_xfer.exit.i_crit_edge, label %if.then165.i.i

if.end159.i.i.svc_i3c_master_xfer.exit.i_crit_edge: ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_i3c_master_xfer.exit.i

if.then165.i.i:                                   ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %read_len.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call157.i.i, ptr %read_len.i, align 4
  br label %if.end166.i.i

if.end166.i.i:                                    ; preds = %if.then165.i.i, %if.end53.i.i.i.if.end166.i.i_crit_edge, %if.else.i.i.if.end166.i.i_crit_edge
  %call170.i.i = tail call i64 @ktime_get() #12
  %add.i405.i.i = add i64 %call170.i.i, 1000000
  br label %for.cond185.i.i

for.cond185.i.i:                                  ; preds = %land.lhs.true215.i.i.for.cond185.i.i_crit_edge, %if.end166.i.i
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 4
  %add.ptr189.i.i = getelementptr i8, ptr %67, i32 136
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !160
  %69 = and i32 %68, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool211.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool211.not.i.i, label %land.lhs.true215.i.i, label %for.cond185.i.i.do.body259.i.i_crit_edge

for.cond185.i.i.do.body259.i.i_crit_edge:         ; preds = %for.cond185.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body259.i.i

land.lhs.true215.i.i:                             ; preds = %for.cond185.i.i
  %call216.i.i = tail call i64 @ktime_get() #12
  %cmp3.i407.i.i = icmp sgt i64 %call216.i.i, %add.i405.i.i
  br i1 %cmp3.i407.i.i, label %do.end250.i.i, label %land.lhs.true215.i.i.for.cond185.i.i_crit_edge

land.lhs.true215.i.i.for.cond185.i.i_crit_edge:   ; preds = %land.lhs.true215.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond185.i.i

do.end250.i.i:                                    ; preds = %land.lhs.true215.i.i
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 4
  %add.ptr224.i.i = getelementptr i8, ptr %71, i32 136
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  %73 = and i32 %72, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %phi.cmp442.i.i = icmp eq i32 %73, 0
  br i1 %phi.cmp442.i.i, label %do.end250.i.i.svc_i3c_master_xfer.exit.i_crit_edge, label %do.end250.i.i.do.body259.i.i_crit_edge

do.end250.i.i.do.body259.i.i_crit_edge:           ; preds = %do.end250.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body259.i.i

do.end250.i.i.svc_i3c_master_xfer.exit.i_crit_edge: ; preds = %do.end250.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_i3c_master_xfer.exit.i

do.body259.i.i:                                   ; preds = %do.end250.i.i.do.body259.i.i_crit_edge, %for.cond185.i.i.do.body259.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void @arm_heavy_mb() #12
  %74 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i, align 4
  %add.ptr263.i.i = getelementptr i8, ptr %75, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr263.i.i, i32 262144) #12, !srcloc !114
  br i1 %tobool6.not.i, label %if.then265.i.i, label %do.body259.i.i.for.inc.i_crit_edge

do.body259.i.i.for.inc.i_crit_edge:               ; preds = %do.body259.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then265.i.i:                                   ; preds = %do.body259.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i411.i.i = getelementptr i8, ptr %77, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i411.i.i, i32 33554432) #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #12
  %call269.i.i = tail call i64 @ktime_get() #12
  %add.i412.i.i = add i64 %call269.i.i, 1000000
  br label %for.cond284.i.i

for.cond284.i.i:                                  ; preds = %land.lhs.true315.i.i.for.cond284.i.i_crit_edge, %if.then265.i.i
  %79 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i, align 4
  %add.ptr288.i.i = getelementptr i8, ptr %80, i32 136
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr288.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  %82 = and i32 %81, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp310.i.i = icmp eq i32 %82, 0
  br i1 %cmp310.i.i, label %for.cond284.i.i.for.inc.i_crit_edge, label %land.lhs.true315.i.i

for.cond284.i.i.for.inc.i_crit_edge:              ; preds = %for.cond284.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true315.i.i:                             ; preds = %for.cond284.i.i
  %call316.i.i = tail call i64 @ktime_get() #12
  %cmp3.i414.i.i = icmp sgt i64 %call316.i.i, %add.i412.i.i
  br i1 %cmp3.i414.i.i, label %if.then320.i.i, label %land.lhs.true315.i.i.for.cond284.i.i_crit_edge

land.lhs.true315.i.i.for.cond284.i.i_crit_edge:   ; preds = %land.lhs.true315.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond284.i.i

if.then320.i.i:                                   ; preds = %land.lhs.true315.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i, align 4
  %add.ptr324.i.i = getelementptr i8, ptr %84, i32 136
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr324.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  br label %for.inc.i

svc_i3c_master_xfer.exit.i:                       ; preds = %do.end250.i.i.svc_i3c_master_xfer.exit.i_crit_edge, %if.end159.i.i.svc_i3c_master_xfer.exit.i_crit_edge, %for.end.i.i.i.svc_i3c_master_xfer.exit.i_crit_edge, %do.end147.i.i.svc_i3c_master_xfer.exit.i_crit_edge
  %ret.1.i.i = phi i32 [ -110, %for.end.i.i.i.svc_i3c_master_xfer.exit.i_crit_edge ], [ -110, %do.end147.i.i.svc_i3c_master_xfer.exit.i_crit_edge ], [ %call157.i.i, %if.end159.i.i.svc_i3c_master_xfer.exit.i_crit_edge ], [ -110, %do.end250.i.i.svc_i3c_master_xfer.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %86 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i418.i.i = getelementptr i8, ptr %87, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i418.i.i, i32 33554432) #12, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !131
  tail call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i420.i.i = getelementptr i8, ptr %90, i32 156
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420.i.i) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %93, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %91) #12, !srcloc !114
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then320.i.i, %for.cond284.i.i.for.inc.i_crit_edge, %do.body259.i.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.094.i, 1
  %94 = ptrtoint ptr %ncmds.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ncmds.i, align 4
  %cmp4.i = icmp ult i32 %inc.i, %95
  br i1 %cmp4.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %svc_i3c_master_xfer.exit.i, %if.end3.i.for.end.i_crit_edge
  %ret.1.i = phi i32 [ %ret.1.i.i, %svc_i3c_master_xfer.exit.i ], [ 0, %if.end3.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %96 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i, align 8
  %call.i75.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 12, i32 22
  %98 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store volatile i64 %call.i75.i, ptr %last_busy.i.i, align 8
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 8
  %call.i76.i = tail call i32 @__pm_runtime_suspend(ptr noundef %100, i32 noundef 13) #12
  %ret14.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %15, i32 0, i32 2
  %101 = ptrtoint ptr %ret14.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %ret.1.i, ptr %ret14.i, align 4
  %comp.i = getelementptr inbounds %struct.svc_i3c_xfer, ptr %15, i32 0, i32 1
  tail call void @complete(ptr noundef %comp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp15.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %for.end.i.if.end17.i_crit_edge

for.end.i.if.end17.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then16.i:                                      ; preds = %for.end.i
  %102 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur, align 4
  %cmp.i77.i = icmp eq ptr %103, %15
  br i1 %cmp.i77.i, label %if.then.i78.i, label %if.else.i79.i

if.then.i78.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %cur, align 4
  br label %if.end17.i

if.else.i79.i:                                    ; preds = %if.then16.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %15) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i79.i.list_del_init.exit.i.i_crit_edge

if.else.i79.i.list_del_init.exit.i.i_crit_edge:   ; preds = %if.else.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i.i.i, align 4
  %107 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev1.i.i.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %108, ptr %106, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.else.i79.i.list_del_init.exit.i.i_crit_edge
  %111 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %15, ptr %prev.i3.i.i.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %list_del_init.exit.i.i, %if.then.i78.i, %for.end.i.if.end17.i_crit_edge
  %113 = ptrtoint ptr %xferqueue.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %xferqueue.i, align 4
  %cmp23.not.i = icmp eq ptr %114, %xferqueue.i
  %tobool25.not.i31 = icmp eq ptr %114, null
  %tobool25.not.i = or i1 %cmp23.not.i, %tobool25.not.i31
  br i1 %tobool25.not.i, label %cleanup30.loopexit.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end17.i
  %call.i.i80.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %114) #12
  br i1 %call.i.i80.i, label %if.end.i.i.i, label %if.then26.i.if.end27.i_crit_edge

if.then26.i.if.end27.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.end.i.i.i:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i.i.i, align 4
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %114, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i.i, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i.i.i, %if.then26.i.if.end27.i_crit_edge
  %121 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %114, ptr %114, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %114, ptr %prev.i3.i.i, align 4
  %123 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %114, ptr %cur, align 4
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 8
  %call.i.i18 = tail call i32 @__pm_runtime_resume(ptr noundef %125, i32 noundef 4) #12
  %cmp.i.i = icmp slt i32 %call.i.i18, 0
  br i1 %cmp.i.i, label %if.end27.i.if.then.i.i_crit_edge, label %if.end27.i.if.end3.i_crit_edge

if.end27.i.if.end3.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.end27.i.if.then.i.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

cleanup30.loopexit.i:                             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %cur, align 4
  br label %if.end

if.end:                                           ; preds = %cleanup30.loopexit.i, %do.end.i, %if.else.if.end_crit_edge, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_i3c_master_read(ptr nocapture noundef readonly %master, ptr nocapture noundef writeonly %in, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %regs = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 2
  %add = add i32 %0, 100
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body.while.cond.loopexit_crit_edge, %for.cond.preheader.while.cond.loopexit_crit_edge
  br i1 %cmp.not.not, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.cleanup_crit_edge

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %entry
  %offset.097 = phi i32 [ 0, %entry ], [ %add55, %while.cond.loopexit.while.body_crit_edge ]
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 136
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  %4 = and i32 %3, 262144
  %cmp.not.not = icmp eq i32 %4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %do.body18, label %if.end29

do.body18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @svc_i3c_master_read.__UNIQUE_ID_ddebug450, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@svc_i3c_master_read, %if.then25)) #12
          to label %cleanup [label %if.then25], !srcloc !150

if.then25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @svc_i3c_master_read.__UNIQUE_ID_ddebug450, ptr noundef %7, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end29:                                         ; preds = %while.body
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %9, i32 172
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #12, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  %and53 = and i32 %10, 31
  %add55 = add i32 %and53, %offset.097
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %len)
  %cmp56 = icmp ugt i32 %add55, %len
  br i1 %cmp56, label %do.end60, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp6394.not = icmp eq i32 %and53, 0
  br i1 %cmp6394.not, label %for.cond.preheader.while.cond.loopexit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

do.end60:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %dev61 = getelementptr inbounds %struct.svc_i3c_master, ptr %master, i32 0, i32 1
  %11 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev61, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34) #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.095 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr67 = getelementptr i8, ptr %14, i32 192
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #12, !srcloc !115
  %16 = lshr i32 %15, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %conv = trunc i32 %16 to i8
  %add71 = add i32 %i.095, %offset.097
  %arrayidx = getelementptr i8, ptr %in, i32 %add71
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %and53
  br i1 %exitcond.not, label %for.body.while.cond.loopexit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.while.cond.loopexit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit

cleanup:                                          ; preds = %do.end60, %if.then25, %do.body18, %while.cond.loopexit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end60 ], [ -110, %if.then25 ], [ -110, %do.body18 ], [ %add55, %while.cond.loopexit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_alloc_pool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_free_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_enec_locked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_disec_locked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk.i, align 8
  tail call void @clk_disable(ptr noundef %3) #12
  tail call void @clk_unprepare(ptr noundef %3) #12
  %fclk.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  %sclk.i = getelementptr inbounds %struct.svc_i3c_master, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sclk.i, align 8
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_i3c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #12
  %call2 = tail call fastcc i32 @svc_i3c_master_prepare_clks(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !35, !36, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_svc_i3c_master__487_1630_svc_i3c_master_init6, !1, !"__initcall__kmod_svc_i3c_master__487_1630_svc_i3c_master_init6", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1630, i32 1}
!2 = !{ptr @__exitcall_svc_i3c_master_exit, !1, !"__exitcall_svc_i3c_master_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author488, !4, !"__UNIQUE_ID_author488", i1 false, i1 false}
!4 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1632, i32 1}
!5 = !{ptr @__UNIQUE_ID_author489, !6, !"__UNIQUE_ID_author489", i1 false, i1 false}
!6 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1633, i32 1}
!7 = !{ptr @__UNIQUE_ID_description490, !8, !"__UNIQUE_ID_description490", i1 false, i1 false}
!8 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1634, i32 1}
!9 = !{ptr @__UNIQUE_ID_file491, !10, !"__UNIQUE_ID_file491", i1 false, i1 false}
!10 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1635, i32 1}
!11 = !{ptr @__UNIQUE_ID_license492, !10, !"__UNIQUE_ID_license492", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1625, i32 11}
!14 = !{ptr @svc_i3c_master, !15, !"svc_i3c_master", i1 false, i1 false}
!15 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1621, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1495, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1499, i32 35}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1503, i32 35}
!22 = !{ptr @svc_i3c_master_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1517, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @svc_i3c_master_probe.__key.5, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1518, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1520, i32 28}
!30 = !{ptr @svc_i3c_master_probe.__key.8, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1526, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @svc_i3c_master_probe.__key.10, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1529, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 385, i32 8}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 388, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @svc_i3c_master_ibi_work._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @svc_i3c_master_ibi_work._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 220, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @svc_i3c_master_error._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @svc_i3c_master_error._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @svc_i3c_master_ops, !51, !"svc_i3c_master_ops", i1 false, i1 false}
!51 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1430, i32 47}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 488, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @svc_i3c_master_bus_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @svc_i3c_master_bus_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 586, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @svc_i3c_master_bus_cleanup._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @svc_i3c_master_bus_cleanup._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 897, i32 3}
!64 = !{ptr @svc_i3c_master_do_daa._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @svc_i3c_master_do_daa._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 920, i32 3}
!68 = !{ptr @svc_i3c_master_do_daa._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @svc_i3c_master_do_daa._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 821, i32 3}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @svc_i3c_master_do_daa_locked.__UNIQUE_ID_ddebug434, !71, !"__UNIQUE_ID_ddebug434", i1 false, i1 false}
!75 = !{ptr @init_completion.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../include/linux/completion.h", i32 87, i32 2}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1095, i32 3}
!80 = !{ptr @svc_i3c_master_start_xfer_locked._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @svc_i3c_master_start_xfer_locked._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 944, i32 4}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @svc_i3c_master_read.__UNIQUE_ID_ddebug450, !83, !"__UNIQUE_ID_ddebug450", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 951, i32 4}
!88 = !{ptr @svc_i3c_master_read._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @svc_i3c_master_read._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1346, i32 3}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @svc_i3c_master_request_ibi._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @svc_i3c_master_request_ibi._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1397, i32 3}
!97 = !{ptr @svc_i3c_master_enable_ibi._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @svc_i3c_master_enable_ibi._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @svc_i3c_master_of_match_tbl, !100, !"svc_i3c_master_of_match_tbl", i1 false, i1 false}
!100 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1615, i32 34}
!101 = !{ptr @svc_i3c_pm_ops, !102, !"svc_i3c_pm_ops", i1 false, i1 false}
!102 = !{!"../drivers/i3c/master/svc-i3c-master.c", i32 1608, i32 32}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148340842, i64 2148340868, i64 2148340897, i64 2148340931, i64 2148340962, i64 2148340985}
!113 = !{i64 2155819364}
!114 = !{i64 6949641}
!115 = !{i64 6950059}
!116 = !{i64 2155850994}
!117 = !{i64 2155851751}
!118 = !{i64 2155817648}
!119 = !{i64 2155753593}
!120 = !{i64 2155776455}
!121 = !{i64 2155817108}
!122 = !{i64 2155724661}
!123 = !{i64 2155740872}
!124 = !{i64 2155741100}
!125 = !{i64 2155751321}
!126 = !{i64 2155743392}
!127 = !{i64 2155936312}
!128 = !{i64 2155952237}
!129 = !{i64 2155744077}
!130 = !{i64 2155744301}
!131 = !{i64 2155745456}
!132 = !{i64 2155746363}
!133 = !{i64 2155748301}
!134 = !{i64 2148340261}
!135 = !{i64 825084, i64 825109, i64 825131, i64 825147, i64 825159, i64 825179, i64 825203, i64 825219, i64 825231}
!136 = !{i64 2148340449}
!137 = !{i64 2156250586}
!138 = !{i64 2156302425}
!139 = !{i64 2156327067}
!140 = !{i32 0, i32 33}
!141 = !{!"auto-init"}
!142 = !{i64 2156378535}
!143 = !{i64 2156444876}
!144 = !{i64 2156445374}
!145 = !{i64 2156358055}
!146 = !{i64 2156358553}
!147 = !{i64 2156359651}
!148 = !{i64 2156682534}
!149 = !{i64 2156683032}
!150 = !{i64 2148795327, i64 2148795332, i64 2148795345, i64 2148795389, i64 2148795423, i64 2148795444}
!151 = !{i64 2156686323}
!152 = !{i64 2155746816}
!153 = !{i8 0, i8 2}
!154 = !{i64 2156964680}
!155 = !{i64 2157048445}
!156 = !{i64 2157048943}
!157 = !{i64 2156844886}
!158 = !{i64 2156845384}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 2157078180}
!161 = !{i64 2157078678}
!162 = !{i64 2157079014}
!163 = !{i64 2157150328}
!164 = !{i64 2157150826}
!165 = !{i64 2156777772}
!166 = !{i64 2156800683}
!167 = !{i64 2156843082}
