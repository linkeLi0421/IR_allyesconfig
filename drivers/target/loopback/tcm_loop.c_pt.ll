; ModuleID = '/llk/IR_all_yes/drivers/target/loopback/tcm_loop.c_pt.bc'
source_filename = "../drivers/target/loopback/tcm_loop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcm_loop_hba = type { i8, [256 x i8], ptr, ptr, ptr, %struct.device, ptr, [32 x %struct.tcm_loop_tpg], %struct.se_wwn }
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
%struct.tcm_loop_tpg = type { i16, i16, i32, %struct.atomic_t, %struct.se_portal_group, ptr, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.tcm_loop_cmd = type { i32, i32, ptr, %struct.se_cmd, %struct.completion, [96 x i8] }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }

@__param_str_nr_hw_queues = internal constant [22 x i8] c"tcm_loop.nr_hw_queues\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@tcm_loop_nr_hw_queues = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_nr_hw_queues = internal constant %struct.kernel_param { ptr @__param_str_nr_hw_queues, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tcm_loop_nr_hw_queues } }, section "__param", align 4
@__UNIQUE_ID_nr_hw_queuestype281 = internal constant [36 x i8] c"tcm_loop.parmtype=nr_hw_queues:uint\00", section ".modinfo", align 1
@__param_str_can_queue = internal constant [19 x i8] c"tcm_loop.can_queue\00", align 1
@tcm_loop_can_queue = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_can_queue = internal constant %struct.kernel_param { ptr @__param_str_can_queue, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tcm_loop_can_queue } }, section "__param", align 4
@__UNIQUE_ID_can_queuetype282 = internal constant [33 x i8] c"tcm_loop.parmtype=can_queue:uint\00", section ".modinfo", align 1
@__param_str_cmd_per_lun = internal constant [21 x i8] c"tcm_loop.cmd_per_lun\00", align 1
@tcm_loop_cmd_per_lun = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_cmd_per_lun = internal constant %struct.kernel_param { ptr @__param_str_cmd_per_lun, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tcm_loop_cmd_per_lun } }, section "__param", align 4
@__UNIQUE_ID_cmd_per_luntype283 = internal constant [35 x i8] c"tcm_loop.parmtype=cmd_per_lun:uint\00", section ".modinfo", align 1
@loop_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str, i32 0, i32 0, ptr @tcm_loop_get_endpoint_wwn, ptr @tcm_loop_get_tag, ptr null, ptr @tcm_loop_check_demo_mode, ptr @tcm_loop_check_demo_mode_cache, ptr @tcm_loop_check_demo_mode_write_protect, ptr @tcm_loop_check_prod_mode_write_protect, ptr null, ptr @tcm_loop_check_prot_fabric_only, ptr @tcm_loop_get_inst_index, ptr @tcm_loop_check_stop_free, ptr @tcm_loop_release_cmd, ptr null, ptr @tcm_loop_sess_get_index, ptr null, ptr @tcm_loop_write_pending, ptr @tcm_loop_set_default_node_attributes, ptr @tcm_loop_get_cmd_state, ptr @tcm_loop_queue_data_in, ptr @tcm_loop_queue_status, ptr @tcm_loop_queue_tm_rsp, ptr @tcm_loop_aborted_task, ptr @tcm_loop_make_scsi_hba, ptr @tcm_loop_drop_scsi_hba, ptr null, ptr @tcm_loop_make_naa_tpg, ptr null, ptr @tcm_loop_drop_naa_tpg, ptr @tcm_loop_port_link, ptr @tcm_loop_port_unlink, ptr null, ptr null, ptr null, ptr null, ptr @tcm_loop_wwn_attrs, ptr @tcm_loop_tpg_attrs, ptr null, ptr @tcm_loop_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tcm_loop_cmd_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_description298 = internal constant [67 x i8] c"tcm_loop.description=TCM loopback virtual Linux/SCSI fabric module\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [66 x i8] c"tcm_loop.author=Nicholas A. Bellinger <nab@risingtidesystems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [47 x i8] c"tcm_loop.file=drivers/target/loopback/tcm_loop\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [21 x i8] c"tcm_loop.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tcm_loop__302_1195_tcm_loop_fabric_init6 = internal global ptr @tcm_loop_fabric_init, section ".initcall6.init", align 4
@__exitcall_tcm_loop_fabric_exit = internal global ptr @tcm_loop_fabric_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@tcm_loop_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tcm_loop_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @tcm_loop_tpg_attr_nexus, ptr @tcm_loop_tpg_attr_transport_status, ptr @tcm_loop_tpg_attr_address, ptr null], [16 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attrib_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tcm_loop_tpg_attrib_attr_fabric_prot_type, ptr null], [24 x i8] zeroinitializer }, align 32
@__func__.tcm_loop_queue_data_in = private unnamed_addr constant [23 x i8] c"tcm_loop_queue_data_in\00", align 1
@tcm_loop_queue_data_or_status.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcm_loop\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tcm_loop_queue_data_or_status\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/target/loopback/tcm_loop.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s() called for scsi_cmnd: %p cdb: 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.tcm_loop_queue_status = private unnamed_addr constant [22 x i8] c"tcm_loop_queue_status\00", align 1
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"naa.\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fc.\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iqn.\00", [27 x i8] zeroinitializer }, align 32
@tcm_loop_make_scsi_hba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to locate prefix for emulated Target Port: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_loop_make_scsi_hba\00", [41 x i8] zeroinitializer }, align 32
@tcm_loop_make_scsi_hba._entry_ptr = internal global ptr @tcm_loop_make_scsi_hba._entry, section ".printk_index", align 4
@tcm_loop_make_scsi_hba._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Emulated NAA %s Address: %s, exceeds max: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@tcm_loop_make_scsi_hba._entry_ptr.12 = internal global ptr @tcm_loop_make_scsi_hba._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tcm_loop_hba_no_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tcm_loop_make_scsi_hba.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 1, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"TCM_Loop_ConfigFS: Allocated emulated Target %s Address: %s at Linux/SCSI Host ID: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAS\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FCP\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iSCSI\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@tcm_loop_lld_bus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pseudo_lld_bus_match, ptr null, ptr @tcm_loop_driver_probe, ptr null, ptr @tcm_loop_driver_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tcm_loop_primary = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm_loop_adapter_%d\00", [44 x i8] zeroinitializer }, align 32
@tcm_loop_setup_hba_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013device_register() failed for tl_hba->dev: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_loop_setup_hba_bus\00", [41 x i8] zeroinitializer }, align 32
@tcm_loop_setup_hba_bus._entry_ptr = internal global ptr @tcm_loop_setup_hba_bus._entry, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcm_loop_bus\00", [19 x i8] zeroinitializer }, align 32
@tcm_loop_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 608, ptr @tcm_loop_queuecommand, ptr null, ptr null, ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr @tcm_loop_abort_task, ptr @tcm_loop_device_reset, ptr @tcm_loop_target_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcm_loop_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str.29, ptr null, i32 0, i32 -1, i16 256, i16 0, i32 65535, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tcm_loop_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to allocate struct scsi_host\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_loop_driver_probe\00", [42 x i8] zeroinitializer }, align 32
@tcm_loop_driver_probe._entry_ptr = internal global ptr @tcm_loop_driver_probe._entry, section ".printk_index", align 4
@tcm_loop_driver_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: scsi_add_host failed\0A\00", [36 x i8] zeroinitializer }, align 32
@tcm_loop_driver_probe._entry_ptr.27 = internal global ptr @tcm_loop_driver_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TCM_Loopback\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcm_loopback\00", [19 x i8] zeroinitializer }, align 32
@tcm_loop_queuecommand.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_loop_queuecommand\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s() %d:%d:%d:%llu got CDB: 0x%02x scsi_buf_len: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TCM_Loop I_T Nexus does not exist\0A\00", [61 x i8] zeroinitializer }, align 32
@tcm_loop_issue_tmr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Unable to perform device reset without active I_T Nexus\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcm_loop_issue_tmr\00", [45 x i8] zeroinitializer }, align 32
@tcm_loop_issue_tmr._entry_ptr = internal global ptr @tcm_loop_issue_tmr._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tcm_loop_target_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.37, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_loop_target_reset\00", [42 x i8] zeroinitializer }, align 32
@tcm_loop_target_reset._entry_ptr = internal global ptr @tcm_loop_target_reset._entry, section ".printk_index", align 4
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_loop_proc_info()\0A\00", [42 x i8] zeroinitializer }, align 32
@tcm_loop_drop_scsi_hba.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcm_loop_drop_scsi_hba\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"TCM_Loop_ConfigFS: Deallocating emulated Target %s Address: %s at Linux/SCSI Host ID: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@tcm_loop_make_naa_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to locate \22tpgt_#\22 directory group\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_loop_make_naa_tpg\00", [42 x i8] zeroinitializer }, align 32
@tcm_loop_make_naa_tpg._entry_ptr = internal global ptr @tcm_loop_make_naa_tpg._entry, section ".printk_index", align 4
@tcm_loop_make_naa_tpg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Passed tpgt: %lu exceeds TL_TPGS_PER_HBA: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@tcm_loop_make_naa_tpg._entry_ptr.46 = internal global ptr @tcm_loop_make_naa_tpg._entry.44, section ".printk_index", align 4
@tcm_loop_make_naa_tpg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.47, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"TCM_Loop_ConfigFS: Allocated Emulated %s Target Port %s,t,0x%04lx\0A\00", [61 x i8] zeroinitializer }, align 32
@tcm_loop_drop_naa_tpg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcm_loop_drop_naa_tpg\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"TCM_Loop_ConfigFS: Deallocated Emulated %s Target Port %s,t,0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@tcm_loop_drop_nexus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013Unable to remove TCM_Loop I_T Nexus with active TPG port count: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm_loop_drop_nexus\00", [44 x i8] zeroinitializer }, align 32
@tcm_loop_drop_nexus._entry_ptr = internal global ptr @tcm_loop_drop_nexus._entry, section ".printk_index", align 4
@tcm_loop_drop_nexus.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"TCM_Loop_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@tcm_loop_port_link.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcm_loop_port_link\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TCM_Loop_ConfigFS: Port Link Successful\0A\00", [55 x i8] zeroinitializer }, align 32
@tcm_loop_port_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Unable to locate struct scsi_device for %d:%d:%llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcm_loop_port_unlink\00", [43 x i8] zeroinitializer }, align 32
@tcm_loop_port_unlink._entry_ptr = internal global ptr @tcm_loop_port_unlink._entry, section ".printk_index", align 4
@tcm_loop_port_unlink.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TCM_Loop_ConfigFS: Port Unlink Successful\0A\00", [53 x i8] zeroinitializer }, align 32
@tcm_loop_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.58, ptr null, i16 292, ptr @tcm_loop_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TCM Loopback Fabric module %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"v2.1-rc2\00", [23 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attr_nexus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.61, ptr null, i16 420, ptr @tcm_loop_tpg_nexus_show, ptr @tcm_loop_tpg_nexus_store }, [44 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attr_transport_status = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.81, ptr null, i16 420, ptr @tcm_loop_tpg_transport_status_show, ptr @tcm_loop_tpg_transport_status_store }, [44 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attr_address = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.84, ptr null, i16 292, ptr @tcm_loop_tpg_address_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nexus\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_nexus_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Emulated NAA Sas Address: %s, exceeds max: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcm_loop_tpg_nexus_store\00", [39 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_nexus_store._entry_ptr = internal global ptr @tcm_loop_tpg_nexus_store._entry, section ".printk_index", align 4
@tcm_loop_tpg_nexus_store._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Passed SAS Initiator Port %s does not match target port protoid: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_nexus_store._entry_ptr.68 = internal global ptr @tcm_loop_tpg_nexus_store._entry.66, section ".printk_index", align 4
@tcm_loop_tpg_nexus_store._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Passed FCP Initiator Port %s does not match target port protoid: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_nexus_store._entry_ptr.71 = internal global ptr @tcm_loop_tpg_nexus_store._entry.69, section ".printk_index", align 4
@tcm_loop_tpg_nexus_store._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.3, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Passed iSCSI Initiator Port %s does not match target port protoid: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_nexus_store._entry_ptr.74 = internal global ptr @tcm_loop_tpg_nexus_store._entry.72, section ".printk_index", align 4
@tcm_loop_tpg_nexus_store._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Unable to locate prefix for emulated Initiator Port: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_nexus_store._entry_ptr.77 = internal global ptr @tcm_loop_tpg_nexus_store._entry.75, section ".printk_index", align 4
@tcm_loop_make_nexus.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm_loop_make_nexus\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tl_tpg->tl_nexus already exists\0A\00", [63 x i8] zeroinitializer }, align 32
@tcm_loop_make_nexus.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.80, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"TCM_Loop_ConfigFS: Established I_T Nexus to emulated %s Initiator Port: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"transport_status\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d:0:%d\0A\00", [23 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attrib_attr_fabric_prot_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.86, ptr null, i16 420, ptr @tcm_loop_tpg_attrib_fabric_prot_type_show, ptr @tcm_loop_tpg_attrib_fabric_prot_type_store }, [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fabric_prot_type\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attrib_fabric_prot_type_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013kstrtoul() returned %d for fabric_prot_type\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tcm_loop_tpg_attrib_fabric_prot_type_store\00", [53 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attrib_fabric_prot_type_store._entry_ptr = internal global ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry, section ".printk_index", align 4
@tcm_loop_tpg_attrib_fabric_prot_type_store._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Invalid qla2xxx fabric_prot_type: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@tcm_loop_tpg_attrib_fabric_prot_type_store._entry_ptr.92 = internal global ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry.90, section ".printk_index", align 4
@tcm_loop_driverfs = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str.1, ptr @tcm_loop_lld_bus, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tcm_loop_release_core_bus.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcm_loop_release_core_bus\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Releasing TCM Loop Core BUS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcm_loop_cmd_cache\00", [45 x i8] zeroinitializer }, align 32
@tcm_loop_fabric_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.96, ptr @.str.3, ptr @.str.97, i8 1, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcm_loop_fabric_init\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"kmem_cache_create() for tcm_loop_cmd_cache failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcm_loop_0\00", [21 x i8] zeroinitializer }, align 32
@tcm_loop_alloc_core_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to allocate tcm_loop_primary\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcm_loop_alloc_core_bus\00", [40 x i8] zeroinitializer }, align 32
@tcm_loop_alloc_core_bus._entry_ptr = internal global ptr @tcm_loop_alloc_core_bus._entry, section ".printk_index", align 4
@tcm_loop_alloc_core_bus._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bus_register() failed for tcm_loop_lld_bus\0A\00", [50 x i8] zeroinitializer }, align 32
@tcm_loop_alloc_core_bus._entry_ptr.103 = internal global ptr @tcm_loop_alloc_core_bus._entry.101, section ".printk_index", align 4
@tcm_loop_alloc_core_bus._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.3, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013driver_register() failed for tcm_loop_driverfs\0A\00", [46 x i8] zeroinitializer }, align 32
@tcm_loop_alloc_core_bus._entry_ptr.106 = internal global ptr @tcm_loop_alloc_core_bus._entry.104, section ".printk_index", align 4
@tcm_loop_alloc_core_bus.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.3, ptr @.str.107, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Initialized TCM Loop Core Bus\0A\00", [33 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_make_scsi_hba = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_make_scsi_hba.108 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_drop_scsi_hba = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_make_naa_tpg = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_drop_naa_tpg = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_drop_nexus = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@switch.table.tcm_loop_make_nexus = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.16, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"tcm_loop_nr_hw_queues\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 48, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"tcm_loop_can_queue\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 51, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"tcm_loop_cmd_per_lun\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 54, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"loop_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1120, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"tcm_loop_cmd_cache\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 42, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1122, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"tcm_loop_wwn_attrs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1113, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"tcm_loop_tpg_attrs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 944, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"tcm_loop_tpg_attrib_attrs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 704, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 558, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1040, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1045, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1051, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1053, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1062, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1067, i32 56 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"tcm_loop_hba_no_cnt\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 44, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1080, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 607, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 609, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 611, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 616, i32 9 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"tcm_loop_lld_bus\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 92, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"tcm_loop_primary\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 106, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 395, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 399, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 93, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"tcm_loop_driver_template\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 301, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 330, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 359, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 304, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 303, i32 16 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 179, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 135, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 136, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 210, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 87, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 287, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 79, i32 14 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1094, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 962, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 963, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 970, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 984, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1013, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 767, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 772, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 635, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 653, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 665, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [26 x i8] c"tcm_loop_wwn_attr_version\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1111, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1108, i32 23 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1108, i32 58 }
@___asan_gen_.353 = private unnamed_addr constant [24 x i8] c"tcm_loop_tpg_attr_nexus\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [35 x i8] c"tcm_loop_tpg_attr_transport_status\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [26 x i8] c"tcm_loop_tpg_attr_address\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 940, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 798, i32 34 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 816, i32 21 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 826, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 835, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 845, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 855, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 862, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 730, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 747, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 941, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 890, i32 12 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 893, i32 12 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 942, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 936, i32 35 }
@___asan_gen_.428 = private unnamed_addr constant [42 x i8] c"tcm_loop_tpg_attrib_attr_fabric_prot_type\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 702, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 677, i32 23 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 690, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 694, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant [18 x i8] c"tcm_loop_driverfs\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 99, i32 29 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 448, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1158, i32 41 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1163, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 414, i32 21 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 416, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 422, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 428, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.495 = private constant [38 x i8] c"../drivers/target/loopback/tcm_loop.c\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 432, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [36 x i8] c"switch.table.tcm_loop_make_scsi_hba\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [40 x i8] c"switch.table.tcm_loop_make_scsi_hba.108\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [36 x i8] c"switch.table.tcm_loop_drop_scsi_hba\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [35 x i8] c"switch.table.tcm_loop_make_naa_tpg\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [35 x i8] c"switch.table.tcm_loop_drop_naa_tpg\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [33 x i8] c"switch.table.tcm_loop_drop_nexus\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [33 x i8] c"switch.table.tcm_loop_make_nexus\00", align 1
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_can_queuetype282, ptr @__UNIQUE_ID_cmd_per_luntype283, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_nr_hw_queuestype281, ptr @__exitcall_tcm_loop_fabric_exit, ptr @__initcall__kmod_tcm_loop__302_1195_tcm_loop_fabric_init6, ptr @__param_can_queue, ptr @__param_cmd_per_lun, ptr @__param_nr_hw_queues, ptr @tcm_loop_alloc_core_bus._entry, ptr @tcm_loop_alloc_core_bus._entry.101, ptr @tcm_loop_alloc_core_bus._entry.104, ptr @tcm_loop_alloc_core_bus._entry_ptr, ptr @tcm_loop_alloc_core_bus._entry_ptr.103, ptr @tcm_loop_alloc_core_bus._entry_ptr.106, ptr @tcm_loop_driver_probe._entry, ptr @tcm_loop_driver_probe._entry.25, ptr @tcm_loop_driver_probe._entry_ptr, ptr @tcm_loop_driver_probe._entry_ptr.27, ptr @tcm_loop_drop_nexus._entry, ptr @tcm_loop_drop_nexus._entry_ptr, ptr @tcm_loop_fabric_exit, ptr @tcm_loop_issue_tmr._entry, ptr @tcm_loop_issue_tmr._entry_ptr, ptr @tcm_loop_make_naa_tpg._entry, ptr @tcm_loop_make_naa_tpg._entry.44, ptr @tcm_loop_make_naa_tpg._entry_ptr, ptr @tcm_loop_make_naa_tpg._entry_ptr.46, ptr @tcm_loop_make_scsi_hba._entry, ptr @tcm_loop_make_scsi_hba._entry.10, ptr @tcm_loop_make_scsi_hba._entry_ptr, ptr @tcm_loop_make_scsi_hba._entry_ptr.12, ptr @tcm_loop_port_unlink._entry, ptr @tcm_loop_port_unlink._entry_ptr, ptr @tcm_loop_setup_hba_bus._entry, ptr @tcm_loop_setup_hba_bus._entry_ptr, ptr @tcm_loop_target_reset._entry, ptr @tcm_loop_target_reset._entry_ptr, ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry, ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry.90, ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry_ptr, ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry_ptr.92, ptr @tcm_loop_tpg_nexus_store._entry, ptr @tcm_loop_tpg_nexus_store._entry.66, ptr @tcm_loop_tpg_nexus_store._entry.69, ptr @tcm_loop_tpg_nexus_store._entry.72, ptr @tcm_loop_tpg_nexus_store._entry.75, ptr @tcm_loop_tpg_nexus_store._entry_ptr, ptr @tcm_loop_tpg_nexus_store._entry_ptr.68, ptr @tcm_loop_tpg_nexus_store._entry_ptr.71, ptr @tcm_loop_tpg_nexus_store._entry_ptr.74, ptr @tcm_loop_tpg_nexus_store._entry_ptr.77, ptr @tcm_loop_nr_hw_queues, ptr @tcm_loop_can_queue, ptr @tcm_loop_cmd_per_lun, ptr @loop_ops, ptr @tcm_loop_cmd_cache, ptr @.str, ptr @tcm_loop_wwn_attrs, ptr @tcm_loop_tpg_attrs, ptr @tcm_loop_tpg_attrib_attrs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @tcm_loop_hba_no_cnt, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tcm_loop_lld_bus, ptr @tcm_loop_primary, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @tcm_loop_driver_template, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_completion.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @tcm_loop_wwn_attr_version, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @tcm_loop_tpg_attr_nexus, ptr @tcm_loop_tpg_attr_transport_status, ptr @tcm_loop_tpg_attr_address, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @tcm_loop_tpg_attrib_attr_fabric_prot_type, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @tcm_loop_driverfs, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @switch.table.tcm_loop_make_scsi_hba, ptr @switch.table.tcm_loop_make_scsi_hba.108, ptr @switch.table.tcm_loop_drop_scsi_hba, ptr @switch.table.tcm_loop_make_naa_tpg, ptr @switch.table.tcm_loop_drop_naa_tpg, ptr @switch.table.tcm_loop_drop_nexus, ptr @switch.table.tcm_loop_make_nexus], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_nr_hw_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_can_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_cmd_per_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_cmd_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attrib_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_make_scsi_hba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_make_scsi_hba._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_hba_no_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_lld_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_primary to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_setup_hba_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_driver_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_issue_tmr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_target_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_make_naa_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_make_naa_tpg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_drop_nexus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_port_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attr_nexus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attr_transport_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attr_address to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_nexus_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_nexus_store._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_nexus_store._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_nexus_store._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_nexus_store._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attrib_attr_fabric_prot_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_driverfs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_alloc_core_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_alloc_core_bus._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_loop_alloc_core_bus._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_make_scsi_hba to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_make_scsi_hba.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_drop_scsi_hba to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_make_naa_tpg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_drop_naa_tpg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_drop_nexus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tcm_loop_make_nexus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_fabric_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @target_unregister_template(ptr noundef nonnull @loop_ops) #15
  tail call fastcc void @tcm_loop_release_core_bus()
  %0 = load ptr, ptr @tcm_loop_cmd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcm_loop_release_core_bus() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef nonnull @tcm_loop_driverfs) #15
  tail call void @bus_unregister(ptr noundef nonnull @tcm_loop_lld_bus) #15
  %0 = load ptr, ptr @tcm_loop_primary, align 4
  tail call void @root_device_unregister(ptr noundef %0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_release_core_bus.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_release_core_bus, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_release_core_bus.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.94) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_fabric_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.95, i32 noundef 608, i32 noundef 8, i32 noundef 0, ptr noundef null) #15
  store ptr %call, ptr @tcm_loop_cmd_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_fabric_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_fabric_init, %if.then5)) #15
          to label %cleanup [label %if.then5], !srcloc !280

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_fabric_init.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.97) #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @tcm_loop_alloc_core_bus()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_destroy_cache_crit_edge

if.end6.out_destroy_cache_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_destroy_cache

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @target_register_template(ptr noundef nonnull @loop_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %out_release_core_bus

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_release_core_bus:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @tcm_loop_release_core_bus()
  br label %out_destroy_cache

out_destroy_cache:                                ; preds = %out_release_core_bus, %if.end6.out_destroy_cache_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.out_destroy_cache_crit_edge ], [ %call11, %out_release_core_bus ]
  %0 = load ptr, ptr @tcm_loop_cmd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_cache, %if.end10.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end10.cleanup_crit_edge ], [ %ret.0, %out_destroy_cache ], [ -12, %if.then5 ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tcm_loop_get_endpoint_wwn(ptr nocapture noundef readonly %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_hba = getelementptr i8, ptr %se_tpg, i32 832
  %0 = ptrtoint ptr %tl_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_hba, align 4
  %tl_wwn_address = getelementptr inbounds %struct.tcm_loop_hba, ptr %1, i32 0, i32 1
  ret ptr %tl_wwn_address
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tcm_loop_get_tag(ptr nocapture noundef readonly %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %se_tpg, i32 -12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr.i, align 4
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_check_demo_mode(ptr nocapture noundef readnone %se_tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_check_demo_mode_cache(ptr nocapture noundef readnone %se_tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_check_demo_mode_write_protect(ptr nocapture noundef readnone %se_tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_check_prod_mode_write_protect(ptr nocapture noundef readnone %se_tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_check_prot_fabric_only(ptr nocapture noundef readonly %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_fabric_prot_type = getelementptr i8, ptr %se_tpg, i32 -8
  %0 = ptrtoint ptr %tl_fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tl_fabric_prot_type, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_get_inst_index(ptr nocapture noundef readnone %se_tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_check_stop_free(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_release_cmd(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -16
  %2 = load ptr, ptr @tcm_loop_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sc1 = getelementptr i8, ptr %se_cmd, i32 -8
  %3 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc1, align 8
  tail call void @scsi_done(ptr noundef %4) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_sess_get_index(ptr nocapture noundef readnone %se_sess) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_write_pending(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcm_loop_set_default_node_attributes(ptr nocapture noundef %se_acl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_loop_get_cmd_state(ptr nocapture noundef readonly %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_queue_data_in(ptr nocapture noundef readonly %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sc1.i = getelementptr i8, ptr %se_cmd, i32 -8
  %0 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_queue_data_or_status.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_queue_data_in, %if.then.i)) #15
          to label %do.end.i [label %if.then.i], !srcloc !280

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_queue_data_or_status.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tcm_loop_queue_data_in, ptr noundef %1, i32 noundef %conv.i) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %sense_buffer.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 16
  %6 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sense_buffer.i, align 8
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %do.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

do.end.i.if.end15.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %8 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %se_cmd_flags.i, align 8
  %10 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %sense_buffer11.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %sense_buffer11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sense_buffer11.i, align 4
  %14 = call ptr @memcpy(ptr %13, ptr %7, i32 96)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %land.lhs.true.i.if.end15.i_crit_edge, %do.end.i.if.end15.i_crit_edge
  %conv13.sink.i = phi i32 [ 2, %if.then10.i ], [ 0, %land.lhs.true.i.if.end15.i_crit_edge ], [ 0, %do.end.i.if.end15.i_crit_edge ]
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv13.sink.i, ptr %result.i.i, align 4
  %se_cmd_flags16.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %16 = ptrtoint ptr %se_cmd_flags16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %se_cmd_flags16.i, align 8
  %18 = and i32 %17, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.end15.i.tcm_loop_queue_data_or_status.exit_crit_edge, label %if.then23.i

if.end15.i.tcm_loop_queue_data_or_status.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_queue_data_or_status.exit

if.then23.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %residual_count.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 13
  %20 = ptrtoint ptr %residual_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %residual_count.i, align 8
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %resid_len.i.i, align 4
  br label %tcm_loop_queue_data_or_status.exit

tcm_loop_queue_data_or_status.exit:               ; preds = %if.then23.i, %if.end15.i.tcm_loop_queue_data_or_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_queue_status(ptr nocapture noundef readonly %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scsi_status, align 4
  %sc1.i = getelementptr i8, ptr %se_cmd, i32 -8
  %2 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_queue_data_or_status.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_queue_status, %if.then.i)) #15
          to label %do.end.i [label %if.then.i], !srcloc !280

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmnd.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_queue_data_or_status.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tcm_loop_queue_status, ptr noundef %3, i32 noundef %conv.i) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %sense_buffer.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 16
  %8 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sense_buffer.i, align 8
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %do.end.i.if.else.i_crit_edge, label %land.lhs.true.i

do.end.i.if.else.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %10 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %se_cmd_flags.i, align 8
  %12 = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %sense_buffer11.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %sense_buffer11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sense_buffer11.i, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %9, i32 96)
  br label %if.end15.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.end.i.if.else.i_crit_edge
  %conv13.i = zext i8 %1 to i32
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then10.i
  %conv13.sink.i = phi i32 [ %conv13.i, %if.else.i ], [ 2, %if.then10.i ]
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv13.sink.i, ptr %result.i.i, align 4
  %se_cmd_flags16.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %18 = ptrtoint ptr %se_cmd_flags16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %se_cmd_flags16.i, align 8
  %20 = and i32 %19, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.end15.i.tcm_loop_queue_data_or_status.exit_crit_edge, label %if.then23.i

if.end15.i.tcm_loop_queue_data_or_status.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_queue_data_or_status.exit

if.then23.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %residual_count.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 13
  %22 = ptrtoint ptr %residual_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %residual_count.i, align 8
  %resid_len.i.i = getelementptr inbounds %struct.scsi_request, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %resid_len.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %resid_len.i.i, align 4
  br label %tcm_loop_queue_data_or_status.exit

tcm_loop_queue_data_or_status.exit:               ; preds = %if.then23.i, %if.end15.i.tcm_loop_queue_data_or_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_queue_tm_rsp(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_done = getelementptr i8, ptr %se_cmd, i32 440
  tail call void @complete(ptr noundef %tmr_done) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcm_loop_aborted_task(ptr nocapture noundef %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_loop_make_scsi_hba(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28720, i32 noundef 3520, i32 noundef 3) #18
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.5)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end5, label %if.end.check_len_crit_edge

if.end.check_len_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_len

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.6)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end10, label %if.end5.check_len_crit_edge

if.end5.check_len_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_len

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.7)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end, label %if.end10.check_len_crit_edge

if.end10.check_len_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_len

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #19
  br label %out

check_len:                                        ; preds = %if.end10.check_len_crit_edge, %if.end5.check_len_crit_edge, %if.end.check_len_crit_edge
  %.sink = phi i8 [ 6, %if.end.check_len_crit_edge ], [ 0, %if.end5.check_len_crit_edge ], [ 5, %if.end10.check_len_crit_edge ]
  %off.0 = phi i32 [ 0, %if.end.check_len_crit_edge ], [ 3, %if.end5.check_len_crit_edge ], [ 0, %if.end10.check_len_crit_edge ]
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %.sink, ptr %call1.i.i.i, align 4096
  %call17 = tail call i32 @strlen(ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call17)
  %cmp = icmp ugt i32 %call17, 255
  br i1 %cmp, label %do.end21, label %if.end25

do.end21:                                         ; preds = %check_len
  %1 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call1.i.i.i, align 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %3 = icmp ult i8 %2, 7
  br i1 %3, label %switch.lookup, label %do.end21.tcm_loop_dump_proto_id.exit_crit_edge

do.end21.tcm_loop_dump_proto_id.exit_crit_edge:   ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

switch.lookup:                                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #17
  %4 = sext i8 %2 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_make_scsi_hba, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %switch.lookup, %do.end21.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i69 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %do.end21.tcm_loop_dump_proto_id.exit_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef nonnull %retval.0.i69, i32 noundef 256) #19
  br label %out

if.end25:                                         ; preds = %check_len
  %tl_wwn_address = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 1
  %arrayidx26 = getelementptr i8, ptr %name, i32 %off.0
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tl_wwn_address, i32 noundef 256, ptr noundef nonnull @.str.13, ptr noundef %arrayidx26)
  %6 = load i32, ptr @tcm_loop_hba_no_cnt, align 4
  %dev.i = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 5
  %bus.i = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tcm_loop_lld_bus, ptr %bus.i, align 8
  %8 = load ptr, ptr @tcm_loop_primary, align 4
  %parent.i = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 5, i32 35
  %10 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tcm_loop_release_adapter, ptr %release.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %6) #15
  %call5.i = tail call i32 @device_register(ptr noundef %dev.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end31, label %tcm_loop_setup_hba_bus.exit

tcm_loop_setup_hba_bus.exit:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call5.i) #19
  br label %out

if.end31:                                         ; preds = %if.end25
  %sh32 = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %sh32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sh32, align 16
  %13 = load i32, ptr @tcm_loop_hba_no_cnt, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @tcm_loop_hba_no_cnt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_make_scsi_hba.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_make_scsi_hba, %if.then39)) #15
          to label %do.end43 [label %if.then39], !srcloc !280

if.then39:                                        ; preds = %if.end31
  %14 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call1.i.i.i, align 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %16 = icmp ult i8 %15, 7
  br i1 %16, label %switch.lookup79, label %if.then39.tcm_loop_dump_proto_id.exit75_crit_edge

if.then39.tcm_loop_dump_proto_id.exit75_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit75

switch.lookup79:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  %17 = sext i8 %15 to i32
  %switch.gep80 = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_make_scsi_hba.108, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load81 = load ptr, ptr %switch.gep80, align 4
  br label %tcm_loop_dump_proto_id.exit75

tcm_loop_dump_proto_id.exit75:                    ; preds = %switch.lookup79, %if.then39.tcm_loop_dump_proto_id.exit75_crit_edge
  %retval.0.i74 = phi ptr [ %switch.load81, %switch.lookup79 ], [ @.str.18, %if.then39.tcm_loop_dump_proto_id.exit75_crit_edge ]
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %19 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_make_scsi_hba.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.14, ptr noundef nonnull %retval.0.i74, ptr noundef %name, i32 noundef %20) #15
  br label %do.end43

do.end43:                                         ; preds = %tcm_loop_dump_proto_id.exit75, %if.end31
  %tl_hba_wwn = getelementptr inbounds %struct.tcm_loop_hba, ptr %call1.i.i.i, i32 0, i32 8
  br label %cleanup

out:                                              ; preds = %tcm_loop_setup_hba_bus.exit, %tcm_loop_dump_proto_id.exit, %do.end
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %tcm_loop_dump_proto_id.exit ], [ inttoptr (i32 -19 to ptr), %tcm_loop_setup_hba_bus.exit ], [ inttoptr (i32 -22 to ptr), %do.end ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end43, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %out ], [ %tl_hba_wwn, %do.end43 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_drop_scsi_hba(ptr noundef %wwn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_drop_scsi_hba.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_drop_scsi_hba, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %wwn, i32 -28468
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %2 = icmp ult i8 %1, 7
  br i1 %2, label %switch.lookup, label %if.then.tcm_loop_dump_proto_id.exit_crit_edge

if.then.tcm_loop_dump_proto_id.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_drop_scsi_hba, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %switch.lookup, %if.then.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i8 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then.tcm_loop_dump_proto_id.exit_crit_edge ]
  %tl_wwn_address = getelementptr i8, ptr %wwn, i32 -28467
  %sh = getelementptr i8, ptr %wwn, i32 -27268
  %5 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sh, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_drop_scsi_hba.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.40, ptr noundef nonnull %retval.0.i8, ptr noundef %tl_wwn_address, i32 noundef %8) #15
  br label %do.end

do.end:                                           ; preds = %tcm_loop_dump_proto_id.exit, %entry
  %dev = getelementptr i8, ptr %wwn, i32 -28196
  tail call void @device_unregister(ptr noundef %dev) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_loop_make_naa_tpg(ptr noundef %wwn, ptr noundef %name) #2 align 64 {
entry:
  %tpgt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -28468
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpgt) #15
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpgt, align 4, !annotation !281
  %strncmp = tail call i32 @strncmp(ptr %name, ptr nonnull dereferenceable(6) @.str.41, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp52.not = icmp eq i32 %strncmp, 0
  br i1 %cmp52.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr4, i32 noundef 10, ptr noundef nonnull %tpgt) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tpgt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp9 = icmp ugt i32 %2, 31
  br i1 %cmp9, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %2, i32 noundef 32) #19
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %tl_hba_tpgs = getelementptr i8, ptr %wwn, i32 -27264
  %arrayidx = getelementptr [32 x %struct.tcm_loop_tpg], ptr %tl_hba_tpgs, i32 0, i32 %2
  %tl_hba18 = getelementptr inbounds %struct.tcm_loop_tpg, ptr %arrayidx, i32 0, i32 5
  %3 = ptrtoint ptr %tl_hba18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %tl_hba18, align 4
  %conv = trunc i32 %2 to i16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %arrayidx, align 4
  %tl_se_tpg = getelementptr inbounds %struct.tcm_loop_tpg, ptr %arrayidx, i32 0, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 8
  %conv19 = zext i8 %6 to i32
  %call20 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %tl_se_tpg, i32 noundef %conv19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end17.cleanup_crit_edge, label %do.body26

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_make_naa_tpg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_make_naa_tpg, %if.then32)) #15
          to label %cleanup [label %if.then32], !srcloc !280

if.then32:                                        ; preds = %do.body26
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %9 = icmp ult i8 %8, 7
  br i1 %9, label %switch.lookup, label %if.then32.tcm_loop_dump_proto_id.exit_crit_edge

if.then32.tcm_loop_dump_proto_id.exit_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %10 = sext i8 %8 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_make_naa_tpg, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %switch.lookup, %if.then32.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i53 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then32.tcm_loop_dump_proto_id.exit_crit_edge ]
  %wwn_group = getelementptr inbounds %struct.se_wwn, ptr %wwn, i32 0, i32 2
  %12 = ptrtoint ptr %wwn_group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wwn_group, align 4
  %14 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tpgt, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_make_naa_tpg.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.47, ptr noundef nonnull %retval.0.i53, ptr noundef %13, i32 noundef %15) #15
  br label %cleanup

cleanup:                                          ; preds = %tcm_loop_dump_proto_id.exit, %do.body26, %if.end17.cleanup_crit_edge, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end13 ], [ %tl_se_tpg, %tcm_loop_dump_proto_id.exit ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end17.cleanup_crit_edge ], [ %tl_se_tpg, %do.body26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpgt) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_drop_naa_tpg(ptr noundef %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 11
  %0 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg_wwn, align 4
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -12
  %tl_hba1 = getelementptr i8, ptr %se_tpg, i32 832
  %2 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_hba1, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 4
  %call = tail call fastcc i32 @tcm_loop_drop_nexus(ptr noundef %add.ptr)
  %call2 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #15
  %6 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tl_hba1, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_drop_naa_tpg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_drop_naa_tpg, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %10 = icmp ult i8 %9, 7
  br i1 %10, label %switch.lookup, label %if.then.tcm_loop_dump_proto_id.exit_crit_edge

if.then.tcm_loop_dump_proto_id.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %11 = sext i8 %9 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_drop_naa_tpg, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %switch.lookup, %if.then.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i17 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then.tcm_loop_dump_proto_id.exit_crit_edge ]
  %wwn_group = getelementptr inbounds %struct.se_wwn, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %wwn_group to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wwn_group, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_drop_naa_tpg.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.49, ptr noundef nonnull %retval.0.i17, ptr noundef %14, i32 noundef %conv) #15
  br label %do.end

do.end:                                           ; preds = %tcm_loop_dump_proto_id.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_port_link(ptr noundef %se_tpg, ptr nocapture noundef readonly %lun) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -12
  %tl_hba1 = getelementptr i8, ptr %se_tpg, i32 832
  %0 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_hba1, align 4
  %tl_tpg_port_count = getelementptr i8, ptr %se_tpg, i32 -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !282
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tl_tpg_port_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %tl_tpg_port_count, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tl_tpg_port_count, ptr %tl_tpg_port_count, i32 1, ptr elementtype(i32) %tl_tpg_port_count) #15, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !284
  %sh = getelementptr inbounds %struct.tcm_loop_hba, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sh, align 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 4
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lun, align 8
  %call = tail call i32 @scsi_add_device(ptr noundef %4, i32 noundef 0, i32 noundef %conv, i64 noundef %8) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_port_link.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_port_link, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_port_link.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.54) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_port_unlink(ptr noundef %se_tpg, ptr nocapture noundef readonly %se_lun) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -12
  %tl_hba1 = getelementptr i8, ptr %se_tpg, i32 832
  %0 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_hba1, align 4
  %sh = getelementptr inbounds %struct.tcm_loop_hba, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 4
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %se_lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %se_lun, align 8
  %call = tail call ptr @scsi_device_lookup(ptr noundef %3, i32 noundef 0, i32 noundef %conv, i64 noundef %7) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr, align 4
  %conv4 = zext i16 %9 to i32
  %10 = ptrtoint ptr %se_lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %se_lun, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef %conv4, i64 noundef %11) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @scsi_remove_device(ptr noundef nonnull %call) #15
  tail call void @scsi_device_put(ptr noundef nonnull %call) #15
  %tl_tpg_port_count = getelementptr i8, ptr %se_tpg, i32 -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !285
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tl_tpg_port_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %tl_tpg_port_count, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tl_tpg_port_count, ptr %tl_tpg_port_count, i32 1, ptr elementtype(i32) %tl_tpg_port_count) #15, !srcloc !286
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_port_unlink.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_port_unlink, %if.then13)) #15
          to label %cleanup [label %if.then13], !srcloc !280

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_port_unlink.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.57) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_release_adapter(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -272
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pseudo_lld_bus_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %dev_driver) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_driver_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_host_alloc(ptr noundef nonnull @tcm_loop_driver_template, i32 noundef 28720) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -272
  %sh3 = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %sh3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %sh3, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %1 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %hostdata, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %2 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %3 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 20
  %4 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_channel, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 24
  %5 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 260, ptr %max_cmd_len, align 4
  %6 = load i32, ptr @tcm_loop_nr_hw_queues, align 4
  %nr_hw_queues = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 34
  %7 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nr_hw_queues, align 8
  %8 = load i32, ptr @tcm_loop_can_queue, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %9 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %can_queue, align 4
  %10 = load i32, ptr @tcm_loop_cmd_per_lun, align 4
  %conv = trunc i32 %10 to i16
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 27
  %11 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %cmd_per_lun, align 8
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 41
  %12 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 119, ptr %prot_capabilities.i, align 4
  %prot_guard_type.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 42
  %13 = ptrtoint ptr %prot_guard_type.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %prot_guard_type.i, align 8
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call, ptr noundef %dev, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #19
  tail call void @scsi_host_put(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end10 ], [ -19, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_loop_driver_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sh1 = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %sh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sh1, align 8
  tail call void @scsi_remove_host(ptr noundef %1) #15
  tail call void @scsi_host_put(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_queuecommand(ptr nocapture noundef readnone %sh, ptr noundef %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_queuecommand.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_queuecommand, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !280

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %channel = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun, align 8
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %12 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmnd, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv = zext i8 %15 to i32
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_queuecommand.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11, i32 noundef %conv, i32 noundef %17) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 608)
  %sc8 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %19 = ptrtoint ptr %sc8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sc, ptr %sc8, align 8
  %tag = getelementptr i8, ptr %sc, i32 -172
  %20 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tag, align 4
  %sc_cmd_tag = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %sc_cmd_tag to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sc_cmd_tag, align 4
  %tl_se_cmd.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hostdata.i.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 16
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 8
  %tl_hba3.i = getelementptr %struct.tcm_loop_hba, ptr %28, i32 0, i32 7, i32 %30, i32 5
  %31 = ptrtoint ptr %tl_hba3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tl_hba3.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %do.end.out_done.i_crit_edge, label %if.end.i

do.end.out_done.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_done.i

if.end.i:                                         ; preds = %do.end
  %tl_transport_status.i = getelementptr %struct.tcm_loop_hba, ptr %28, i32 0, i32 7, i32 %30, i32 1
  %33 = ptrtoint ptr %tl_transport_status.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tl_transport_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %cmp.i = icmp eq i16 %34, 1
  br i1 %cmp.i, label %if.end.i.out_done.i_crit_edge, label %if.end6.i

if.end.i.out_done.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_done.i

if.end6.i:                                        ; preds = %if.end.i
  %tl_nexus7.i = getelementptr %struct.tcm_loop_hba, ptr %28, i32 0, i32 7, i32 %30, i32 6
  %35 = ptrtoint ptr %tl_nexus7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tl_nexus7.i, align 4
  %tobool8.not.i = icmp eq ptr %36, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.32, ptr noundef %sc, ptr noundef nonnull @.str.33) #15
  br label %out_done.i

if.end10.i:                                       ; preds = %if.end6.i
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i.i, align 4
  %prot_flags.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 12
  %39 = ptrtoint ptr %prot_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %prot_flags.i.i, align 2
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %if.end10.i.scsi_transfer_length.exit.i_crit_edge, label %cond.end6.i.i

if.end10.i.scsi_transfer_length.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_transfer_length.exit.i

cond.end6.i.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sector_size.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 20
  %42 = ptrtoint ptr %sector_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sector_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i.i.i = icmp eq i32 %43, 0
  %44 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 true) #15, !range !288
  %sub.i.op.i.i.i = xor i32 %44, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %shr.i.i = lshr i32 %38, %sub.i.i.i
  %mul.i.i = shl i32 %shr.i.i, 3
  %add.i.i = add i32 %mul.i.i, %38
  br label %scsi_transfer_length.exit.i

scsi_transfer_length.exit.i:                      ; preds = %cond.end6.i.i, %if.end10.i.scsi_transfer_length.exit.i_crit_edge
  %xfer_len.0.i.i = phi i32 [ %add.i.i, %cond.end6.i.i ], [ %38, %if.end10.i.scsi_transfer_length.exit.i_crit_edge ]
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 18
  %45 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i74.i = icmp eq ptr %46, null
  br i1 %tobool.not.i74.i, label %scsi_transfer_length.exit.i.land.lhs.true.i_crit_edge, label %scsi_prot_sg_count.exit.i

scsi_transfer_length.exit.i.land.lhs.true.i_crit_edge: ; preds = %scsi_transfer_length.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

scsi_prot_sg_count.exit.i:                        ; preds = %scsi_transfer_length.exit.i
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool13.not.i = icmp eq i32 %48, 0
  br i1 %tobool13.not.i, label %scsi_prot_sg_count.exit.i.land.lhs.true.i_crit_edge, label %scsi_prot_sg_count.exit.i.if.end20.i_crit_edge

scsi_prot_sg_count.exit.i.if.end20.i_crit_edge:   ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

scsi_prot_sg_count.exit.i.land.lhs.true.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %scsi_prot_sg_count.exit.i.land.lhs.true.i_crit_edge, %scsi_transfer_length.exit.i.land.lhs.true.i_crit_edge
  %prot_op.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 10
  %49 = ptrtoint ptr %prot_op.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %prot_op.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp16.not.i = icmp eq i8 %50, 0
  br i1 %cmp16.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %if.then18.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %prot_pto.i = getelementptr inbounds %struct.tcm_loop_cmd, ptr %add.ptr.i, i32 0, i32 3, i32 52
  %51 = ptrtoint ptr %prot_pto.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %prot_pto.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %land.lhs.true.i.if.end20.i_crit_edge, %scsi_prot_sg_count.exit.i.if.end20.i_crit_edge
  %transfer_length.0.i = phi i32 [ %xfer_len.0.i.i, %scsi_prot_sg_count.exit.i.if.end20.i_crit_edge ], [ %38, %if.then18.i ], [ %xfer_len.0.i.i, %land.lhs.true.i.if.end20.i_crit_edge ]
  %52 = ptrtoint ptr %sc_cmd_tag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sc_cmd_tag, align 4
  %conv21.i = zext i32 %53 to i64
  %tag.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 5
  %54 = ptrtoint ptr %tag.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv21.i, ptr %tag.i, align 8
  %55 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %36, align 4
  %tl_sense_buf.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 2, i32 19
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 18
  %57 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %lun.i, align 8
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 15
  %59 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sc_data_direction.i, align 4
  %call25.i = tail call i32 @target_init_cmd(ptr noundef %tl_se_cmd.i, ptr noundef %56, ptr noundef %tl_sense_buf.i, i64 noundef %58, i32 noundef %transfer_length.0.i, i32 noundef 32, i32 noundef %60, i32 noundef 0) #15
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %61 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmnd.i, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17
  %63 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdb.i.i, align 4
  %nents.i77.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17, i32 0, i32 1
  %65 = ptrtoint ptr %nents.i77.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nents.i77.i, align 4
  %67 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i79.i = icmp eq ptr %68, null
  br i1 %tobool.not.i79.i, label %if.end20.i.scsi_prot_sg_count.exit87.i_crit_edge, label %cond.true.i85.i

if.end20.i.scsi_prot_sg_count.exit87.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %scsi_prot_sg_count.exit87.i

cond.true.i85.i:                                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %nents.i84.i = getelementptr inbounds %struct.sg_table, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %nents.i84.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nents.i84.i, align 4
  br label %scsi_prot_sg_count.exit87.i

scsi_prot_sg_count.exit87.i:                      ; preds = %cond.true.i85.i, %if.end20.i.scsi_prot_sg_count.exit87.i_crit_edge
  %cond.i8191.i = phi ptr [ %70, %cond.true.i85.i ], [ null, %if.end20.i.scsi_prot_sg_count.exit87.i_crit_edge ]
  %cond.i86.i = phi i32 [ %72, %cond.true.i85.i ], [ 0, %if.end20.i.scsi_prot_sg_count.exit87.i_crit_edge ]
  %call30.i = tail call i32 @target_submit_prep(ptr noundef %tl_se_cmd.i, ptr noundef %62, ptr noundef %64, i32 noundef %66, ptr noundef null, i32 noundef 0, ptr noundef %cond.i8191.i, i32 noundef %cond.i86.i, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %scsi_prot_sg_count.exit87.i.tcm_loop_target_queue_cmd.exit_crit_edge

scsi_prot_sg_count.exit87.i.tcm_loop_target_queue_cmd.exit_crit_edge: ; preds = %scsi_prot_sg_count.exit87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_target_queue_cmd.exit

if.end33.i:                                       ; preds = %scsi_prot_sg_count.exit87.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @target_queue_submission(ptr noundef %tl_se_cmd.i) #15
  br label %tcm_loop_target_queue_cmd.exit

out_done.i:                                       ; preds = %if.then9.i, %if.end.i.out_done.i_crit_edge, %do.end.out_done.i_crit_edge
  %.sink.i = phi i32 [ 458752, %if.then9.i ], [ 65536, %do.end.out_done.i_crit_edge ], [ 917504, %if.end.i.out_done.i_crit_edge ]
  %result.i71.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 24
  %73 = ptrtoint ptr %result.i71.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %result.i71.i, align 4
  %and.i72.i = and i32 %74, -16711681
  %or.i73.i = or i32 %and.i72.i, %.sink.i
  store i32 %or.i73.i, ptr %result.i71.i, align 4
  tail call void @scsi_done(ptr noundef %sc) #15
  br label %tcm_loop_target_queue_cmd.exit

tcm_loop_target_queue_cmd.exit:                   ; preds = %out_done.i, %if.end33.i, %scsi_prot_sg_count.exit87.i.tcm_loop_target_queue_cmd.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_abort_task(ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %arrayidx = getelementptr %struct.tcm_loop_hba, ptr %5, i32 0, i32 7, i32 %7
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lun, align 8
  %tag = getelementptr i8, ptr %sc, i32 -172
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  %call4 = tail call fastcc i32 @tcm_loop_issue_tmr(ptr noundef %arrayidx, i64 noundef %9, i32 noundef %11, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  %cond = select i1 %cmp, i32 8194, i32 8195
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_device_reset(ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %arrayidx = getelementptr %struct.tcm_loop_hba, ptr %5, i32 0, i32 7, i32 %7
  %lun = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lun, align 8
  %call3 = tail call fastcc i32 @tcm_loop_issue_tmr(ptr noundef %arrayidx, i64 noundef %9, i32 noundef 0, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp eq i32 %call3, 1
  %cond = select i1 %cmp, i32 8194, i32 8195
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_target_reset(ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %arrayidx = getelementptr %struct.tcm_loop_hba, ptr %5, i32 0, i32 7, i32 %7
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tl_transport_status = getelementptr %struct.tcm_loop_hba, ptr %5, i32 0, i32 7, i32 %7, i32 1
  %8 = ptrtoint ptr %tl_transport_status to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %tl_transport_status, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 8194, %if.then4 ], [ 8195, %do.end ], [ 8195, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_show_info(ptr noundef %m, ptr nocapture noundef readnone %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_prep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_queue_submission(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_loop_issue_tmr(ptr nocapture noundef readonly %tl_tpg, i64 noundef %lun, i32 noundef %task, i32 noundef %tmr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_nexus1 = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tl_tpg, i32 0, i32 6
  %0 = ptrtoint ptr %tl_nexus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_nexus1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @tcm_loop_cmd_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3520) #15
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tmr_done = getelementptr inbounds %struct.tcm_loop_cmd, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %tmr_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tmr_done, align 8
  %wait.i = getelementptr inbounds %struct.tcm_loop_cmd, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #15
  %tl_se_cmd = getelementptr inbounds %struct.tcm_loop_cmd, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %tl_nexus1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tl_nexus1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tl_sense_buf = getelementptr inbounds %struct.tcm_loop_cmd, ptr %call.i, i32 0, i32 5
  %conv = trunc i32 %tmr to i8
  %conv8 = sext i32 %task to i64
  %call9 = tail call i32 @target_submit_tmr(ptr noundef %tl_se_cmd, ptr noundef %7, ptr noundef %tl_sense_buf, i64 noundef %lun, ptr noundef null, i8 noundef zeroext %conv, i32 noundef 3264, i64 noundef %conv8, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %release, label %if.end12

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @wait_for_completion(ptr noundef %tmr_done) #15
  %se_tmr_req = getelementptr inbounds %struct.tcm_loop_cmd, ptr %call.i, i32 0, i32 3, i32 22
  %8 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tmr_req, align 8
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %response, align 1
  %conv14 = zext i8 %11 to i32
  %call15 = tail call i32 @target_put_sess_cmd(ptr noundef %tl_se_cmd) #15
  br label %cleanup

release:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %12 = load ptr, ptr @tcm_loop_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %call.i) #15
  br label %cleanup

cleanup:                                          ; preds = %release, %if.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %release ], [ %conv14, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_tmr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_loop_drop_nexus(ptr noundef %tpg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_nexus1 = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tpg, i32 0, i32 6
  %0 = ptrtoint ptr %tl_nexus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_nexus1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tl_tpg_port_count = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tpg, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tl_tpg_port_count, i32 noundef 4) #15
  %4 = ptrtoint ptr %tl_tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tl_tpg_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.body12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tl_tpg_port_count, i32 noundef 4) #15
  %6 = ptrtoint ptr %tl_tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tl_tpg_port_count, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %7) #19
  br label %cleanup

do.body12:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_drop_nexus.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_drop_nexus, %if.then18)) #15
          to label %do.end23 [label %if.then18], !srcloc !280

if.then18:                                        ; preds = %do.body12
  %tl_hba = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tpg, i32 0, i32 5
  %8 = ptrtoint ptr %tl_hba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tl_hba, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %12 = icmp ult i8 %11, 7
  br i1 %12, label %switch.lookup, label %if.then18.tcm_loop_dump_proto_id.exit_crit_edge

if.then18.tcm_loop_dump_proto_id.exit_crit_edge:  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %13 = sext i8 %11 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_drop_nexus, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %switch.lookup, %if.then18.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i36 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then18.tcm_loop_dump_proto_id.exit_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %se_node_acl, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_drop_nexus.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.52, ptr noundef nonnull %retval.0.i36, ptr noundef %18) #15
  br label %do.end23

do.end23:                                         ; preds = %tcm_loop_dump_proto_id.exit, %do.body12
  tail call void @target_remove_session(ptr noundef nonnull %3) #15
  %19 = ptrtoint ptr %tl_nexus1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tl_nexus1, align 4
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.end23 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_wwn_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_nexus_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_nexus1 = getelementptr i8, ptr %item, i32 564
  %0 = ptrtoint ptr %tl_nexus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_nexus1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_node_acl, align 8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.62, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_nexus_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %i_port = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -284
  %tl_hba1 = getelementptr i8, ptr %item, i32 560
  %0 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_hba1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_port) #15
  %2 = call ptr @memset(ptr %i_port, i32 255, i32 256)
  %call2 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(5) @.str.63, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call fastcc i32 @tcm_loop_drop_nexus(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %count.call3 = select i1 %tobool4.not, i32 %count, i32 %call3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @strlen(ptr noundef %page) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call5)
  %cmp = icmp ugt i32 %call5, 255
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %page, i32 noundef 256) #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_port, i32 noundef 256, ptr noundef nonnull @.str.13, ptr noundef %page)
  %call11 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.5)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end26, label %if.then13

if.then13:                                        ; preds = %if.end9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 8
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %sw.epilog.i [
    i8 6, label %if.then13.check_newline_crit_edge
    i8 5, label %sw.bb2.i
    i8 0, label %if.then13.tcm_loop_dump_proto_id.exit_crit_edge
  ]

if.then13.tcm_loop_dump_proto_id.exit_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

if.then13.check_newline_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_newline

sw.bb2.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

sw.epilog.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %sw.epilog.i, %sw.bb2.i, %if.then13.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.18, %sw.epilog.i ], [ @.str.17, %sw.bb2.i ], [ @.str.16, %if.then13.tcm_loop_dump_proto_id.exit_crit_edge ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %i_port, ptr noundef nonnull %retval.0.i) #19
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %call28 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.6)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end45, label %if.then30

if.then30:                                        ; preds = %if.end26
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %7, label %sw.epilog.i112 [
    i8 0, label %if.end43
    i8 6, label %if.then30.tcm_loop_dump_proto_id.exit114_crit_edge
    i8 5, label %sw.bb2.i111
  ]

if.then30.tcm_loop_dump_proto_id.exit114_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit114

sw.bb2.i111:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit114

sw.epilog.i112:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit114

tcm_loop_dump_proto_id.exit114:                   ; preds = %sw.epilog.i112, %sw.bb2.i111, %if.then30.tcm_loop_dump_proto_id.exit114_crit_edge
  %retval.0.i113 = phi ptr [ @.str.18, %sw.epilog.i112 ], [ @.str.17, %sw.bb2.i111 ], [ @.str.15, %if.then30.tcm_loop_dump_proto_id.exit114_crit_edge ]
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull %i_port, ptr noundef nonnull %retval.0.i113) #19
  br label %cleanup

if.end43:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx44 = getelementptr inbounds [256 x i8], ptr %i_port, i32 0, i32 3
  br label %check_newline

if.end45:                                         ; preds = %if.end26
  %call47 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.7)
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end67, label %if.then49

if.then49:                                        ; preds = %if.end45
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %10, label %sw.epilog.i117 [
    i8 5, label %if.then49.check_newline_crit_edge
    i8 6, label %if.then49.tcm_loop_dump_proto_id.exit119_crit_edge
    i8 0, label %sw.bb1.i115
  ]

if.then49.tcm_loop_dump_proto_id.exit119_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit119

if.then49.check_newline_crit_edge:                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_newline

sw.bb1.i115:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit119

sw.epilog.i117:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit119

tcm_loop_dump_proto_id.exit119:                   ; preds = %sw.epilog.i117, %sw.bb1.i115, %if.then49.tcm_loop_dump_proto_id.exit119_crit_edge
  %retval.0.i118 = phi ptr [ @.str.18, %sw.epilog.i117 ], [ @.str.16, %sw.bb1.i115 ], [ @.str.15, %if.then49.tcm_loop_dump_proto_id.exit119_crit_edge ]
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull %i_port, ptr noundef nonnull %retval.0.i118) #19
  br label %cleanup

do.end67:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %i_port) #19
  br label %cleanup

check_newline:                                    ; preds = %if.then49.check_newline_crit_edge, %if.end43, %if.then13.check_newline_crit_edge
  %port_ptr.0 = phi ptr [ %arrayidx44, %if.end43 ], [ %i_port, %if.then13.check_newline_crit_edge ], [ %i_port, %if.then49.check_newline_crit_edge ]
  %call72 = call i32 @strlen(ptr noundef nonnull %i_port) #20
  %sub = add i32 %call72, -1
  %arrayidx73 = getelementptr [256 x i8], ptr %i_port, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp75 = icmp eq i8 %13, 10
  br i1 %cmp75, label %if.then77, label %check_newline.if.end82_crit_edge

check_newline.if.end82_crit_edge:                 ; preds = %check_newline
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then77:                                        ; preds = %check_newline
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx73, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %check_newline.if.end82_crit_edge
  %call83 = call fastcc i32 @tcm_loop_make_nexus(ptr noundef %add.ptr, ptr noundef %port_ptr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  %call83.count = select i1 %cmp84, i32 %call83, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %do.end67, %tcm_loop_dump_proto_id.exit119, %tcm_loop_dump_proto_id.exit114, %tcm_loop_dump_proto_id.exit, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %tcm_loop_dump_proto_id.exit ], [ -22, %tcm_loop_dump_proto_id.exit114 ], [ -22, %tcm_loop_dump_proto_id.exit119 ], [ -22, %do.end67 ], [ %count.call3, %if.then ], [ %call83.count, %if.end82 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_port) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_loop_make_nexus(ptr noundef %tl_tpg, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_hba1 = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tl_tpg, i32 0, i32 5
  %0 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_hba1, align 4
  %tl_nexus2 = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tl_tpg, i32 0, i32 6
  %2 = ptrtoint ptr %tl_nexus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_nexus2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_make_nexus.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_make_nexus, %if.then6)) #15
          to label %cleanup [label %if.then6], !srcloc !280

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_make_nexus.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.79) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4) #21
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tl_se_tpg = getelementptr inbounds %struct.tcm_loop_tpg, ptr %tl_tpg, i32 0, i32 4
  %call12 = tail call ptr @target_setup_session(ptr noundef %tl_se_tpg, i32 noundef 0, i32 noundef 0, i32 noundef 48, ptr noundef %name, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tcm_loop_alloc_sess_cb) #15
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %do.body19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %call12 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

do.body19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_make_nexus.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_make_nexus, %if.then31)) #15
          to label %cleanup [label %if.then31], !srcloc !280

if.then31:                                        ; preds = %do.body19
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %9 = icmp ult i8 %8, 7
  br i1 %9, label %switch.lookup, label %if.then31.tcm_loop_dump_proto_id.exit_crit_edge

if.then31.tcm_loop_dump_proto_id.exit_crit_edge:  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %tcm_loop_dump_proto_id.exit

switch.lookup:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %10 = sext i8 %8 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.tcm_loop_make_nexus, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %tcm_loop_dump_proto_id.exit

tcm_loop_dump_proto_id.exit:                      ; preds = %switch.lookup, %if.then31.tcm_loop_dump_proto_id.exit_crit_edge
  %retval.0.i49 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %if.then31.tcm_loop_dump_proto_id.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_make_nexus.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.80, ptr noundef nonnull %retval.0.i49, ptr noundef %name) #15
  br label %cleanup

cleanup:                                          ; preds = %tcm_loop_dump_proto_id.exit, %do.body19, %if.then15, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %6, %if.then15 ], [ -17, %if.then6 ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %tcm_loop_dump_proto_id.exit ], [ -17, %do.body ], [ 0, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tcm_loop_alloc_sess_cb(ptr nocapture noundef writeonly %se_tpg, ptr nocapture noundef readnone %se_sess, ptr noundef %p) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_nexus = getelementptr i8, ptr %se_tpg, i32 836
  %0 = ptrtoint ptr %tl_nexus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p, ptr %tl_nexus, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_transport_status_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_transport_status = getelementptr i8, ptr %item, i32 -282
  %0 = ptrtoint ptr %tl_transport_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tl_transport_status, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %1, label %entry.if.end_crit_edge [
    i16 0, label %entry.if.then_crit_edge
    i16 1, label %sw.bb1
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %sw.bb1, %entry.if.then_crit_edge
  %status.0.ph = phi ptr [ @.str.83, %sw.bb1 ], [ @.str.82, %entry.if.then_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.62, ptr noundef nonnull %status.0.ph)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_transport_status_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(7) @.str.82, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tl_transport_status = getelementptr i8, ptr %item, i32 -282
  %0 = ptrtoint ptr %tl_transport_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tl_transport_status, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(8) @.str.83, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %tl_transport_status5 = getelementptr i8, ptr %item, i32 -282
  %1 = ptrtoint ptr %tl_transport_status5 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %tl_transport_status5, align 2
  %tl_nexus = getelementptr i8, ptr %item, i32 564
  %2 = ptrtoint ptr %tl_nexus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tl_nexus, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  tail call void @core_allocate_nexus_loss_ua(ptr noundef %7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %count, %if.then ], [ %count, %if.then7 ], [ %count, %if.then4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @core_allocate_nexus_loss_ua(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_address_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -284
  %tl_hba1 = getelementptr i8, ptr %item, i32 560
  %0 = ptrtoint ptr %tl_hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tl_hba1, align 4
  %sh = getelementptr inbounds %struct.tcm_loop_hba, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sh, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr, align 4
  %conv = zext i16 %7 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.85, i32 noundef %5, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_attrib_fabric_prot_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tl_fabric_prot_type = getelementptr i8, ptr %item, i32 -600
  %0 = ptrtoint ptr %tl_fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tl_fabric_prot_type, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.87, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_loop_tpg_attrib_fabric_prot_type_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !281
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %call.i) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %2, label %do.end10 [
    i32 0, label %if.end.if.end13_crit_edge
    i32 1, label %if.end.if.end13_crit_edge19
    i32 3, label %if.end.if.end13_crit_edge20
  ]

if.end.if.end13_crit_edge20:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end.if.end13_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %2) #19
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge19, %if.end.if.end13_crit_edge20
  %tl_fabric_prot_type = getelementptr i8, ptr %item, i32 -600
  %4 = ptrtoint ptr %tl_fabric_prot_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %tl_fabric_prot_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end10 ], [ %count, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @root_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_loop_alloc_core_bus() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__root_device_register(ptr noundef nonnull @.str.98, ptr noundef null) #15
  store ptr %call, ptr @tcm_loop_primary, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #19
  %0 = load ptr, ptr @tcm_loop_primary, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @bus_register(ptr noundef nonnull @tcm_loop_lld_bus) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #19
  br label %dev_unreg

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @driver_register(ptr noundef nonnull @tcm_loop_driverfs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body21, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #19
  tail call void @bus_unregister(ptr noundef nonnull @tcm_loop_lld_bus) #15
  br label %dev_unreg

do.body21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_loop_alloc_core_bus.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_loop_alloc_core_bus, %if.then27)) #15
          to label %cleanup [label %if.then27], !srcloc !280

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_loop_alloc_core_bus.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.107) #15
  br label %cleanup

dev_unreg:                                        ; preds = %do.end17, %do.end8
  %ret.0 = phi i32 [ %call4, %do.end8 ], [ %call12, %do.end17 ]
  %2 = load ptr, ptr @tcm_loop_primary, align 4
  tail call void @root_device_unregister(ptr noundef %2) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_unreg, %if.then27, %do.body21, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %ret.0, %dev_unreg ], [ 0, %if.then27 ], [ 0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__root_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !117, !118, !119, !121, !123, !125, !127, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !169, !171, !172, !174, !176, !178, !180, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !220, !222, !223, !225, !227, !229, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !251, !252, !253, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @__param_nr_hw_queues, !1, !"__param_nr_hw_queues", i1 false, i1 false}
!1 = !{!"../drivers/target/loopback/tcm_loop.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_nr_hw_queuestype281, !1, !"__UNIQUE_ID_nr_hw_queuestype281", i1 false, i1 false}
!3 = !{ptr @__param_can_queue, !4, !"__param_can_queue", i1 false, i1 false}
!4 = !{!"../drivers/target/loopback/tcm_loop.c", i32 52, i32 1}
!5 = !{ptr @__UNIQUE_ID_can_queuetype282, !4, !"__UNIQUE_ID_can_queuetype282", i1 false, i1 false}
!6 = !{ptr @__param_cmd_per_lun, !7, !"__param_cmd_per_lun", i1 false, i1 false}
!7 = !{!"../drivers/target/loopback/tcm_loop.c", i32 55, i32 1}
!8 = !{ptr @__UNIQUE_ID_cmd_per_luntype283, !7, !"__UNIQUE_ID_cmd_per_luntype283", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description298, !10, !"__UNIQUE_ID_description298", i1 false, i1 false}
!10 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1192, i32 1}
!11 = !{ptr @__UNIQUE_ID_author299, !12, !"__UNIQUE_ID_author299", i1 false, i1 false}
!12 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1193, i32 1}
!13 = !{ptr @__UNIQUE_ID_file300, !14, !"__UNIQUE_ID_file300", i1 false, i1 false}
!14 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1194, i32 1}
!15 = !{ptr @__UNIQUE_ID_license301, !14, !"__UNIQUE_ID_license301", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_tcm_loop__302_1195_tcm_loop_fabric_init6, !17, !"__initcall__kmod_tcm_loop__302_1195_tcm_loop_fabric_init6", i1 false, i1 false}
!17 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1195, i32 1}
!18 = !{ptr @__exitcall_tcm_loop_fabric_exit, !19, !"__exitcall_tcm_loop_fabric_exit", i1 false, i1 false}
!19 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1196, i32 1}
!20 = !{ptr @tcm_loop_cmd_cache, !21, !"tcm_loop_cmd_cache", i1 false, i1 false}
!21 = !{!"../drivers/target/loopback/tcm_loop.c", i32 42, i32 27}
!22 = !{ptr @__param_str_nr_hw_queues, !1, !"__param_str_nr_hw_queues", i1 false, i1 false}
!23 = !{ptr @tcm_loop_nr_hw_queues, !24, !"tcm_loop_nr_hw_queues", i1 false, i1 false}
!24 = !{!"../drivers/target/loopback/tcm_loop.c", i32 48, i32 21}
!25 = !{ptr @__param_str_can_queue, !4, !"__param_str_can_queue", i1 false, i1 false}
!26 = !{ptr @tcm_loop_can_queue, !27, !"tcm_loop_can_queue", i1 false, i1 false}
!27 = !{!"../drivers/target/loopback/tcm_loop.c", i32 51, i32 21}
!28 = !{ptr @__param_str_cmd_per_lun, !7, !"__param_str_cmd_per_lun", i1 false, i1 false}
!29 = !{ptr @tcm_loop_cmd_per_lun, !30, !"tcm_loop_cmd_per_lun", i1 false, i1 false}
!30 = !{!"../drivers/target/loopback/tcm_loop.c", i32 54, i32 21}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1122, i32 19}
!33 = !{ptr @loop_ops, !34, !"loop_ops", i1 false, i1 false}
!34 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1120, i32 44}
!35 = !{ptr @__func__.tcm_loop_queue_data_in, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/loopback/tcm_loop.c", i32 580, i32 39}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/loopback/tcm_loop.c", i32 558, i32 2}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tcm_loop_queue_data_or_status.__UNIQUE_ID_ddebug287, !38, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!43 = !{ptr @__func__.tcm_loop_queue_status, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/loopback/tcm_loop.c", i32 585, i32 39}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1040, i32 21}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1045, i32 21}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1051, i32 21}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1053, i32 3}
!53 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tcm_loop_make_scsi_hba._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @tcm_loop_make_scsi_hba._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1062, i32 3}
!58 = !{ptr @tcm_loop_make_scsi_hba._entry.10, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tcm_loop_make_scsi_hba._entry_ptr.12, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1067, i32 56}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1080, i32 2}
!64 = !{ptr @tcm_loop_make_scsi_hba.__UNIQUE_ID_ddebug295, !63, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/target/loopback/tcm_loop.c", i32 607, i32 10}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/loopback/tcm_loop.c", i32 609, i32 10}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/target/loopback/tcm_loop.c", i32 611, i32 10}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/loopback/tcm_loop.c", i32 616, i32 9}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/loopback/tcm_loop.c", i32 395, i32 29}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/loopback/tcm_loop.c", i32 399, i32 3}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @tcm_loop_setup_hba_bus._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @tcm_loop_setup_hba_bus._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/loopback/tcm_loop.c", i32 93, i32 12}
!82 = !{ptr @tcm_loop_lld_bus, !83, !"tcm_loop_lld_bus", i1 false, i1 false}
!83 = !{!"../drivers/target/loopback/tcm_loop.c", i32 92, i32 24}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/loopback/tcm_loop.c", i32 330, i32 3}
!86 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @tcm_loop_driver_probe._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @tcm_loop_driver_probe._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/loopback/tcm_loop.c", i32 359, i32 3}
!91 = !{ptr @tcm_loop_driver_probe._entry.25, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @tcm_loop_driver_probe._entry_ptr.27, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/loopback/tcm_loop.c", i32 304, i32 12}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/target/loopback/tcm_loop.c", i32 303, i32 16}
!97 = !{ptr @tcm_loop_driver_template, !98, !"tcm_loop_driver_template", i1 false, i1 false}
!98 = !{!"../drivers/target/loopback/tcm_loop.c", i32 301, i32 34}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/loopback/tcm_loop.c", i32 179, i32 2}
!101 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tcm_loop_queuecommand.__UNIQUE_ID_ddebug284, !100, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/loopback/tcm_loop.c", i32 135, i32 15}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/loopback/tcm_loop.c", i32 136, i32 8}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/loopback/tcm_loop.c", i32 210, i32 3}
!109 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tcm_loop_issue_tmr._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @tcm_loop_issue_tmr._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @init_completion.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/completion.h", i32 87, i32 2}
!114 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/loopback/tcm_loop.c", i32 287, i32 3}
!117 = !{ptr @tcm_loop_target_reset._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tcm_loop_target_reset._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/loopback/tcm_loop.c", i32 79, i32 14}
!121 = !{ptr @tcm_loop_primary, !122, !"tcm_loop_primary", i1 false, i1 false}
!122 = !{!"../drivers/target/loopback/tcm_loop.c", i32 106, i32 23}
!123 = !{ptr @tcm_loop_hba_no_cnt, !124, !"tcm_loop_hba_no_cnt", i1 false, i1 false}
!124 = !{!"../drivers/target/loopback/tcm_loop.c", i32 44, i32 12}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1094, i32 2}
!127 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @tcm_loop_drop_scsi_hba.__UNIQUE_ID_ddebug296, !126, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/loopback/tcm_loop.c", i32 962, i32 19}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/loopback/tcm_loop.c", i32 963, i32 3}
!133 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @tcm_loop_make_naa_tpg._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @tcm_loop_make_naa_tpg._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/loopback/tcm_loop.c", i32 970, i32 3}
!138 = !{ptr @tcm_loop_make_naa_tpg._entry.44, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @tcm_loop_make_naa_tpg._entry_ptr.46, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/target/loopback/tcm_loop.c", i32 984, i32 2}
!142 = !{ptr @tcm_loop_make_naa_tpg.__UNIQUE_ID_ddebug293, !141, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1013, i32 2}
!145 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @tcm_loop_drop_naa_tpg.__UNIQUE_ID_ddebug294, !144, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/target/loopback/tcm_loop.c", i32 767, i32 3}
!149 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @tcm_loop_drop_nexus._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @tcm_loop_drop_nexus._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/target/loopback/tcm_loop.c", i32 772, i32 2}
!154 = !{ptr @tcm_loop_drop_nexus.__UNIQUE_ID_ddebug292, !153, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/target/loopback/tcm_loop.c", i32 635, i32 2}
!157 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tcm_loop_port_link.__UNIQUE_ID_ddebug288, !156, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/target/loopback/tcm_loop.c", i32 653, i32 3}
!161 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @tcm_loop_port_unlink._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @tcm_loop_port_unlink._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/loopback/tcm_loop.c", i32 665, i32 2}
!166 = !{ptr @tcm_loop_port_unlink.__UNIQUE_ID_ddebug289, !165, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!167 = !{ptr @tcm_loop_wwn_attrs, !168, !"tcm_loop_wwn_attrs", i1 false, i1 false}
!168 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1113, i32 35}
!169 = !{ptr @.str.58, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1111, i32 1}
!171 = !{ptr @tcm_loop_wwn_attr_version, !170, !"tcm_loop_wwn_attr_version", i1 false, i1 false}
!172 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1108, i32 23}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1108, i32 58}
!176 = !{ptr @tcm_loop_tpg_attrs, !177, !"tcm_loop_tpg_attrs", i1 false, i1 false}
!177 = !{!"../drivers/target/loopback/tcm_loop.c", i32 944, i32 35}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/target/loopback/tcm_loop.c", i32 940, i32 1}
!180 = !{ptr @tcm_loop_tpg_attr_nexus, !179, !"tcm_loop_tpg_attr_nexus", i1 false, i1 false}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/target/loopback/tcm_loop.c", i32 798, i32 34}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/target/loopback/tcm_loop.c", i32 816, i32 21}
!185 = !{ptr @.str.64, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/target/loopback/tcm_loop.c", i32 826, i32 3}
!187 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tcm_loop_tpg_nexus_store._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tcm_loop_tpg_nexus_store._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/target/loopback/tcm_loop.c", i32 835, i32 4}
!192 = !{ptr @tcm_loop_tpg_nexus_store._entry.66, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tcm_loop_tpg_nexus_store._entry_ptr.68, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/target/loopback/tcm_loop.c", i32 845, i32 4}
!196 = !{ptr @tcm_loop_tpg_nexus_store._entry.69, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @tcm_loop_tpg_nexus_store._entry_ptr.71, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/target/loopback/tcm_loop.c", i32 855, i32 4}
!200 = !{ptr @tcm_loop_tpg_nexus_store._entry.72, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @tcm_loop_tpg_nexus_store._entry_ptr.74, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/target/loopback/tcm_loop.c", i32 862, i32 2}
!204 = !{ptr @tcm_loop_tpg_nexus_store._entry.75, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @tcm_loop_tpg_nexus_store._entry_ptr.77, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/target/loopback/tcm_loop.c", i32 730, i32 3}
!208 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @tcm_loop_make_nexus.__UNIQUE_ID_ddebug290, !207, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!210 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/target/loopback/tcm_loop.c", i32 747, i32 2}
!212 = !{ptr @tcm_loop_make_nexus.__UNIQUE_ID_ddebug291, !211, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!213 = !{ptr @.str.81, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/target/loopback/tcm_loop.c", i32 941, i32 1}
!215 = !{ptr @tcm_loop_tpg_attr_transport_status, !214, !"tcm_loop_tpg_attr_transport_status", i1 false, i1 false}
!216 = !{ptr @.str.82, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/loopback/tcm_loop.c", i32 890, i32 12}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/target/loopback/tcm_loop.c", i32 893, i32 12}
!220 = !{ptr @.str.84, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/loopback/tcm_loop.c", i32 942, i32 1}
!222 = !{ptr @tcm_loop_tpg_attr_address, !221, !"tcm_loop_tpg_attr_address", i1 false, i1 false}
!223 = !{ptr @.str.85, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/target/loopback/tcm_loop.c", i32 936, i32 35}
!225 = !{ptr @tcm_loop_tpg_attrib_attrs, !226, !"tcm_loop_tpg_attrib_attrs", i1 false, i1 false}
!226 = !{!"../drivers/target/loopback/tcm_loop.c", i32 704, i32 35}
!227 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/target/loopback/tcm_loop.c", i32 702, i32 1}
!229 = !{ptr @tcm_loop_tpg_attrib_attr_fabric_prot_type, !228, !"tcm_loop_tpg_attrib_attr_fabric_prot_type", i1 false, i1 false}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/target/loopback/tcm_loop.c", i32 677, i32 23}
!232 = !{ptr @.str.88, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/target/loopback/tcm_loop.c", i32 690, i32 3}
!234 = !{ptr @.str.89, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.91, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/target/loopback/tcm_loop.c", i32 694, i32 3}
!239 = !{ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry.90, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @tcm_loop_tpg_attrib_fabric_prot_type_store._entry_ptr.92, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.93, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/target/loopback/tcm_loop.c", i32 448, i32 2}
!243 = !{ptr @.str.94, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @tcm_loop_release_core_bus.__UNIQUE_ID_ddebug286, !242, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!245 = !{ptr @tcm_loop_driverfs, !246, !"tcm_loop_driverfs", i1 false, i1 false}
!246 = !{!"../drivers/target/loopback/tcm_loop.c", i32 99, i32 29}
!247 = !{ptr @.str.95, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1158, i32 41}
!249 = !{ptr @.str.96, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/target/loopback/tcm_loop.c", i32 1163, i32 3}
!251 = !{ptr @.str.97, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @tcm_loop_fabric_init.__UNIQUE_ID_ddebug297, !250, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/target/loopback/tcm_loop.c", i32 414, i32 21}
!255 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/target/loopback/tcm_loop.c", i32 416, i32 3}
!257 = !{ptr @.str.100, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @tcm_loop_alloc_core_bus._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @tcm_loop_alloc_core_bus._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.102, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/target/loopback/tcm_loop.c", i32 422, i32 3}
!262 = !{ptr @tcm_loop_alloc_core_bus._entry.101, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @tcm_loop_alloc_core_bus._entry_ptr.103, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.105, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/target/loopback/tcm_loop.c", i32 428, i32 3}
!266 = !{ptr @tcm_loop_alloc_core_bus._entry.104, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @tcm_loop_alloc_core_bus._entry_ptr.106, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.107, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/target/loopback/tcm_loop.c", i32 432, i32 2}
!270 = !{ptr @tcm_loop_alloc_core_bus.__UNIQUE_ID_ddebug285, !269, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{i64 2148983172, i64 2148983177, i64 2148983190, i64 2148983234, i64 2148983268, i64 2148983289}
!281 = !{!"auto-init"}
!282 = !{i64 2154617188}
!283 = !{i64 2148369795, i64 2148369821, i64 2148369850, i64 2148369884, i64 2148369915, i64 2148369938}
!284 = !{i64 2154617365}
!285 = !{i64 2154617712}
!286 = !{i64 2148372260, i64 2148372286, i64 2148372315, i64 2148372349, i64 2148372380, i64 2148372403}
!287 = !{i64 2154617889}
!288 = !{i32 0, i32 33}
