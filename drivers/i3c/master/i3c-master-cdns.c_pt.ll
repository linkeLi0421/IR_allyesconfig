; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/i3c-master-cdns.c_pt.bc'
source_filename = "../drivers/i3c/master/i3c-master-cdns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i3c_master_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cdns_i3c_data = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cdns_i3c_master = type { %struct.work_struct, %struct.i3c_master_controller, i32, i32, %struct.anon.90, %struct.anon.91, ptr, ptr, ptr, %struct.cdns_i3c_master_caps, i32, ptr }
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
%struct.anon.90 = type { i32, ptr, %struct.spinlock }
%struct.anon.91 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.cdns_i3c_master_caps = type { i32, i32, i32, i32, i32 }
%struct.cdns_i3c_xfer = type { %struct.list_head, %struct.completion, i32, i32, [0 x %struct.cdns_i3c_cmd] }
%struct.cdns_i3c_cmd = type { i32, i32, i32, ptr, i32, ptr, i32 }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.cdns_i3c_i2c_dev_data = type { i16, i16, ptr }
%struct.i3c_ibi_slot = type { %struct.work_struct, ptr, i32, ptr }
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i3c_device_ibi_info = type { %struct.completion, %struct.atomic_t, i32, i32, i32, ptr }
%struct.i3c_ccc_cmd = type { i8, i8, i32, ptr, i32 }
%struct.i3c_ccc_cmd_dest = type { i8, %struct.i3c_ccc_cmd_payload }
%struct.i3c_ccc_cmd_payload = type { i16, ptr }
%struct.i3c_priv_xfer = type { i8, i16, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.i2c_dev_desc = type { %struct.i3c_i2c_dev_desc, ptr, ptr, i16, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i3c_master_cdns__295_1688_cdns_i3c_master_init6 = internal global ptr @cdns_i3c_master_init, section ".initcall6.init", align 4
@cdns_i3c_master = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_i3c_master_probe, ptr @cdns_i3c_master_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_i3c_master_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_i3c_master_exit = internal global ptr @cdns_i3c_master_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [69 x i8] c"i3c_master_cdns.author=Boris Brezillon <boris.brezillon@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [54 x i8] c"i3c_master_cdns.description=Cadence I3C master driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [56 x i8] c"i3c_master_cdns.file=drivers/i3c/master/i3c-master-cdns\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [31 x i8] c"i3c_master_cdns.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [47 x i8] c"i3c_master_cdns.alias=platform:cdns-i3c-master\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns-i3c-master\00", [16 x i8] zeroinitializer }, align 32
@cdns_i3c_master_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,i3c-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_i3c_devdata }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysclk\00", [25 x i8] zeroinitializer }, align 32
@cdns_i3c_master_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&master->xferqueue.lock\00", [40 x i8] zeroinitializer }, align 32
@cdns_i3c_master_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&master->hj_work)\00", [60 x i8] zeroinitializer }, align 32
@cdns_i3c_master_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&master->ibi.lock\00", [46 x i8] zeroinitializer }, align 32
@cdns_i3c_master_ops = internal constant { %struct.i3c_master_controller_ops, [60 x i8] } { %struct.i3c_master_controller_ops { ptr @cdns_i3c_master_bus_init, ptr @cdns_i3c_master_bus_cleanup, ptr @cdns_i3c_master_attach_i3c_dev, ptr @cdns_i3c_master_reattach_i3c_dev, ptr @cdns_i3c_master_detach_i3c_dev, ptr @cdns_i3c_master_do_daa, ptr @cdns_i3c_master_supports_ccc_cmd, ptr @cdns_i3c_master_send_ccc_cmd, ptr @cdns_i3c_master_priv_xfers, ptr @cdns_i3c_master_attach_i2c_dev, ptr @cdns_i3c_master_detach_i2c_dev, ptr @cdns_i3c_master_i2c_xfers, ptr @cdns_i3c_master_request_ibi, ptr @cdns_i3c_master_free_ibi, ptr @cdns_i3c_master_enable_ibi, ptr @cdns_i3c_master_disable_ibi, ptr @cdns_i3c_master_recycle_ibi_slot }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/i3c/master/i3c-master-cdns.c\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_i3c_devdata = internal global { %struct.cdns_i3c_data, [31 x i8] } { %struct.cdns_i3c_data { i8 10 }, [31 x i8] zeroinitializer }, align 32
@switch.table.cdns_i3c_master_send_ccc_cmd = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 0, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.cdns_i3c_master_priv_xfers = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 0, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 1, i64 2, i64 6, i64 7, i64 8, i64 9, i64 10, i64 32, i64 128, i64 129, i64 130, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 148, i64 149]
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"cdns_i3c_master\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1680, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1684, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"cdns_i3c_master_of_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1561, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1584, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1588, i32 44 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1609, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1612, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1635, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"cdns_i3c_master_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1528, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 582, i32 7 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 87, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"cdns_i3c_devdata\00", align 1
@___asan_gen_.60 = private constant [40 x i8] c"../drivers/i3c/master/i3c-master-cdns.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1557, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [42 x i8] c"switch.table.cdns_i3c_master_send_ccc_cmd\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [40 x i8] c"switch.table.cdns_i3c_master_priv_xfers\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_cdns_i3c_master_exit, ptr @__initcall__kmod_i3c_master_cdns__295_1688_cdns_i3c_master_init6, ptr @cdns_i3c_master_exit, ptr @cdns_i3c_master, ptr @.str, ptr @cdns_i3c_master_of_ids, ptr @.str.1, ptr @.str.2, ptr @cdns_i3c_master_probe.__key, ptr @.str.3, ptr @cdns_i3c_master_probe.__key.4, ptr @.str.5, ptr @cdns_i3c_master_probe.__key.6, ptr @.str.7, ptr @cdns_i3c_master_ops, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9, ptr @cdns_i3c_devdata, ptr @switch.table.cdns_i3c_master_send_ccc_cmd, ptr @switch.table.cdns_i3c_master_priv_xfers], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_master to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_master_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_master_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_master_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_master_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_master_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i3c_devdata to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_i3c_master_send_ccc_cmd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_i3c_master_priv_xfers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_i3c_master, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_i3c_master) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2696, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %devdata = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 11
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %devdata, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %pclk = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %pclk, align 4
  %cmp.i222 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %sysclk = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call23, ptr %sysclk, align 8
  %cmp.i223 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %7 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk, align 4
  %call.i224 = tail call i32 @clk_prepare(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool.not.i = icmp eq i32 %call.i224, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end.i
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysclk, align 8
  %call39 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.err_disable_pclk_crit_edge

if.end37.err_disable_pclk_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_pclk

if.end42:                                         ; preds = %if.end37
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 877658112, i32 %13)
  %cmp46.not = icmp eq i32 %13, 877658112
  br i1 %cmp46.not, label %do.body, label %if.end42.err_disable_sysclk_crit_edge

if.end42.err_disable_sysclk_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_sysclk

do.body:                                          ; preds = %if.end42
  %xferqueue = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 5
  %lock = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cdns_i3c_master_probe.__key, i16 noundef signext 3) #9
  %14 = ptrtoint ptr %xferqueue to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %xferqueue, ptr %xferqueue, align 4
  %prev.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %xferqueue, ptr %prev.i, align 4
  tail call void @__init_work(ptr noundef nonnull %call.i, i32 noundef 0) #9
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %call.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @cdns_i3c_master_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry55 = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i225 = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i225 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry55, ptr %prev.i225, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cdns_i3c_master_hj, ptr %func, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 -1) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr68 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 -1) #9, !srcloc !52
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i226 = icmp eq ptr %25, null
  br i1 %tobool.not.i226, label %if.end.i227, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i227:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i227, %do.body.dev_name.exit_crit_edge
  %retval.0.i228 = phi ptr [ %27, %if.end.i227 ], [ %25, %do.body.dev_name.exit_crit_edge ]
  %call.i229 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call30, ptr noundef nonnull @cdns_i3c_master_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i228, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool73.not = icmp eq i32 %call.i229, 0
  br i1 %tobool73.not, label %if.end75, label %dev_name.exit.err_disable_sysclk_crit_edge

dev_name.exit.err_disable_sysclk_crit_edge:       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_sysclk

if.end75:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr79 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !49
  %32 = lshr i32 %31, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !54
  %and = and i32 %32, 15
  %maxdevs = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %maxdevs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and, ptr %maxdevs, align 4
  %sub = xor i32 %and, 31
  %shr = lshr i32 -1, %sub
  %and84 = and i32 %shr, 65534
  %free_rr_slots = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %free_rr_slots to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and84, ptr %free_rr_slots, align 8
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #9, !srcloc !49
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !55
  %and92 = lshr i32 %38, 26
  %shr93 = and i32 %and92, 3
  %shl = shl nuw nsw i32 4, %shr93
  %caps = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl, ptr %caps, align 8
  %and94 = lshr i32 %38, 5
  %shr95 = and i32 %and94, 31
  %shl96 = shl i32 8, %shr95
  %rxfifodepth = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 9, i32 3
  %40 = ptrtoint ptr %rxfifodepth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl96, ptr %rxfifodepth, align 4
  %and98 = and i32 %38, 31
  %shl99 = shl i32 8, %and98
  %txfifodepth = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 9, i32 2
  %41 = ptrtoint ptr %txfifodepth to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl99, ptr %txfifodepth, align 8
  %and101 = lshr i32 %38, 7
  %shr102 = and i32 %and101, 1
  %shl103 = shl nuw nsw i32 4, %shr102
  %ibirfifodepth = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 9, i32 4
  %42 = ptrtoint ptr %ibirfifodepth to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl103, ptr %ibirfifodepth, align 8
  %shr106 = lshr i32 %38, 29
  %shl107 = shl nuw nsw i32 4, %shr106
  %cmdrfifodepth = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %cmdrfifodepth to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl107, ptr %cmdrfifodepth, align 4
  %ibi = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 4
  %lock110 = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock110, ptr noundef nonnull @.str.7, ptr noundef nonnull @cdns_i3c_master_probe.__key.6, i16 noundef signext 3) #9
  %shr115 = lshr i32 %38, 28
  %add116 = add nuw nsw i32 %shr115, 1
  %44 = ptrtoint ptr %ibi to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add116, ptr %ibi, align 8
  %45 = shl nuw nsw i32 %add116, 2
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %45, i32 noundef 3520) #9
  %slots = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i.i, ptr %slots, align 4
  %tobool125.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool125.not, label %if.end75.err_disable_sysclk_crit_edge, label %do.body128

if.end75.err_disable_sysclk_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_sysclk

do.body128:                                       ; preds = %if.end75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr132 = getelementptr i8, ptr %48, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 1) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !57
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr137 = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 262144) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr142 = getelementptr i8, ptr %52, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 65535) #9, !srcloc !52
  %base = getelementptr inbounds %struct.cdns_i3c_master, ptr %call.i, i32 0, i32 1
  %call144 = tail call i32 @i3c_master_register(ptr noundef %base, ptr noundef %dev, ptr noundef nonnull @cdns_i3c_master_ops, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %do.body128.cleanup_crit_edge, label %do.body128.err_disable_sysclk_crit_edge

do.body128.err_disable_sysclk_crit_edge:          ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_sysclk

do.body128.cleanup_crit_edge:                     ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_disable_sysclk:                               ; preds = %do.body128.err_disable_sysclk_crit_edge, %if.end75.err_disable_sysclk_crit_edge, %dev_name.exit.err_disable_sysclk_crit_edge, %if.end42.err_disable_sysclk_crit_edge
  %ret.0 = phi i32 [ %call.i229, %dev_name.exit.err_disable_sysclk_crit_edge ], [ %call144, %do.body128.err_disable_sysclk_crit_edge ], [ -22, %if.end42.err_disable_sysclk_crit_edge ], [ -12, %if.end75.err_disable_sysclk_crit_edge ]
  %53 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sysclk, align 8
  tail call void @clk_disable(ptr noundef %54) #9
  tail call void @clk_unprepare(ptr noundef %54) #9
  br label %err_disable_pclk

err_disable_pclk:                                 ; preds = %err_disable_sysclk, %if.end37.err_disable_pclk_crit_edge
  %ret.1 = phi i32 [ %call39, %if.end37.err_disable_pclk_crit_edge ], [ %ret.0, %err_disable_sysclk ]
  %55 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %56) #9
  tail call void @clk_unprepare(ptr noundef %56) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pclk, %do.body128.cleanup_crit_edge, %if.then3.i, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then26, %if.then18, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %4, %if.then18 ], [ %6, %if.then26 ], [ %ret.1, %err_disable_pclk ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ 0, %do.body128.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i224, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.cdns_i3c_master, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @i3c_master_unregister(ptr noundef %base) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sysclk = getelementptr inbounds %struct.cdns_i3c_master, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysclk, align 8
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %pclk = getelementptr inbounds %struct.cdns_i3c_master, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_hj(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.cdns_i3c_master, ptr %work, i32 0, i32 1
  %call = tail call i32 @i3c_master_do_daa(ptr noundef %base) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %tmp.i.i23 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %2)
  %lock = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 5, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %xferqueue.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 5
  %cur.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %and.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.cdns_i3c_master_end_xfer_locked.exit_crit_edge, label %do.body.i

if.end.cdns_i3c_master_end_xfer_locked.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_end_xfer_locked.exit

do.body.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #9, !srcloc !52
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not139.i = icmp eq i32 %15, 0
  br i1 %tobool8.not139.i, label %for.body.lr.ph.i, label %do.body.i.for.cond66.preheader.i_crit_edge

do.body.i.for.cond66.preheader.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond66.preheader.i

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %ncmds.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 3
  br label %for.body.i

for.cond66.preheader.i:                           ; preds = %cleanup.i.for.cond66.preheader.i_crit_edge, %do.body.i.for.cond66.preheader.i_crit_edge
  %ncmds67.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %ncmds67.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ncmds67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp68140.not.i = icmp eq i32 %17, 0
  br i1 %cmp68140.not.i, label %for.cond66.preheader.i.for.end76.i_crit_edge, label %for.cond66.preheader.i.for.body69.i_crit_edge

for.cond66.preheader.i.for.body69.i_crit_edge:    ; preds = %for.cond66.preheader.i
  br label %for.body69.i

for.cond66.preheader.i.for.end76.i_crit_edge:     ; preds = %for.cond66.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %19, i32 56
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !49
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  %and16.i = and i32 %21, 255
  %22 = and i32 %21, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %22)
  %switch.i = icmp eq i32 %22, 254
  br i1 %switch.i, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false18.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

lor.lhs.false18.i:                                ; preds = %for.body.i
  %23 = ptrtoint ptr %ncmds.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ncmds.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %24)
  %cmp19.not.i = icmp ult i32 %and16.i, %24
  br i1 %cmp19.not.i, label %if.end48.i, label %do.end32.i, !prof !64

do.end32.i:                                       ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 582, i32 noundef 9, ptr noundef null) #9
  br label %cleanup.i

if.end48.i:                                       ; preds = %lor.lhs.false18.i
  %and50.i = lshr i32 %21, 8
  %shr.i = and i32 %and50.i, 4095
  %rx_len51.i = getelementptr %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 4, i32 %and16.i, i32 4
  %25 = ptrtoint ptr %rx_len51.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_len51.i, align 4
  %27 = call i32 @llvm.umin.i32(i32 %shr.i, i32 %26) #9
  %rx_buf.i = getelementptr %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 4, i32 %and16.i, i32 5
  %28 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf.i, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 128
  %div.i135136137.i = lshr i32 %27, 2
  call void @__raw_readsl(ptr noundef %add.ptr.i.i, ptr noundef %29, i32 noundef %div.i135136137.i) #9
  %and.i.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end48.i.cdns_i3c_master_rd_from_rx_fifo.exit.i_crit_edge, label %if.then.i.i

if.end48.i.cdns_i3c_master_rd_from_rx_fifo.exit.i_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_rd_from_rx_fifo.exit.i

if.then.i.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %32 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !65
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %34, i32 128
  call void @__raw_readsl(ptr noundef %add.ptr2.i.i, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #9
  %and3.i.i = and i32 %27, 4092
  %add.ptr4.i.i = getelementptr i8, ptr %29, i32 %and3.i.i
  %35 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %tmp.i.i, i32 %and.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  br label %cdns_i3c_master_rd_from_rx_fifo.exit.i

cdns_i3c_master_rd_from_rx_fifo.exit.i:           ; preds = %if.then.i.i, %if.end48.i.cdns_i3c_master_rd_from_rx_fifo.exit.i_crit_edge
  %and54.i = lshr i32 %21, 24
  %shr55.i = and i32 %and54.i, 15
  %error.i = getelementptr %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 4, i32 %and16.i, i32 6
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr55.i, ptr %error.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %cdns_i3c_master_rd_from_rx_fifo.exit.i, %do.end32.i, %for.body.i.cleanup.i_crit_edge
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr62.i = getelementptr i8, ptr %38, i32 52
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %40 = and i32 %39, 16777216
  %tobool8.not.i = icmp eq i32 %40, 0
  br i1 %tobool8.not.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.cond66.preheader.i_crit_edge

cleanup.i.for.cond66.preheader.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond66.preheader.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body69.i:                                     ; preds = %for.inc75.i.for.body69.i_crit_edge, %for.cond66.preheader.i.for.body69.i_crit_edge
  %i.0142.i = phi i32 [ %inc.i, %for.inc75.i.for.body69.i_crit_edge ], [ 0, %for.cond66.preheader.i.for.body69.i_crit_edge ]
  %ret.0141.i = phi i32 [ %ret.1.i, %for.inc75.i.for.body69.i_crit_edge ], [ 0, %for.cond66.preheader.i.for.body69.i_crit_edge ]
  %error72.i = getelementptr %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 4, i32 %i.0142.i, i32 6
  %41 = ptrtoint ptr %error72.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error72.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %sw.default.i [
    i32 0, label %for.body69.i.for.inc75.i_crit_edge
    i32 1, label %for.body69.i.sw.bb.i_crit_edge
    i32 2, label %for.body69.i.sw.bb.i_crit_edge33
    i32 5, label %for.body69.i.sw.bb.i_crit_edge34
    i32 6, label %for.body69.i.sw.bb.i_crit_edge35
    i32 7, label %for.body69.i.sw.bb.i_crit_edge36
    i32 8, label %for.body69.i.sw.bb.i_crit_edge37
    i32 9, label %for.body69.i.sw.bb.i_crit_edge38
    i32 11, label %for.body69.i.sw.bb.i_crit_edge39
    i32 3, label %for.body69.i.sw.bb73.i_crit_edge
    i32 4, label %for.body69.i.sw.bb73.i_crit_edge40
  ]

for.body69.i.sw.bb73.i_crit_edge40:               ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb73.i

for.body69.i.sw.bb73.i_crit_edge:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb73.i

for.body69.i.sw.bb.i_crit_edge39:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge38:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge37:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge36:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge35:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge34:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge33:                 ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.sw.bb.i_crit_edge:                   ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body69.i.for.inc75.i_crit_edge:               ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i

sw.bb.i:                                          ; preds = %for.body69.i.sw.bb.i_crit_edge, %for.body69.i.sw.bb.i_crit_edge33, %for.body69.i.sw.bb.i_crit_edge34, %for.body69.i.sw.bb.i_crit_edge35, %for.body69.i.sw.bb.i_crit_edge36, %for.body69.i.sw.bb.i_crit_edge37, %for.body69.i.sw.bb.i_crit_edge38, %for.body69.i.sw.bb.i_crit_edge39
  br label %for.inc75.i

sw.bb73.i:                                        ; preds = %for.body69.i.sw.bb73.i_crit_edge, %for.body69.i.sw.bb73.i_crit_edge40
  br label %for.inc75.i

sw.default.i:                                     ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %sw.default.i, %sw.bb73.i, %sw.bb.i, %for.body69.i.for.inc75.i_crit_edge
  %ret.1.i = phi i32 [ -22, %sw.default.i ], [ -28, %sw.bb73.i ], [ -5, %sw.bb.i ], [ %ret.0141.i, %for.body69.i.for.inc75.i_crit_edge ]
  %inc.i = add nuw i32 %i.0142.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc75.i.for.end76.i_crit_edge, label %for.inc75.i.for.body69.i_crit_edge

for.inc75.i.for.body69.i_crit_edge:               ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body69.i

for.inc75.i.for.end76.i_crit_edge:                ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76.i

for.end76.i:                                      ; preds = %for.inc75.i.for.end76.i_crit_edge, %for.cond66.preheader.i.for.end76.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %for.cond66.preheader.i.for.end76.i_crit_edge ], [ %ret.1.i, %for.inc75.i.for.end76.i_crit_edge ]
  %ret77.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 2
  %44 = ptrtoint ptr %ret77.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %ret.0.lcssa.i, ptr %ret77.i, align 4
  %comp.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %9, i32 0, i32 1
  call void @complete(ptr noundef %comp.i) #9
  %45 = ptrtoint ptr %xferqueue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %xferqueue.i, align 4
  %cmp84.not.i = icmp eq ptr %46, %xferqueue.i
  %spec.select.i = select i1 %cmp84.not.i, ptr null, ptr %46
  %tobool91.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool91.not.i, label %for.end76.i.if.end93.i_crit_edge, label %if.then92.i

for.end76.i.if.end93.i_crit_edge:                 ; preds = %for.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93.i

if.then92.i:                                      ; preds = %for.end76.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %spec.select.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then92.i.list_del_init.exit.i_crit_edge

if.then92.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then92.i.list_del_init.exit.i_crit_edge
  %53 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %spec.select.i, ptr %spec.select.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %spec.select.i, ptr %prev.i3.i.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %list_del_init.exit.i, %for.end76.i.if.end93.i_crit_edge
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %spec.select.i, ptr %cur.i, align 4
  call fastcc void @cdns_i3c_master_start_xfer_locked(ptr noundef %data) #9
  br label %cdns_i3c_master_end_xfer_locked.exit

cdns_i3c_master_end_xfer_locked.exit:             ; preds = %if.end93.i, %if.end.cdns_i3c_master_end_xfer_locked.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %and11 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %cdns_i3c_master_end_xfer_locked.exit.cleanup_crit_edge, label %if.then13

cdns_i3c_master_end_xfer_locked.exit.cleanup_crit_edge: ; preds = %cdns_i3c_master_end_xfer_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %cdns_i3c_master_end_xfer_locked.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i25 = getelementptr i8, ptr %57, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 262144) #9, !srcloc !52
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %59, i32 52
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  %61 = and i32 %60, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not102.i = icmp eq i32 %61, 0
  br i1 %tobool.not102.i, label %for.body.lr.ph.i26, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i26:                               ; preds = %if.then13
  %wq.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 1, i32 7
  %ibi.i.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 4
  %slots.i.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 4, i32 1
  %lock.i.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %data, i32 0, i32 4, i32 2
  br label %for.body.i27

for.body.i27:                                     ; preds = %sw.epilog.i.for.body.i27_crit_edge, %for.body.lr.ph.i26
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr7.i = getelementptr i8, ptr %63, i32 60
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !49
  %65 = call i32 @llvm.bswap.i32(i32 %64) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !69
  %and11.i = and i32 %65, 3
  %66 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and11.i, label %for.body.i27.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i30
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb42.i
  ]

for.body.i27.sw.epilog.i_crit_edge:               ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i30:                                        ; preds = %for.body.i27
  %and.i.i28 = lshr i32 %65, 8
  %shr.i.i = and i32 %and.i.i28, 15
  %67 = ptrtoint ptr %ibi.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ibi.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %68)
  %cmp.not.i.i = icmp ult i32 %shr.i.i, %68
  %and1.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i29 = icmp eq i32 %and1.i.i, 0
  %or.cond.i.i = and i1 %tobool.not.i.i29, %cmp.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %sw.bb.i30.if.then28.i.i_crit_edge

sw.bb.i30.if.then28.i.i_crit_edge:                ; preds = %sw.bb.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i.i

if.end.i.i:                                       ; preds = %sw.bb.i30
  %69 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %slots.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %70, i32 %shr.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #9
  %master_priv.i.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %master_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %master_priv.i.i.i, align 4
  %ibi_pool.i.i = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %ibi_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ibi_pool.i.i, align 4
  %call4.i.i = call ptr @i3c_generic_ibi_get_free_slot(ptr noundef %76) #9
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %out_unlock.i.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %data8.i.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call4.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %data8.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data8.i.i, align 4
  %and9.i.i = lshr i32 %65, 2
  %shr10.i.i = and i32 %and9.i.i, 31
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %80, i32 132
  %div61.i.i = lshr i32 %shr10.i.i, 2
  call void @__raw_readsl(ptr noundef %add.ptr.i.i31, ptr noundef %78, i32 noundef %div61.i.i) #9
  %rem.lhs.trunc.i.i = trunc i32 %shr10.i.i to i8
  %rem62.i.i = urem i8 %rem.lhs.trunc.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem62.i.i)
  %tobool11.not.i.i = icmp eq i8 %rem62.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end7.i.i.out_unlock.thread.i.i_crit_edge, label %if.then12.i.i

if.end7.i.i.out_unlock.thread.i.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock.thread.i.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i23)
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %82, i32 132
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #9, !srcloc !49
  %84 = ptrtoint ptr %tmp.i.i23 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %tmp.i.i23, align 4
  %and16.i.i = and i32 %and9.i.i, 28
  %add.ptr17.i.i = getelementptr i8, ptr %78, i32 %and16.i.i
  %and18.i.i = and i32 %and9.i.i, 3
  %85 = call ptr @memcpy(ptr %add.ptr17.i.i, ptr %tmp.i.i23, i32 %and18.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i23)
  br label %out_unlock.thread.i.i

out_unlock.thread.i.i:                            ; preds = %if.then12.i.i, %if.end7.i.i.out_unlock.thread.i.i_crit_edge
  %ibi22.i.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %72, i32 0, i32 3
  %86 = ptrtoint ptr %ibi22.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ibi22.i.i, align 4
  %max_payload_len.i.i = getelementptr inbounds %struct.i3c_device_ibi_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %max_payload_len.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_payload_len.i.i, align 4
  %90 = call i32 @llvm.umin.i32(i32 %shr10.i.i, i32 %89) #9
  %len.i.i = getelementptr inbounds %struct.i3c_ibi_slot, ptr %call4.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %len.i.i, align 4
  call void @i3c_master_queue_ibi(ptr noundef %72, ptr noundef nonnull %call4.i.i) #9
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #9
  br label %sw.epilog.i

out_unlock.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #9
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %out_unlock.i.i, %sw.bb.i30.if.then28.i.i_crit_edge
  %and29.i.i = lshr i32 %65, 2
  %shr30.i.i = and i32 %and29.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr30.i.i)
  %cmp3163.not.i.i = icmp eq i32 %shr30.i.i, 0
  br i1 %cmp3163.not.i.i, label %if.then28.i.i.sw.epilog.i_crit_edge, label %for.body.i.i

if.then28.i.i.sw.epilog.i_crit_edge:              ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i:                                     ; preds = %if.then28.i.i
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %93, i32 132
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr30.i.i)
  %cmp31.i.i = icmp ugt i32 %shr30.i.i, 4
  br i1 %cmp31.i.i, label %for.body.i.i.1, label %for.body.i.i.sw.epilog.i_crit_edge

for.body.i.i.sw.epilog.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.1 = getelementptr i8, ptr %96, i32 132
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.1) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr30.i.i)
  %cmp31.i.i.1 = icmp ugt i32 %shr30.i.i, 8
  br i1 %cmp31.i.i.1, label %for.body.i.i.2, label %for.body.i.i.1.sw.epilog.i_crit_edge

for.body.i.i.1.sw.epilog.i_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.2 = getelementptr i8, ptr %99, i32 132
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.2) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %shr30.i.i)
  %cmp31.i.i.2 = icmp ugt i32 %shr30.i.i, 12
  br i1 %cmp31.i.i.2, label %for.body.i.i.3, label %for.body.i.i.2.sw.epilog.i_crit_edge

for.body.i.i.2.sw.epilog.i_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.3 = getelementptr i8, ptr %102, i32 132
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.3) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shr30.i.i)
  %cmp31.i.i.3 = icmp ugt i32 %shr30.i.i, 16
  br i1 %cmp31.i.i.3, label %for.body.i.i.4, label %for.body.i.i.3.sw.epilog.i_crit_edge

for.body.i.i.3.sw.epilog.i_crit_edge:             ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.4 = getelementptr i8, ptr %105, i32 132
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.4) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %shr30.i.i)
  %cmp31.i.i.4 = icmp ugt i32 %shr30.i.i, 20
  br i1 %cmp31.i.i.4, label %for.body.i.i.5, label %for.body.i.i.4.sw.epilog.i_crit_edge

for.body.i.i.4.sw.epilog.i_crit_edge:             ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.5 = getelementptr i8, ptr %108, i32 132
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.5) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %shr30.i.i)
  %cmp31.i.i.5 = icmp ugt i32 %shr30.i.i, 24
  br i1 %cmp31.i.i.5, label %for.body.i.i.6, label %for.body.i.i.5.sw.epilog.i_crit_edge

for.body.i.i.5.sw.epilog.i_crit_edge:             ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.6 = getelementptr i8, ptr %111, i32 132
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.6) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %shr30.i.i)
  %cmp31.i.i.6 = icmp ugt i32 %shr30.i.i, 28
  br i1 %cmp31.i.i.6, label %for.body.i.i.7, label %for.body.i.i.6.sw.epilog.i_crit_edge

for.body.i.i.6.sw.epilog.i_crit_edge:             ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

for.body.i.i.7:                                   ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %add.ptr33.i.i.7 = getelementptr i8, ptr %114, i32 132
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i.7) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %for.body.i27
  %116 = and i32 %65, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %.not100.i = icmp eq i32 %116, 0
  br i1 %.not100.i, label %sw.bb12.i.if.end.i_crit_edge, label %do.end28.i, !prof !64

sw.bb12.i.if.end.i_crit_edge:                     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end28.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1376, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end28.i, %sw.bb12.i.if.end.i_crit_edge
  %117 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wq.i, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %118, ptr noundef %data) #9
  br label %sw.epilog.i

sw.bb42.i:                                        ; preds = %for.body.i27
  %119 = and i32 %65, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %.not.i = icmp eq i32 %119, 0
  br i1 %.not.i, label %sw.bb42.i.sw.epilog.i_crit_edge, label %do.end66.i, !prof !64

sw.bb42.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end66.i:                                       ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1381, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end66.i, %sw.bb42.i.sw.epilog.i_crit_edge, %if.end.i, %for.body.i.i.7, %for.body.i.i.6.sw.epilog.i_crit_edge, %for.body.i.i.5.sw.epilog.i_crit_edge, %for.body.i.i.4.sw.epilog.i_crit_edge, %for.body.i.i.3.sw.epilog.i_crit_edge, %for.body.i.i.2.sw.epilog.i_crit_edge, %for.body.i.i.1.sw.epilog.i_crit_edge, %for.body.i.i.sw.epilog.i_crit_edge, %if.then28.i.i.sw.epilog.i_crit_edge, %out_unlock.thread.i.i, %for.body.i27.sw.epilog.i_crit_edge
  %120 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs, align 4
  %add.ptr83.i = getelementptr i8, ptr %121, i32 52
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  %123 = and i32 %122, 134217728
  %tobool.not.i32 = icmp eq i32 %123, 0
  br i1 %tobool.not.i32, label %sw.epilog.i.for.body.i27_crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.i.for.body.i27_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i27

cleanup:                                          ; preds = %sw.epilog.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %cdns_i3c_master_end_xfer_locked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %cdns_i3c_master_end_xfer_locked.exit.cleanup_crit_edge ], [ 1, %if.then13.cleanup_crit_edge ], [ 1, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_register(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_do_daa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_i3c_master_start_xfer_locked(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #9, !srcloc !52
  %ncmds = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ncmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55.not = icmp eq i32 %5, 0
  br i1 %cmp55.not, label %do.body.do.body21_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.body21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

for.cond1.preheader:                              ; preds = %cdns_i3c_master_wr_to_tx_fifo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp357.not = icmp eq i32 %17, 0
  br i1 %cmp357.not, label %for.cond1.preheader.do.body21_crit_edge, label %for.cond1.preheader.for.body4_crit_edge

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.cond1.preheader.do.body21_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

for.body:                                         ; preds = %cdns_i3c_master_wr_to_tx_fifo.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %cdns_i3c_master_wr_to_tx_fifo.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %tx_buf = getelementptr %struct.cdns_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.056, i32 3
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_buf, align 4
  %tx_len = getelementptr %struct.cdns_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.056, i32 2
  %8 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_len, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 104
  %div.i = sdiv i32 %9, 4
  call void @__raw_writesl(ptr noundef %add.ptr.i, ptr noundef %7, i32 noundef %div.i) #9
  %and.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cdns_i3c_master_wr_to_tx_fifo.exit_crit_edge, label %if.then.i

for.body.cdns_i3c_master_wr_to_tx_fifo.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_wr_to_tx_fifo.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tmp.i, align 4
  %and1.i = and i32 %9, -4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 %and1.i
  %13 = call ptr @memcpy(ptr %tmp.i, ptr %add.ptr2.i, i32 %and.i)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 104
  call void @__raw_writesl(ptr noundef %add.ptr5.i, ptr noundef nonnull %tmp.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  br label %cdns_i3c_master_wr_to_tx_fifo.exit

cdns_i3c_master_wr_to_tx_fifo.exit:               ; preds = %if.then.i, %for.body.cdns_i3c_master_wr_to_tx_fifo.exit_crit_edge
  %inc = add nuw i32 %i.056, 1
  %16 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ncmds, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %cdns_i3c_master_wr_to_tx_fifo.exit.for.body_crit_edge, label %for.cond1.preheader

cdns_i3c_master_wr_to_tx_fifo.exit.for.body_crit_edge: ; preds = %cdns_i3c_master_wr_to_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %i.158 = phi i32 [ %inc19, %for.body4.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  %arrayidx7 = getelementptr %struct.cdns_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void @arm_heavy_mb() #9
  %cmd1 = getelementptr %struct.cdns_i3c_xfer, ptr %1, i32 0, i32 4, i32 %i.158, i32 1
  %18 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd1, align 4
  %shl = shl i32 %i.158, 24
  %or = or i32 %19, %shl
  %20 = call i32 @llvm.bswap.i32(i32 %or)
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %22, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %20) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !74
  call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %27, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %25) #9, !srcloc !52
  %inc19 = add nuw i32 %i.158, 1
  %28 = ptrtoint ptr %ncmds to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ncmds, align 4
  %cmp3 = icmp ult i32 %inc19, %29
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.do.body21_crit_edge

for.body4.do.body21_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

do.body21:                                        ; preds = %for.body4.do.body21_crit_edge, %for.cond1.preheader.do.body21_crit_edge, %do.body.do.body21_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %31, i32 16
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  %33 = or i32 %32, 32
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %35, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %33) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %37, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 536870912) #9, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_get_free_slot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_master_queue_ibi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_bus_init(ptr noundef %m) #2 align 64 {
entry:
  %info = alloca %struct.i3c_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #9
  %mode = getelementptr inbounds %struct.i3c_master_controller, ptr %m, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ 1342177603, %sw.bb3 ], [ 1342177602, %sw.bb2 ], [ 1342177600, %entry.sw.epilog_crit_edge ]
  %sysclk = getelementptr i8, ptr %m, i32 2608
  %3 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysclk, align 8
  %call4 = tail call i32 @clk_get_rate(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %scl_rate = getelementptr inbounds %struct.i3c_master_controller, ptr %m, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %scl_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scl_rate, align 4
  %mul = shl i32 %6, 2
  %add = add i32 %call4, -1
  %sub = add i32 %add, %mul
  %div = udiv i32 %sub, %mul
  %sub8 = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub8)
  %cmp = icmp ugt i32 %sub8, 1023
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mul12 = shl nuw nsw i32 %div, 2
  %div13 = udiv i32 %call4, %mul12
  %7 = ptrtoint ptr %scl_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div13, ptr %scl_rate, align 4
  %i2c = getelementptr inbounds %struct.i3c_master_controller, ptr %m, i32 0, i32 6, i32 4, i32 1
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c, align 4
  %mul21 = mul i32 %9, 5
  %div22 = udiv i32 %call4, %mul21
  %sub23 = add i32 %div22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub23)
  %cmp24 = icmp ugt i32 %sub23, 1023
  br i1 %cmp24, label %if.end10.cleanup_crit_edge, label %if.end26

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  %mul28 = mul nuw nsw i32 %div22, 5
  %div29 = udiv i32 %call4, %mul28
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div29, ptr %i2c, align 4
  %shl = shl nuw nsw i32 %sub23, 16
  %or = or i32 %shl, %sub8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr i8, ptr %m, i32 2604
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #9, !srcloc !52
  %14 = ptrtoint ptr %scl_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scl_rate, align 4
  %mul34 = shl i32 %15, 2
  %div35 = udiv i32 1000000000, %mul34
  %sub37 = add nuw nsw i32 %div35, 199
  %div38 = udiv i32 %sub37, %div35
  %16 = tail call i32 @llvm.smax.i32(i32 %div38, i32 2)
  %17 = add nsw i32 %16, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr47 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %18) #9, !srcloc !52
  %call48 = tail call i32 @i3c_master_get_free_addr(ptr noundef %m, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end26.cleanup_crit_edge, label %do.body52

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body52:                                        ; preds = %if.end26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %and1.i = and i32 %call48, 127
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and1.i) #9
  %shl.i = shl nuw i32 %call48, 1
  %and.i = and i32 %shl.i, 254
  %shl2.i = shl nuw nsw i32 %and1.i, 1
  %or.i = or i32 %and.i, %shl2.i
  %and3.i = shl i32 %call48, 6
  %shl4.i = and i32 %and3.i, 57344
  %or5.i = or i32 %or.i, %shl4.i
  %and73.i = and i32 %call.i.i, 1
  %21 = or i32 %or5.i, %and73.i
  %or56 = xor i32 %21, 513
  %22 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %24, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %22) #9, !srcloc !52
  %25 = getelementptr inbounds i8, ptr %info, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 16)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr.i125 = getelementptr i8, ptr %28, i32 192
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #9, !srcloc !49
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %shr.i = lshr i32 %30, 1
  %and.i126 = and i32 %shr.i, 127
  %shr2.i = lshr i32 %30, 6
  %and3.i127 = and i32 %shr2.i, 128
  %or.i128 = or i32 %and.i126, %and3.i127
  %conv.i = trunc i32 %or.i128 to i8
  %dyn_addr.i = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 4
  %31 = ptrtoint ptr %dyn_addr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %dyn_addr.i, align 1
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr9.i = getelementptr i8, ptr %33, i32 200
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !49
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %conv13.i = trunc i32 %35 to i8
  %dcr.i = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %dcr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv13.i, ptr %dcr.i, align 1
  %shr14.i = lshr i32 %35, 8
  %conv15.i = trunc i32 %shr14.i to i8
  %bcr.i = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 1
  %37 = ptrtoint ptr %bcr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv15.i, ptr %bcr.i, align 8
  %shr16.i = lshr i32 %35, 16
  %conv17.i = zext i32 %shr16.i to i64
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr23.i = getelementptr i8, ptr %39, i32 196
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #9, !srcloc !49
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %conv27.i = zext i32 %41 to i64
  %shl.i129 = shl nuw nsw i64 %conv27.i, 16
  %or29.i = or i64 %shl.i129, %conv17.i
  %42 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %or29.i, ptr %info, align 8
  %43 = and i8 %conv15.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool59.not = icmp eq i8 %43, 0
  br i1 %tobool59.not, label %do.body52.if.end61_crit_edge, label %if.then60

do.body52.if.end61_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then60:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %hdr_cap = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 5
  %44 = ptrtoint ptr %hdr_cap to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %hdr_cap, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %do.body52.if.end61_crit_edge
  %call62 = call i32 @i3c_master_set_info(ptr noundef %m, ptr noundef nonnull %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sysclk, align 8
  %call.i = call i32 @clk_get_rate(ptr noundef %46) #9
  %devdata.i = getelementptr i8, ptr %m, i32 2640
  %47 = ptrtoint ptr %devdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %devdata.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv.i130 = zext i8 %50 to i32
  %div.i = udiv i32 1000000000, %call.i
  %add.i131 = add nsw i32 %conv.i130, -1
  %sub.i = add nsw i32 %add.i131, %div.i
  %div2.i = udiv i32 %sub.i, %div.i
  %conv4.i = and i32 %div2.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %cmp.not.i = icmp eq i32 %conv4.i, 0
  %.neg = mul i32 %div2.i, 50331648
  %51 = add i32 %.neg, 50331648
  %.op = and i32 %51, 50331648
  %and70 = select i1 %cmp.not.i, i32 %.op, i32 0
  %or71 = or i32 %and70, %ctrl.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  call void @arm_heavy_mb() #9
  %52 = call i32 @llvm.bswap.i32(i32 %or71)
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr76 = getelementptr i8, ptr %54, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %52) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr.i133 = getelementptr i8, ptr %56, i32 16
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  %58 = or i32 %57, 128
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %60, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %58) #9, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end61.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -34, %if.end10.cleanup_crit_edge ], [ %call48, %if.end26.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_bus_cleanup(ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %m, i32 -48
  tail call fastcc void @cdns_i3c_master_disable(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_attach_i3c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  %activedevs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dyn_addr, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %activedevs.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %free_rr_slots.i = getelementptr i8, ptr %1, i32 2488
  %5 = ptrtoint ptr %free_rr_slots.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %free_rr_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.then.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge, label %cdns_i3c_master_get_rr_slot.exit.thread46

if.then.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_get_rr_slot.exit.thread

cdns_i3c_master_get_rr_slot.exit.thread46:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true) #9, !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activedevs.i) #9
  br label %if.end5

if.end4.i:                                        ; preds = %if.end
  %regs.i = getelementptr i8, ptr %1, i32 2604
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 184
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  %11 = and i32 %10, -16842752
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = ptrtoint ptr %activedevs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %activedevs.i, align 4
  %maxdevs.i = getelementptr i8, ptr %1, i32 2492
  %14 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxdevs.i, align 4
  %add.i = add i32 %15, 1
  %call7.i = call i32 @_find_next_bit_be(ptr noundef nonnull %activedevs.i, i32 noundef %add.i, i32 noundef 0) #9
  %16 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxdevs.i, align 4
  %add945.i = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %add945.i)
  %cmp46.i = icmp ult i32 %call7.i, %add945.i
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.end4.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge

if.end4.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_get_rr_slot.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %conv.i = zext i8 %4 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.047.i = phi i32 [ %call7.i, %for.body.lr.ph.i ], [ %call30.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %i.047.i, 4
  %add13.i = add i32 %mul.i, 192
  %add.ptr14.i = getelementptr i8, ptr %19, i32 %add13.i
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !49
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %and18.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %shr.i = lshr i32 %21, 1
  %and20.i = and i32 %shr.i, 127
  %shr21.i = lshr i32 %21, 6
  %and22.i = and i32 %shr21.i, 896
  %or.i = or i32 %and20.i, %and22.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv.i)
  %cmp23.not.i = icmp eq i32 %or.i, %conv.i
  br i1 %cmp23.not.i, label %cdns_i3c_master_get_rr_slot.exit, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxdevs.i, align 4
  %add28.i = add i32 %23, 1
  %add29.i = add nuw i32 %i.047.i, 1
  %call30.i = call i32 @_find_next_bit_be(ptr noundef nonnull %activedevs.i, i32 noundef %add28.i, i32 noundef %add29.i) #9
  %24 = ptrtoint ptr %maxdevs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxdevs.i, align 4
  %add9.i = add i32 %25, 1
  %cmp.i = icmp ult i32 %call30.i, %add9.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge

for.inc.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_get_rr_slot.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cdns_i3c_master_get_rr_slot.exit.thread:          ; preds = %for.inc.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge, %if.end4.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge, %if.then.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end4.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge ], [ -28, %if.then.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge ], [ -22, %for.inc.i.cdns_i3c_master_get_rr_slot.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activedevs.i) #9
  br label %if.then4

cdns_i3c_master_get_rr_slot.exit:                 ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activedevs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.047.i)
  %cmp = icmp slt i32 %i.047.i, 0
  br i1 %cmp, label %cdns_i3c_master_get_rr_slot.exit.if.then4_crit_edge, label %cdns_i3c_master_get_rr_slot.exit.if.end5_crit_edge

cdns_i3c_master_get_rr_slot.exit.if.end5_crit_edge: ; preds = %cdns_i3c_master_get_rr_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

cdns_i3c_master_get_rr_slot.exit.if.then4_crit_edge: ; preds = %cdns_i3c_master_get_rr_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %cdns_i3c_master_get_rr_slot.exit.if.then4_crit_edge, %cdns_i3c_master_get_rr_slot.exit.thread
  %retval.0.i45 = phi i32 [ %retval.0.i.ph, %cdns_i3c_master_get_rr_slot.exit.thread ], [ %i.047.i, %cdns_i3c_master_get_rr_slot.exit.if.then4_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %cdns_i3c_master_get_rr_slot.exit.if.end5_crit_edge, %cdns_i3c_master_get_rr_slot.exit.thread46
  %retval.0.i49 = phi i32 [ %7, %cdns_i3c_master_get_rr_slot.exit.thread46 ], [ %i.047.i, %cdns_i3c_master_get_rr_slot.exit.if.end5_crit_edge ]
  %ibi = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %ibi to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %ibi, align 2
  %conv = trunc i32 %retval.0.i49 to i16
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %call7.i.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %28 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  %shl = shl nuw i32 1, %retval.0.i49
  %neg = xor i32 %shl, -1
  %free_rr_slots = getelementptr i8, ptr %1, i32 2488
  %29 = ptrtoint ptr %free_rr_slots to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %free_rr_slots, align 8
  %and = and i32 %30, %neg
  store i32 %and, ptr %free_rr_slots, align 8
  %31 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dyn_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool8.not = icmp eq i8 %32, 0
  br i1 %tobool8.not, label %cond.end.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master.i, align 8
  %35 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master_priv.i, align 4
  %static_addr.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %static_addr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %static_addr.i, align 2
  %cond.i = zext i8 %38 to i32
  %and1.i.i = and i32 %cond.i, 127
  %call.i.i.i = call i32 @__sw_hweight8(i32 noundef %and1.i.i) #9
  %shl.i.i = shl nuw nsw i32 %cond.i, 1
  %and.i.i = and i32 %shl.i.i, 254
  %shl2.i.i = shl nuw nsw i32 %and1.i.i, 1
  %or.i.i = or i32 %and.i.i, %shl2.i.i
  %and3.i.i = shl nuw nsw i32 %cond.i, 6
  %shl4.i.i = and i32 %and3.i.i, 8192
  %or5.i.i = or i32 %or.i.i, %shl4.i.i
  %and73.i.i = and i32 %call.i.i.i, 1
  %39 = or i32 %or5.i.i, %and73.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %or.i38 = xor i32 %39, 513
  %40 = call i32 @llvm.bswap.i32(i32 %or.i38) #9
  %regs.i39 = getelementptr i8, ptr %34, i32 2604
  %41 = ptrtoint ptr %regs.i39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i39, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %36, align 4
  %conv9.i = zext i16 %44 to i32
  %mul.i40 = shl nuw nsw i32 %conv9.i, 4
  %add.i41 = add nuw nsw i32 %mul.i40, 192
  %add.ptr.i42 = getelementptr i8, ptr %42, i32 %add.i41
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %40) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @arm_heavy_mb() #9
  %regs = getelementptr i8, ptr %1, i32 2604
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 184
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call7.i.i, align 8
  %conv13 = zext i16 %50 to i32
  %shl14 = shl nuw i32 1, %conv13
  %or = or i32 %shl14, %48
  %51 = call i32 @llvm.bswap.i32(i32 %or)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %53, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %51) #9, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %cond.end.i, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i45, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %cond.end.i ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_reattach_i3c_dev(ptr nocapture noundef readonly %dev, i8 noundef zeroext %old_dyn_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i.i, align 8
  %master_priv.i.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i.i, align 4
  %dyn_addr.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %dyn_addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dyn_addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %static_addr.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %static_addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %static_addr.i, align 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %7, %cond.false.i ], [ %5, %entry.cond.end.i_crit_edge ]
  %cond.i = zext i8 %cond.in.i to i32
  %and1.i.i = and i32 %cond.i, 127
  %call.i.i.i = tail call i32 @__sw_hweight8(i32 noundef %and1.i.i) #9
  %shl.i.i = shl nuw nsw i32 %cond.i, 1
  %and.i.i = and i32 %shl.i.i, 254
  %shl2.i.i = shl nuw nsw i32 %and1.i.i, 1
  %or.i.i = or i32 %and.i.i, %shl2.i.i
  %and3.i.i = shl nuw nsw i32 %cond.i, 6
  %shl4.i.i = and i32 %and3.i.i, 8192
  %or5.i.i = or i32 %or.i.i, %shl4.i.i
  %and73.i.i = and i32 %call.i.i.i, 1
  %8 = or i32 %or5.i.i, %and73.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %or.i = xor i32 %8, 513
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %regs.i = getelementptr i8, ptr %1, i32 2604
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 4
  %conv9.i = zext i16 %13 to i32
  %mul.i = shl nuw nsw i32 %conv9.i, 4
  %add.i = add nuw nsw i32 %mul.i, 192
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_detach_i3c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr i8, ptr %1, i32 2604
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 184
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 4
  %conv = zext i16 %9 to i32
  %shl = shl i32 65536, %conv
  %or = or i32 %shl, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #9, !srcloc !52
  %13 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %master_priv.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  %conv8 = zext i16 %15 to i32
  %shl9 = shl nuw i32 1, %conv8
  %free_rr_slots = getelementptr i8, ptr %1, i32 2488
  %16 = ptrtoint ptr %free_rr_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_rr_slots, align 8
  %or10 = or i32 %shl9, %17
  store i32 %or10, ptr %free_rr_slots, align 8
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_do_daa(ptr noundef %m) #2 align 64 {
entry:
  %olddevs = alloca i32, align 4
  %newdevs = alloca i32, align 4
  %addrs = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %m, i32 -48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olddevs) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newdevs) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addrs) #9
  %0 = call ptr @memset(ptr %addrs, i32 0, i32 16)
  %regs = getelementptr i8, ptr %m, i32 2604
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 184
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %4 = and i32 %3, -16842752
  %5 = or i32 %4, 16777216
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %olddevs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %olddevs, align 4
  %maxdevs = getelementptr i8, ptr %m, i32 2492
  %8 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxdevs, align 4
  %add = add i32 %9, 1
  %call3 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %olddevs, i32 noundef %add, i32 noundef 0) #9
  %10 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxdevs, align 4
  %add5124 = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %add5124)
  %cmp125 = icmp ult i32 %call3, %add5124
  br i1 %cmp125, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %slot.0127 = phi i32 [ %call35, %if.end.for.body_crit_edge ], [ %call3, %entry.for.body_crit_edge ]
  %last_addr.0126 = phi i32 [ %call8, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %12 = trunc i32 %last_addr.0126 to i8
  %conv7 = add i8 %12, 1
  %call8 = call i32 @i3c_master_get_free_addr(ptr noundef %m, i8 noundef zeroext %conv7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv11 = trunc i32 %call8 to i8
  %arrayidx = getelementptr [16 x i8], ptr %addrs, i32 0, i32 %slot.0127
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11, ptr %arrayidx, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @arm_heavy_mb() #9
  %conv12 = and i32 %call8, 255
  %and1.i = and i32 %call8, 127
  %call.i.i = call i32 @__sw_hweight8(i32 noundef %and1.i) #9
  %shl.i = shl nuw nsw i32 %conv12, 1
  %and.i = and i32 %shl.i, 254
  %shl2.i = shl nuw nsw i32 %and1.i, 1
  %or.i = or i32 %and.i, %shl2.i
  %and3.i = shl nuw nsw i32 %conv12, 6
  %shl4.i = and i32 %and3.i, 8192
  %or5.i = or i32 %or.i, %shl4.i
  %and73.i = and i32 %call.i.i, 1
  %14 = or i32 %or5.i, %and73.i
  %or14 = xor i32 %14, 513
  %15 = call i32 @llvm.bswap.i32(i32 %or14)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %mul = shl i32 %slot.0127, 4
  %add16 = add i32 %mul, 192
  %add.ptr17 = getelementptr i8, ptr %17, i32 %add16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %15) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add23 = add i32 %mul, 196
  %add.ptr24 = getelementptr i8, ptr %19, i32 %add23
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add30 = add i32 %mul, 200
  %add.ptr31 = getelementptr i8, ptr %21, i32 %add30
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #9, !srcloc !52
  %22 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxdevs, align 4
  %add33 = add i32 %23, 1
  %add34 = add nuw i32 %slot.0127, 1
  %call35 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %olddevs, i32 noundef %add33, i32 noundef %add34) #9
  %24 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxdevs, align 4
  %add5 = add i32 %25, 1
  %cmp = icmp ult i32 %call35, %add5
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call36 = call i32 @i3c_master_entdaa_locked(ptr noundef %m) #9
  %26 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call36, label %for.end.cleanup_crit_edge [
    i32 0, label %for.end.if.end40_crit_edge
    i32 3, label %for.end.if.end40_crit_edge131
  ]

for.end.if.end40_crit_edge131:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %for.end.if.end40_crit_edge131
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %28, i32 184
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %30 = and i32 %29, -65536
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %olddevs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %olddevs, align 4
  %neg = xor i32 %33, -1
  %and49 = and i32 %31, %neg
  %34 = ptrtoint ptr %newdevs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and49, ptr %newdevs, align 4
  %35 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxdevs, align 4
  %add51 = add i32 %36, 1
  %call52 = call i32 @_find_next_bit_be(ptr noundef nonnull %newdevs, i32 noundef %add51, i32 noundef 0) #9
  %37 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxdevs, align 4
  %add55128 = add i32 %38, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call52, i32 %add55128)
  %cmp56129 = icmp ult i32 %call52, %add55128
  br i1 %cmp56129, label %if.end40.for.body58_crit_edge, label %if.end40.do.body67_crit_edge

if.end40.do.body67_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

if.end40.for.body58_crit_edge:                    ; preds = %if.end40
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %if.end40.for.body58_crit_edge
  %slot.1130 = phi i32 [ %call65, %for.body58.for.body58_crit_edge ], [ %call52, %if.end40.for.body58_crit_edge ]
  %arrayidx59 = getelementptr [16 x i8], ptr %addrs, i32 0, i32 %slot.1130
  %39 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx59, align 1
  %call60 = call i32 @i3c_master_add_i3c_dev_locked(ptr noundef %m, i8 noundef zeroext %40) #9
  %41 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxdevs, align 4
  %add63 = add i32 %42, 1
  %add64 = add nuw i32 %slot.1130, 1
  %call65 = call i32 @_find_next_bit_be(ptr noundef nonnull %newdevs, i32 noundef %add63, i32 noundef %add64) #9
  %43 = ptrtoint ptr %maxdevs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maxdevs, align 4
  %add55 = add i32 %44, 1
  %cmp56 = icmp ult i32 %call65, %add55
  br i1 %cmp56, label %for.body58.for.body58_crit_edge, label %for.body58.do.body67_crit_edge

for.body58.do.body67_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58

do.body67:                                        ; preds = %for.body58.do.body67_crit_edge, %if.end40.do.body67_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %46, i32 184
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !49
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %free_rr_slots = getelementptr i8, ptr %m, i32 2488
  %49 = ptrtoint ptr %free_rr_slots to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %free_rr_slots, align 8
  %shl = shl i32 %50, 16
  %or77 = or i32 %shl, %48
  %51 = call i32 @llvm.bswap.i32(i32 %or77)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr79 = getelementptr i8, ptr %53, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %51) #9, !srcloc !52
  %call81 = call i32 @i3c_master_defslvs_locked(ptr noundef %m) #9
  %devs.i = getelementptr i8, ptr %m, i32 2372
  %54 = ptrtoint ptr %devs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %dev.0108.i = load ptr, ptr %devs.i, align 4
  %cmp.not109.i = icmp eq ptr %dev.0108.i, %devs.i
  br i1 %cmp.not109.i, label %for.end.thread.i, label %do.body67.for.body.i_crit_edge

do.body67.for.body.i_crit_edge:                   ; preds = %do.body67
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.body67.for.body.i_crit_edge
  %dev.0111.i = phi ptr [ %dev.0.i, %for.cond.i.for.body.i_crit_edge ], [ %dev.0108.i, %do.body67.for.body.i_crit_edge ]
  %new_i3c_scl_lim.0110.i = phi i32 [ %64, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.body67.for.body.i_crit_edge ]
  %max_read_ds.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev.0111.i, i32 0, i32 1, i32 6
  %55 = ptrtoint ptr %max_read_ds.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_read_ds.i, align 1
  %57 = and i8 %56, 7
  %max_write_ds.i = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev.0111.i, i32 0, i32 1, i32 7
  %58 = ptrtoint ptr %max_write_ds.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %max_write_ds.i, align 2
  %60 = and i8 %59, 7
  %61 = call i8 @llvm.umax.i8(i8 %57, i8 %60) #9
  %cond.i122 = zext i8 %61 to i32
  %switch.tableidx = add nsw i32 %cond.i122, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %62 = icmp ult i32 %switch.tableidx, 4
  br i1 %62, label %switch.lookup, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

switch.lookup:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.idx.mult = mul nsw i32 %switch.tableidx, -2000000
  %switch.offset = add nsw i32 %switch.idx.mult, 8000000
  %63 = add i32 %new_i3c_scl_lim.0110.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %switch.offset)
  %.not.i = icmp ult i32 %63, %switch.offset
  %spec.select107.i = select i1 %.not.i, i32 %new_i3c_scl_lim.0110.i, i32 %switch.offset
  br label %for.cond.i

for.cond.i:                                       ; preds = %switch.lookup, %for.body.i.for.cond.i_crit_edge
  %64 = phi i32 [ %spec.select107.i, %switch.lookup ], [ %new_i3c_scl_lim.0110.i, %for.body.i.for.cond.i_crit_edge ]
  %65 = ptrtoint ptr %dev.0111.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %dev.0.i = load ptr, ptr %dev.0111.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devs.i
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.cond.i
  %i3c_scl_lim.i = getelementptr i8, ptr %m, i32 2636
  %66 = ptrtoint ptr %i3c_scl_lim.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i3c_scl_lim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %67)
  %cmp22.i = icmp eq i32 %64, %67
  br i1 %cmp22.i, label %for.end.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge, label %if.end25.i

for.end.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_upd_i3c_scl_lim.exit

for.end.thread.i:                                 ; preds = %do.body67
  %i3c_scl_lim113.i = getelementptr i8, ptr %m, i32 2636
  %68 = ptrtoint ptr %i3c_scl_lim113.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i3c_scl_lim113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp22114.i = icmp eq i32 %69, 0
  br i1 %cmp22114.i, label %for.end.thread.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge, label %if.end25.thread.i

for.end.thread.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge: ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_upd_i3c_scl_lim.exit

if.end25.thread.i:                                ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %i3c_scl_lim113.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %i3c_scl_lim113.i, align 4
  br label %cdns_i3c_master_upd_i3c_scl_lim.exit

if.end25.i:                                       ; preds = %for.end.i
  %71 = ptrtoint ptr %i3c_scl_lim.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %64, ptr %i3c_scl_lim.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool27.not.i = icmp eq i32 %64, 0
  br i1 %tobool27.not.i, label %if.end25.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge, label %if.end29.i

if.end25.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_upd_i3c_scl_lim.exit

if.end29.i:                                       ; preds = %if.end25.i
  %scl_rate.i = getelementptr i8, ptr %m, i32 2364
  %72 = ptrtoint ptr %scl_rate.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %scl_rate.i, align 4
  %mul.i = shl i32 %73, 2
  %div.i = udiv i32 1000000000, %mul.i
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr31.i = getelementptr i8, ptr %75, i32 24
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %77 = and i32 %76, -16711681
  %78 = call i32 @llvm.bswap.i32(i32 %77) #9
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr39.i = getelementptr i8, ptr %80, i32 16
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %82 = ptrtoint ptr %i3c_scl_lim.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i3c_scl_lim.i, align 4
  %sub.i = add i32 %83, 999999999
  %div45.i = udiv i32 %sub.i, %83
  %add46.i = add nsw i32 %div.i, -1
  %sub47.i = add i32 %add46.i, %div45.i
  %div48.i = udiv i32 %sub47.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div48.i)
  %cmp49.i = icmp ult i32 %div48.i, 4
  %sub52.i = shl i32 %div48.i, 8
  %phi.bo.i = add i32 %sub52.i, -1024
  %ncycles.0.i = select i1 %cmp49.i, i32 0, i32 %phi.bo.i
  %or.i123 = or i32 %ncycles.0.i, %78
  %.mask.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool55.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool55.not.i, label %if.end64.critedge.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @cdns_i3c_master_disable(ptr noundef %add.ptr.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @arm_heavy_mb() #9
  %84 = call i32 @llvm.bswap.i32(i32 %or.i123) #9
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 4
  %add.ptr60.c101.i = getelementptr i8, ptr %86, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.c101.i, i32 %84) #9, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 16
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  %90 = or i32 %89, 128
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %92, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %90) #9, !srcloc !52
  br label %cdns_i3c_master_upd_i3c_scl_lim.exit

if.end64.critedge.i:                              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void @arm_heavy_mb() #9
  %93 = call i32 @llvm.bswap.i32(i32 %or.i123) #9
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 4
  %add.ptr60.c.i = getelementptr i8, ptr %95, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.c.i, i32 %93) #9, !srcloc !52
  br label %cdns_i3c_master_upd_i3c_scl_lim.exit

cdns_i3c_master_upd_i3c_scl_lim.exit:             ; preds = %if.end64.critedge.i, %if.then56.i, %if.end25.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge, %if.end25.thread.i, %for.end.thread.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge, %for.end.i.cdns_i3c_master_upd_i3c_scl_lim.exit_crit_edge
  %call82 = call i32 @i3c_master_enec_locked(ptr noundef %m, i8 noundef zeroext 126, i8 noundef zeroext 10) #9
  br label %cleanup

cleanup:                                          ; preds = %cdns_i3c_master_upd_i3c_scl_lim.exit, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cdns_i3c_master_upd_i3c_scl_lim.exit ], [ %call36, %for.end.cleanup_crit_edge ], [ -28, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addrs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newdevs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olddevs) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cdns_i3c_master_supports_ccc_cmd(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndests = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %ndests to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %3, label %sw.epilog [
    i8 0, label %if.end.return_crit_edge
    i8 -128, label %if.end.return_crit_edge2
    i8 1, label %if.end.return_crit_edge3
    i8 -127, label %if.end.return_crit_edge4
    i8 2, label %if.end.return_crit_edge5
    i8 -126, label %if.end.return_crit_edge6
    i8 6, label %if.end.return_crit_edge7
    i8 -122, label %if.end.return_crit_edge8
    i8 7, label %if.end.return_crit_edge9
    i8 9, label %if.end.return_crit_edge10
    i8 -119, label %if.end.return_crit_edge11
    i8 10, label %if.end.return_crit_edge12
    i8 -118, label %if.end.return_crit_edge13
    i8 8, label %if.end.return_crit_edge14
    i8 32, label %if.end.return_crit_edge15
    i8 -121, label %if.end.return_crit_edge16
    i8 -120, label %if.end.return_crit_edge17
    i8 -117, label %if.end.return_crit_edge18
    i8 -116, label %if.end.return_crit_edge19
    i8 -115, label %if.end.return_crit_edge20
    i8 -114, label %if.end.return_crit_edge21
    i8 -113, label %if.end.return_crit_edge22
    i8 -112, label %if.end.return_crit_edge23
    i8 -111, label %if.end.return_crit_edge24
    i8 -108, label %if.end.return_crit_edge25
    i8 -107, label %if.end.return_crit_edge26
  ]

if.end.return_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge21:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge5:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge4:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge3:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge2:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.return_crit_edge, %if.end.return_crit_edge2, %if.end.return_crit_edge3, %if.end.return_crit_edge4, %if.end.return_crit_edge5, %if.end.return_crit_edge6, %if.end.return_crit_edge7, %if.end.return_crit_edge8, %if.end.return_crit_edge9, %if.end.return_crit_edge10, %if.end.return_crit_edge11, %if.end.return_crit_edge12, %if.end.return_crit_edge13, %if.end.return_crit_edge14, %if.end.return_crit_edge15, %if.end.return_crit_edge16, %if.end.return_crit_edge17, %if.end.return_crit_edge18, %if.end.return_crit_edge19, %if.end.return_crit_edge20, %if.end.return_crit_edge21, %if.end.return_crit_edge22, %if.end.return_crit_edge23, %if.end.return_crit_edge24, %if.end.return_crit_edge25, %if.end.return_crit_edge26, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.epilog ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %if.end.return_crit_edge2 ], [ true, %if.end.return_crit_edge3 ], [ true, %if.end.return_crit_edge4 ], [ true, %if.end.return_crit_edge5 ], [ true, %if.end.return_crit_edge6 ], [ true, %if.end.return_crit_edge7 ], [ true, %if.end.return_crit_edge8 ], [ true, %if.end.return_crit_edge9 ], [ true, %if.end.return_crit_edge10 ], [ true, %if.end.return_crit_edge11 ], [ true, %if.end.return_crit_edge12 ], [ true, %if.end.return_crit_edge13 ], [ true, %if.end.return_crit_edge14 ], [ true, %if.end.return_crit_edge15 ], [ true, %if.end.return_crit_edge16 ], [ true, %if.end.return_crit_edge17 ], [ true, %if.end.return_crit_edge18 ], [ true, %if.end.return_crit_edge19 ], [ true, %if.end.return_crit_edge20 ], [ true, %if.end.return_crit_edge21 ], [ true, %if.end.return_crit_edge22 ], [ true, %if.end.return_crit_edge23 ], [ true, %if.end.return_crit_edge24 ], [ true, %if.end.return_crit_edge25 ], [ true, %if.end.return_crit_edge26 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_send_ccc_cmd(ptr noundef %m, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %m, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %ncmds2.i, align 4
  %ret.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -110, ptr %ret.i, align 8
  %cmds = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 4
  %id = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 1
  %conv = zext i8 %6 to i32
  %cmd1 = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %cmd1, align 4
  %dests = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %dests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dests, align 4
  %payload = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %payload, align 4
  %conv2 = zext i16 %11 to i32
  %shl = shl nuw nsw i32 %conv2, 12
  %or = or i32 %shl, 1073741824
  %12 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %cmds, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool5.not = icmp sgt i8 %6, -1
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 4
  %conv9 = zext i8 %14 to i32
  %shl10 = shl nuw nsw i32 %conv9, 1
  %or12 = or i32 %shl10, %or
  %15 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or12, ptr %cmds, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmds, align 8
  %or17 = or i32 %19, 1
  store i32 %or17, ptr %cmds, align 8
  %data = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %9, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %rx_buf = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %rx_buf, align 4
  %23 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %payload, align 4
  %conv25 = zext i16 %24 to i32
  %rx_len = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv25, ptr %rx_len, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %data29 = getelementptr inbounds %struct.i3c_ccc_cmd_dest, ptr %9, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data29, align 4
  %tx_buf = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %tx_buf, align 4
  %29 = ptrtoint ptr %payload to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %payload, align 4
  %conv34 = zext i16 %30 to i32
  %tx_len = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv34, ptr %tx_len, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then15
  %comp.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #9
  %lock.i = getelementptr i8, ptr %m, i32 2560
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %cur.i = getelementptr i8, ptr %m, i32 2556
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %tobool.not.i73 = icmp eq ptr %34, null
  br i1 %tobool.not.i73, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end35
  %xferqueue.i = getelementptr i8, ptr %m, i32 2548
  %prev.i.i74 = getelementptr i8, ptr %m, i32 2552
  %35 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i74, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %36, ptr noundef %xferqueue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.cdns_i3c_master_queue_xfer.exit_crit_edge

if.then.i.cdns_i3c_master_queue_xfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_queue_xfer.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %prev.i.i74, align 4
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %xferqueue.i, ptr %call7.i.i.i, align 8
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i.i, ptr %36, align 4
  br label %cdns_i3c_master_queue_xfer.exit

if.else.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %cur.i, align 4
  tail call fastcc void @cdns_i3c_master_start_xfer_locked(ptr noundef %add.ptr.i) #9
  br label %cdns_i3c_master_queue_xfer.exit

cdns_i3c_master_queue_xfer.exit:                  ; preds = %if.else.i, %if.end.i.i.i, %if.then.i.cdns_i3c_master_queue_xfer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %call37 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %cdns_i3c_master_queue_xfer.exit.if.end40_crit_edge

cdns_i3c_master_queue_xfer.exit.if.end40_crit_edge: ; preds = %cdns_i3c_master_queue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %cdns_i3c_master_queue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cdns_i3c_master_unqueue_xfer(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %cdns_i3c_master_queue_xfer.exit.if.end40_crit_edge
  %42 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ret.i, align 8
  %error.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call7.i.i.i, i32 1, i32 1, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error.i, align 8
  %switch.tableidx = add i32 %45, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %46 = icmp ult i32 %switch.tableidx, 5
  br i1 %46, label %switch.lookup, label %if.end40.cdns_i3c_cmd_get_err.exit_crit_edge

if.end40.cdns_i3c_cmd_get_err.exit_crit_edge:     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_cmd_get_err.exit

switch.lookup:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cdns_i3c_master_send_ccc_cmd, i32 0, i32 %switch.tableidx
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cdns_i3c_cmd_get_err.exit

cdns_i3c_cmd_get_err.exit:                        ; preds = %switch.lookup, %if.end40.cdns_i3c_cmd_get_err.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end40.cdns_i3c_cmd_get_err.exit_crit_edge ]
  %err = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %cmd, i32 0, i32 4
  %48 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %err, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cdns_i3c_cmd_get_err.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %cdns_i3c_cmd_get_err.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_priv_xfers(ptr nocapture noundef readonly %dev, ptr nocapture noundef %xfers, i32 noundef %nxfers) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %cmp184 = icmp sgt i32 %nxfers, 0
  br i1 %cmp184, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %nxfers
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0185 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.0185, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %3)
  %cmp2 = icmp ugt i16 %3, 4095
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %tobool.not = icmp eq i32 %nxfers, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %caps = getelementptr i8, ptr %1, i32 2616
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %nxfers)
  %cmp6 = icmp ult i32 %5, %nxfers
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %cmdrfifodepth = getelementptr i8, ptr %1, i32 2620
  %6 = ptrtoint ptr %cmdrfifodepth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmdrfifodepth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %nxfers)
  %cmp9 = icmp ult i32 %7, %nxfers
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %for.cond13.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond13.preheader:                             ; preds = %lor.lhs.false
  br i1 %cmp184, label %for.cond13.preheader.for.body16_crit_edge, label %for.cond13.preheader.if.end8.i.i.i_crit_edge

for.cond13.preheader.if.end8.i.i.i_crit_edge:     ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

for.cond13.preheader.for.body16_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond13.preheader.for.body16_crit_edge
  %i.1189 = phi i32 [ %inc33, %for.body16.for.body16_crit_edge ], [ 0, %for.cond13.preheader.for.body16_crit_edge ]
  %rxslots.0188 = phi i32 [ %rxslots.1, %for.body16.for.body16_crit_edge ], [ 0, %for.cond13.preheader.for.body16_crit_edge ]
  %txslots.0187 = phi i32 [ %txslots.1, %for.body16.for.body16_crit_edge ], [ 0, %for.cond13.preheader.for.body16_crit_edge ]
  %arrayidx17 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.1189
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  %len25 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.1189, i32 1
  %10 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len25, align 2
  %conv26 = zext i16 %11 to i32
  %sub28 = add nuw nsw i32 %conv26, 3
  %div29181 = lshr i32 %sub28, 2
  %add30 = select i1 %tobool18.not, i32 %div29181, i32 0
  %txslots.1 = add i32 %txslots.0187, %add30
  %add23 = select i1 %tobool18.not, i32 0, i32 %div29181
  %rxslots.1 = add i32 %rxslots.0188, %add23
  %inc33 = add nuw nsw i32 %i.1189, 1
  %exitcond197.not = icmp eq i32 %inc33, %nxfers
  br i1 %exitcond197.not, label %for.end34, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.end34:                                        ; preds = %for.body16
  %rxfifodepth = getelementptr i8, ptr %1, i32 2628
  %12 = ptrtoint ptr %rxfifodepth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxfifodepth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rxslots.1, i32 %13)
  %cmp36 = icmp ugt i32 %rxslots.1, %13
  br i1 %cmp36, label %for.end34.cleanup_crit_edge, label %lor.lhs.false38

for.end34.cleanup_crit_edge:                      ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false38:                                  ; preds = %for.end34
  %txfifodepth = getelementptr i8, ptr %1, i32 2624
  %14 = ptrtoint ptr %txfifodepth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txfifodepth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %txslots.1, i32 %15)
  %cmp40 = icmp ugt i32 %txslots.1, %15
  br i1 %cmp40, label %lor.lhs.false38.cleanup_crit_edge, label %lor.lhs.false38.if.end8.i.i.i_crit_edge

lor.lhs.false38.if.end8.i.i.i_crit_edge:          ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %lor.lhs.false38.if.end8.i.i.i_crit_edge, %for.cond13.preheader.if.end8.i.i.i_crit_edge
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nxfers, i32 28) #9
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 72) #9
  %retval.0.i.i = select i1 %17, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %cdns_i3c_master_alloc_xfer.exit

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cdns_i3c_master_alloc_xfer.exit:                  ; preds = %if.end8.i.i.i
  %19 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %nxfers, ptr %ncmds2.i, align 4
  %ret.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -110, ptr %ret.i, align 64
  br i1 %cmp184, label %for.body51.lr.ph, label %cdns_i3c_master_alloc_xfer.exit.for.end92_crit_edge

cdns_i3c_master_alloc_xfer.exit.for.end92_crit_edge: ; preds = %cdns_i3c_master_alloc_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.body51.lr.ph:                                 ; preds = %cdns_i3c_master_alloc_xfer.exit
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dyn_addr, align 1
  %conv56 = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv56, 1
  %or = or i32 %shl, 402653184
  %or62 = or i32 %shl, 402653185
  %sub78 = add nsw i32 %nxfers, -1
  br label %for.body51

for.body51:                                       ; preds = %if.end74.for.body51_crit_edge, %for.body51.lr.ph
  %i.2193 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc91, %if.end74.for.body51_crit_edge ]
  %arrayidx52 = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.2193
  %arrayidx53 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.2193
  %len54 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.2193, i32 1
  %25 = ptrtoint ptr %len54 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len54, align 2
  %conv55 = zext i16 %26 to i32
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %arrayidx52, align 4
  %28 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool59.not = icmp eq i8 %29, 0
  br i1 %tobool59.not, label %if.else68, label %if.then60

if.then60:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or62, ptr %arrayidx52, align 4
  %data = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.2193, i32 2
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %rx_buf = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.2193, i32 5
  %33 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %rx_buf, align 4
  %rx_len = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.2193, i32 4
  %34 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv55, ptr %rx_len, align 4
  %inc67 = add nuw nsw i32 %conv55, 1
  br label %if.end74

if.else68:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  %data70 = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.2193, i32 2
  %35 = ptrtoint ptr %data70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data70, align 4
  %tx_buf = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.2193, i32 3
  %37 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %tx_buf, align 4
  %tx_len = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.2193, i32 2
  %38 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv55, ptr %tx_len, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else68, %if.then60
  %pl_len.0 = phi i32 [ %inc67, %if.then60 ], [ %conv55, %if.else68 ]
  %shl75 = shl nuw nsw i32 %pl_len.0, 12
  %39 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx52, align 4
  %or77 = or i32 %40, %shl75
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2193, i32 %sub78)
  %cmp79 = icmp slt i32 %i.2193, %sub78
  %or83 = or i32 %or77, 33554432
  %spec.select = select i1 %cmp79, i32 %or83, i32 %or77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2193)
  %tobool85.not = icmp eq i32 %i.2193, 0
  %or88 = or i32 %spec.select, 536870912
  %spec.select183 = select i1 %tobool85.not, i32 %or88, i32 %spec.select
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select183, ptr %arrayidx52, align 4
  %inc91 = add nuw nsw i32 %i.2193, 1
  %exitcond198.not = icmp eq i32 %inc91, %nxfers
  br i1 %exitcond198.not, label %if.end74.for.end92_crit_edge, label %if.end74.for.body51_crit_edge

if.end74.for.body51_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

if.end74.for.end92_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.end92:                                        ; preds = %if.end74.for.end92_crit_edge, %cdns_i3c_master_alloc_xfer.exit.for.end92_crit_edge
  tail call fastcc void @cdns_i3c_master_queue_xfer(ptr noundef %add.ptr.i, ptr noundef nonnull %call9.i.i.i)
  %comp = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1
  %call94 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %for.end92.if.end97_crit_edge

for.end92.if.end97_crit_edge:                     ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cdns_i3c_master_unqueue_xfer(ptr noundef %add.ptr.i, ptr noundef nonnull %call9.i.i.i)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %for.end92.if.end97_crit_edge
  %42 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ret.i, align 64
  br i1 %cmp184, label %if.end97.for.body102_crit_edge, label %if.end97.for.end109_crit_edge

if.end97.for.end109_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end109

if.end97.for.body102_crit_edge:                   ; preds = %if.end97
  br label %for.body102

for.body102:                                      ; preds = %cdns_i3c_cmd_get_err.exit.for.body102_crit_edge, %if.end97.for.body102_crit_edge
  %i.3196 = phi i32 [ %inc108, %cdns_i3c_cmd_get_err.exit.for.body102_crit_edge ], [ 0, %if.end97.for.body102_crit_edge ]
  %error.i = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.3196, i32 6
  %44 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error.i, align 4
  %switch.tableidx = add i32 %45, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %46 = icmp ult i32 %switch.tableidx, 5
  br i1 %46, label %switch.lookup, label %for.body102.cdns_i3c_cmd_get_err.exit_crit_edge

for.body102.cdns_i3c_cmd_get_err.exit_crit_edge:  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_cmd_get_err.exit

switch.lookup:                                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cdns_i3c_master_priv_xfers, i32 0, i32 %switch.tableidx
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cdns_i3c_cmd_get_err.exit

cdns_i3c_cmd_get_err.exit:                        ; preds = %switch.lookup, %for.body102.cdns_i3c_cmd_get_err.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.body102.cdns_i3c_cmd_get_err.exit_crit_edge ]
  %err = getelementptr %struct.i3c_priv_xfer, ptr %xfers, i32 %i.3196, i32 3
  %48 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %err, align 4
  %inc108 = add nuw nsw i32 %i.3196, 1
  %exitcond199.not = icmp eq i32 %inc108, %nxfers
  br i1 %exitcond199.not, label %cdns_i3c_cmd_get_err.exit.for.end109_crit_edge, label %cdns_i3c_cmd_get_err.exit.for.body102_crit_edge

cdns_i3c_cmd_get_err.exit.for.body102_crit_edge:  ; preds = %cdns_i3c_cmd_get_err.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

cdns_i3c_cmd_get_err.exit.for.end109_crit_edge:   ; preds = %cdns_i3c_cmd_get_err.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end109

for.end109:                                       ; preds = %cdns_i3c_cmd_get_err.exit.for.end109_crit_edge, %if.end97.for.end109_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end109, %if.end8.i.i.i.cleanup_crit_edge, %lor.lhs.false38.cleanup_crit_edge, %for.end34.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %for.end109 ], [ 0, %for.end.cleanup_crit_edge ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %if.end5.cleanup_crit_edge ], [ -524, %lor.lhs.false38.cleanup_crit_edge ], [ -524, %for.end34.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_attach_i2c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %free_rr_slots.i = getelementptr i8, ptr %1, i32 2488
  %2 = ptrtoint ptr %free_rr_slots.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_rr_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #9, !range !87
  %spec.select.i = select i1 %tobool1.not.i, i32 -28, i32 %4
  br i1 %tobool1.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %spec.select.i to i16
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %call7.i.i, align 8
  %shl = shl nuw i32 1, %spec.select.i
  %neg = xor i32 %shl, -1
  %7 = ptrtoint ptr %free_rr_slots.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_rr_slots.i, align 8
  %and = and i32 %8, %neg
  store i32 %and, ptr %free_rr_slots.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.i2c_dev_desc, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 4
  %conv6 = zext i16 %11 to i32
  %and1.i = and i32 %conv6, 127
  %call.i.i = tail call i32 @__sw_hweight8(i32 noundef %and1.i) #9
  %shl.i = shl nuw nsw i32 %conv6, 1
  %and.i = and i32 %shl.i, 254
  %shl2.i = shl nuw nsw i32 %and1.i, 1
  %or.i = or i32 %and.i, %shl2.i
  %and3.i = shl nuw nsw i32 %conv6, 6
  %shl4.i = and i32 %and3.i, 57344
  %or5.i = or i32 %or.i, %shl4.i
  %and73.i = and i32 %call.i.i, 1
  %12 = or i32 %or5.i, %and73.i
  %13 = xor i32 %12, 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %regs = getelementptr i8, ptr %1, i32 2604
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call7.i.i, align 8
  %conv9 = zext i16 %18 to i32
  %mul = shl nuw nsw i32 %conv9, 4
  %add = add nuw nsw i32 %mul, 192
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %lvr = getelementptr inbounds %struct.i2c_dev_desc, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %lvr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lvr, align 2
  %conv13 = zext i8 %20 to i32
  %21 = shl nuw i32 %conv13, 24
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %call7.i.i, align 8
  %conv16 = zext i16 %25 to i32
  %mul17 = shl nuw nsw i32 %conv16, 4
  %add18 = add nuw nsw i32 %mul17, 200
  %add.ptr19 = getelementptr i8, ptr %23, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %21) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %27, i32 184
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !49
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %call7.i.i, align 8
  %conv28 = zext i16 %31 to i32
  %shl29 = shl nuw i32 1, %conv28
  %or = or i32 %shl29, %29
  %32 = tail call i32 @llvm.bswap.i32(i32 %or)
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr31 = getelementptr i8, ptr %34, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %32) #9, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -28, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_detach_i2c_dev(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr i8, ptr %1, i32 2604
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 184
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 4
  %conv = zext i16 %9 to i32
  %shl = shl i32 65536, %conv
  %or = or i32 %shl, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #9, !srcloc !52
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  %conv8 = zext i16 %14 to i32
  %shl9 = shl nuw i32 1, %conv8
  %free_rr_slots = getelementptr i8, ptr %1, i32 2488
  %15 = ptrtoint ptr %free_rr_slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free_rr_slots, align 8
  %or10 = or i32 %shl9, %16
  store i32 %or10, ptr %free_rr_slots, align 8
  %17 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %master_priv.i, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_i2c_xfers(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %xfers, i32 noundef %nxfers) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -48
  %caps = getelementptr i8, ptr %1, i32 2616
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nxfers)
  %cmp = icmp ult i32 %3, %nxfers
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %cmp2146 = icmp sgt i32 %nxfers, 0
  br i1 %cmp2146, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end8.i.i.i_crit_edge

for.cond.preheader.if.end8.i.i.i_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0149 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ntxwords.0148 = phi i32 [ %ntxwords.1, %if.end6.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nrxwords.0147 = phi i32 [ %nrxwords.1, %if.end6.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.0149, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %5)
  %cmp3 = icmp ugt i16 %5, 4095
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %conv = zext i16 %5 to i32
  %flags = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.0149, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %sub = add nuw nsw i32 %conv, 3
  %div139 = lshr i32 %sub, 2
  %add13 = select i1 %tobool.not, i32 0, i32 %div139
  %nrxwords.1 = add i32 %add13, %nrxwords.0147
  %add20 = select i1 %tobool.not, i32 %div139, i32 0
  %ntxwords.1 = add i32 %add20, %ntxwords.0148
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, %nxfers
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end6
  %txfifodepth = getelementptr i8, ptr %1, i32 2624
  %9 = ptrtoint ptr %txfifodepth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txfifodepth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ntxwords.1, i32 %10)
  %cmp23 = icmp ugt i32 %ntxwords.1, %10
  br i1 %cmp23, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %rxfifodepth = getelementptr i8, ptr %1, i32 2628
  %11 = ptrtoint ptr %rxfifodepth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxfifodepth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nrxwords.1, i32 %12)
  %cmp26 = icmp ugt i32 %nrxwords.1, %12
  br i1 %cmp26, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end8.i.i.i_crit_edge

lor.lhs.false.if.end8.i.i.i_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %lor.lhs.false.if.end8.i.i.i_crit_edge, %for.cond.preheader.if.end8.i.i.i_crit_edge
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nxfers, i32 28) #9
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 72) #9
  %retval.0.i.i = select i1 %14, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %cdns_i3c_master_alloc_xfer.exit

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cdns_i3c_master_alloc_xfer.exit:                  ; preds = %if.end8.i.i.i
  %16 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %ncmds2.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ncmds2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %nxfers, ptr %ncmds2.i, align 4
  %ret.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -110, ptr %ret.i, align 64
  br i1 %cmp2146, label %cdns_i3c_master_alloc_xfer.exit.for.body37_crit_edge, label %cdns_i3c_master_alloc_xfer.exit.for.end76_crit_edge

cdns_i3c_master_alloc_xfer.exit.for.end76_crit_edge: ; preds = %cdns_i3c_master_alloc_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76

cdns_i3c_master_alloc_xfer.exit.for.body37_crit_edge: ; preds = %cdns_i3c_master_alloc_xfer.exit
  br label %for.body37

for.body37:                                       ; preds = %if.end73.for.body37_crit_edge, %cdns_i3c_master_alloc_xfer.exit.for.body37_crit_edge
  %i.1152 = phi i32 [ %inc75, %if.end73.for.body37_crit_edge ], [ 0, %cdns_i3c_master_alloc_xfer.exit.for.body37_crit_edge ]
  %arrayidx38 = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1152
  %arrayidx39 = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.1152
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx39, align 4
  %conv40 = zext i16 %21 to i32
  %shl = shl nuw nsw i32 %conv40, 1
  %len42 = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.1152, i32 2
  %22 = ptrtoint ptr %len42 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len42, align 4
  %conv43 = zext i16 %23 to i32
  %shl44 = shl nuw nsw i32 %conv43, 12
  %or = or i32 %shl44, %shl
  %or45 = or i32 %or, 402653184
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or45, ptr %arrayidx38, align 4
  %flags47 = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.1152, i32 1
  %25 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags47, align 2
  %27 = and i16 %26, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool50.not = icmp eq i16 %27, 0
  br i1 %tobool50.not, label %for.body37.if.end54_crit_edge, label %if.then51

for.body37.if.end54_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then51:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %or53 = or i32 %or, 419430400
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or53, ptr %arrayidx38, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.body37.if.end54_crit_edge
  %29 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool59.not = icmp eq i16 %29, 0
  br i1 %tobool59.not, label %if.else67, label %if.then60

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx38, align 4
  %or62 = or i32 %31, 1
  store i32 %or62, ptr %arrayidx38, align 4
  %buf = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.1152, i32 3
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf, align 4
  %rx_buf = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1152, i32 5
  %34 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %rx_buf, align 4
  %rx_len = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1152, i32 4
  br label %if.end73

if.else67:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %buf69 = getelementptr %struct.i2c_msg, ptr %xfers, i32 %i.1152, i32 3
  %35 = ptrtoint ptr %buf69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf69, align 4
  %tx_buf = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1152, i32 3
  %37 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %tx_buf, align 4
  %tx_len = getelementptr %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.1152, i32 2
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.then60
  %tx_len.sink = phi ptr [ %tx_len, %if.else67 ], [ %rx_len, %if.then60 ]
  %38 = ptrtoint ptr %tx_len.sink to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv43, ptr %tx_len.sink, align 4
  %inc75 = add nuw nsw i32 %i.1152, 1
  %exitcond154.not = icmp eq i32 %inc75, %nxfers
  br i1 %exitcond154.not, label %if.end73.for.end76_crit_edge, label %if.end73.for.body37_crit_edge

if.end73.for.body37_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

if.end73.for.end76_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76

for.end76:                                        ; preds = %if.end73.for.end76_crit_edge, %cdns_i3c_master_alloc_xfer.exit.for.end76_crit_edge
  %comp.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #9
  %lock.i = getelementptr i8, ptr %1, i32 2560
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %cur.i = getelementptr i8, ptr %1, i32 2556
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %tobool.not.i140 = icmp eq ptr %41, null
  br i1 %tobool.not.i140, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.end76
  %xferqueue.i = getelementptr i8, ptr %1, i32 2548
  %prev.i.i141 = getelementptr i8, ptr %1, i32 2552
  %42 = ptrtoint ptr %prev.i.i141 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i141, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %43, ptr noundef %xferqueue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i142, label %if.then.i.cdns_i3c_master_queue_xfer.exit_crit_edge

if.then.i.cdns_i3c_master_queue_xfer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdns_i3c_master_queue_xfer.exit

if.end.i.i.i142:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i.i141 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i.i.i, ptr %prev.i.i141, align 4
  %45 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %xferqueue.i, ptr %call9.i.i.i, align 128
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call9.i.i.i, ptr %43, align 4
  br label %cdns_i3c_master_queue_xfer.exit

if.else.i:                                        ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i.i, ptr %cur.i, align 4
  tail call fastcc void @cdns_i3c_master_start_xfer_locked(ptr noundef %add.ptr.i) #9
  br label %cdns_i3c_master_queue_xfer.exit

cdns_i3c_master_queue_xfer.exit:                  ; preds = %if.else.i, %if.end.i.i.i142, %if.then.i.cdns_i3c_master_queue_xfer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %call78 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %cdns_i3c_master_queue_xfer.exit.if.end81_crit_edge

cdns_i3c_master_queue_xfer.exit.if.end81_crit_edge: ; preds = %cdns_i3c_master_queue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then80:                                        ; preds = %cdns_i3c_master_queue_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cdns_i3c_master_unqueue_xfer(ptr noundef %add.ptr.i, ptr noundef nonnull %call9.i.i.i)
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %cdns_i3c_master_queue_xfer.exit.if.end81_crit_edge
  %49 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ret.i, align 64
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.end8.i.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %50, %if.end81 ], [ -524, %entry.cleanup_crit_edge ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %for.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_request_ibi(ptr noundef %dev, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %call3 = tail call ptr @i3c_generic_ibi_alloc_pool(ptr noundef %dev, ptr noundef %req) #9
  %ibi_pool = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %ibi_pool, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

do.body8:                                         ; preds = %entry
  %ibi = getelementptr i8, ptr %1, i32 2496
  %lock = getelementptr i8, ptr %1, i32 2504
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %6 = ptrtoint ptr %ibi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ibi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1458.not = icmp eq i32 %7, 0
  br i1 %cmp1458.not, label %do.body8.for.end_crit_edge, label %for.body.lr.ph

do.body8.for.end_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body8
  %slots = getelementptr i8, ptr %1, i32 2500
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slots, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.059
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = trunc i32 %i.059 to i16
  %ibi19 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %ibi19 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv18, ptr %ibi19, align 2
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slots, align 4
  %arrayidx22 = getelementptr ptr, ptr %14, i32 %i.059
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %arrayidx22, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17, %do.body8.for.end_crit_edge
  %i.057 = phi i32 [ %i.059, %if.then17 ], [ 0, %do.body8.for.end_crit_edge ], [ %7, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  %16 = ptrtoint ptr %ibi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ibi, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %17)
  %cmp28 = icmp ult i32 %i.057, %17
  br i1 %cmp28, label %for.end.cleanup_crit_edge, label %if.end31

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_free_pool(ptr noundef %19) #9
  %20 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ibi_pool, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -28, %if.end31 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_free_ibi(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %lock = getelementptr i8, ptr %1, i32 2504
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %slots = getelementptr i8, ptr %1, i32 2500
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slots, align 4
  %ibi9 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ibi9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ibi9, align 2
  %idxprom = sext i16 %7 to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  store i16 -1, ptr %ibi9, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %ibi_pool = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_free_pool(ptr noundef %10) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_enable_ibi(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %lock = getelementptr i8, ptr %1, i32 2504
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %regs = getelementptr i8, ptr %1, i32 2604
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ibi8 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ibi8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ibi8, align 2
  %8 = sdiv i16 %7, 2
  %div = sext i16 %8 to i32
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 384
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %11 = ptrtoint ptr %ibi8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ibi8, align 2
  %13 = shl i16 %12, 4
  %14 = and i16 %13, 16
  %15 = zext i16 %14 to i32
  %shl = shl nuw i32 65535, %15
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %bcr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %bcr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bcr, align 8
  %conv15 = zext i8 %17 to i32
  %18 = shl nuw nsw i32 %conv15, 8
  %shl16 = and i32 %18, 49152
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dyn_addr, align 1
  %conv18 = zext i8 %20 to i32
  %shl19 = shl nuw nsw i32 %conv18, 1
  %or = or i32 %shl16, %shl19
  %max_ibi_len = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %max_ibi_len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_ibi_len, align 1
  %conv21 = zext i8 %22 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or23 = or i32 %or, %shl22
  %and28 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %spec.select.v = select i1 %tobool29.not, i32 1, i32 8193
  %spec.select = or i32 %or23, %spec.select.v
  %shl36 = shl i32 %spec.select, %15
  %or37 = or i32 %shl36, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %26 = ptrtoint ptr %ibi8 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ibi8, align 2
  %28 = sdiv i16 %27, 2
  %div44 = sext i16 %28 to i32
  %mul45 = shl nsw i32 %div44, 2
  %add46 = add nsw i32 %mul45, 384
  %add.ptr47 = getelementptr i8, ptr %25, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %23) #9, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %29 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dyn_addr, align 1
  %call52 = tail call i32 @i3c_master_enec_locked(ptr noundef %1, i8 noundef zeroext %30, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %entry.if.end109_crit_edge, label %do.body56

entry.if.end109_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.body56:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %33 = ptrtoint ptr %ibi8 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ibi8, align 2
  %35 = sdiv i16 %34, 2
  %div75 = sext i16 %35 to i32
  %mul76 = shl nsw i32 %div75, 2
  %add77 = add nsw i32 %mul76, 384
  %add.ptr78 = getelementptr i8, ptr %32, i32 %add77
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #9, !srcloc !49
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  %38 = ptrtoint ptr %ibi8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ibi8, align 2
  %40 = shl i16 %39, 4
  %41 = and i16 %40, 16
  %42 = zext i16 %41 to i32
  %shl87 = shl nuw i32 65535, %42
  %neg88 = xor i32 %shl87, -1
  %and89 = and i32 %37, %neg88
  %shl95 = shl nuw nsw i32 252, %42
  %or96 = or i32 %and89, %shl95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %or96)
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %46 = ptrtoint ptr %ibi8 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ibi8, align 2
  %48 = sdiv i16 %47, 2
  %div103 = sext i16 %48 to i32
  %mul104 = shl nsw i32 %div103, 2
  %add105 = add nsw i32 %mul104, 384
  %add.ptr106 = getelementptr i8, ptr %45, i32 %add105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %43) #9, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call65) #9
  br label %if.end109

if.end109:                                        ; preds = %do.body56, %entry.if.end109_crit_edge
  ret i32 %call52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i3c_master_disable_ibi(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call3 = tail call i32 @i3c_master_disec_locked(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr i8, ptr %1, i32 2504
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %regs = getelementptr i8, ptr %1, i32 2604
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %ibi9 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ibi9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ibi9, align 2
  %10 = sdiv i16 %9, 2
  %div = sext i16 %10 to i32
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 384
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %13 = ptrtoint ptr %ibi9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ibi9, align 2
  %15 = shl i16 %14, 4
  %16 = and i16 %15, 16
  %17 = zext i16 %16 to i32
  %shl = shl nuw i32 65535, %17
  %neg = xor i32 %shl, -1
  %and = and i32 %12, %neg
  %shl22 = shl nuw nsw i32 252, %17
  %or = or i32 %and, %shl22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %21 = ptrtoint ptr %ibi9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ibi9, align 2
  %23 = sdiv i16 %22, 2
  %div29 = sext i16 %23 to i32
  %mul30 = shl nsw i32 %div29, 2
  %add31 = add nsw i32 %mul30, 384
  %add.ptr32 = getelementptr i8, ptr %20, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %18) #9, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i3c_master_recycle_ibi_slot(ptr nocapture noundef readonly %dev, ptr noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %ibi_pool = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ibi_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibi_pool, align 4
  tail call void @i3c_generic_ibi_recycle_slot(ptr noundef %3, ptr noundef %slot) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_get_free_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_set_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_i3c_master_disable(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  %3 = and i32 %2, -129
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !52
  %call4 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call4, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 499) #9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr181 = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %9 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not2 = icmp eq i32 %9, 0
  br i1 %tobool.not2, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then39.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call26 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %if.then29, label %if.then39

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %11, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  br label %for.end

if.then39:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %14, i32 52
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  %16 = and i32 %15, 1024
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then39.land.lhs.true_crit_edge, label %if.then39.for.end_crit_edge

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then39.for.end_crit_edge, %if.then29, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_entdaa_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_add_i3c_dev_locked(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_defslvs_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_enec_locked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_i3c_master_queue_xfer(ptr noundef %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %xfer, i32 0, i32 1
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.cdns_i3c_xfer, ptr %xfer, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #9
  %lock = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %cur = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %xferqueue = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xfer, ptr noundef %4, ptr noundef %xferqueue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xfer, ptr %cur, align 4
  tail call fastcc void @cdns_i3c_master_start_xfer_locked(ptr noundef %master)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_i3c_master_unqueue_xfer(ptr noundef %master, ptr noundef %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %cur = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %cmp6 = icmp eq ptr %1, %xfer
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.cdns_i3c_master, ptr %master, i32 0, i32 6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  %5 = and i32 %4, -129
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %5) #9, !srcloc !52
  %call16 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call16, 1000000000
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr2197 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2197) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not98 = icmp eq i32 %11, 0
  br i1 %tobool.not98, label %if.then.land.lhs.true_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call28 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call28, %add.i
  br i1 %cmp3.i, label %if.then32, label %cond.false

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr36 = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #9
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %17, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  %19 = and i32 %18, 1024
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then32, %if.then.for.end_crit_edge
  %20 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cur, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %22, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 18176) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 536870912) #9, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr70 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %28 = or i32 %27, 128
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr75 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %28) #9, !srcloc !52
  br label %if.end76

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xfer) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %37 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %xfer, ptr %xfer, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %xfer, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %xfer, ptr %prev.i3.i, align 4
  br label %if.end76

if.end76:                                         ; preds = %list_del_init.exit, %for.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i3c_generic_ibi_alloc_pool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_free_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_disec_locked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_generic_ibi_recycle_slot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_i3c_master_cdns__295_1688_cdns_i3c_master_init6, !1, !"__initcall__kmod_i3c_master_cdns__295_1688_cdns_i3c_master_init6", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1688, i32 1}
!2 = !{ptr @__exitcall_cdns_i3c_master_exit, !1, !"__exitcall_cdns_i3c_master_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1690, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1691, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1692, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias300, !11, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!11 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1693, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1684, i32 11}
!14 = !{ptr @cdns_i3c_master, !15, !"cdns_i3c_master", i1 false, i1 false}
!15 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1680, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1584, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1588, i32 44}
!20 = !{ptr @cdns_i3c_master_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1609, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cdns_i3c_master_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1612, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cdns_i3c_master_probe.__key.6, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1635, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 582, i32 7}
!31 = !{ptr @cdns_i3c_master_ops, !32, !"cdns_i3c_master_ops", i1 false, i1 false}
!32 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1528, i32 47}
!33 = !{ptr @init_completion.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/completion.h", i32 87, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cdns_i3c_master_of_ids, !37, !"cdns_i3c_master_of_ids", i1 false, i1 false}
!37 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1561, i32 34}
!38 = !{ptr @cdns_i3c_devdata, !39, !"cdns_i3c_devdata", i1 false, i1 false}
!39 = !{!"../drivers/i3c/master/i3c-master-cdns.c", i32 1557, i32 29}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 6924764}
!50 = !{i64 2155822912}
!51 = !{i64 2155824061}
!52 = !{i64 6924346}
!53 = !{i64 2155824487}
!54 = !{i64 2155825179}
!55 = !{i64 2155827131}
!56 = !{i64 2155836076}
!57 = !{i64 2155836613}
!58 = !{i64 2155838065}
!59 = !{i64 2155812017}
!60 = !{i64 2155812516}
!61 = !{i64 2155720861}
!62 = !{i64 2155721609}
!63 = !{i64 2155722689}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"auto-init"}
!66 = !{i64 2155722190}
!67 = !{i64 2155805748}
!68 = !{i64 2155806499}
!69 = !{i64 2155807579}
!70 = !{i64 2155805418}
!71 = !{i64 2155807080}
!72 = !{i64 2155716615}
!73 = !{i64 2155717122}
!74 = !{i64 2155717592}
!75 = !{i64 2155718868}
!76 = !{i64 2155719833}
!77 = !{i64 2155720203}
!78 = !{i64 2155792866}
!79 = !{i64 2155793366}
!80 = !{i64 2155793951}
!81 = !{i64 2155764336}
!82 = !{i64 2155766341}
!83 = !{i64 2155766950}
!84 = !{i64 2155795807}
!85 = !{i64 2155714637}
!86 = !{i64 2155715602}
!87 = !{i32 0, i32 33}
!88 = !{i64 2155750092}
!89 = !{i64 2155751818}
!90 = !{i64 2155749261}
!91 = !{i64 2155754664}
!92 = !{i64 2155755641}
!93 = !{i64 2155756818}
!94 = !{i64 2155757813}
!95 = !{i64 2155784356}
!96 = !{i64 2155785921}
!97 = !{i64 2155786566}
!98 = !{i64 2155787022}
!99 = !{i64 2155787714}
!100 = !{i64 2155789781}
!101 = !{i64 2155790760}
!102 = !{i64 2155781893}
!103 = !{i64 2155783075}
!104 = !{i64 2155783581}
!105 = !{i64 2155758531}
!106 = !{i64 2155759105}
!107 = !{i64 2155760426}
!108 = !{i64 2155761403}
!109 = !{i64 2155762580}
!110 = !{i64 2155763575}
!111 = !{i64 2155816128}
!112 = !{i64 2155817556}
!113 = !{i64 2155818914}
!114 = !{i64 2155820027}
!115 = !{i64 2155813739}
!116 = !{i64 2155814852}
!117 = !{i64 2155710252}
!118 = !{i64 2155711221}
!119 = !{i64 2155713058}
!120 = !{i64 2155713552}
!121 = !{i64 2155737793}
!122 = !{i64 2155738762}
!123 = !{i64 2155740918}
!124 = !{i64 2155741412}
!125 = !{i64 2155742693}
!126 = !{i64 2155743551}
!127 = !{i64 2155744881}
!128 = !{i64 2155745846}
