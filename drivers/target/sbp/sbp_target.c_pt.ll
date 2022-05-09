; ModuleID = '/llk/IR_all_yes/drivers/target/sbp/sbp_target.c_pt.bc'
source_filename = "../drivers/target/sbp/sbp_target.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_address_region = type { i64, i64 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.sbp_tport = type { i64, [32 x i8], %struct.se_wwn, ptr, %struct.fw_descriptor, ptr, i32, i32, i32, i32, i32 }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fw_descriptor = type { %struct.list_head, i32, i32, i32, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.sbp_login_descriptor = type { ptr, %struct.list_head, i32, i64, i32, i16, ptr }
%struct.sbp_tpg = type { i16, ptr, %struct.se_portal_group }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.sbp_management_agent = type { %struct.spinlock, ptr, %struct.fw_address_handler, i32, %struct.work_struct, i64, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sbp_target_request = type { ptr, i64, %struct.sbp_command_block_orb, %struct.sbp_status_block, %struct.work_struct, %struct.se_cmd, ptr, ptr, [96 x i8] }
%struct.sbp_command_block_orb = type { %struct.sbp2_pointer, %struct.sbp2_pointer, i32, [12 x i8] }
%struct.sbp2_pointer = type { i32, i32 }
%struct.sbp_status_block = type { i32, i32, [24 x i8] }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.sbp_session = type { %struct.spinlock, ptr, %struct.list_head, %struct.delayed_work, i64, i32, ptr, i32, i32, i32, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.sbp_page_table_entry = type { i16, i16, i32 }
%struct.sbp_management_request = type { %struct.sbp_management_orb, %struct.sbp_status_block, ptr, i32, i32, i32 }
%struct.sbp_management_orb = type { %struct.sbp2_pointer, %struct.sbp2_pointer, i32, i32, %struct.sbp2_pointer }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.callback_head = type { ptr, ptr }
%struct.sbp_target_agent = type { %struct.spinlock, %struct.fw_address_handler, ptr, i32, %struct.work_struct, i64, i8 }
%struct.sbp_login_response_block = type { i32, %struct.sbp2_pointer, i32 }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sbp_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str, i32 0, i32 0, ptr @sbp_get_fabric_wwn, ptr @sbp_get_tag, ptr null, ptr @sbp_check_true, ptr @sbp_check_true, ptr @sbp_check_false, ptr @sbp_check_false, ptr null, ptr null, ptr @sbp_tpg_get_inst_index, ptr @sbp_check_stop_free, ptr @sbp_release_cmd, ptr null, ptr @sbp_sess_get_index, ptr null, ptr @sbp_write_pending, ptr @sbp_set_default_node_attrs, ptr @sbp_get_cmd_state, ptr @sbp_queue_data_in, ptr @sbp_queue_status, ptr @sbp_queue_tm_rsp, ptr @sbp_aborted_task, ptr @sbp_make_tport, ptr @sbp_drop_tport, ptr null, ptr @sbp_make_tpg, ptr @sbp_enable_tpg, ptr @sbp_drop_tpg, ptr @sbp_post_link_lun, ptr @sbp_pre_unlink_lun, ptr null, ptr null, ptr @sbp_init_nodeacl, ptr null, ptr @sbp_wwn_attrs, ptr @sbp_tpg_base_attrs, ptr null, ptr @sbp_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description327 = internal constant [50 x i8] c"sbp_target.description=FireWire SBP fabric driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [46 x i8] c"sbp_target.file=drivers/target/sbp/sbp_target\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [23 x i8] c"sbp_target.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sbp_target__330_2326_sbp_init6 = internal global ptr @sbp_init, section ".initcall6.init", align 4
@__exitcall_sbp_exit = internal global ptr @sbp_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sbp\00", [28 x i8] zeroinitializer }, align 32
@sbp_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sbp_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@sbp_tpg_base_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sbp_tpg_attr_directory_id, ptr null], [24 x i8] zeroinitializer }, align 32
@sbp_tpg_attrib_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sbp_tpg_attrib_attr_mgt_orb_timeout, ptr @sbp_tpg_attrib_attr_max_reconnect_timeout, ptr @sbp_tpg_attrib_attr_max_logins_per_lun, ptr null], [16 x i8] zeroinitializer }, align 32
@sbp_rw_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013sbp_target: sbp_run_transaction: page size ignored\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbp_rw_data\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/target/sbp/sbp_target.c\00", [32 x i8] zeroinitializer }, align 32
@sbp_rw_data._entry_ptr = internal global ptr @sbp_rw_data._entry, section ".printk_index", align 4
@sbp_send_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sbp_target\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbp_send_status\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sbp_send_status: write failed: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sbp_target: sbp_send_status: write failed: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@sbp_send_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.8, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sbp_send_status: status write complete for ORB: 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"sbp_target: sbp_send_status: status write complete for ORB: 0x%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@sbp_sense_mangle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013sbp_target: sbp_send_sense: unknown sense format: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbp_sense_mangle\00", [47 x i8] zeroinitializer }, align 32
@sbp_sense_mangle._entry_ptr = internal global ptr @sbp_sense_mangle._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@sbp_parse_wwn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016err %u len %zu pos %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sbp_parse_wwn\00", [18 x i8] zeroinitializer }, align 32
@sbp_parse_wwn._entry_ptr = internal global ptr @sbp_parse_wwn._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llx\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@sbp_make_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sbp_target: Only one TPG per Unit is possible.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sbp_make_tpg\00", [19 x i8] zeroinitializer }, align 32
@sbp_make_tpg._entry_ptr = internal global ptr @sbp_make_tpg._entry, section ".printk_index", align 4
@sbp_management_agent_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&agent->lock\00", [19 x i8] zeroinitializer }, align 32
@sbp_management_agent_register.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&agent->work)\00", [32 x i8] zeroinitializer }, align 32
@sbp_register_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 281474708340736, i64 281474976710656 }, [16 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015sbp_target: ignoring management request while busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbp_mgt_agent_rw\00", [47 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_rw._entry_ptr = internal global ptr @sbp_mgt_agent_rw._entry, section ".printk_index", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@sbp_mgt_agent_process.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 1, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbp_mgt_agent_process\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mgt_orb fetch failed: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sbp_target: mgt_orb fetch failed: %x\0A\00", [58 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.3, ptr @.str.26, i8 1, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mgt_orb ptr1:0x%llx ptr2:0x%llx misc:0x%x len:0x%x status_fifo:0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"sbp_target: mgt_orb ptr1:0x%llx ptr2:0x%llx misc:0x%x len:0x%x status_fifo:0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013sbp_target: mgt_orb bad request\0A\00", [61 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr = internal global ptr @sbp_mgt_agent_process._entry, section ".printk_index", align 4
@sbp_mgt_agent_process._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 1494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015sbp_target: SET PASSWORD not implemented\0A\00", [52 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr.31 = internal global ptr @sbp_mgt_agent_process._entry.29, section ".printk_index", align 4
@sbp_mgt_agent_process._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.3, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015sbp_target: ABORT TASK not implemented\0A\00", [54 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr.34 = internal global ptr @sbp_mgt_agent_process._entry.32, section ".printk_index", align 4
@sbp_mgt_agent_process._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.3, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015sbp_target: ABORT TASK SET not implemented\0A\00", [50 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr.37 = internal global ptr @sbp_mgt_agent_process._entry.35, section ".printk_index", align 4
@sbp_mgt_agent_process._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.3, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015sbp_target: LOGICAL UNIT RESET not implemented\0A\00", [46 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr.40 = internal global ptr @sbp_mgt_agent_process._entry.38, section ".printk_index", align 4
@sbp_mgt_agent_process._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.23, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015sbp_target: TARGET RESET not implemented\0A\00", [52 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr.43 = internal global ptr @sbp_mgt_agent_process._entry.41, section ".printk_index", align 4
@sbp_mgt_agent_process._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.23, ptr @.str.3, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015sbp_target: unknown management function 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@sbp_mgt_agent_process._entry_ptr.46 = internal global ptr @sbp_mgt_agent_process._entry.44, section ".printk_index", align 4
@sbp_mgt_agent_process.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.3, ptr @.str.47, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mgt_orb status write failed: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sbp_target: mgt_orb status write failed: %x\0A\00", [51 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015sbp_target: login to unknown LUN: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sbp_management_request_login\00", [35 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr = internal global ptr @sbp_management_request_login._entry, section ".printk_index", align 4
@sbp_management_request_login._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014sbp_target: failed to read peer GUID: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.53 = internal global ptr @sbp_management_request_login._entry.51, section ".printk_index", align 4
@sbp_management_request_login._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015sbp_target: mgt_agent LOGIN to LUN %d from %016llx\0A\00", [42 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.56 = internal global ptr @sbp_management_request_login._entry.54, section ".printk_index", align 4
@sbp_management_request_login._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015sbp_target: initiator already logged-in\0A\00", [53 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.59 = internal global ptr @sbp_management_request_login._entry.57, section ".printk_index", align 4
@sbp_management_request_login._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.3, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014sbp_target: refusing exclusive login with other active logins\0A\00", [63 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.62 = internal global ptr @sbp_management_request_login._entry.60, section ".printk_index", align 4
@sbp_management_request_login._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.50, ptr @.str.3, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014sbp_target: refusing login while another exclusive login present\0A\00", [60 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.65 = internal global ptr @sbp_management_request_login._entry.63, section ".printk_index", align 4
@sbp_management_request_login._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.50, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014sbp_target: max number of logins reached\0A\00", [52 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.68 = internal global ptr @sbp_management_request_login._entry.66, section ".printk_index", align 4
@sbp_management_request_login._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.50, ptr @.str.3, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013sbp_target: failed to allocate login descriptor\0A\00", [45 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.71 = internal global ptr @sbp_management_request_login._entry.69, section ".printk_index", align 4
@login_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@sbp_management_request_login._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.50, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013sbp_target: failed to map command block handler: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.74 = internal global ptr @sbp_management_request_login._entry.72, section ".printk_index", align 4
@sbp_management_request_login._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.50, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013sbp_target: failed to allocate login response block\0A\00", [41 x i8] zeroinitializer }, align 32
@sbp_management_request_login._entry_ptr.77 = internal global ptr @sbp_management_request_login._entry.75, section ".printk_index", align 4
@sbp_management_request_login.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.50, ptr @.str.3, ptr @.str.78, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to write login response block: %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sbp_target: failed to write login response block: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@sbp_get_lun_from_tpg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.83 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sbp_session_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&sess->lock\00", [20 x i8] zeroinitializer }, align 32
@sbp_session_create.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&sess->maint_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@sbp_session_create.__key.87 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&sess->maint_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@sbp_session_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013sbp_target: failed to init se_session\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbp_session_create\00", [45 x i8] zeroinitializer }, align 32
@sbp_session_create._entry_ptr = internal global ptr @sbp_session_create._entry, section ".printk_index", align 4
@session_check_for_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016sbp_target: Waiting for reconnect from node: %016llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"session_check_for_reset\00", [40 x i8] zeroinitializer }, align 32
@session_check_for_reset._entry_ptr = internal global ptr @session_check_for_reset._entry, section ".printk_index", align 4
@session_reconnect_expired._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016sbp_target: Reconnect timer expired for node: %016llx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"session_reconnect_expired\00", [38 x i8] zeroinitializer }, align 32
@session_reconnect_expired._entry_ptr = internal global ptr @session_reconnect_expired._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sbp_target_agent_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sbp_target_agent_register.__key.95 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tgt_agent_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015sbp_target: ignoring request with wrong generation\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tgt_agent_rw\00", [19 x i8] zeroinitializer }, align 32
@tgt_agent_rw._entry_ptr = internal global ptr @tgt_agent_rw._entry, section ".printk_index", align 4
@tgt_agent_rw._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015sbp_target: ignoring request from foreign node (%x != %x)\0A\00", [35 x i8] zeroinitializer }, align 32
@tgt_agent_rw._entry_ptr.100 = internal global ptr @tgt_agent_rw._entry.98, section ".printk_index", align 4
@tgt_agent_rw_agent_state.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tgt_agent_rw_agent_state\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tgt_agent AGENT_STATE READ\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sbp_target: tgt_agent AGENT_STATE READ\0A\00", [56 x i8] zeroinitializer }, align 32
@tgt_agent_rw_agent_reset.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tgt_agent_rw_agent_reset\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tgt_agent AGENT_RESET\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sbp_target: tgt_agent AGENT_RESET\0A\00", [61 x i8] zeroinitializer }, align 32
@tgt_agent_rw_orb_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015sbp_target: Ignoring ORB_POINTER write while active.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tgt_agent_rw_orb_pointer\00", [39 x i8] zeroinitializer }, align 32
@tgt_agent_rw_orb_pointer._entry_ptr = internal global ptr @tgt_agent_rw_orb_pointer._entry, section ".printk_index", align 4
@tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tgt_agent ORB_POINTER write: 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sbp_target: tgt_agent ORB_POINTER write: 0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.108, ptr @.str.3, ptr @.str.111, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tgt_agent ORB_POINTER READ\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sbp_target: tgt_agent ORB_POINTER READ\0A\00", [56 x i8] zeroinitializer }, align 32
@tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tgt_agent_rw_doorbell\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ignoring DOORBELL while active.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sbp_target: Ignoring DOORBELL while active.\0A\00", [51 x i8] zeroinitializer }, align 32
@tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.113, ptr @.str.3, ptr @.str.116, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tgt_agent DOORBELL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sbp_target: tgt_agent DOORBELL\0A\00", [32 x i8] zeroinitializer }, align 32
@tgt_agent_rw_unsolicited_status_enable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.118, ptr @.str.3, ptr @.str.119, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tgt_agent_rw_unsolicited_status_enable\00", [57 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tgt_agent UNSOLICITED_STATUS_ENABLE\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sbp_target: tgt_agent UNSOLICITED_STATUS_ENABLE\0A\00", [47 x i8] zeroinitializer }, align 32
@tgt_agent_fetch_work.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.121, ptr @.str.3, ptr @.str.122, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tgt_agent_fetch_work\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tgt_orb fetch failed: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sbp_target: tgt_orb fetch failed: %x\0A\00", [58 x i8] zeroinitializer }, align 32
@tgt_agent_fetch_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&req->work)\00", [34 x i8] zeroinitializer }, align 32
@tgt_agent_process_work.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tgt_agent_process_work\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"tgt_orb ptr:0x%llx next_ORB:0x%llx data_descriptor:0x%llx misc:0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"sbp_target: tgt_orb ptr:0x%llx next_ORB:0x%llx data_descriptor:0x%llx misc:0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@tgt_agent_process_work.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.125, ptr @.str.3, ptr @.str.128, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ORB with high bits set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sbp_target: ORB with high bits set\0A\00", [60 x i8] zeroinitializer }, align 32
@sbp_handle_command.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.130, ptr @.str.3, ptr @.str.131, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbp_handle_command\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sbp_handle_command: fetch command failed: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sbp_target: sbp_handle_command: fetch command failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sbp_handle_command.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.130, ptr @.str.3, ptr @.str.133, i8 1, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sbp_handle_command: fetch page table failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"sbp_target: sbp_handle_command: fetch page table failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sbp_handle_command.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.130, ptr @.str.3, ptr @.str.135, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"sbp_handle_command ORB:0x%llx unpacked_lun:%d data_len:%d data_dir:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"sbp_target: sbp_handle_command ORB:0x%llx unpacked_lun:%d data_len:%d data_dir:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@sbp_fetch_command.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.137, ptr @.str.3, ptr @.str.138, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sbp_fetch_command\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sbp_fetch_command: filling in long command\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sbp_target: sbp_fetch_command: filling in long command\0A\00", [40 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@sbp_management_request_query_logins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015sbp_target: QUERY LOGINS not implemented\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sbp_management_request_query_logins\00", [60 x i8] zeroinitializer }, align 32
@sbp_management_request_query_logins._entry_ptr = internal global ptr @sbp_management_request_query_logins._entry, section ".printk_index", align 4
@sbp_management_request_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.142, ptr @.str.3, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sbp_management_request_reconnect\00", [63 x i8] zeroinitializer }, align 32
@sbp_management_request_reconnect._entry_ptr = internal global ptr @sbp_management_request_reconnect._entry, section ".printk_index", align 4
@sbp_management_request_reconnect._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.3, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015sbp_target: mgt_agent RECONNECT from %016llx\0A\00", [48 x i8] zeroinitializer }, align 32
@sbp_management_request_reconnect._entry_ptr.145 = internal global ptr @sbp_management_request_reconnect._entry.143, section ".printk_index", align 4
@sbp_management_request_reconnect._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.142, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sbp_target: mgt_agent RECONNECT unknown login ID\0A\00", [44 x i8] zeroinitializer }, align 32
@sbp_management_request_reconnect._entry_ptr.148 = internal global ptr @sbp_management_request_reconnect._entry.146, section ".printk_index", align 4
@sbp_management_request_reconnect._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.142, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013sbp_target: mgt_agent RECONNECT login GUID doesn't match\0A\00", [36 x i8] zeroinitializer }, align 32
@sbp_management_request_reconnect._entry_ptr.151 = internal global ptr @sbp_management_request_reconnect._entry.149, section ".printk_index", align 4
@sbp_management_request_logout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014sbp_target: cannot find login: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sbp_management_request_logout\00", [34 x i8] zeroinitializer }, align 32
@sbp_management_request_logout._entry_ptr = internal global ptr @sbp_management_request_logout._entry, section ".printk_index", align 4
@sbp_management_request_logout._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016sbp_target: mgt_agent LOGOUT from LUN %d session %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sbp_management_request_logout._entry_ptr.156 = internal global ptr @sbp_management_request_logout._entry.154, section ".printk_index", align 4
@sbp_management_request_logout._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014sbp_target: logout from different node ID\0A\00", [51 x i8] zeroinitializer }, align 32
@sbp_management_request_logout._entry_ptr.159 = internal global ptr @sbp_management_request_logout._entry.157, section ".printk_index", align 4
@sbp_enable_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.3, i32 2136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sbp_target: Cannot enable a target with no LUNs!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sbp_enable_tpg\00", [17 x i8] zeroinitializer }, align 32
@sbp_enable_tpg._entry_ptr = internal global ptr @sbp_enable_tpg._entry, section ".printk_index", align 4
@sbp_enable_tpg._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.3, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013sbp_target: Could not update Config ROM\0A\00", [53 x i8] zeroinitializer }, align 32
@sbp_enable_tpg._entry_ptr.164 = internal global ptr @sbp_enable_tpg._entry.162, section ".printk_index", align 4
@sbp_count_se_tpg_luns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sbp_unit_directory_template = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 302014622, i32 318833795, i32 939548830, i32 956368088, i32 989855744, i32 1006632961], [40 x i8] zeroinitializer }, align 32
@sbp_update_unit_directory.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sbp_pre_unlink_lun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.3, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013sbp_target: unlink LUN: failed to update unit directory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbp_pre_unlink_lun\00", [45 x i8] zeroinitializer }, align 32
@sbp_pre_unlink_lun._entry_ptr = internal global ptr @sbp_pre_unlink_lun._entry, section ".printk_index", align 4
@sbp_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.167, ptr null, i16 292, ptr @sbp_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FireWire SBP fabric module %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v0.1\00", [27 x i8] zeroinitializer }, align 32
@sbp_tpg_attr_directory_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.170, ptr null, i16 420, ptr @sbp_tpg_directory_id_show, ptr @sbp_tpg_directory_id_store }, [44 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"directory_id\00", [19 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"implicit\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%06x\0A\00", [26 x i8] zeroinitializer }, align 32
@sbp_tpg_directory_id_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 2110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013sbp_target: Cannot change the directory_id on an active target.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sbp_tpg_directory_id_store\00", [37 x i8] zeroinitializer }, align 32
@sbp_tpg_directory_id_store._entry_ptr = internal global ptr @sbp_tpg_directory_id_store._entry, section ".printk_index", align 4
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"implicit\00", [23 x i8] zeroinitializer }, align 32
@sbp_tpg_attrib_attr_mgt_orb_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.176, ptr null, i16 420, ptr @sbp_tpg_attrib_mgt_orb_timeout_show, ptr @sbp_tpg_attrib_mgt_orb_timeout_store }, [44 x i8] zeroinitializer }, align 32
@sbp_tpg_attrib_attr_max_reconnect_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.178, ptr null, i16 420, ptr @sbp_tpg_attrib_max_reconnect_timeout_show, ptr @sbp_tpg_attrib_max_reconnect_timeout_store }, [44 x i8] zeroinitializer }, align 32
@sbp_tpg_attrib_attr_max_logins_per_lun = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.179, ptr null, i16 420, ptr @sbp_tpg_attrib_max_logins_per_lun_show, ptr @sbp_tpg_attrib_max_logins_per_lun_store }, [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mgt_orb_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_reconnect_timeout\00", [42 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_logins_per_lun\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.181 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 7, i64 19]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 7, i64 19]
@__sancov_gen_cov_switch_values.183 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 7, i64 19]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 7, i64 19]
@__sancov_gen_cov_switch_values.185 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6, i64 7, i64 19]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 112, i64 113]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.188 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 3, i64 4, i64 7, i64 11, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.194 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.195 = private unnamed_addr constant [8 x i8] c"sbp_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2277, i32 44 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2279, i32 19 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"sbp_wwn_attrs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2084, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant [19 x i8] c"sbp_tpg_base_attrs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2162, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"sbp_tpg_attrib_attrs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2270, i32 35 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1263, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1338, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1343, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1377, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1938, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1945, i32 28 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1992, i32 19 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1998, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1644, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1650, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c"sbp_register_region\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 31, i32 39 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1603, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1463, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1467, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1475, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1494, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1507, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1516, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1525, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1534, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1543, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1565, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 274, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 285, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 293, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 300, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 327, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 340, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 354, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 397, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant [9 x i8] c"login_id\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 47, i32 17 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 416, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 434, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 459, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 167, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 695, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 723, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 194, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 196, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 204, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 606, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 622, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1022, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1030, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 811, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 817, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 675, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 699, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 721, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 730, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 738, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 757, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 765, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 784, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 962, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 992, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 859, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 866, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1202, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1208, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1216, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1123, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 481, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 501, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 509, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 515, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 524, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 561, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 569, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 573, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2136, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2153, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant [28 x i8] c"sbp_unit_directory_template\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 36, i32 18 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1979, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"sbp_wwn_attr_version\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2082, i32 1 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2079, i32 23 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2079, i32 58 }
@___asan_gen_.726 = private unnamed_addr constant [26 x i8] c"sbp_tpg_attr_directory_id\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2160, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2096, i32 24 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2098, i32 24 }
@___asan_gen_.738 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2110, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2114, i32 19 }
@___asan_gen_.750 = private unnamed_addr constant [36 x i8] c"sbp_tpg_attrib_attr_mgt_orb_timeout\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [42 x i8] c"sbp_tpg_attrib_attr_max_reconnect_timeout\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [39 x i8] c"sbp_tpg_attrib_attr_max_logins_per_lun\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2266, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2173, i32 23 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2267, i32 1 }
@___asan_gen_.768 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.769 = private constant [35 x i8] c"../drivers/target/sbp/sbp_target.c\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 2268, i32 1 }
@llvm.compiler.used = appending global [238 x ptr] [ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_sbp_exit, ptr @__initcall__kmod_sbp_target__330_2326_sbp_init6, ptr @sbp_enable_tpg._entry, ptr @sbp_enable_tpg._entry.162, ptr @sbp_enable_tpg._entry_ptr, ptr @sbp_enable_tpg._entry_ptr.164, ptr @sbp_exit, ptr @sbp_make_tpg._entry, ptr @sbp_make_tpg._entry_ptr, ptr @sbp_management_request_login._entry, ptr @sbp_management_request_login._entry.51, ptr @sbp_management_request_login._entry.54, ptr @sbp_management_request_login._entry.57, ptr @sbp_management_request_login._entry.60, ptr @sbp_management_request_login._entry.63, ptr @sbp_management_request_login._entry.66, ptr @sbp_management_request_login._entry.69, ptr @sbp_management_request_login._entry.72, ptr @sbp_management_request_login._entry.75, ptr @sbp_management_request_login._entry_ptr, ptr @sbp_management_request_login._entry_ptr.53, ptr @sbp_management_request_login._entry_ptr.56, ptr @sbp_management_request_login._entry_ptr.59, ptr @sbp_management_request_login._entry_ptr.62, ptr @sbp_management_request_login._entry_ptr.65, ptr @sbp_management_request_login._entry_ptr.68, ptr @sbp_management_request_login._entry_ptr.71, ptr @sbp_management_request_login._entry_ptr.74, ptr @sbp_management_request_login._entry_ptr.77, ptr @sbp_management_request_logout._entry, ptr @sbp_management_request_logout._entry.154, ptr @sbp_management_request_logout._entry.157, ptr @sbp_management_request_logout._entry_ptr, ptr @sbp_management_request_logout._entry_ptr.156, ptr @sbp_management_request_logout._entry_ptr.159, ptr @sbp_management_request_query_logins._entry, ptr @sbp_management_request_query_logins._entry_ptr, ptr @sbp_management_request_reconnect._entry, ptr @sbp_management_request_reconnect._entry.143, ptr @sbp_management_request_reconnect._entry.146, ptr @sbp_management_request_reconnect._entry.149, ptr @sbp_management_request_reconnect._entry_ptr, ptr @sbp_management_request_reconnect._entry_ptr.145, ptr @sbp_management_request_reconnect._entry_ptr.148, ptr @sbp_management_request_reconnect._entry_ptr.151, ptr @sbp_mgt_agent_process._entry, ptr @sbp_mgt_agent_process._entry.29, ptr @sbp_mgt_agent_process._entry.32, ptr @sbp_mgt_agent_process._entry.35, ptr @sbp_mgt_agent_process._entry.38, ptr @sbp_mgt_agent_process._entry.41, ptr @sbp_mgt_agent_process._entry.44, ptr @sbp_mgt_agent_process._entry_ptr, ptr @sbp_mgt_agent_process._entry_ptr.31, ptr @sbp_mgt_agent_process._entry_ptr.34, ptr @sbp_mgt_agent_process._entry_ptr.37, ptr @sbp_mgt_agent_process._entry_ptr.40, ptr @sbp_mgt_agent_process._entry_ptr.43, ptr @sbp_mgt_agent_process._entry_ptr.46, ptr @sbp_mgt_agent_rw._entry, ptr @sbp_mgt_agent_rw._entry_ptr, ptr @sbp_parse_wwn._entry, ptr @sbp_parse_wwn._entry_ptr, ptr @sbp_pre_unlink_lun._entry, ptr @sbp_pre_unlink_lun._entry_ptr, ptr @sbp_rw_data._entry, ptr @sbp_rw_data._entry_ptr, ptr @sbp_sense_mangle._entry, ptr @sbp_sense_mangle._entry_ptr, ptr @sbp_session_create._entry, ptr @sbp_session_create._entry_ptr, ptr @sbp_tpg_directory_id_store._entry, ptr @sbp_tpg_directory_id_store._entry_ptr, ptr @session_check_for_reset._entry, ptr @session_check_for_reset._entry_ptr, ptr @session_reconnect_expired._entry, ptr @session_reconnect_expired._entry_ptr, ptr @tgt_agent_rw._entry, ptr @tgt_agent_rw._entry.98, ptr @tgt_agent_rw._entry_ptr, ptr @tgt_agent_rw._entry_ptr.100, ptr @tgt_agent_rw_orb_pointer._entry, ptr @tgt_agent_rw_orb_pointer._entry_ptr, ptr @sbp_ops, ptr @.str, ptr @sbp_wwn_attrs, ptr @sbp_tpg_base_attrs, ptr @sbp_tpg_attrib_attrs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @sbp_management_agent_register.__key, ptr @.str.18, ptr @sbp_management_agent_register.__key.19, ptr @.str.20, ptr @sbp_register_region, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @login_id, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @sbp_session_create.__key, ptr @.str.84, ptr @sbp_session_create.__key.85, ptr @.str.86, ptr @sbp_session_create.__key.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @sbp_target_agent_register.__key, ptr @sbp_target_agent_register.__key.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @tgt_agent_fetch_work.__key, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @sbp_unit_directory_template, ptr @.str.165, ptr @.str.166, ptr @sbp_wwn_attr_version, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @sbp_tpg_attr_directory_id, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @sbp_tpg_attrib_attr_mgt_orb_timeout, ptr @sbp_tpg_attrib_attr_max_reconnect_timeout, ptr @sbp_tpg_attrib_attr_max_logins_per_lun, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], section "llvm.metadata"
@0 = internal global [192 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_base_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_attrib_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_rw_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_sense_mangle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_parse_wwn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_make_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_agent_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_agent_register.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_register_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_mgt_agent_process._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @login_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_login._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_session_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_session_create.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_session_create.__key.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_session_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_check_for_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @session_reconnect_expired._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_target_agent_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_target_agent_register.__key.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgt_agent_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgt_agent_rw._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgt_agent_rw_orb_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgt_agent_fetch_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_query_logins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_reconnect._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_reconnect._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_reconnect._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_logout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_logout._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_management_request_logout._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_enable_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_enable_tpg._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_unit_directory_template to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_pre_unlink_lun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_attr_directory_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_directory_id_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_attrib_attr_mgt_orb_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_attrib_attr_max_reconnect_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp_tpg_attrib_attr_max_logins_per_lun to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sbp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @target_unregister_template(ptr noundef nonnull @sbp_ops) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_register_template(ptr noundef nonnull @sbp_ops) #16
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sbp_get_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %tport_name = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 1
  ret ptr %tport_name
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sbp_get_tag(ptr nocapture noundef readonly %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 4
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbp_check_true(ptr nocapture noundef readnone %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbp_check_false(ptr nocapture noundef readnone %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbp_tpg_get_inst_index(ptr nocapture noundef readnone %se_tpg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_check_stop_free(ptr noundef %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp_release_cmd(ptr nocapture noundef readonly %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess2.i = getelementptr i8, ptr %se_cmd, i32 108
  %0 = ptrtoint ptr %se_sess2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess2.i, align 4
  %pg_tbl.i = getelementptr i8, ptr %se_cmd, i32 440
  %2 = ptrtoint ptr %pg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pg_tbl.i, align 8
  tail call void @kfree(ptr noundef %3) #16
  %cmd_buf.i = getelementptr i8, ptr %se_cmd, i32 444
  %4 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i, align 4
  tail call void @kfree(ptr noundef %5) #16
  %sess_tag_pool.i.i = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 14
  %map_tag.i.i = getelementptr i8, ptr %se_cmd, i32 36
  %6 = ptrtoint ptr %map_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_tag.i.i, align 4
  %map_cpu.i.i = getelementptr i8, ptr %se_cmd, i32 40
  %8 = ptrtoint ptr %map_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_cpu.i.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i.i, i32 noundef %7, i32 noundef %9) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbp_sess_get_index(ptr nocapture noundef readnone %se_sess) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_write_pending(ptr noundef %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -128
  %call = tail call fastcc i32 @sbp_rw_data(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %status = getelementptr i8, ptr %se_cmd, i32 -80
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %or = or i32 %1, 301924352
  store i32 %or, ptr %status, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = lshr i32 %or, 22
  %add.i = and i32 %4, 28
  %mul.i = add nuw nsw i32 %add.i, 4
  %status_fifo_addr.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %status_fifo_addr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %status_fifo_addr.i, align 8
  %call.i = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %add.ptr, i32 noundef 1, i64 noundef %6, ptr noundef %status, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_write_pending, %if.then7.i)) #16
          to label %sbp_send_status.exit [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i) #16
  br label %sbp_send_status.exit

do.body9.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_write_pending, %if.then21.i)) #16
          to label %sbp_send_status.exit [label %if.then21.i], !srcloc !369

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  %orb_pointer.i = getelementptr i8, ptr %se_cmd, i32 -120
  %7 = ptrtoint ptr %orb_pointer.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %orb_pointer.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %8) #16
  br label %sbp_send_status.exit

sbp_send_status.exit:                             ; preds = %if.then21.i, %do.body9.i, %if.then7.i, %do.body.i
  %call25.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sbp_send_status.exit
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sbp_set_default_node_attrs(ptr nocapture noundef %nacl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbp_get_cmd_state(ptr nocapture noundef readnone %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_queue_data_in(ptr noundef %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -128
  %call = tail call fastcc i32 @sbp_rw_data(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %status = getelementptr i8, ptr %se_cmd, i32 -80
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %or = or i32 %1, 301924352
  store i32 %or, ptr %status, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = lshr i32 %or, 22
  %add.i = and i32 %4, 28
  %mul.i = add nuw nsw i32 %add.i, 4
  %status_fifo_addr.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %status_fifo_addr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %status_fifo_addr.i, align 8
  %call.i = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %add.ptr, i32 noundef 1, i64 noundef %6, ptr noundef %status, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_queue_data_in, %if.then7.i)) #16
          to label %sbp_send_status.exit [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i) #16
  br label %sbp_send_status.exit

do.body9.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_queue_data_in, %if.then21.i)) #16
          to label %sbp_send_status.exit [label %if.then21.i], !srcloc !369

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  %orb_pointer.i = getelementptr i8, ptr %se_cmd, i32 -120
  %7 = ptrtoint ptr %orb_pointer.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %orb_pointer.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %8) #16
  br label %sbp_send_status.exit

sbp_send_status.exit:                             ; preds = %if.then21.i, %do.body9.i, %if.then7.i, %do.body.i
  %call25.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call fastcc i32 @sbp_send_sense(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sbp_send_status.exit
  %retval.0 = phi i32 [ %call, %sbp_send_status.exit ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_queue_status(ptr noundef %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -128
  %call = tail call fastcc i32 @sbp_send_sense(ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sbp_queue_tm_rsp(ptr nocapture noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sbp_aborted_task(ptr nocapture noundef %se_cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sbp_make_tport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %name, i32 31
  %cmp64.i = icmp ugt ptr %arrayidx.i, %name
  br i1 %cmp64.i, label %entry.for.body.i_crit_edge, label %entry.sbp_parse_wwn.exit.thread_crit_edge

entry.sbp_parse_wwn.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %guid.0 = phi i64 [ %guid.1, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %pos.068.i = phi i32 [ %pos.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %cp.065.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %name, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %cp.065.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.065.i, align 1
  %conv.i = zext i8 %1 to i32
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end15.i [
    i8 10, label %land.lhs.true.i
    i8 0, label %if.then10.i
  ]

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx3.i = getelementptr i8, ptr %cp.065.i, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5.i = icmp eq i8 %4, 0
  br i1 %cmp5.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %pos.068.i)
  %cmp11.not.i = icmp eq i32 %pos.068.i, 16
  br i1 %cmp11.not.i, label %sbp_parse_wwn.exit, label %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge

if.then10.i.sbp_parse_wwn.exit.thread_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

if.end15.i:                                       ; preds = %for.body.i
  %5 = add nsw i32 %conv.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %if.end15.i.if.else.i_crit_edge, label %if.then17.i

if.end15.i.if.else.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = add i8 %1, -48
  br label %if.end32.i

if.else.i:                                        ; preds = %if.end15.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %arrayidx21.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx21.i, align 1
  %9 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp23.not.i = icmp eq i8 %9, 0
  br i1 %cmp23.not.i, label %if.else.i.sbp_parse_wwn.exit.thread_crit_edge, label %if.then25.i

if.else.i.sbp_parse_wwn.exit.thread_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

if.then25.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i.i = icmp eq i8 %10, 0
  %sub.i.i = add i8 %1, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %1, i8 %sub.i.i
  %add.i = add i8 %spec.select.i.i, -87
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then25.i, %if.then17.i
  %nibble.0.i = phi i8 [ %sub.i, %if.then17.i ], [ %add.i, %if.then25.i ]
  %shl.i = shl i64 %guid.0, 4
  %conv33.i = zext i8 %nibble.0.i to i64
  %or.i = or i64 %shl.i, %conv33.i
  %inc.i = add i32 %pos.068.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i, %land.lhs.true.i.for.inc.i_crit_edge
  %guid.1 = phi i64 [ %or.i, %if.end32.i ], [ %guid.0, %land.lhs.true.i.for.inc.i_crit_edge ]
  %pos.1.i = phi i32 [ %inc.i, %if.end32.i ], [ %pos.068.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %cp.065.i, i32 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx.i
  br i1 %exitcond.not.i, label %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.sbp_parse_wwn.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

sbp_parse_wwn.exit.thread:                        ; preds = %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge, %entry.sbp_parse_wwn.exit.thread_crit_edge
  %cp.063.i = phi ptr [ %cp.065.i, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge ], [ %name, %entry.sbp_parse_wwn.exit.thread_crit_edge ], [ %arrayidx.i, %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge ], [ %cp.065.i, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge ]
  %pos.061.i = phi i32 [ %pos.068.i, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge ], [ 0, %entry.sbp_parse_wwn.exit.thread_crit_edge ], [ %pos.1.i, %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge ], [ %pos.068.i, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge ]
  %err.0.i = phi i32 [ 2, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge ], [ 4, %entry.sbp_parse_wwn.exit.thread_crit_edge ], [ 4, %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge ], [ 3, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge ]
  %sub.ptr.lhs.cast34.i = ptrtoint ptr %cp.063.i to i32
  %sub.ptr.rhs.cast35.i = ptrtoint ptr %name to i32
  %sub.ptr.sub36.i = sub i32 %sub.ptr.lhs.cast34.i, %sub.ptr.rhs.cast35.i
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %err.0.i, i32 noundef %sub.ptr.sub36.i, i32 noundef %pos.061.i) #19
  br label %cleanup

sbp_parse_wwn.exit:                               ; preds = %if.then10.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %cp.065.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %name to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp, label %sbp_parse_wwn.exit.cleanup_crit_edge, label %if.end

sbp_parse_wwn.exit.cleanup_crit_edge:             ; preds = %sbp_parse_wwn.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %sbp_parse_wwn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 344) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %guid.0, ptr %call7.i.i, align 8
  %tport_name = getelementptr inbounds %struct.sbp_tport, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tport_name, i32 noundef 32, ptr noundef nonnull @.str.14, i64 noundef %guid.0) #16
  %tport_wwn = getelementptr inbounds %struct.sbp_tport, ptr %call7.i.i, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %sbp_parse_wwn.exit.cleanup_crit_edge, %sbp_parse_wwn.exit.thread
  %retval.0 = phi ptr [ %tport_wwn, %if.end5 ], [ inttoptr (i32 -22 to ptr), %sbp_parse_wwn.exit.thread ], [ inttoptr (i32 -22 to ptr), %sbp_parse_wwn.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp_drop_tport(ptr noundef %wwn) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -40
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sbp_make_tpg(ptr noundef %wwn, ptr noundef %name) #4 align 64 {
entry:
  %tpgt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpgt) #16
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpgt, align 4, !annotation !370
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.15, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp64.not = icmp eq i32 %strncmp, 0
  br i1 %cmp64.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr2, i32 noundef 10, ptr noundef nonnull %tpgt) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tpg8 = getelementptr i8, ptr %wwn, i32 252
  %1 = ptrtoint ptr %tpg8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tpg8, align 4
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #19
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 840) #20
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %tport20 = getelementptr inbounds %struct.sbp_tpg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %tport20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %tport20, align 4
  %5 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tpgt, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %tpg8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %tpg8, align 4
  %enable = getelementptr i8, ptr %wwn, i32 284
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %enable, align 4
  %directory_id = getelementptr i8, ptr %wwn, i32 288
  %10 = ptrtoint ptr %directory_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %directory_id, align 8
  %mgt_orb_timeout = getelementptr i8, ptr %wwn, i32 292
  %11 = ptrtoint ptr %mgt_orb_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %mgt_orb_timeout, align 4
  %max_reconnect_timeout = getelementptr i8, ptr %wwn, i32 296
  %12 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %max_reconnect_timeout, align 8
  %max_logins_per_lun = getelementptr i8, ptr %wwn, i32 300
  %13 = ptrtoint ptr %max_logins_per_lun to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %max_logins_per_lun, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i65 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 144) #20
  %tobool.not.i = icmp eq ptr %call7.i.i65, null
  br i1 %tobool.not.i, label %sbp_management_agent_register.exit.thread, label %do.body.i

sbp_management_agent_register.exit.thread:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %mgt_agt68 = getelementptr i8, ptr %wwn, i32 280
  %15 = ptrtoint ptr %mgt_agt68 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -12 to ptr), ptr %mgt_agt68, align 8
  br label %if.then25

do.body.i:                                        ; preds = %if.end19
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i65, ptr noundef nonnull @.str.18, ptr noundef nonnull @sbp_management_agent_register.__key, i16 noundef signext 3) #16
  %tport3.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 1
  %16 = ptrtoint ptr %tport3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %tport3.i, align 4
  %handler.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 2
  %length.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 8, ptr %length.i, align 8
  %address_callback.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %address_callback.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sbp_mgt_agent_rw, ptr %address_callback.i, align 8
  %callback_data.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i65, ptr %callback_data.i, align 4
  %state.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 3
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state.i, align 8
  %work.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 4
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #16
  %21 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @sbp_management_agent_register.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry10.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry10.i, ptr %entry10.i, align 8
  %prev.i.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry10.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sbp_mgt_agent_process, ptr %func.i, align 8
  %orb_offset.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 5
  %25 = ptrtoint ptr %orb_offset.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %orb_offset.i, align 8
  %request.i = getelementptr inbounds %struct.sbp_management_agent, ptr %call7.i.i65, i32 0, i32 6
  %26 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %request.i, align 8
  %call15.i = call i32 @fw_core_add_address_handler(ptr noundef %handler.i, ptr noundef nonnull @sbp_register_region) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %if.then16.i, label %do.body.i.sbp_management_agent_register.exit_crit_edge

do.body.i.sbp_management_agent_register.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_management_agent_register.exit

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i65) #16
  %27 = inttoptr i32 %call15.i to ptr
  br label %sbp_management_agent_register.exit

sbp_management_agent_register.exit:               ; preds = %if.then16.i, %do.body.i.sbp_management_agent_register.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.then16.i ], [ %call7.i.i65, %do.body.i.sbp_management_agent_register.exit_crit_edge ]
  %mgt_agt = getelementptr i8, ptr %wwn, i32 280
  %28 = ptrtoint ptr %mgt_agt to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i, ptr %mgt_agt, align 8
  %cmp.i66 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %sbp_management_agent_register.exit.if.then25_crit_edge, label %if.end28

sbp_management_agent_register.exit.if.then25_crit_edge: ; preds = %sbp_management_agent_register.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.then25:                                        ; preds = %sbp_management_agent_register.exit.if.then25_crit_edge, %sbp_management_agent_register.exit.thread
  %retval.0.i70 = phi ptr [ inttoptr (i32 -12 to ptr), %sbp_management_agent_register.exit.thread ], [ %retval.0.i, %sbp_management_agent_register.exit.if.then25_crit_edge ]
  %29 = ptrtoint ptr %retval.0.i70 to i32
  br label %out_free_tpg

if.end28:                                         ; preds = %sbp_management_agent_register.exit
  %se_tpg = getelementptr inbounds %struct.sbp_tpg, ptr %call7.i.i, i32 0, i32 2
  %call29 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %se_tpg, i32 noundef 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %out_unreg_mgt_agt, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out_unreg_mgt_agt:                                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %mgt_agt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mgt_agt, align 8
  call fastcc void @sbp_management_agent_unregister(ptr noundef %31)
  br label %out_free_tpg

out_free_tpg:                                     ; preds = %out_unreg_mgt_agt, %if.then25
  %ret.0 = phi i32 [ %29, %if.then25 ], [ %call29, %out_unreg_mgt_agt ]
  %32 = ptrtoint ptr %tpg8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tpg8, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  %33 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_free_tpg, %if.end28.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %do.end ], [ %33, %out_free_tpg ], [ %se_tpg, %if.end28.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpgt) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_enable_tpg(ptr noundef %se_tpg, i1 noundef zeroext %enable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @sbp_count_se_tpg_luns(ptr noundef %se_tpg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %session_lock = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #16
  %tpg_sess_list = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 9
  %2 = ptrtoint ptr %tpg_sess_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tpg_sess_list, align 4
  %cmp.i.not = icmp eq ptr %3, %tpg_sess_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #16
  br i1 %cmp.i.not, label %if.else.if.end12_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %conv = zext i1 %enable to i32
  %enable14 = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %enable14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %enable14, align 4
  %call15 = tail call fastcc i32 @sbp_update_unit_directory(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.cleanup.sink.split_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.163.sink = phi ptr [ @.str.160, %if.then.cleanup.sink.split_crit_edge ], [ @.str.163, %if.end12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.then.cleanup.sink.split_crit_edge ], [ %call15, %if.end12.cleanup.sink.split_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.163.sink) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp_drop_tpg(ptr noundef %se_tpg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -8
  %tport1 = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %call = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #16
  %mgt_agt = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mgt_agt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgt_agt, align 8
  %handler.i = getelementptr inbounds %struct.sbp_management_agent, ptr %3, i32 0, i32 2
  tail call void @fw_core_remove_address_handler(ptr noundef %handler.i) #16
  %work.i = getelementptr inbounds %struct.sbp_management_agent, ptr %3, i32 0, i32 4
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #16
  tail call void @kfree(ptr noundef %3) #16
  %tpg2 = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tpg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tpg2, align 4
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_post_link_lun(ptr nocapture noundef readonly %se_tpg, ptr nocapture noundef readnone %se_lun) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport, align 4
  %call = tail call fastcc i32 @sbp_update_unit_directory(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp_pre_unlink_lun(ptr noundef %se_tpg, ptr nocapture noundef readnone %se_lun) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %call = tail call fastcc i32 @sbp_count_se_tpg_luns(ptr noundef %se_tpg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %enable = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @sbp_update_unit_directory(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #19
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_init_nodeacl(ptr nocapture noundef readnone %se_nacl, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %name, i32 31
  %cmp64.i = icmp ugt ptr %arrayidx.i, %name
  br i1 %cmp64.i, label %entry.for.body.i_crit_edge, label %entry.sbp_parse_wwn.exit.thread_crit_edge

entry.sbp_parse_wwn.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pos.068.i = phi i32 [ %pos.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %cp.065.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %name, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %cp.065.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.065.i, align 1
  %conv.i = zext i8 %1 to i32
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %1, label %if.end15.i [
    i8 10, label %land.lhs.true.i
    i8 0, label %if.then10.i
  ]

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx3.i = getelementptr i8, ptr %cp.065.i, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5.i = icmp eq i8 %4, 0
  br i1 %cmp5.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %pos.068.i)
  %cmp11.not.i = icmp eq i32 %pos.068.i, 16
  br i1 %cmp11.not.i, label %sbp_parse_wwn.exit, label %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge

if.then10.i.sbp_parse_wwn.exit.thread_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

if.end15.i:                                       ; preds = %for.body.i
  %5 = add nsw i32 %conv.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %if.end15.i.if.else.i_crit_edge, label %if.end15.i.if.end32.i_crit_edge

if.end15.i.if.end32.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.end15.i.if.else.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.else.i:                                        ; preds = %if.end15.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %arrayidx21.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx21.i, align 1
  %9 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp23.not.i = icmp eq i8 %9, 0
  br i1 %cmp23.not.i, label %if.else.i.sbp_parse_wwn.exit.thread_crit_edge, label %if.else.i.if.end32.i_crit_edge

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.else.i.sbp_parse_wwn.exit.thread_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

if.end32.i:                                       ; preds = %if.else.i.if.end32.i_crit_edge, %if.end15.i.if.end32.i_crit_edge
  %inc.i = add i32 %pos.068.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i, %land.lhs.true.i.for.inc.i_crit_edge
  %pos.1.i = phi i32 [ %inc.i, %if.end32.i ], [ %pos.068.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %cp.065.i, i32 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx.i
  br i1 %exitcond.not.i, label %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.sbp_parse_wwn.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_parse_wwn.exit.thread

sbp_parse_wwn.exit.thread:                        ; preds = %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge, %entry.sbp_parse_wwn.exit.thread_crit_edge
  %cp.063.i = phi ptr [ %cp.065.i, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge ], [ %name, %entry.sbp_parse_wwn.exit.thread_crit_edge ], [ %arrayidx.i, %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge ], [ %cp.065.i, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge ]
  %pos.061.i = phi i32 [ %pos.068.i, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge ], [ 0, %entry.sbp_parse_wwn.exit.thread_crit_edge ], [ %pos.1.i, %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge ], [ %pos.068.i, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge ]
  %err.0.i = phi i32 [ 2, %if.then10.i.sbp_parse_wwn.exit.thread_crit_edge ], [ 4, %entry.sbp_parse_wwn.exit.thread_crit_edge ], [ 4, %for.inc.i.sbp_parse_wwn.exit.thread_crit_edge ], [ 3, %if.else.i.sbp_parse_wwn.exit.thread_crit_edge ]
  %sub.ptr.lhs.cast34.i = ptrtoint ptr %cp.063.i to i32
  %sub.ptr.rhs.cast35.i = ptrtoint ptr %name to i32
  %sub.ptr.sub36.i = sub i32 %sub.ptr.lhs.cast34.i, %sub.ptr.rhs.cast35.i
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %err.0.i, i32 noundef %sub.ptr.sub36.i, i32 noundef %pos.061.i) #19
  br label %10

sbp_parse_wwn.exit:                               ; preds = %if.then10.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %cp.065.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %name to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i, 0
  br i1 %cmp, label %sbp_parse_wwn.exit._crit_edge, label %sbp_parse_wwn.exit._crit_edge15

sbp_parse_wwn.exit._crit_edge15:                  ; preds = %sbp_parse_wwn.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %11

sbp_parse_wwn.exit._crit_edge:                    ; preds = %sbp_parse_wwn.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %10

10:                                               ; preds = %sbp_parse_wwn.exit._crit_edge, %sbp_parse_wwn.exit.thread
  br label %11

11:                                               ; preds = %10, %sbp_parse_wwn.exit._crit_edge15
  %12 = phi i32 [ -22, %10 ], [ 0, %sbp_parse_wwn.exit._crit_edge15 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_rw_data(ptr nocapture noundef readonly %req) unnamed_addr #4 align 64 {
entry:
  %iter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %iter) #16
  %4 = call ptr @memset(ptr %iter, i32 255, i32 44)
  %data_direction = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 6
  %5 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  %. = select i1 %cmp, i32 4, i32 2
  %.138 = select i1 %cmp, i32 1, i32 5
  %misc = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %misc, align 8
  %shr = lshr i32 %8, 20
  %and = and i32 %shr, 15
  %shl = shl nuw nsw i32 4, %and
  %shr4 = lshr i32 %8, 24
  %and5 = and i32 %shr4, 7
  %9 = and i32 %8, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #19
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #16
  %card12 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %card12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card12, align 4
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %11, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !371
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !372

if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end11
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !373

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fw_card_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %fw_card_get.exit

fw_card_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge
  %node_id14 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %node_id14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_id14, align 8
  %generation15 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %generation15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %generation15, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #16
  %pg_tbl = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 6
  %18 = ptrtoint ptr %pg_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pg_tbl, align 8
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.else24, label %if.then18

if.then18:                                        ; preds = %fw_card_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %misc, align 8
  %and23 = and i32 %21, 65535
  br label %if.end28

if.else24:                                        ; preds = %fw_card_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %data_descriptor = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %data_descriptor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_descriptor, align 4
  %and.i = and i32 %23, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %low.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 1, i32 1
  %24 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %low.i, align 4
  %and1.i = and i32 %25, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  %data_length = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 12
  %26 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_length, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then18
  %num_pte.0 = phi i32 [ %and23, %if.then18 ], [ 0, %if.else24 ]
  %length.0 = phi i32 [ 0, %if.then18 ], [ %27, %if.else24 ]
  %offset.0 = phi i64 [ 0, %if.then18 ], [ %or.i, %if.else24 ]
  %t_data_sg = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 39
  %28 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 41
  %30 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t_data_nents, align 4
  call void @sg_miter_start(ptr noundef nonnull %iter, ptr noundef %29, i32 noundef %31, i32 noundef %.) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0)
  %tobool31.not142 = icmp eq i32 %length.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pte.0)
  %tobool32.not143 = icmp eq i32 %num_pte.0, 0
  %or.cond144 = select i1 %tobool31.not142, i1 %tobool32.not143, i1 false
  br i1 %or.cond144, label %if.end28.while.end_crit_edge, label %while.body.lr.ph

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end28
  %length43 = getelementptr inbounds %struct.sg_mapping_iter, ptr %iter, i32 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %iter, i32 0, i32 1
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %iter, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %tobool31.not149 = phi i1 [ %tobool31.not142, %while.body.lr.ph ], [ %tobool31.not, %if.end55.while.body_crit_edge ]
  %offset.1148 = phi i64 [ %offset.0, %while.body.lr.ph ], [ %add, %if.end55.while.body_crit_edge ]
  %pte.1147 = phi ptr [ %19, %while.body.lr.ph ], [ %pte.2, %if.end55.while.body_crit_edge ]
  %length.1146 = phi i32 [ %length.0, %while.body.lr.ph ], [ %sub, %if.end55.while.body_crit_edge ]
  %num_pte.1145 = phi i32 [ %num_pte.0, %while.body.lr.ph ], [ %num_pte.2, %if.end55.while.body_crit_edge ]
  br i1 %tobool31.not149, label %if.then34, label %while.body.if.end38_crit_edge

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %segment_base_hi = getelementptr inbounds %struct.sbp_page_table_entry, ptr %pte.1147, i32 0, i32 1
  %32 = ptrtoint ptr %segment_base_hi to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %segment_base_hi, align 2
  %conv = zext i16 %33 to i64
  %shl35 = shl nuw nsw i64 %conv, 32
  %segment_base_lo = getelementptr inbounds %struct.sbp_page_table_entry, ptr %pte.1147, i32 0, i32 2
  %34 = ptrtoint ptr %segment_base_lo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %segment_base_lo, align 4
  %conv36 = zext i32 %35 to i64
  %or = or i64 %shl35, %conv36
  %36 = ptrtoint ptr %pte.1147 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pte.1147, align 4
  %conv37 = zext i16 %37 to i32
  %incdec.ptr = getelementptr %struct.sbp_page_table_entry, ptr %pte.1147, i32 1
  %dec = add i32 %num_pte.1145, -1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %while.body.if.end38_crit_edge
  %num_pte.2 = phi i32 [ %num_pte.1145, %while.body.if.end38_crit_edge ], [ %dec, %if.then34 ]
  %length.2 = phi i32 [ %length.1146, %while.body.if.end38_crit_edge ], [ %conv37, %if.then34 ]
  %pte.2 = phi ptr [ %pte.1147, %while.body.if.end38_crit_edge ], [ %incdec.ptr, %if.then34 ]
  %offset.2 = phi i64 [ %offset.1148, %while.body.if.end38_crit_edge ], [ %or, %if.then34 ]
  %call39 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %iter) #16
  %38 = call i32 @llvm.smin.i32(i32 %length.2, i32 %shl)
  %39 = ptrtoint ptr %length43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length43, align 4
  %41 = call i32 @llvm.smin.i32(i32 %38, i32 %40)
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr, align 4
  %call51 = call fastcc i32 @sbp_run_transaction(ptr noundef %11, i32 noundef %.138, i32 noundef %15, i32 noundef %17, i32 noundef %and5, i64 noundef %offset.2, ptr noundef %43, i32 noundef %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end55, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end55:                                         ; preds = %if.end38
  %sub = sub i32 %length.2, %41
  %conv56 = sext i32 %41 to i64
  %add = add i64 %offset.2, %conv56
  %44 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %consumed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool31.not = icmp eq i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pte.2)
  %tobool32.not = icmp eq i32 %num_pte.2, 0
  %or.cond = select i1 %tobool31.not, i1 %tobool32.not, i1 false
  br i1 %or.cond, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end55.while.end_crit_edge, %if.end38.while.end_crit_edge, %if.end28.while.end_crit_edge
  %length.3 = phi i32 [ 0, %if.end28.while.end_crit_edge ], [ 0, %if.end55.while.end_crit_edge ], [ %length.2, %if.end38.while.end_crit_edge ]
  %rcode.1 = phi i32 [ 0, %if.end28.while.end_crit_edge ], [ 0, %if.end55.while.end_crit_edge ], [ %call51, %if.end38.while.end_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %iter) #16
  %call.i.i.i.i.i.i.i140 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !374
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !375
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i141 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i141, label %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !373

if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #16
  br label %fw_card_put.exit

if.then.i.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  call void @fw_card_release(ptr noundef %kref.i) #16
  br label %fw_card_put.exit

fw_card_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode.1)
  %cmp57 = icmp eq i32 %rcode.1, 0
  br i1 %cmp57, label %if.then59, label %fw_card_put.exit.cleanup_crit_edge

fw_card_put.exit.cleanup_crit_edge:               ; preds = %fw_card_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then59:                                        ; preds = %fw_card_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.3)
  %cmp60.not = icmp eq i32 %length.3, 0
  br i1 %cmp60.not, label %if.then59.cleanup_crit_edge, label %do.end73, !prof !373

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end73:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1321, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.then59.cleanup_crit_edge, %fw_card_put.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end73 ], [ 0, %if.then59.cleanup_crit_edge ], [ -5, %fw_card_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %iter) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_run_transaction(ptr noundef %card, i32 noundef %tcode, i32 noundef %destination_id, i32 noundef %generation, i32 noundef %speed, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_run_transaction(ptr noundef %card, i32 noundef %tcode, i32 noundef %destination_id, i32 noundef %generation, i32 noundef %speed, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) #16
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 6, label %entry.cleanup_crit_edge12
    i32 7, label %entry.cleanup_crit_edge13
    i32 19, label %entry.cleanup_crit_edge14
  ]

entry.cleanup_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #16
  %call.1 = tail call i32 @fw_run_transaction(ptr noundef %card, i32 noundef %tcode, i32 noundef %destination_id, i32 noundef %generation, i32 noundef %speed, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) #16
  %1 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call.1, label %sw.default.1 [
    i32 0, label %sw.default.cleanup_crit_edge
    i32 6, label %sw.default.cleanup_crit_edge15
    i32 7, label %sw.default.cleanup_crit_edge16
    i32 19, label %sw.default.cleanup_crit_edge17
  ]

sw.default.cleanup_crit_edge17:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.cleanup_crit_edge16:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.cleanup_crit_edge15:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.1:                                     ; preds = %sw.default
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #16
  %call.2 = tail call i32 @fw_run_transaction(ptr noundef %card, i32 noundef %tcode, i32 noundef %destination_id, i32 noundef %generation, i32 noundef %speed, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) #16
  %2 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %call.2, label %sw.default.2 [
    i32 0, label %sw.default.1.cleanup_crit_edge
    i32 6, label %sw.default.1.cleanup_crit_edge18
    i32 7, label %sw.default.1.cleanup_crit_edge19
    i32 19, label %sw.default.1.cleanup_crit_edge20
  ]

sw.default.1.cleanup_crit_edge20:                 ; preds = %sw.default.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.1.cleanup_crit_edge19:                 ; preds = %sw.default.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.1.cleanup_crit_edge18:                 ; preds = %sw.default.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.1.cleanup_crit_edge:                   ; preds = %sw.default.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.2:                                     ; preds = %sw.default.1
  tail call void @usleep_range_state(i32 noundef 45, i32 noundef 90, i32 noundef 2) #16
  %call.3 = tail call i32 @fw_run_transaction(ptr noundef %card, i32 noundef %tcode, i32 noundef %destination_id, i32 noundef %generation, i32 noundef %speed, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) #16
  %3 = zext i32 %call.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %call.3, label %sw.default.3 [
    i32 0, label %sw.default.2.cleanup_crit_edge
    i32 6, label %sw.default.2.cleanup_crit_edge21
    i32 7, label %sw.default.2.cleanup_crit_edge22
    i32 19, label %sw.default.2.cleanup_crit_edge23
  ]

sw.default.2.cleanup_crit_edge23:                 ; preds = %sw.default.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.2.cleanup_crit_edge22:                 ; preds = %sw.default.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.2.cleanup_crit_edge21:                 ; preds = %sw.default.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.2.cleanup_crit_edge:                   ; preds = %sw.default.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.3:                                     ; preds = %sw.default.2
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 160, i32 noundef 2) #16
  %call.4 = tail call i32 @fw_run_transaction(ptr noundef %card, i32 noundef %tcode, i32 noundef %destination_id, i32 noundef %generation, i32 noundef %speed, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) #16
  %4 = zext i32 %call.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %call.4, label %sw.default.4 [
    i32 0, label %sw.default.3.cleanup_crit_edge
    i32 6, label %sw.default.3.cleanup_crit_edge24
    i32 7, label %sw.default.3.cleanup_crit_edge25
    i32 19, label %sw.default.3.cleanup_crit_edge26
  ]

sw.default.3.cleanup_crit_edge26:                 ; preds = %sw.default.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.3.cleanup_crit_edge25:                 ; preds = %sw.default.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.3.cleanup_crit_edge24:                 ; preds = %sw.default.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.3.cleanup_crit_edge:                   ; preds = %sw.default.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default.4:                                     ; preds = %sw.default.3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @usleep_range_state(i32 noundef 125, i32 noundef 250, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default.4, %sw.default.3.cleanup_crit_edge, %sw.default.3.cleanup_crit_edge24, %sw.default.3.cleanup_crit_edge25, %sw.default.3.cleanup_crit_edge26, %sw.default.2.cleanup_crit_edge, %sw.default.2.cleanup_crit_edge21, %sw.default.2.cleanup_crit_edge22, %sw.default.2.cleanup_crit_edge23, %sw.default.1.cleanup_crit_edge, %sw.default.1.cleanup_crit_edge18, %sw.default.1.cleanup_crit_edge19, %sw.default.1.cleanup_crit_edge20, %sw.default.cleanup_crit_edge, %sw.default.cleanup_crit_edge15, %sw.default.cleanup_crit_edge16, %sw.default.cleanup_crit_edge17, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13, %entry.cleanup_crit_edge14
  %call.lcssa = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge12 ], [ %call, %entry.cleanup_crit_edge13 ], [ %call, %entry.cleanup_crit_edge14 ], [ %call.1, %sw.default.cleanup_crit_edge ], [ %call.1, %sw.default.cleanup_crit_edge15 ], [ %call.1, %sw.default.cleanup_crit_edge16 ], [ %call.1, %sw.default.cleanup_crit_edge17 ], [ %call.2, %sw.default.1.cleanup_crit_edge ], [ %call.2, %sw.default.1.cleanup_crit_edge18 ], [ %call.2, %sw.default.1.cleanup_crit_edge19 ], [ %call.2, %sw.default.1.cleanup_crit_edge20 ], [ %call.3, %sw.default.2.cleanup_crit_edge ], [ %call.3, %sw.default.2.cleanup_crit_edge21 ], [ %call.3, %sw.default.2.cleanup_crit_edge22 ], [ %call.3, %sw.default.2.cleanup_crit_edge23 ], [ %call.4, %sw.default.3.cleanup_crit_edge ], [ %call.4, %sw.default.3.cleanup_crit_edge24 ], [ %call.4, %sw.default.3.cleanup_crit_edge25 ], [ %call.4, %sw.default.3.cleanup_crit_edge26 ], [ %call.4, %sw.default.4 ]
  ret i32 %call.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_card_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_run_request_transaction(ptr nocapture noundef readonly %req, i32 noundef %tcode, i64 noundef %offset, ptr noundef %payload, i32 noundef %length) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #16
  %card3 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card3, align 4
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !371
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !372

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !373

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fw_card_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %fw_card_get.exit

fw_card_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge
  %node_id4 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %node_id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id4, align 8
  %generation5 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %generation5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation5, align 8
  %speed6 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %speed6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed6, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #16
  %call8 = tail call fastcc i32 @sbp_run_transaction(ptr noundef %5, i32 noundef %tcode, i32 noundef %9, i32 noundef %11, i32 noundef %13, i64 noundef %offset, ptr noundef %payload, i32 noundef %length)
  %call.i.i.i.i.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !375
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fw_card_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i17 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i17, label %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !373

if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #16
  br label %fw_card_put.exit

if.then.i.i:                                      ; preds = %fw_card_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  tail call void @fw_card_release(ptr noundef %kref.i) #16
  br label %fw_card_put.exit

fw_card_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_send_sense(ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_sense_length = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %scsi_sense_length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %sense_buf.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 8
  %data.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %1)
  %cmp.i = icmp ult i16 %1, 18
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end.i_crit_edge, !prof !372

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1361, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %2 = ptrtoint ptr %sense_buf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sense_buf.i, align 1
  %conv23.i = zext i8 %3 to i32
  %and.i = and i32 %conv23.i, 127
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %and.i, label %do.end30.i [
    i32 112, label %if.end.i.sw.epilog.i_crit_edge
    i32 113, label %sw.bb25.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv23.i) #19
  br label %if.end

sw.epilog.i:                                      ; preds = %sw.bb25.i, %if.end.i.sw.epilog.i_crit_edge
  %storemerge.i = phi i8 [ 64, %sw.bb25.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ]
  %scsi_status.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scsi_status.i, align 4
  %7 = and i8 %6, 63
  %or40125.i = or i8 %7, %storemerge.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or40125.i, ptr %data.i, align 1
  %9 = and i8 %3, -128
  %arrayidx45.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx45.i, align 1
  %and47.i = lshr i8 %11, 1
  %12 = and i8 %and47.i, 112
  %and51.i = and i8 %11, 15
  %or48.i = or i8 %and51.i, %9
  %or52.i = or i8 %or48.i, %12
  %arrayidx54.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or52.i, ptr %arrayidx54.i, align 1
  %arrayidx55.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx55.i, align 1
  %arrayidx56.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx56.i, align 1
  %arrayidx57.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx57.i, align 1
  %arrayidx58.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 4
  %18 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx58.i, align 1
  %arrayidx59.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx59.i, align 1
  %arrayidx60.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 5
  %21 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx60.i, align 1
  %arrayidx61.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx61.i, align 1
  %arrayidx62.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 6
  %24 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx62.i, align 1
  %arrayidx63.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx63.i, align 1
  %arrayidx64.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 7
  %27 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx64.i, align 1
  %arrayidx65.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 8
  %28 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx65.i, align 1
  %arrayidx66.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 8
  %30 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx66.i, align 1
  %arrayidx67.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 9
  %31 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx67.i, align 1
  %arrayidx68.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 9
  %33 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx68.i, align 1
  %arrayidx69.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 10
  %34 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx69.i, align 1
  %arrayidx70.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 10
  %36 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx70.i, align 1
  %arrayidx71.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 11
  %37 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx71.i, align 1
  %arrayidx72.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 11
  %39 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx72.i, align 1
  %arrayidx73.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 14
  %40 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx73.i, align 1
  %arrayidx74.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 12
  %42 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx74.i, align 1
  %arrayidx75.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 15
  %43 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx75.i, align 1
  %arrayidx76.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 13
  %45 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx76.i, align 1
  %arrayidx77.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 16
  %46 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx77.i, align 1
  %arrayidx78.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 14
  %48 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx78.i, align 1
  %arrayidx79.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 8, i32 17
  %49 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx79.i, align 1
  %arrayidx80.i = getelementptr %struct.sbp_target_request, ptr %req, i32 0, i32 3, i32 2, i32 15
  %51 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx80.i, align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %do.end30.i, %entry.if.end_crit_edge
  %.sink7 = phi i32 [ 83886080, %sw.epilog.i ], [ 17563648, %do.end30.i ], [ 16777216, %entry.if.end_crit_edge ]
  %status = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 3
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 8
  %or = or i32 %53, %.sink7
  store i32 %or, ptr %status, align 8
  %54 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req, align 8
  %status.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 3
  %56 = lshr i32 %or, 22
  %add.i = and i32 %56, 28
  %mul.i = add nuw nsw i32 %add.i, 4
  %status_fifo_addr.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %55, i32 0, i32 3
  %57 = ptrtoint ptr %status_fifo_addr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %status_fifo_addr.i, align 8
  %call.i6 = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %req, i32 noundef 1, i64 noundef %58, ptr noundef %status.i, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp.not.i = icmp eq i32 %call.i6, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_send_sense, %if.then7.i)) #16
          to label %sbp_send_status.exit [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i6) #16
  br label %sbp_send_status.exit

do.body9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_send_sense, %if.then21.i)) #16
          to label %sbp_send_status.exit [label %if.then21.i], !srcloc !369

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  %orb_pointer.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 1
  %59 = ptrtoint ptr %orb_pointer.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %orb_pointer.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %60) #16
  br label %sbp_send_status.exit

sbp_send_status.exit:                             ; preds = %if.then21.i, %do.body9.i, %if.then7.i, %do.body.i
  %ret.0.i = phi i32 [ 0, %if.then21.i ], [ -5, %if.then7.i ], [ -5, %do.body.i ], [ 0, %do.body9.i ]
  %se_cmd.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5
  %call25.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i) #16
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp_management_agent_unregister(ptr noundef %agent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.sbp_management_agent, ptr %agent, i32 0, i32 2
  tail call void @fw_core_remove_address_handler(ptr noundef %handler) #16
  %work = getelementptr inbounds %struct.sbp_management_agent, ptr %agent, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #16
  tail call void @kfree(ptr noundef %agent) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp_mgt_agent_rw(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef %data, i32 noundef %length, ptr noundef %callback_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 1
  %0 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport, align 4
  %enable = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %handler = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 2
  %4 = ptrtoint ptr %handler to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %handler, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %offset)
  %cmp.not = icmp eq i64 %5, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp2.not = icmp eq i32 %length, 8
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end4:                                          ; preds = %if.end
  %6 = zext i32 %tcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %tcode, label %if.end4.out_crit_edge [
    i32 1, label %if.then6
    i32 5, label %if.then25
  ]

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then6:                                         ; preds = %if.end4
  tail call void @_raw_spin_lock_bh(ptr noundef %callback_data) #16
  %state = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  store i32 1, ptr %state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %callback_data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp9 = icmp eq i32 %8, 1
  br i1 %cmp9, label %do.end, label %if.end11

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #19
  br label %out

if.end11:                                         ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 80) #20
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end15:                                         ; preds = %if.end11
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !371
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !372

if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end15
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !373

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fw_card_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %fw_card_get.exit

fw_card_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge
  %card17 = getelementptr inbounds %struct.sbp_management_request, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %card17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %card, ptr %card17, align 8
  %generation18 = getelementptr inbounds %struct.sbp_management_request, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %generation18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %generation, ptr %generation18, align 4
  %node_addr = getelementptr inbounds %struct.sbp_management_request, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %source, ptr %node_addr, align 8
  %call19 = tail call i32 @fw_get_request_speed(ptr noundef %request) #16
  %speed = getelementptr inbounds %struct.sbp_management_request, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call19, ptr %speed, align 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %and.i = and i32 %17, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %low.i = getelementptr inbounds %struct.sbp2_pointer, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %low.i, align 4
  %and1.i = and i32 %19, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  %orb_offset = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 5
  %20 = ptrtoint ptr %orb_offset to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %or.i, ptr %orb_offset, align 8
  %request21 = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 6
  %21 = ptrtoint ptr %request21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %request21, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %22 = load ptr, ptr @system_unbound_wq, align 4
  %work = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work) #16
  br label %out

if.then25:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %orb_offset26 = getelementptr inbounds %struct.sbp_management_agent, ptr %callback_data, i32 0, i32 5
  %23 = ptrtoint ptr %orb_offset26 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %orb_offset26, align 8
  %shr.i = lshr i64 %24, 32
  %conv.i48 = trunc i64 %shr.i to i32
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i48, ptr %data, align 4
  %conv1.i = trunc i64 %24 to i32
  %low.i49 = getelementptr inbounds %struct.sbp2_pointer, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %low.i49 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv1.i, ptr %low.i49, align 4
  br label %out

out:                                              ; preds = %if.then25, %fw_card_get.exit, %if.end11.out_crit_edge, %do.end, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rcode.1 = phi i32 [ 7, %if.end.out_crit_edge ], [ 0, %if.then25 ], [ 7, %entry.out_crit_edge ], [ 4, %do.end ], [ 0, %fw_card_get.exit ], [ 4, %if.end11.out_crit_edge ], [ 6, %if.end4.out_crit_edge ]
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef %rcode.1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp_mgt_agent_process(ptr noundef %work) #4 align 64 {
entry:
  %high.i.i = alloca i32, align 4
  %low.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %request = getelementptr i8, ptr %work, i32 52
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 8
  %card = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %node_addr = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_addr, align 4
  %generation = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generation, align 4
  %speed = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 4
  %orb_offset = getelementptr i8, ptr %work, i32 44
  %10 = ptrtoint ptr %orb_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %orb_offset, align 8
  %call = tail call fastcc i32 @sbp_run_transaction(ptr noundef %3, i32 noundef 5, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11, ptr noundef %1, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_mgt_agent_process.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_mgt_agent_process, %if.then5)) #16
          to label %out [label %if.then5], !srcloc !369

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_mgt_agent_process.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.25, i32 noundef %call) #16
  br label %out

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_mgt_agent_process.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_mgt_agent_process, %if.then19)) #16
          to label %do.end30 [label %if.then19], !srcloc !369

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %and.i = and i32 %13, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %low.i = getelementptr inbounds %struct.sbp2_pointer, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %low.i, align 4
  %and1.i = and i32 %15, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  %ptr2 = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ptr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr2, align 4
  %and.i201 = and i32 %17, 65535
  %conv.i202 = zext i32 %and.i201 to i64
  %shl.i203 = shl nuw nsw i64 %conv.i202, 32
  %low.i204 = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %low.i204 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %low.i204, align 4
  %and1.i205 = and i32 %19, -4
  %conv2.i206 = zext i32 %and1.i205 to i64
  %or.i207 = or i64 %shl.i203, %conv2.i206
  %misc = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %misc, align 4
  %length = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %status_fifo = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %status_fifo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status_fifo, align 4
  %and.i208 = and i32 %25, 65535
  %conv.i209 = zext i32 %and.i208 to i64
  %shl.i210 = shl nuw nsw i64 %conv.i209, 32
  %low.i211 = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %low.i211 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %low.i211, align 4
  %and1.i212 = and i32 %27, -4
  %conv2.i213 = zext i32 %and1.i212 to i64
  %or.i214 = or i64 %shl.i210, %conv2.i213
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_mgt_agent_process.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.27, i64 noundef %or.i, i64 noundef %or.i207, i32 noundef %21, i32 noundef %23, i64 noundef %or.i214) #16
  br label %do.end30

do.end30:                                         ; preds = %if.then19, %do.body7
  %misc32 = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %misc32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %misc32, align 4
  %30 = and i32 %29, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %30)
  %31 = icmp eq i32 %30, -2147483648
  br i1 %31, label %if.end45, label %do.end42

do.end42:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #18
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #19
  br label %out

if.end45:                                         ; preds = %do.end30
  %shr48 = lshr i32 %29, 16
  %and49 = and i32 %shr48, 15
  %32 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %and49, label %do.end94 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb50
    i32 3, label %sw.bb51
    i32 4, label %do.end55
    i32 7, label %sw.bb59
    i32 11, label %do.end63
    i32 12, label %do.end71
    i32 14, label %do.end79
    i32 15, label %do.end87
  ]

sw.bb:                                            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @sbp_management_request_login(ptr noundef %add.ptr, ptr noundef %1)
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #19
  %status.i = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65536, ptr %status.i, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end45
  %tport1.i = getelementptr i8, ptr %work, i32 -40
  %34 = ptrtoint ptr %tport1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tport1.i, align 4
  %tpg2.i = getelementptr inbounds %struct.sbp_tport, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %tpg2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tpg2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %high.i.i) #16
  %38 = ptrtoint ptr %high.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %high.i.i, align 4, !annotation !370
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low.i.i) #16
  %39 = ptrtoint ptr %low.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %low.i.i, align 4, !annotation !370
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %42 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %node_addr, align 4
  %44 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %generation, align 4
  %46 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %speed, align 4
  %call.i.i = call fastcc i32 @sbp_run_transaction(ptr noundef %41, i32 noundef 4, i32 noundef %43, i32 noundef %45, i32 noundef %47, i64 noundef 281474708276236, ptr noundef nonnull %high.i.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb51.do.end.i_crit_edge

sw.bb51.do.end.i_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.i.i:                                       ; preds = %sw.bb51
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  %50 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %node_addr, align 4
  %52 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %generation, align 4
  %54 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %speed, align 4
  %call5.i.i = call fastcc i32 @sbp_run_transaction(ptr noundef %49, i32 noundef 4, i32 noundef %51, i32 noundef %53, i32 noundef %55, i64 noundef 281474708276240, ptr noundef nonnull %low.i.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %cmp6.not.i.i, label %do.end7.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %sw.bb51.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call5.i.i, %if.end.i.i.do.end.i_crit_edge ], [ %call.i.i, %sw.bb51.do.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i.i) #16
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.ph.i) #19
  br label %sbp_management_request_reconnect.exit

do.end7.i:                                        ; preds = %if.end.i.i
  %56 = ptrtoint ptr %high.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %high.i.i, align 4
  %conv.i.i = zext i32 %57 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %58 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %low.i.i, align 4
  %conv9.i.i = zext i32 %59 to i64
  %or.i.i = or i64 %shl.i.i, %conv9.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i.i) #16
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i64 noundef %or.i.i) #19
  %60 = ptrtoint ptr %misc32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %misc32, align 4
  %session_lock.i.i = getelementptr inbounds %struct.sbp_tpg, ptr %37, i32 0, i32 2, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %session_lock.i.i) #16
  %tpg_sess_list.i.i = getelementptr inbounds %struct.sbp_tpg, ptr %37, i32 0, i32 2, i32 9
  %62 = ptrtoint ptr %tpg_sess_list.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn47.i.i = load ptr, ptr %tpg_sess_list.i.i, align 4
  %cmp.not48.i.i = icmp eq ptr %.pn47.i.i, %tpg_sess_list.i.i
  br i1 %cmp.not48.i.i, label %sbp_login_find_by_id.exit.thread.i, label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %do.end7.i
  %63 = trunc i32 %61 to i16
  br label %for.body.i.i

sbp_login_find_by_id.exit.thread.i:               ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i.i) #16
  br label %do.end14.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %.pn50.i.i = phi ptr [ %.pn.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ %.pn47.i.i, %for.body.i.preheader.i ]
  %found.049.i.i = phi ptr [ %found.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ null, %for.body.i.preheader.i ]
  %fabric_sess_ptr.i.i = getelementptr i8, ptr %.pn50.i.i, i32 -12
  %64 = ptrtoint ptr %fabric_sess_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fabric_sess_ptr.i.i, align 8
  call void @_raw_spin_lock_bh(ptr noundef %65) #16
  %login_list.i.i = getelementptr inbounds %struct.sbp_session, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %login_list.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn4243.i.i = load ptr, ptr %login_list.i.i, align 4
  %cmp10.not44.i.i = icmp eq ptr %.pn4243.i.i, %login_list.i.i
  br i1 %cmp10.not44.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body12.i.i_crit_edge

for.body.i.i.for.body12.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body12.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body12.i.i:                                   ; preds = %for.body12.i.i.for.body12.i.i_crit_edge, %for.body.i.i.for.body12.i.i_crit_edge
  %.pn4246.i.i = phi ptr [ %.pn42.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ %.pn4243.i.i, %for.body.i.i.for.body12.i.i_crit_edge ]
  %found.145.i.i = phi ptr [ %spec.select.i.i, %for.body12.i.i.for.body12.i.i_crit_edge ], [ %found.049.i.i, %for.body.i.i.for.body12.i.i_crit_edge ]
  %login.0.i.i = getelementptr i8, ptr %.pn4246.i.i, i32 -4
  %login_id13.i.i = getelementptr i8, ptr %.pn4246.i.i, i32 24
  %67 = ptrtoint ptr %login_id13.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %login_id13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %63)
  %cmp14.i.i = icmp eq i16 %68, %63
  %spec.select.i.i = select i1 %cmp14.i.i, ptr %login.0.i.i, ptr %found.145.i.i
  %69 = ptrtoint ptr %.pn4246.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn42.i.i = load ptr, ptr %.pn4246.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %.pn42.i.i, %login_list.i.i
  br i1 %cmp10.not.i.i, label %for.body12.i.i.for.end.i.i_crit_edge, label %for.body12.i.i.for.body12.i.i_crit_edge

for.body12.i.i.for.body12.i.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i.i

for.body12.i.i.for.end.i.i_crit_edge:             ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body12.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %found.1.lcssa.i.i = phi ptr [ %found.049.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %spec.select.i.i, %for.body12.i.i.for.end.i.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %65) #16
  %70 = ptrtoint ptr %.pn50.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i.i = load ptr, ptr %.pn50.i.i, align 4
  %cmp.not.i2.i = icmp eq ptr %.pn.i.i, %tpg_sess_list.i.i
  br i1 %cmp.not.i2.i, label %sbp_login_find_by_id.exit.i, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

sbp_login_find_by_id.exit.i:                      ; preds = %for.end.i.i
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i.i) #16
  %tobool.not.i = icmp eq ptr %found.1.lcssa.i.i, null
  br i1 %tobool.not.i, label %sbp_login_find_by_id.exit.i.do.end14.i_crit_edge, label %if.end19.i

sbp_login_find_by_id.exit.i.do.end14.i_crit_edge: ; preds = %sbp_login_find_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14.i

do.end14.i:                                       ; preds = %sbp_login_find_by_id.exit.i.do.end14.i_crit_edge, %sbp_login_find_by_id.exit.thread.i
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #19
  br label %sbp_management_request_reconnect.exit

if.end19.i:                                       ; preds = %sbp_login_find_by_id.exit.i
  %71 = ptrtoint ptr %found.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %found.1.lcssa.i.i, align 8
  %guid20.i = getelementptr inbounds %struct.sbp_session, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %guid20.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %guid20.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %or.i.i)
  %cmp21.not.i = icmp eq i64 %74, %or.i.i
  br i1 %cmp21.not.i, label %if.end30.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #19
  br label %sbp_management_request_reconnect.exit

if.end30.i:                                       ; preds = %if.end19.i
  call void @_raw_spin_lock_bh(ptr noundef %72) #16
  %75 = ptrtoint ptr %found.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %found.1.lcssa.i.i, align 8
  %card.i = getelementptr inbounds %struct.sbp_session, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card.i, align 4
  %tobool33.not.i = icmp eq ptr %78, null
  br i1 %tobool33.not.i, label %if.end30.i.if.end37.i_crit_edge, label %if.then34.i

if.end30.i.if.end37.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end30.i
  %kref.i.i = getelementptr inbounds %struct.fw_card, ptr %78, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !374
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #16
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #16, !srcloc !375
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end37.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !373

if.end5.i.i.i.i.i.i.if.end37.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #16
  br label %if.end37.i

if.then.i.i.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  call void @fw_card_release(ptr noundef %kref.i.i) #16
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end37.i_crit_edge, %if.end30.i.if.end37.i_crit_edge
  %80 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %generation, align 4
  %82 = ptrtoint ptr %found.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %found.1.lcssa.i.i, align 8
  %generation39.i = getelementptr inbounds %struct.sbp_session, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %generation39.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %generation39.i, align 8
  %85 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %node_addr, align 4
  %87 = load ptr, ptr %found.1.lcssa.i.i, align 8
  %node_id.i = getelementptr inbounds %struct.sbp_session, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %node_id.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %node_id.i, align 8
  %89 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %card, align 4
  %kref.i3.i = getelementptr inbounds %struct.fw_card, ptr %90, i32 0, i32 2
  %call.i.i.i.i.i.i.i4.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i3.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %kref.i3.i, i32 1, i32 3, i32 1) #16
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i3.i, ptr %kref.i3.i, i32 1, ptr elementtype(i32) %kref.i3.i) #16, !srcloc !371
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end37.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !372

if.end37.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end37.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %92 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %92, -1
  br i1 %.not.i.i.i.i.i5.i, label %if.else.i.i.i.i.i.i.fw_card_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !373

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.fw_card_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end37.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end37.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i3.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %fw_card_get.exit.i

fw_card_get.exit.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.fw_card_get.exit.i_crit_edge
  %93 = ptrtoint ptr %found.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %found.1.lcssa.i.i, align 8
  %card44.i = getelementptr inbounds %struct.sbp_session, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %card44.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %90, ptr %card44.i, align 4
  %96 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %speed, align 4
  %98 = load ptr, ptr %found.1.lcssa.i.i, align 8
  %speed46.i = getelementptr inbounds %struct.sbp_session, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %speed46.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %97, ptr %speed46.i, align 4
  %100 = load ptr, ptr %found.1.lcssa.i.i, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %100) #16
  br label %sbp_management_request_reconnect.exit

sbp_management_request_reconnect.exit:            ; preds = %fw_card_get.exit.i, %do.end25.i, %do.end14.i, %do.end.i
  %.sink.i = phi i32 [ 0, %fw_card_get.exit.i ], [ 262144, %do.end25.i ], [ 262144, %do.end14.i ], [ 285147136, %do.end.i ]
  %status49.i = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %101 = ptrtoint ptr %status49.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink.i, ptr %status49.i, align 4
  br label %sw.epilog

do.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #19
  %status = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %102 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 65536, ptr %status, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end45
  %tport1.i215 = getelementptr i8, ptr %work, i32 -40
  %103 = ptrtoint ptr %tport1.i215 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tport1.i215, align 4
  %tpg2.i216 = getelementptr inbounds %struct.sbp_tport, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %tpg2.i216 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tpg2.i216, align 4
  %and.i218 = and i32 %29, 65535
  %session_lock.i.i219 = getelementptr inbounds %struct.sbp_tpg, ptr %106, i32 0, i32 2, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock.i.i219) #16
  %tpg_sess_list.i.i220 = getelementptr inbounds %struct.sbp_tpg, ptr %106, i32 0, i32 2, i32 9
  %107 = ptrtoint ptr %tpg_sess_list.i.i220 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn47.i.i221 = load ptr, ptr %tpg_sess_list.i.i220, align 4
  %cmp.not48.i.i222 = icmp eq ptr %.pn47.i.i221, %tpg_sess_list.i.i220
  br i1 %cmp.not48.i.i222, label %sbp_login_find_by_id.exit.thread.i224, label %for.body.i.preheader.i223

for.body.i.preheader.i223:                        ; preds = %sw.bb59
  %108 = trunc i32 %29 to i16
  br label %for.body.i.i231

sbp_login_find_by_id.exit.thread.i224:            ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i.i219) #16
  br label %do.end.i248

for.body.i.i231:                                  ; preds = %for.end.i.i244.for.body.i.i231_crit_edge, %for.body.i.preheader.i223
  %.pn50.i.i225 = phi ptr [ %.pn.i.i242, %for.end.i.i244.for.body.i.i231_crit_edge ], [ %.pn47.i.i221, %for.body.i.preheader.i223 ]
  %found.049.i.i226 = phi ptr [ %found.1.lcssa.i.i241, %for.end.i.i244.for.body.i.i231_crit_edge ], [ null, %for.body.i.preheader.i223 ]
  %fabric_sess_ptr.i.i227 = getelementptr i8, ptr %.pn50.i.i225, i32 -12
  %109 = ptrtoint ptr %fabric_sess_ptr.i.i227 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fabric_sess_ptr.i.i227, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %110) #16
  %login_list.i.i228 = getelementptr inbounds %struct.sbp_session, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %login_list.i.i228 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn4243.i.i229 = load ptr, ptr %login_list.i.i228, align 4
  %cmp10.not44.i.i230 = icmp eq ptr %.pn4243.i.i229, %login_list.i.i228
  br i1 %cmp10.not44.i.i230, label %for.body.i.i231.for.end.i.i244_crit_edge, label %for.body.i.i231.for.body12.i.i240_crit_edge

for.body.i.i231.for.body12.i.i240_crit_edge:      ; preds = %for.body.i.i231
  br label %for.body12.i.i240

for.body.i.i231.for.end.i.i244_crit_edge:         ; preds = %for.body.i.i231
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i244

for.body12.i.i240:                                ; preds = %for.body12.i.i240.for.body12.i.i240_crit_edge, %for.body.i.i231.for.body12.i.i240_crit_edge
  %.pn4246.i.i232 = phi ptr [ %.pn42.i.i238, %for.body12.i.i240.for.body12.i.i240_crit_edge ], [ %.pn4243.i.i229, %for.body.i.i231.for.body12.i.i240_crit_edge ]
  %found.145.i.i233 = phi ptr [ %spec.select.i.i237, %for.body12.i.i240.for.body12.i.i240_crit_edge ], [ %found.049.i.i226, %for.body.i.i231.for.body12.i.i240_crit_edge ]
  %login.0.i.i234 = getelementptr i8, ptr %.pn4246.i.i232, i32 -4
  %login_id13.i.i235 = getelementptr i8, ptr %.pn4246.i.i232, i32 24
  %112 = ptrtoint ptr %login_id13.i.i235 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %login_id13.i.i235, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %113, i16 %108)
  %cmp14.i.i236 = icmp eq i16 %113, %108
  %spec.select.i.i237 = select i1 %cmp14.i.i236, ptr %login.0.i.i234, ptr %found.145.i.i233
  %114 = ptrtoint ptr %.pn4246.i.i232 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn42.i.i238 = load ptr, ptr %.pn4246.i.i232, align 4
  %cmp10.not.i.i239 = icmp eq ptr %.pn42.i.i238, %login_list.i.i228
  br i1 %cmp10.not.i.i239, label %for.body12.i.i240.for.end.i.i244_crit_edge, label %for.body12.i.i240.for.body12.i.i240_crit_edge

for.body12.i.i240.for.body12.i.i240_crit_edge:    ; preds = %for.body12.i.i240
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i.i240

for.body12.i.i240.for.end.i.i244_crit_edge:       ; preds = %for.body12.i.i240
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i244

for.end.i.i244:                                   ; preds = %for.body12.i.i240.for.end.i.i244_crit_edge, %for.body.i.i231.for.end.i.i244_crit_edge
  %found.1.lcssa.i.i241 = phi ptr [ %found.049.i.i226, %for.body.i.i231.for.end.i.i244_crit_edge ], [ %spec.select.i.i237, %for.body12.i.i240.for.end.i.i244_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %110) #16
  %115 = ptrtoint ptr %.pn50.i.i225 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn.i.i242 = load ptr, ptr %.pn50.i.i225, align 4
  %cmp.not.i.i243 = icmp eq ptr %.pn.i.i242, %tpg_sess_list.i.i220
  br i1 %cmp.not.i.i243, label %sbp_login_find_by_id.exit.i246, label %for.end.i.i244.for.body.i.i231_crit_edge

for.end.i.i244.for.body.i.i231_crit_edge:         ; preds = %for.end.i.i244
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i231

sbp_login_find_by_id.exit.i246:                   ; preds = %for.end.i.i244
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i.i219) #16
  %tobool.not.i245 = icmp eq ptr %found.1.lcssa.i.i241, null
  br i1 %tobool.not.i245, label %sbp_login_find_by_id.exit.i246.do.end.i248_crit_edge, label %do.end7.i252

sbp_login_find_by_id.exit.i246.do.end.i248_crit_edge: ; preds = %sbp_login_find_by_id.exit.i246
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i248

do.end.i248:                                      ; preds = %sbp_login_find_by_id.exit.i246.do.end.i248_crit_edge, %sbp_login_find_by_id.exit.thread.i224
  %call3.i247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %and.i218) #19
  br label %sbp_management_request_logout.exit

do.end7.i252:                                     ; preds = %sbp_login_find_by_id.exit.i246
  %login_lun.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %found.1.lcssa.i.i241, i32 0, i32 2
  %116 = ptrtoint ptr %login_lun.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %login_lun.i, align 4
  %login_id.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %found.1.lcssa.i.i241, i32 0, i32 5
  %118 = ptrtoint ptr %login_id.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %login_id.i, align 4
  %conv.i249 = zext i16 %119 to i32
  %call9.i250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %117, i32 noundef %conv.i249) #19
  %120 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %node_addr, align 4
  %122 = ptrtoint ptr %found.1.lcssa.i.i241 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %found.1.lcssa.i.i241, align 8
  %node_id.i251 = getelementptr inbounds %struct.sbp_session, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %node_id.i251 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %node_id.i251, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %125)
  %cmp.not.i = icmp eq i32 %121, %125
  br i1 %cmp.not.i, label %if.end19.i255, label %do.end14.i254

do.end14.i254:                                    ; preds = %do.end7.i252
  call void @__sanitizer_cov_trace_pc() #18
  %call16.i253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #19
  br label %sbp_management_request_logout.exit

if.end19.i255:                                    ; preds = %do.end7.i252
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @sbp_login_release(ptr noundef nonnull %found.1.lcssa.i.i241, i1 noundef zeroext true) #16
  br label %sbp_management_request_logout.exit

sbp_management_request_logout.exit:               ; preds = %if.end19.i255, %do.end14.i254, %do.end.i248
  %.sink.i256 = phi i32 [ 0, %if.end19.i255 ], [ 262144, %do.end14.i254 ], [ 655360, %do.end.i248 ]
  %status20.i = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %126 = ptrtoint ptr %status20.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.sink.i256, ptr %status20.i, align 4
  br label %sw.epilog

do.end63:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #19
  %status66 = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %127 = ptrtoint ptr %status66 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 65536, ptr %status66, align 4
  br label %sw.epilog

do.end71:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #19
  %status74 = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %128 = ptrtoint ptr %status74 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 65536, ptr %status74, align 4
  br label %sw.epilog

do.end79:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #19
  %status82 = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %129 = ptrtoint ptr %status82 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 65536, ptr %status82, align 4
  br label %sw.epilog

do.end87:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #19
  %status90 = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %130 = ptrtoint ptr %status90 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 65536, ptr %status90, align 4
  br label %sw.epilog

do.end94:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %and49) #19
  %status101 = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %131 = ptrtoint ptr %status101 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 65536, ptr %status101, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end94, %do.end87, %do.end79, %do.end71, %do.end63, %sbp_management_request_logout.exit, %do.end55, %sbp_management_request_reconnect.exit, %sw.bb50, %sw.bb
  %132 = ptrtoint ptr %orb_offset to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %orb_offset, align 8
  %shr106 = lshr i64 %133, 32
  %134 = trunc i64 %shr106 to i32
  %135 = and i32 %134, 65535
  %status111 = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1
  %136 = ptrtoint ptr %status111 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %status111, align 4
  %conv110 = or i32 %137, %135
  %or113 = or i32 %conv110, 1090519040
  store i32 %or113, ptr %status111, align 4
  %138 = load i64, ptr %orb_offset, align 8
  %conv115 = trunc i64 %138 to i32
  %orb_low = getelementptr inbounds %struct.sbp_management_request, ptr %1, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %orb_low to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv115, ptr %orb_low, align 4
  %140 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %card, align 4
  %142 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %node_addr, align 4
  %144 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %generation, align 4
  %146 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %speed, align 4
  %status_fifo122 = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 4
  %148 = ptrtoint ptr %status_fifo122 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %status_fifo122, align 4
  %and.i257 = and i32 %149, 65535
  %conv.i258 = zext i32 %and.i257 to i64
  %shl.i259 = shl nuw nsw i64 %conv.i258, 32
  %low.i260 = getelementptr inbounds %struct.sbp_management_orb, ptr %1, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %low.i260 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %low.i260, align 4
  %and1.i261 = and i32 %151, -4
  %conv2.i262 = zext i32 %and1.i261 to i64
  %or.i263 = or i64 %shl.i259, %conv2.i262
  %call126 = call fastcc i32 @sbp_run_transaction(ptr noundef %141, i32 noundef 1, i32 noundef %143, i32 noundef %145, i32 noundef %147, i64 noundef %or.i263, ptr noundef %status111, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127.not = icmp eq i32 %call126, 0
  br i1 %cmp127.not, label %sw.epilog.out_crit_edge, label %do.body130

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body130:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_mgt_agent_process.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_mgt_agent_process, %if.then142)) #16
          to label %out [label %if.then142], !srcloc !369

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_mgt_agent_process.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.48, i32 noundef %call126) #16
  br label %out

out:                                              ; preds = %if.then142, %do.body130, %sw.epilog.out_crit_edge, %do.end42, %if.then5, %do.body
  %152 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %card, align 4
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %153, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !374
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !375
  %asmresult.i.i.i.i.i.i.i.i264 = extractvalue { i32, i32, i32 } %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i264)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i264, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i264)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i264, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !373

if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #16
  br label %fw_card_put.exit

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  call void @fw_card_release(ptr noundef %kref.i) #16
  br label %fw_card_put.exit

fw_card_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge
  call void @kfree(ptr noundef %1) #16
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %state = getelementptr i8, ptr %work, i32 -4
  %155 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %state, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_get_request_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp_management_request_login(ptr nocapture noundef readonly %agent, ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  %guid_str.i = alloca [17 x i8], align 1
  %high.i = alloca i32, align 4
  %low.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr inbounds %struct.sbp_management_agent, ptr %agent, i32 0, i32 1
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %tpg2 = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tpg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg2, align 4
  %misc = getelementptr inbounds %struct.sbp_management_orb, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %misc, align 4
  %and = and i32 %5, 65535
  %6 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !377
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i1 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i1, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 696, ptr noundef nonnull @.str.82) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b41.i = load i1, ptr @sbp_get_lun_from_tpg.__warned, align 1
  br i1 %.b41.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sbp_get_lun_from_tpg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 167, ptr noundef nonnull @.str.80) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %tpg_lun_hlist.i = getelementptr inbounds %struct.sbp_tpg, ptr %3, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %tpg_lun_hlist.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %tpg_lun_hlist.i, align 4
  %tobool11.not.i = icmp eq ptr %11, null
  %add.ptr.i = getelementptr i8, ptr %11, i32 -728
  %tobool13.not6567.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not65.i = or i1 %tobool11.not.i, %tobool13.not6567.i
  br i1 %tobool13.not65.i, label %do.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %conv.i = zext i32 %and to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %se_lun.066.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr28.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %se_lun.066.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %se_lun.066.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.i)
  %cmp.i = icmp eq i64 %13, %conv.i
  br i1 %cmp.i, label %if.then15.i, label %for.inc.i

if.then15.i:                                      ; preds = %for.body.i
  %call.i43.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i43.i, label %if.then15.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i46.i

if.then15.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i46.i:                              ; preds = %if.then15.i
  %call1.i44.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call1.i44.i, 0
  br i1 %tobool.not.i45.i, label %land.lhs.true.i46.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i48.i

land.lhs.true.i46.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i48.i:                             ; preds = %land.lhs.true.i46.i
  %.b4.i47.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47.i, label %land.lhs.true2.i48.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i49.i

land.lhs.true2.i48.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i49.i:                                    ; preds = %land.lhs.true2.i48.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 724, ptr noundef nonnull @.str.83) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i49.i, %land.lhs.true2.i48.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i46.i.rcu_read_unlock.exit.i_crit_edge, %if.then15.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !378
  %14 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i59.i.c = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i59.i.c to ptr
  %preempt_count.i.i.i.i60.i.c = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i60.i.c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.c, align 4
  %sub.i.i.i61.i.c = add i32 %17, -1
  store volatile i32 %sub.i.i.i61.i.c, ptr %preempt_count.i.i.i.i60.i.c, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %high.i) #16
  %18 = ptrtoint ptr %high.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %high.i, align 4, !annotation !370
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low.i) #16
  %19 = ptrtoint ptr %low.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %low.i, align 4, !annotation !370
  %card.i = getelementptr inbounds %struct.sbp_management_request, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i, align 4
  %node_addr.i = getelementptr inbounds %struct.sbp_management_request, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_addr.i, align 4
  %generation.i = getelementptr inbounds %struct.sbp_management_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %generation.i, align 4
  %speed.i = getelementptr inbounds %struct.sbp_management_request, ptr %req, i32 0, i32 5
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed.i, align 4
  %call.i2 = call fastcc i32 @sbp_run_transaction(ptr noundef %21, i32 noundef 4, i32 noundef %23, i32 noundef %25, i32 noundef %27, i64 noundef 281474708276236, ptr noundef nonnull %high.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.not.i = icmp eq i32 %call.i2, 0
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_unlock.exit.i.do.end13_crit_edge

rcu_read_unlock.exit.i.do.end13_crit_edge:        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

for.inc.i:                                        ; preds = %for.body.i
  %link.i = getelementptr inbounds %struct.se_lun, ptr %se_lun.066.i, i32 0, i32 23
  %28 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %link.i, align 8
  %tobool24.not.i = icmp eq ptr %29, null
  %add.ptr28.i = getelementptr i8, ptr %29, i32 -728
  %tobool13.not69.i = icmp eq ptr %add.ptr28.i, null
  %tobool13.not.i = or i1 %tobool24.not.i, %tobool13.not69.i
  br i1 %tobool13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i52.i, label %for.end.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

for.end.i.rcu_read_unlock.exit62.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %for.end.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 724, ptr noundef nonnull @.str.83) #16
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %for.end.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !378
  %30 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i59.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %34 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %misc, align 4
  %and6 = and i32 %35, 65535
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %and6) #19
  br label %cleanup

if.end.i:                                         ; preds = %rcu_read_unlock.exit.i
  %36 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card.i, align 4
  %38 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %node_addr.i, align 4
  %40 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %generation.i, align 4
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed.i, align 4
  %call5.i = call fastcc i32 @sbp_run_transaction(ptr noundef %37, i32 noundef 4, i32 noundef %39, i32 noundef %41, i32 noundef %43, i64 noundef 281474708276240, ptr noundef nonnull %low.i, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %do.end21, label %if.end.i.do.end13_crit_edge

if.end.i.do.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

do.end13:                                         ; preds = %if.end.i.do.end13_crit_edge, %rcu_read_unlock.exit.i.do.end13_crit_edge
  %retval.0.i4.ph = phi i32 [ %call5.i, %if.end.i.do.end13_crit_edge ], [ %call.i2, %rcu_read_unlock.exit.i.do.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i) #16
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %retval.0.i4.ph) #19
  br label %cleanup

do.end21:                                         ; preds = %if.end.i
  %44 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %high.i, align 4
  %conv.i3 = zext i32 %45 to i64
  %shl.i = shl nuw i64 %conv.i3, 32
  %46 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %low.i, align 4
  %conv9.i = zext i32 %47 to i64
  %or.i = or i64 %shl.i, %conv9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %high.i) #16
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %and, i64 noundef %or.i) #19
  %session_lock.i = getelementptr inbounds %struct.sbp_tpg, ptr %3, i32 0, i32 2, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %session_lock.i) #16
  %tpg_sess_list.i = getelementptr inbounds %struct.sbp_tpg, ptr %3, i32 0, i32 2, i32 9
  %48 = ptrtoint ptr %tpg_sess_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn19.i = load ptr, ptr %tpg_sess_list.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %tpg_sess_list.i
  br i1 %cmp.not20.i, label %sbp_session_find_by_guid.exit.thread, label %do.end21.for.body.i6_crit_edge

do.end21.for.body.i6_crit_edge:                   ; preds = %do.end21
  br label %for.body.i6

sbp_session_find_by_guid.exit.thread:             ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  br label %if.end36

for.body.i6:                                      ; preds = %for.body.i6.for.body.i6_crit_edge, %do.end21.for.body.i6_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i6.for.body.i6_crit_edge ], [ %.pn19.i, %do.end21.for.body.i6_crit_edge ]
  %found.021.i = phi ptr [ %spec.select.i, %for.body.i6.for.body.i6_crit_edge ], [ null, %do.end21.for.body.i6_crit_edge ]
  %fabric_sess_ptr.i = getelementptr i8, ptr %.pn22.i, i32 -12
  %49 = ptrtoint ptr %fabric_sess_ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fabric_sess_ptr.i, align 8
  %guid4.i = getelementptr inbounds %struct.sbp_session, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %guid4.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %guid4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %or.i)
  %cmp5.i = icmp eq i64 %52, %or.i
  %spec.select.i = select i1 %cmp5.i, ptr %50, ptr %found.021.i
  %53 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i5 = icmp eq ptr %.pn.i, %tpg_sess_list.i
  br i1 %cmp.not.i5, label %sbp_session_find_by_guid.exit, label %for.body.i6.for.body.i6_crit_edge

for.body.i6.for.body.i6_crit_edge:                ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i6

sbp_session_find_by_guid.exit:                    ; preds = %for.body.i6
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  %tobool25.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool25.not, label %sbp_session_find_by_guid.exit.if.end36_crit_edge, label %if.then26

sbp_session_find_by_guid.exit.if.end36_crit_edge: ; preds = %sbp_session_find_by_guid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then26:                                        ; preds = %sbp_session_find_by_guid.exit
  call void @_raw_spin_lock_bh(ptr noundef nonnull %spec.select.i) #16
  %login_list.i = getelementptr inbounds %struct.sbp_session, ptr %spec.select.i, i32 0, i32 2
  %54 = ptrtoint ptr %login_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn15.i = load ptr, ptr %login_list.i, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %login_list.i
  br i1 %cmp.not16.i, label %sbp_login_find_by_lun.exit.thread, label %if.then26.for.body.i11_crit_edge

if.then26.for.body.i11_crit_edge:                 ; preds = %if.then26
  br label %for.body.i11

sbp_login_find_by_lun.exit.thread:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %spec.select.i) #16
  br label %if.end36

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %if.then26.for.body.i11_crit_edge
  %.pn18.i = phi ptr [ %.pn.i9, %for.body.i11.for.body.i11_crit_edge ], [ %.pn15.i, %if.then26.for.body.i11_crit_edge ]
  %found.017.i = phi ptr [ %spec.select.i8, %for.body.i11.for.body.i11_crit_edge ], [ null, %if.then26.for.body.i11_crit_edge ]
  %login.0.i = getelementptr i8, ptr %.pn18.i, i32 -4
  %login_lun.i = getelementptr i8, ptr %.pn18.i, i32 8
  %55 = ptrtoint ptr %login_lun.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %login_lun.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %and)
  %cmp2.i = icmp eq i32 %56, %and
  %spec.select.i8 = select i1 %cmp2.i, ptr %login.0.i, ptr %found.017.i
  %57 = ptrtoint ptr %.pn18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i9 = load ptr, ptr %.pn18.i, align 4
  %cmp.not.i10 = icmp eq ptr %.pn.i9, %login_list.i
  br i1 %cmp.not.i10, label %sbp_login_find_by_lun.exit, label %for.body.i11.for.body.i11_crit_edge

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i11

sbp_login_find_by_lun.exit:                       ; preds = %for.body.i11
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %spec.select.i) #16
  %tobool28.not = icmp eq ptr %spec.select.i8, null
  br i1 %tobool28.not, label %sbp_login_find_by_lun.exit.if.end36_crit_edge, label %do.end32

sbp_login_find_by_lun.exit.if.end36_crit_edge:    ; preds = %sbp_login_find_by_lun.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

do.end32:                                         ; preds = %sbp_login_find_by_lun.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #19
  br label %already_logged_in

if.end36:                                         ; preds = %sbp_login_find_by_lun.exit.if.end36_crit_edge, %sbp_login_find_by_lun.exit.thread, %sbp_session_find_by_guid.exit.if.end36_crit_edge, %sbp_session_find_by_guid.exit.thread
  %tobool25.not131 = phi i1 [ true, %sbp_session_find_by_guid.exit.thread ], [ false, %sbp_login_find_by_lun.exit.if.end36_crit_edge ], [ true, %sbp_session_find_by_guid.exit.if.end36_crit_edge ], [ false, %sbp_login_find_by_lun.exit.thread ]
  %found.0.lcssa.i130 = phi ptr [ null, %sbp_session_find_by_guid.exit.thread ], [ %spec.select.i, %sbp_login_find_by_lun.exit.if.end36_crit_edge ], [ null, %sbp_session_find_by_guid.exit.if.end36_crit_edge ], [ %spec.select.i, %sbp_login_find_by_lun.exit.thread ]
  %58 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %misc, align 4
  %60 = and i32 %59, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool41.not = icmp eq i32 %60, 0
  br i1 %tobool41.not, label %if.end36.if.end52_crit_edge, label %land.lhs.true

if.end36.if.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end36
  call void @_raw_spin_lock_bh(ptr noundef %session_lock.i) #16
  %61 = ptrtoint ptr %tpg_sess_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn51.i = load ptr, ptr %tpg_sess_list.i, align 4
  %cmp.not52.i = icmp eq ptr %.pn51.i, %tpg_sess_list.i
  br i1 %cmp.not52.i, label %sbp_login_count_all_by_lun.exit.thread, label %land.lhs.true.for.body.i19_crit_edge

land.lhs.true.for.body.i19_crit_edge:             ; preds = %land.lhs.true
  br label %for.body.i19

sbp_login_count_all_by_lun.exit.thread:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  br label %if.end52

for.body.i19:                                     ; preds = %for.end.i25.for.body.i19_crit_edge, %land.lhs.true.for.body.i19_crit_edge
  %.pn54.i = phi ptr [ %.pn.i23, %for.end.i25.for.body.i19_crit_edge ], [ %.pn51.i, %land.lhs.true.for.body.i19_crit_edge ]
  %count.053.i = phi i32 [ %count.1.lcssa.i, %for.end.i25.for.body.i19_crit_edge ], [ 0, %land.lhs.true.for.body.i19_crit_edge ]
  %fabric_sess_ptr.i17 = getelementptr i8, ptr %.pn54.i, i32 -12
  %62 = ptrtoint ptr %fabric_sess_ptr.i17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fabric_sess_ptr.i17, align 8
  call void @_raw_spin_lock_bh(ptr noundef %63) #16
  %login_list.i18 = getelementptr inbounds %struct.sbp_session, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %login_list.i18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn4546.i = load ptr, ptr %login_list.i18, align 4
  %cmp10.not47.i = icmp eq ptr %.pn4546.i, %login_list.i18
  br i1 %cmp10.not47.i, label %for.body.i19.for.end.i25_crit_edge, label %for.body.i19.for.body12.i_crit_edge

for.body.i19.for.body12.i_crit_edge:              ; preds = %for.body.i19
  br label %for.body12.i

for.body.i19.for.end.i25_crit_edge:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i25

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body.i19.for.body12.i_crit_edge
  %.pn4550.i = phi ptr [ %.pn45.i, %for.body12.i.for.body12.i_crit_edge ], [ %.pn4546.i, %for.body.i19.for.body12.i_crit_edge ]
  %count.148.i = phi i32 [ %spec.select, %for.body12.i.for.body12.i_crit_edge ], [ %count.053.i, %for.body.i19.for.body12.i_crit_edge ]
  %login_lun.i20 = getelementptr i8, ptr %.pn4550.i, i32 8
  %65 = ptrtoint ptr %login_lun.i20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %login_lun.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %and)
  %cmp13.not.i = icmp eq i32 %66, %and
  %inc.i = zext i1 %cmp13.not.i to i32
  %spec.select = add i32 %count.148.i, %inc.i
  %67 = ptrtoint ptr %.pn4550.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn45.i = load ptr, ptr %.pn4550.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn45.i, %login_list.i18
  br i1 %cmp10.not.i, label %for.body12.i.for.end.i25_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i

for.body12.i.for.end.i25_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i25

for.end.i25:                                      ; preds = %for.body12.i.for.end.i25_crit_edge, %for.body.i19.for.end.i25_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.053.i, %for.body.i19.for.end.i25_crit_edge ], [ %spec.select, %for.body12.i.for.end.i25_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %63) #16
  %68 = ptrtoint ptr %.pn54.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i23 = load ptr, ptr %.pn54.i, align 4
  %cmp.not.i24 = icmp eq ptr %.pn.i23, %tpg_sess_list.i
  br i1 %cmp.not.i24, label %sbp_login_count_all_by_lun.exit, label %for.end.i25.for.body.i19_crit_edge

for.end.i25.for.body.i19_crit_edge:               ; preds = %for.end.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i19

sbp_login_count_all_by_lun.exit:                  ; preds = %for.end.i25
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa.i)
  %tobool43.not = icmp eq i32 %count.1.lcssa.i, 0
  br i1 %tobool43.not, label %sbp_login_count_all_by_lun.exit.if.end52_crit_edge, label %do.end47

sbp_login_count_all_by_lun.exit.if.end52_crit_edge: ; preds = %sbp_login_count_all_by_lun.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.end47:                                         ; preds = %sbp_login_count_all_by_lun.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #19
  br label %cleanup

if.end52:                                         ; preds = %sbp_login_count_all_by_lun.exit.if.end52_crit_edge, %sbp_login_count_all_by_lun.exit.thread, %if.end36.if.end52_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %session_lock.i) #16
  %69 = ptrtoint ptr %tpg_sess_list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn51.i28 = load ptr, ptr %tpg_sess_list.i, align 4
  %cmp.not52.i29 = icmp eq ptr %.pn51.i28, %tpg_sess_list.i
  br i1 %cmp.not52.i29, label %sbp_login_count_all_by_lun.exit54.thread, label %if.end52.for.body.i37_crit_edge

if.end52.for.body.i37_crit_edge:                  ; preds = %if.end52
  br label %for.body.i37

sbp_login_count_all_by_lun.exit54.thread:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  br label %if.end63

for.body.i37:                                     ; preds = %for.end.i52.for.body.i37_crit_edge, %if.end52.for.body.i37_crit_edge
  %.pn54.i31 = phi ptr [ %.pn.i50, %for.end.i52.for.body.i37_crit_edge ], [ %.pn51.i28, %if.end52.for.body.i37_crit_edge ]
  %count.053.i32 = phi i32 [ %count.1.lcssa.i49, %for.end.i52.for.body.i37_crit_edge ], [ 0, %if.end52.for.body.i37_crit_edge ]
  %fabric_sess_ptr.i33 = getelementptr i8, ptr %.pn54.i31, i32 -12
  %70 = ptrtoint ptr %fabric_sess_ptr.i33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fabric_sess_ptr.i33, align 8
  call void @_raw_spin_lock_bh(ptr noundef %71) #16
  %login_list.i34 = getelementptr inbounds %struct.sbp_session, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %login_list.i34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn4546.i35 = load ptr, ptr %login_list.i34, align 4
  %cmp10.not47.i36 = icmp eq ptr %.pn4546.i35, %login_list.i34
  br i1 %cmp10.not47.i36, label %for.body.i37.for.end.i52_crit_edge, label %for.body.i37.for.body12.i42_crit_edge

for.body.i37.for.body12.i42_crit_edge:            ; preds = %for.body.i37
  br label %for.body12.i42

for.body.i37.for.end.i52_crit_edge:               ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i52

for.body12.i42:                                   ; preds = %for.inc.i48.for.body12.i42_crit_edge, %for.body.i37.for.body12.i42_crit_edge
  %.pn4550.i38 = phi ptr [ %.pn45.i46, %for.inc.i48.for.body12.i42_crit_edge ], [ %.pn4546.i35, %for.body.i37.for.body12.i42_crit_edge ]
  %count.148.i39 = phi i32 [ %count.2.i45, %for.inc.i48.for.body12.i42_crit_edge ], [ %count.053.i32, %for.body.i37.for.body12.i42_crit_edge ]
  %login_lun.i40 = getelementptr i8, ptr %.pn4550.i38, i32 8
  %73 = ptrtoint ptr %login_lun.i40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %login_lun.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %and)
  %cmp13.not.i41 = icmp eq i32 %74, %and
  br i1 %cmp13.not.i41, label %if.end.i43, label %for.body12.i42.for.inc.i48_crit_edge

for.body12.i42.for.inc.i48_crit_edge:             ; preds = %for.body12.i42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i48

if.end.i43:                                       ; preds = %for.body12.i42
  call void @__sanitizer_cov_trace_pc() #18
  %exclusive14.i = getelementptr i8, ptr %.pn4550.i38, i32 20
  %75 = ptrtoint ptr %exclusive14.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %exclusive14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool15.not.i = icmp ne i32 %76, 0
  %inc.i44 = zext i1 %tobool15.not.i to i32
  %spec.select146 = add i32 %count.148.i39, %inc.i44
  br label %for.inc.i48

for.inc.i48:                                      ; preds = %if.end.i43, %for.body12.i42.for.inc.i48_crit_edge
  %count.2.i45 = phi i32 [ %count.148.i39, %for.body12.i42.for.inc.i48_crit_edge ], [ %spec.select146, %if.end.i43 ]
  %77 = ptrtoint ptr %.pn4550.i38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn45.i46 = load ptr, ptr %.pn4550.i38, align 4
  %cmp10.not.i47 = icmp eq ptr %.pn45.i46, %login_list.i34
  br i1 %cmp10.not.i47, label %for.inc.i48.for.end.i52_crit_edge, label %for.inc.i48.for.body12.i42_crit_edge

for.inc.i48.for.body12.i42_crit_edge:             ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i42

for.inc.i48.for.end.i52_crit_edge:                ; preds = %for.inc.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i52

for.end.i52:                                      ; preds = %for.inc.i48.for.end.i52_crit_edge, %for.body.i37.for.end.i52_crit_edge
  %count.1.lcssa.i49 = phi i32 [ %count.053.i32, %for.body.i37.for.end.i52_crit_edge ], [ %count.2.i45, %for.inc.i48.for.end.i52_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %71) #16
  %78 = ptrtoint ptr %.pn54.i31 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i50 = load ptr, ptr %.pn54.i31, align 4
  %cmp.not.i51 = icmp eq ptr %.pn.i50, %tpg_sess_list.i
  br i1 %cmp.not.i51, label %sbp_login_count_all_by_lun.exit54, label %for.end.i52.for.body.i37_crit_edge

for.end.i52.for.body.i37_crit_edge:               ; preds = %for.end.i52
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i37

sbp_login_count_all_by_lun.exit54:                ; preds = %for.end.i52
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa.i49)
  %tobool54.not = icmp eq i32 %count.1.lcssa.i49, 0
  br i1 %tobool54.not, label %sbp_login_count_all_by_lun.exit54.if.end63_crit_edge, label %do.end58

sbp_login_count_all_by_lun.exit54.if.end63_crit_edge: ; preds = %sbp_login_count_all_by_lun.exit54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

do.end58:                                         ; preds = %sbp_login_count_all_by_lun.exit54
  call void @__sanitizer_cov_trace_pc() #18
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #19
  br label %cleanup

if.end63:                                         ; preds = %sbp_login_count_all_by_lun.exit54.if.end63_crit_edge, %sbp_login_count_all_by_lun.exit54.thread
  call void @_raw_spin_lock_bh(ptr noundef %session_lock.i) #16
  %79 = ptrtoint ptr %tpg_sess_list.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn51.i57 = load ptr, ptr %tpg_sess_list.i, align 4
  %cmp.not52.i58 = icmp eq ptr %.pn51.i57, %tpg_sess_list.i
  br i1 %cmp.not52.i58, label %if.end63.sbp_login_count_all_by_lun.exit84_crit_edge, label %if.end63.for.body.i66_crit_edge

if.end63.for.body.i66_crit_edge:                  ; preds = %if.end63
  br label %for.body.i66

if.end63.sbp_login_count_all_by_lun.exit84_crit_edge: ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_login_count_all_by_lun.exit84

for.body.i66:                                     ; preds = %for.end.i82.for.body.i66_crit_edge, %if.end63.for.body.i66_crit_edge
  %.pn54.i60 = phi ptr [ %.pn.i80, %for.end.i82.for.body.i66_crit_edge ], [ %.pn51.i57, %if.end63.for.body.i66_crit_edge ]
  %count.053.i61 = phi i32 [ %count.1.lcssa.i79, %for.end.i82.for.body.i66_crit_edge ], [ 0, %if.end63.for.body.i66_crit_edge ]
  %fabric_sess_ptr.i62 = getelementptr i8, ptr %.pn54.i60, i32 -12
  %80 = ptrtoint ptr %fabric_sess_ptr.i62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fabric_sess_ptr.i62, align 8
  call void @_raw_spin_lock_bh(ptr noundef %81) #16
  %login_list.i63 = getelementptr inbounds %struct.sbp_session, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %login_list.i63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn4546.i64 = load ptr, ptr %login_list.i63, align 4
  %cmp10.not47.i65 = icmp eq ptr %.pn4546.i64, %login_list.i63
  br i1 %cmp10.not47.i65, label %for.body.i66.for.end.i82_crit_edge, label %for.body.i66.for.body12.i71_crit_edge

for.body.i66.for.body12.i71_crit_edge:            ; preds = %for.body.i66
  br label %for.body12.i71

for.body.i66.for.end.i82_crit_edge:               ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i82

for.body12.i71:                                   ; preds = %for.body12.i71.for.body12.i71_crit_edge, %for.body.i66.for.body12.i71_crit_edge
  %.pn4550.i67 = phi ptr [ %.pn45.i76, %for.body12.i71.for.body12.i71_crit_edge ], [ %.pn4546.i64, %for.body.i66.for.body12.i71_crit_edge ]
  %count.148.i68 = phi i32 [ %spec.select147, %for.body12.i71.for.body12.i71_crit_edge ], [ %count.053.i61, %for.body.i66.for.body12.i71_crit_edge ]
  %login_lun.i69 = getelementptr i8, ptr %.pn4550.i67, i32 8
  %83 = ptrtoint ptr %login_lun.i69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %login_lun.i69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %and)
  %cmp13.not.i70 = icmp eq i32 %84, %and
  %inc.i73 = zext i1 %cmp13.not.i70 to i32
  %spec.select147 = add i32 %count.148.i68, %inc.i73
  %85 = ptrtoint ptr %.pn4550.i67 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn45.i76 = load ptr, ptr %.pn4550.i67, align 4
  %cmp10.not.i77 = icmp eq ptr %.pn45.i76, %login_list.i63
  br i1 %cmp10.not.i77, label %for.body12.i71.for.end.i82_crit_edge, label %for.body12.i71.for.body12.i71_crit_edge

for.body12.i71.for.body12.i71_crit_edge:          ; preds = %for.body12.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i71

for.body12.i71.for.end.i82_crit_edge:             ; preds = %for.body12.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i82

for.end.i82:                                      ; preds = %for.body12.i71.for.end.i82_crit_edge, %for.body.i66.for.end.i82_crit_edge
  %count.1.lcssa.i79 = phi i32 [ %count.053.i61, %for.body.i66.for.end.i82_crit_edge ], [ %spec.select147, %for.body12.i71.for.end.i82_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %81) #16
  %86 = ptrtoint ptr %.pn54.i60 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn.i80 = load ptr, ptr %.pn54.i60, align 4
  %cmp.not.i81 = icmp eq ptr %.pn.i80, %tpg_sess_list.i
  br i1 %cmp.not.i81, label %for.end.i82.sbp_login_count_all_by_lun.exit84_crit_edge, label %for.end.i82.for.body.i66_crit_edge

for.end.i82.for.body.i66_crit_edge:               ; preds = %for.end.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i66

for.end.i82.sbp_login_count_all_by_lun.exit84_crit_edge: ; preds = %for.end.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_login_count_all_by_lun.exit84

sbp_login_count_all_by_lun.exit84:                ; preds = %for.end.i82.sbp_login_count_all_by_lun.exit84_crit_edge, %if.end63.sbp_login_count_all_by_lun.exit84_crit_edge
  %count.0.lcssa.i83 = phi i32 [ 0, %if.end63.sbp_login_count_all_by_lun.exit84_crit_edge ], [ %count.1.lcssa.i79, %for.end.i82.sbp_login_count_all_by_lun.exit84_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %session_lock.i) #16
  %max_logins_per_lun = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 10
  %87 = ptrtoint ptr %max_logins_per_lun to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_logins_per_lun, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i83, i32 %88)
  %cmp65.not = icmp slt i32 %count.0.lcssa.i83, %88
  br i1 %cmp65.not, label %if.end74, label %do.end69

do.end69:                                         ; preds = %sbp_login_count_all_by_lun.exit84
  call void @__sanitizer_cov_trace_pc() #18
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #19
  br label %cleanup

if.end74:                                         ; preds = %sbp_login_count_all_by_lun.exit84
  br i1 %tobool25.not131, label %if.then76, label %if.end74.if.end90_crit_edge

if.end74.if.end90_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.then76:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %guid_str.i) #16
  %89 = call ptr @memset(ptr %guid_str.i, i32 255, i32 17)
  %call.i85 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %guid_str.i, i32 noundef 17, ptr noundef nonnull @.str.14, i64 noundef %or.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3264, i32 noundef 200) #20
  %tobool.not.i86 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i86, label %sbp_session_create.exit.thread, label %do.body.i

sbp_session_create.exit.thread:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %guid_str.i) #16
  br label %if.then79

do.body.i:                                        ; preds = %if.then76
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @sbp_session_create.__key, i16 noundef signext 3) #16
  %login_list.i87 = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %login_list.i87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %login_list.i87, ptr %login_list.i87, align 8
  %prev.i.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %login_list.i87, ptr %prev.i.i, align 4
  %maint_work.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %maint_work.i, i32 noundef 0) #16
  %93 = ptrtoint ptr %maint_work.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %maint_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @sbp_session_create.__key.85, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry12.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %94 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i55.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i55.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry12.i, ptr %prev.i55.i, align 8
  %func.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %96 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @session_maintenance_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.88, ptr noundef nonnull @sbp_session_create.__key.87) #16
  %guid23.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %guid23.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %or.i, ptr %guid23.i, align 8
  %se_tpg.i = getelementptr inbounds %struct.sbp_tpg, ptr %3, i32 0, i32 2
  %call25.i = call ptr @target_setup_session(ptr noundef %se_tpg.i, i32 noundef 128, i32 noundef 672, i32 noundef 0, ptr noundef nonnull %guid_str.i, ptr noundef nonnull %call7.i.i, ptr noundef null) #16
  %se_sess.i = getelementptr inbounds %struct.sbp_session, ptr %call7.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call25.i, ptr %se_sess.i, align 4
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end31.i, label %do.body.i.sbp_session_create.exit_crit_edge

do.body.i.sbp_session_create.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_session_create.exit

do.end31.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #19
  %99 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %se_sess.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %sbp_session_create.exit

sbp_session_create.exit:                          ; preds = %do.end31.i, %do.body.i.sbp_session_create.exit_crit_edge
  %retval.0.i88 = phi ptr [ %100, %do.end31.i ], [ %call7.i.i, %do.body.i.sbp_session_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %guid_str.i) #16
  %cmp.i89 = icmp ugt ptr %retval.0.i88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %sbp_session_create.exit.if.then79_crit_edge, label %if.end84

sbp_session_create.exit.if.then79_crit_edge:      ; preds = %sbp_session_create.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.then79:                                        ; preds = %sbp_session_create.exit.if.then79_crit_edge, %sbp_session_create.exit.thread
  %retval.0.i88140 = phi ptr [ inttoptr (i32 -12 to ptr), %sbp_session_create.exit.thread ], [ %retval.0.i88, %sbp_session_create.exit.if.then79_crit_edge ]
  %cond204 = icmp eq ptr %retval.0.i88140, inttoptr (i32 -1 to ptr)
  %. = select i1 %cond204, i32 262144, i32 524288
  br label %cleanup

if.end84:                                         ; preds = %sbp_session_create.exit
  %101 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %node_addr.i, align 4
  %node_id = getelementptr inbounds %struct.sbp_session, ptr %retval.0.i88, i32 0, i32 5
  %103 = ptrtoint ptr %node_id to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %node_id, align 8
  %104 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card.i, align 4
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %105, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !371
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end84.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !372

if.end84.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end84
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %107 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %.not.i.i.i.i.i = icmp sgt i32 %107, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !373

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fw_card_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end84.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end84.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %fw_card_get.exit

fw_card_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge
  %card86 = getelementptr inbounds %struct.sbp_session, ptr %retval.0.i88, i32 0, i32 6
  %108 = ptrtoint ptr %card86 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %card86, align 4
  %109 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %generation.i, align 4
  %generation87 = getelementptr inbounds %struct.sbp_session, ptr %retval.0.i88, i32 0, i32 7
  %111 = ptrtoint ptr %generation87 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %generation87, align 8
  %112 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %speed.i, align 4
  %speed88 = getelementptr inbounds %struct.sbp_session, ptr %retval.0.i88, i32 0, i32 8
  %114 = ptrtoint ptr %speed88 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %speed88, align 4
  %maint_work = getelementptr inbounds %struct.sbp_session, ptr %retval.0.i88, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %115 = load ptr, ptr @system_wq, align 4
  %call.i.i90 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %115, ptr noundef %maint_work, i32 noundef 100) #16
  br label %if.end90

if.end90:                                         ; preds = %fw_card_get.exit, %if.end74.if.end90_crit_edge
  %sess.0 = phi ptr [ %found.0.lcssa.i130, %if.end74.if.end90_crit_edge ], [ %retval.0.i88, %fw_card_get.exit ]
  %116 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %misc, align 4
  %shr93 = lshr i32 %117, 20
  %and94 = and i32 %shr93, 15
  %shl95 = shl nuw nsw i32 1, %and94
  %max_reconnect_timeout = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 9
  %118 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %max_reconnect_timeout, align 8
  %120 = call i32 @llvm.smin.i32(i32 %shl95, i32 %119)
  %sub = add i32 %120, -1
  %reconnect_hold = getelementptr inbounds %struct.sbp_session, ptr %sess.0, i32 0, i32 9
  %121 = ptrtoint ptr %reconnect_hold to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub, ptr %reconnect_hold, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %122 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3264, i32 noundef 40) #20
  %tobool99.not = icmp eq ptr %call7.i, null
  br i1 %tobool99.not, label %do.end103, label %if.end108

do.end103:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #19
  call fastcc void @sbp_session_release(ptr noundef %sess.0, i1 noundef zeroext true)
  br label %cleanup

if.end108:                                        ; preds = %if.end90
  %123 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %sess.0, ptr %call7.i, align 8
  %login_lun = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 2
  %124 = ptrtoint ptr %login_lun to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %and, ptr %login_lun, align 4
  %status_fifo = getelementptr inbounds %struct.sbp_management_orb, ptr %req, i32 0, i32 4
  %125 = ptrtoint ptr %status_fifo to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %status_fifo, align 4
  %and.i = and i32 %126, 65535
  %conv.i91 = zext i32 %and.i to i64
  %shl.i92 = shl nuw nsw i64 %conv.i91, 32
  %low.i93 = getelementptr inbounds %struct.sbp_management_orb, ptr %req, i32 0, i32 4, i32 1
  %127 = ptrtoint ptr %low.i93 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %low.i93, align 4
  %and1.i = and i32 %128, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i94 = or i64 %shl.i92, %conv2.i
  %status_fifo_addr = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 3
  %129 = ptrtoint ptr %status_fifo_addr to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %or.i94, ptr %status_fifo_addr, align 8
  %130 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %misc, align 4
  %shr114 = lshr i32 %131, 28
  %and115 = and i32 %shr114, 1
  %exclusive = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 4
  %132 = ptrtoint ptr %exclusive to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and115, ptr %exclusive, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @login_id, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !379
  call void @llvm.prefetch.p0(ptr nonnull @login_id, i32 1, i32 3, i32 1) #16
  %133 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @login_id, ptr nonnull @login_id, i32 1, ptr nonnull elementtype(i32) @login_id) #16, !srcloc !380
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %133, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !381
  %conv = trunc i32 %asmresult.i.i.i.i to i16
  %login_id = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 5
  %134 = ptrtoint ptr %login_id to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv, ptr %login_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %135 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i95 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %135, i32 noundef 3264, i32 noundef 152) #20
  %tobool.not.i96 = icmp eq ptr %call7.i.i95, null
  br i1 %tobool.not.i96, label %sbp_target_agent_register.exit.thread, label %do.body.i101

sbp_target_agent_register.exit.thread:            ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  %tgt_agt142 = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 6
  %136 = ptrtoint ptr %tgt_agt142 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 -12 to ptr), ptr %tgt_agt142, align 8
  br label %if.then120

do.body.i101:                                     ; preds = %if.end108
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i95, ptr noundef nonnull @.str.18, ptr noundef nonnull @sbp_target_agent_register.__key, i16 noundef signext 3) #16
  %handler.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 1
  %length.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 32, ptr %length.i, align 8
  %address_callback.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 1, i32 2
  %138 = ptrtoint ptr %address_callback.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @tgt_agent_rw, ptr %address_callback.i, align 8
  %callback_data.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call7.i.i95, ptr %callback_data.i, align 4
  %login5.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 2
  %140 = ptrtoint ptr %login5.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i, ptr %login5.i, align 8
  %state.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 3
  %141 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %state.i, align 4
  %work.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 4
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #16
  %142 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i97 = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i97, ptr noundef nonnull @.str.20, ptr noundef nonnull @sbp_target_agent_register.__key.95, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry10.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i98 = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 4, i32 1, i32 1
  %144 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %entry10.i, ptr %prev.i.i98, align 8
  %func.i99 = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 4, i32 2
  %145 = ptrtoint ptr %func.i99 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @tgt_agent_fetch_work, ptr %func.i99, align 4
  %orb_pointer.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 5
  %146 = ptrtoint ptr %orb_pointer.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 0, ptr %orb_pointer.i, align 8
  %doorbell.i = getelementptr inbounds %struct.sbp_target_agent, ptr %call7.i.i95, i32 0, i32 6
  %147 = ptrtoint ptr %doorbell.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %doorbell.i, align 8
  %call15.i = call i32 @fw_core_add_address_handler(ptr noundef %handler.i, ptr noundef nonnull @sbp_register_region) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i100 = icmp slt i32 %call15.i, 0
  br i1 %cmp.i100, label %if.then16.i102, label %do.body.i101.sbp_target_agent_register.exit_crit_edge

do.body.i101.sbp_target_agent_register.exit_crit_edge: ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_target_agent_register.exit

if.then16.i102:                                   ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i95) #16
  %148 = inttoptr i32 %call15.i to ptr
  br label %sbp_target_agent_register.exit

sbp_target_agent_register.exit:                   ; preds = %if.then16.i102, %do.body.i101.sbp_target_agent_register.exit_crit_edge
  %retval.0.i103 = phi ptr [ %148, %if.then16.i102 ], [ %call7.i.i95, %do.body.i101.sbp_target_agent_register.exit_crit_edge ]
  %tgt_agt = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 6
  %149 = ptrtoint ptr %tgt_agt to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %retval.0.i103, ptr %tgt_agt, align 8
  %cmp.i104 = icmp ugt ptr %retval.0.i103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %sbp_target_agent_register.exit.if.then120_crit_edge, label %if.end130

sbp_target_agent_register.exit.if.then120_crit_edge: ; preds = %sbp_target_agent_register.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then120

if.then120:                                       ; preds = %sbp_target_agent_register.exit.if.then120_crit_edge, %sbp_target_agent_register.exit.thread
  %retval.0.i103144 = phi ptr [ inttoptr (i32 -12 to ptr), %sbp_target_agent_register.exit.thread ], [ %retval.0.i103, %sbp_target_agent_register.exit.if.then120_crit_edge ]
  %150 = ptrtoint ptr %retval.0.i103144 to i32
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %150) #19
  call fastcc void @sbp_session_release(ptr noundef %sess.0, i1 noundef zeroext true)
  call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

if.end130:                                        ; preds = %sbp_target_agent_register.exit
  call void @_raw_spin_lock_bh(ptr noundef %sess.0) #16
  %link = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 1
  %login_list = getelementptr inbounds %struct.sbp_session, ptr %sess.0, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.sbp_session, ptr %sess.0, i32 0, i32 2, i32 1
  %151 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prev.i, align 4
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %152, ptr noundef %login_list) #16
  br i1 %call.i.i105, label %if.end.i.i, label %if.end130.list_add_tail.exit_crit_edge

if.end130.list_add_tail.exit_crit_edge:           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #18
  %153 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %link, ptr %prev.i, align 4
  %154 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %login_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %call7.i, i32 0, i32 1, i32 1
  %155 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %152, ptr %prev3.i.i, align 8
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %link, ptr %152, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end130.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sess.0) #16
  br label %already_logged_in

already_logged_in:                                ; preds = %list_add_tail.exit, %do.end32
  %login.0 = phi ptr [ %spec.select.i8, %do.end32 ], [ %call7.i, %list_add_tail.exit ]
  %sess.1 = phi ptr [ %spec.select.i, %do.end32 ], [ %sess.0, %list_add_tail.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %157 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i108 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %157, i32 noundef 3520, i32 noundef 16) #20
  %tobool133.not = icmp eq ptr %call7.i.i108, null
  br i1 %tobool133.not, label %do.end137, label %if.end142

do.end137:                                        ; preds = %already_logged_in
  call void @__sanitizer_cov_trace_pc() #18
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #19
  call fastcc void @sbp_login_release(ptr noundef nonnull %login.0, i1 noundef zeroext true)
  br label %cleanup

if.end142:                                        ; preds = %already_logged_in
  %length = getelementptr inbounds %struct.sbp_management_orb, ptr %req, i32 0, i32 3
  %158 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %length, align 4
  %and145 = and i32 %159, 65535
  %160 = call i32 @llvm.umax.i32(i32 %and145, i32 12)
  %161 = call i32 @llvm.umin.i32(i32 %160, i32 16)
  %shl161 = shl nuw nsw i32 %161, 16
  %login_id162 = getelementptr inbounds %struct.sbp_login_descriptor, ptr %login.0, i32 0, i32 5
  %162 = ptrtoint ptr %login_id162 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %login_id162, align 4
  %conv163 = zext i16 %163 to i32
  %or165 = or i32 %shl161, %conv163
  %164 = ptrtoint ptr %call7.i.i108 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or165, ptr %call7.i.i108, align 8
  %reconnect_hold167 = getelementptr inbounds %struct.sbp_session, ptr %sess.1, i32 0, i32 9
  %165 = ptrtoint ptr %reconnect_hold167 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %reconnect_hold167, align 8
  %and168 = and i32 %166, 65535
  %reconnect_hold169 = getelementptr inbounds %struct.sbp_login_response_block, ptr %call7.i.i108, i32 0, i32 2
  %167 = ptrtoint ptr %reconnect_hold169 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and168, ptr %reconnect_hold169, align 4
  %tgt_agt170 = getelementptr inbounds %struct.sbp_login_descriptor, ptr %login.0, i32 0, i32 6
  %168 = ptrtoint ptr %tgt_agt170 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %tgt_agt170, align 8
  %handler = getelementptr inbounds %struct.sbp_target_agent, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %handler to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %handler, align 8
  %command_block_agent = getelementptr inbounds %struct.sbp_login_response_block, ptr %call7.i.i108, i32 0, i32 1
  %shr.i = lshr i64 %171, 32
  %conv.i109 = trunc i64 %shr.i to i32
  %172 = ptrtoint ptr %command_block_agent to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv.i109, ptr %command_block_agent, align 4
  %conv1.i = trunc i64 %171 to i32
  %low.i110 = getelementptr inbounds %struct.sbp_login_response_block, ptr %call7.i.i108, i32 0, i32 1, i32 1
  %173 = ptrtoint ptr %low.i110 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv1.i, ptr %low.i110, align 8
  %card171 = getelementptr inbounds %struct.sbp_session, ptr %sess.1, i32 0, i32 6
  %174 = ptrtoint ptr %card171 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %card171, align 4
  %node_id172 = getelementptr inbounds %struct.sbp_session, ptr %sess.1, i32 0, i32 5
  %176 = ptrtoint ptr %node_id172 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %node_id172, align 8
  %generation173 = getelementptr inbounds %struct.sbp_session, ptr %sess.1, i32 0, i32 7
  %178 = ptrtoint ptr %generation173 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %generation173, align 8
  %speed174 = getelementptr inbounds %struct.sbp_session, ptr %sess.1, i32 0, i32 8
  %180 = ptrtoint ptr %speed174 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %speed174, align 4
  %ptr2 = getelementptr inbounds %struct.sbp_management_orb, ptr %req, i32 0, i32 1
  %182 = ptrtoint ptr %ptr2 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ptr2, align 4
  %and.i111 = and i32 %183, 65535
  %conv.i112 = zext i32 %and.i111 to i64
  %shl.i113 = shl nuw nsw i64 %conv.i112, 32
  %low.i114 = getelementptr inbounds %struct.sbp_management_orb, ptr %req, i32 0, i32 1, i32 1
  %184 = ptrtoint ptr %low.i114 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %low.i114, align 4
  %and1.i115 = and i32 %185, -4
  %conv2.i116 = zext i32 %and1.i115 to i64
  %or.i117 = or i64 %shl.i113, %conv2.i116
  %call177 = call fastcc i32 @sbp_run_transaction(ptr noundef %175, i32 noundef 1, i32 noundef %177, i32 noundef %179, i32 noundef %181, i64 noundef %or.i117, ptr noundef nonnull %call7.i.i108, i32 noundef %161)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178.not = icmp eq i32 %call177, 0
  br i1 %cmp178.not, label %if.end193, label %do.body181

do.body181:                                       ; preds = %if.end142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_management_request_login.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_management_request_login, %if.then187)) #16
          to label %do.end190 [label %if.then187], !srcloc !369

if.then187:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_management_request_login.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.79, i32 noundef %call177) #16
  br label %do.end190

do.end190:                                        ; preds = %if.then187, %do.body181
  call void @kfree(ptr noundef nonnull %call7.i.i108) #16
  call fastcc void @sbp_login_release(ptr noundef nonnull %login.0, i1 noundef zeroext true)
  br label %cleanup

if.end193:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i108) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %do.end190, %do.end137, %if.then120, %do.end103, %if.then79, %do.end69, %do.end58, %do.end47, %do.end13, %rcu_read_unlock.exit62.i
  %.sink = phi i32 [ 0, %if.end193 ], [ 285147136, %do.end190 ], [ 524288, %do.end137 ], [ 524288, %if.then120 ], [ 524288, %do.end103 ], [ %., %if.then79 ], [ 524288, %do.end69 ], [ 262144, %do.end58 ], [ 262144, %do.end47 ], [ 285147136, %do.end13 ], [ 327680, %rcu_read_unlock.exit62.i ]
  %status194 = getelementptr inbounds %struct.sbp_management_request, ptr %req, i32 0, i32 1
  %186 = ptrtoint ptr %status194 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %.sink, ptr %status194, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp_session_release(ptr noundef %sess, i1 noundef zeroext %cancel_work) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %sess) #16
  %login_list = getelementptr inbounds %struct.sbp_session, ptr %sess, i32 0, i32 2
  %0 = ptrtoint ptr %login_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %login_list, align 4
  %cmp.i.not = icmp eq ptr %1, %login_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %sess) #16
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  br i1 %cancel_work, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %maint_work = getelementptr inbounds %struct.sbp_session, ptr %sess, i32 0, i32 3
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %maint_work) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %se_sess = getelementptr inbounds %struct.sbp_session, ptr %sess, i32 0, i32 1
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  tail call void @target_remove_session(ptr noundef %3) #16
  %card = getelementptr inbounds %struct.sbp_session, ptr %sess, i32 0, i32 6
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #16, !srcloc !375
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i.i.i, !prof !373

if.end5.i.i.i.i.i.if.end10_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #16
  br label %if.end10

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  tail call void @fw_card_release(ptr noundef %kref.i) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  tail call void @kfree(ptr noundef %sess) #16
  br label %return

return:                                           ; preds = %if.end10, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp_login_release(ptr noundef %login, i1 noundef zeroext %cancel_work) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %login to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %login, align 8
  %tgt_agt = getelementptr inbounds %struct.sbp_login_descriptor, ptr %login, i32 0, i32 6
  %2 = ptrtoint ptr %tgt_agt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgt_agt, align 8
  %handler.i = getelementptr inbounds %struct.sbp_target_agent, ptr %3, i32 0, i32 1
  tail call void @fw_core_remove_address_handler(ptr noundef %handler.i) #16
  %work.i = getelementptr inbounds %struct.sbp_target_agent, ptr %3, i32 0, i32 4
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #16
  tail call void @kfree(ptr noundef %3) #16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %1) #16
  %link = getelementptr inbounds %struct.sbp_login_descriptor, ptr %login, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %login, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %login, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %1) #16
  tail call fastcc void @sbp_session_release(ptr noundef nonnull %1, i1 noundef zeroext %cancel_work)
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %login) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @session_maintenance_work(ptr noundef %work) #4 align 64 {
entry:
  %login_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %login_list = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %login_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %login_list, align 4
  %cmp.i.not = icmp eq ptr %1, %login_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %node_id = getelementptr i8, ptr %work, i32 112
  %2 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %card.i = getelementptr i8, ptr %work, i32 116
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.do.end.i_crit_edge, label %if.then.i

if.then3.do.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %if.then3
  %lock2.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock2.i) #16
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %local_node.i = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %local_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local_node.i, align 8
  %cmp.not.i = icmp eq ptr %9, null
  %lock5.i = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock5.i) #16
  br i1 %cmp.not.i, label %if.then7.i, label %lor.lhs.false.critedge.i

if.then7.i:                                       ; preds = %if.then.i
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %kref.i.i = getelementptr inbounds %struct.fw_card, ptr %11, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !374
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #16, !srcloc !375
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.fw_card_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !373

if.end5.i.i.i.i.i.i.fw_card_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fw_card_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #16
  br label %fw_card_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !376
  tail call void @fw_card_release(ptr noundef %kref.i.i) #16
  br label %fw_card_put.exit.i

fw_card_put.exit.i:                               ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.fw_card_put.exit.i_crit_edge
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %card.i, align 4
  br label %do.end.i

lor.lhs.false.critedge.i:                         ; preds = %if.then.i
  %generation.i = getelementptr i8, ptr %work, i32 120
  %14 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %generation.i, align 8
  %16 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i, align 4
  %generation13.i = getelementptr inbounds %struct.fw_card, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %generation13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generation13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp14.not.i = icmp eq i32 %15, %19
  br i1 %cmp14.not.i, label %lor.lhs.false.critedge.i.session_check_for_reset.exit_crit_edge, label %lor.lhs.false.critedge.i.do.end.i_crit_edge

lor.lhs.false.critedge.i.do.end.i_crit_edge:      ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.critedge.i.session_check_for_reset.exit_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %session_check_for_reset.exit

do.end.i:                                         ; preds = %lor.lhs.false.critedge.i.do.end.i_crit_edge, %fw_card_put.exit.i, %if.then3.do.end.i_crit_edge
  %guid.i = getelementptr i8, ptr %work, i32 104
  %20 = ptrtoint ptr %guid.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %guid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i64 noundef %21) #19
  %22 = ptrtoint ptr %node_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %node_id, align 8
  %call16.i = tail call i64 @get_jiffies_64() #16
  %reconnect_hold.i = getelementptr i8, ptr %work, i32 128
  %23 = ptrtoint ptr %reconnect_hold.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reconnect_hold.i, align 8
  %25 = mul i32 %24, 100
  %mul.i = add i32 %25, 100
  %conv.i22 = sext i32 %mul.i to i64
  %add17.i = add i64 %call16.i, %conv.i22
  %reconnect_expires.i = getelementptr i8, ptr %work, i32 136
  %26 = ptrtoint ptr %reconnect_expires.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add17.i, ptr %reconnect_expires.i, align 8
  br label %session_check_for_reset.exit

session_check_for_reset.exit:                     ; preds = %do.end.i, %lor.lhs.false.critedge.i.session_check_for_reset.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %work, i32 noundef 100) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %reconnect_expires = getelementptr i8, ptr %work, i32 136
  %28 = ptrtoint ptr %reconnect_expires to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %reconnect_expires, align 8
  %call5 = tail call i64 @get_jiffies_64() #16
  %sub = sub i64 %29, %call5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp6 = icmp slt i64 %sub, 0
  br i1 %cmp6, label %if.else10, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work, i32 noundef 100) #16
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %login_list.i) #16
  %31 = getelementptr inbounds %struct.list_head, ptr %login_list.i, i32 0, i32 1
  %32 = ptrtoint ptr %login_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %login_list.i, ptr %login_list.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %login_list.i, ptr %31, align 4
  %guid.i24 = getelementptr i8, ptr %work, i32 104
  %34 = ptrtoint ptr %guid.i24 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %guid.i24, align 8
  %call.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i64 noundef %35) #19
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %36 = ptrtoint ptr %login_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %login_list, align 8
  %cmp.not63.i = icmp eq ptr %37, %login_list
  br i1 %cmp.not63.i, label %if.else10.for.end.i_crit_edge, label %if.else10.for.body.i_crit_edge

if.else10.for.body.i_crit_edge:                   ; preds = %if.else10
  br label %for.body.i

if.else10.for.end.i_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i:                                       ; preds = %list_move_tail.exit.i.for.body.i_crit_edge, %if.else10.for.body.i_crit_edge
  %.pn.in64.i = phi ptr [ %.pn.i, %list_move_tail.exit.i.for.body.i_crit_edge ], [ %37, %if.else10.for.body.i_crit_edge ]
  %login.0.i = getelementptr i8, ptr %.pn.in64.i, i32 -4
  %38 = ptrtoint ptr %.pn.in64.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn.in64.i, align 4
  %39 = ptrtoint ptr %login.0.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %login.0.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in64.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in64.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %.pn.in64.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in64.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.i.__list_del_entry.exit.i.i_crit_edge
  %46 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %31, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in64.i, ptr noundef %47, ptr noundef nonnull %login_list.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.pn.in64.i, ptr %31, align 4
  %49 = ptrtoint ptr %.pn.in64.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %login_list.i, ptr %.pn.in64.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in64.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %.pn.in64.i, ptr %47, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cmp.not.i26 = icmp eq ptr %.pn.i, %login_list
  br i1 %cmp.not.i26, label %list_move_tail.exit.i.for.end.i_crit_edge, label %list_move_tail.exit.i.for.body.i_crit_edge

list_move_tail.exit.i.for.body.i_crit_edge:       ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_move_tail.exit.i.for.end.i_crit_edge:        ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %list_move_tail.exit.i.for.end.i_crit_edge, %if.else10.for.end.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  %52 = ptrtoint ptr %login_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %login_list.i, align 4
  %cmp29.not66.i = icmp eq ptr %53, %login_list.i
  br i1 %cmp29.not66.i, label %for.end.i.session_reconnect_expired.exit_crit_edge, label %for.end.i.for.body31.i_crit_edge

for.end.i.for.body31.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body31.i

for.end.i.session_reconnect_expired.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %session_reconnect_expired.exit

for.body31.i:                                     ; preds = %list_del.exit.i.for.body31.i_crit_edge, %for.end.i.for.body31.i_crit_edge
  %.pn55.in67.i = phi ptr [ %.pn55.i, %list_del.exit.i.for.body31.i_crit_edge ], [ %53, %for.end.i.for.body31.i_crit_edge ]
  %login.1.i = getelementptr i8, ptr %.pn55.in67.i, i32 -4
  %54 = ptrtoint ptr %.pn55.in67.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn55.i = load ptr, ptr %.pn55.in67.i, align 4
  %call.i.i58.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn55.in67.i) #16
  br i1 %call.i.i58.i, label %if.end.i.i61.i, label %for.body31.i.list_del.exit.i_crit_edge

for.body31.i.list_del.exit.i_crit_edge:           ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i61.i:                                   ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i59.i = getelementptr inbounds %struct.list_head, ptr %.pn55.in67.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i59.i, align 4
  %57 = ptrtoint ptr %.pn55.in67.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn55.in67.i, align 4
  %prev1.i.i.i60.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i60.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i61.i, %for.body31.i.list_del.exit.i_crit_edge
  %61 = ptrtoint ptr %.pn55.in67.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn55.in67.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn55.in67.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call fastcc void @sbp_login_release(ptr noundef %login.1.i, i1 noundef zeroext false) #16
  %cmp29.not.i = icmp eq ptr %.pn55.i, %login_list.i
  br i1 %cmp29.not.i, label %list_del.exit.i.session_reconnect_expired.exit_crit_edge, label %list_del.exit.i.for.body31.i_crit_edge

list_del.exit.i.for.body31.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body31.i

list_del.exit.i.session_reconnect_expired.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %session_reconnect_expired.exit

session_reconnect_expired.exit:                   ; preds = %list_del.exit.i.session_reconnect_expired.exit_crit_edge, %for.end.i.session_reconnect_expired.exit_crit_edge
  call fastcc void @sbp_session_release(ptr noundef %add.ptr, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %login_list.i) #16
  br label %cleanup

cleanup:                                          ; preds = %session_reconnect_expired.exit, %if.then7, %session_check_for_reset.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgt_agent_rw(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef %data, i32 noundef %length, ptr noundef %callback_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %login = getelementptr inbounds %struct.sbp_target_agent, ptr %callback_data, i32 0, i32 2
  %0 = ptrtoint ptr %login to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %login, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #16
  %generation2 = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation2, align 8
  %node_id = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_id, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %generation)
  %cmp.not = icmp eq i32 %5, %generation
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %source)
  %cmp4.not = icmp eq i32 %7, %source
  br i1 %cmp4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %source, i32 noundef %7) #19
  br label %out

if.end11:                                         ; preds = %if.end
  %handler = getelementptr inbounds %struct.sbp_target_agent, ptr %callback_data, i32 0, i32 1
  %8 = ptrtoint ptr %handler to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %handler, align 8
  %sub = sub i64 %offset, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %offset)
  %cmp13 = icmp eq i64 %9, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp14 = icmp eq i32 %length, 4
  %or.cond = and i1 %cmp14, %cmp13
  br i1 %or.cond, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %10 = zext i32 %tcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %tcode, label %sw.default.i [
    i32 4, label %do.body.i
    i32 0, label %if.then15.out_crit_edge
  ]

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body.i:                                        ; preds = %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_agent_state.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw, %if.then.i)) #16
          to label %do.end.i [label %if.then.i], !srcloc !369

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_agent_state.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.103) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  tail call void @_raw_spin_lock_bh(ptr noundef %callback_data) #16
  %state3.i = getelementptr inbounds %struct.sbp_target_agent, ptr %callback_data, i32 0, i32 3
  %11 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %callback_data) #16
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 4
  br label %out

sw.default.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %sub)
  %cmp17 = icmp eq i64 %sub, 4
  %or.cond79 = and i1 %cmp14, %cmp17
  br i1 %or.cond79, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcode)
  %cond.i = icmp eq i32 %tcode, 0
  br i1 %cond.i, label %do.body.i83, label %if.then20.out_crit_edge

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body.i83:                                      ; preds = %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_agent_reset.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw, %if.then.i84)) #16
          to label %do.end.i85 [label %if.then.i84], !srcloc !369

if.then.i84:                                      ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_agent_reset.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.106) #16
  br label %do.end.i85

do.end.i85:                                       ; preds = %if.then.i84, %do.body.i83
  tail call void @_raw_spin_lock_bh(ptr noundef %callback_data) #16
  %state.i = getelementptr inbounds %struct.sbp_target_agent, ptr %callback_data, i32 0, i32 3
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %callback_data) #16
  br label %out

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %sub)
  %cmp23 = icmp eq i64 %sub, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp25 = icmp eq i32 %length, 8
  %or.cond80 = and i1 %cmp25, %cmp23
  br i1 %or.cond80, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #18
  %call27 = tail call fastcc i32 @tgt_agent_rw_orb_pointer(i32 noundef %tcode, ptr noundef %data, ptr noundef %callback_data)
  br label %out

if.else28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %sub)
  %cmp29 = icmp eq i64 %sub, 16
  %or.cond81 = and i1 %cmp14, %cmp29
  br i1 %or.cond81, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #18
  %call33 = tail call fastcc i32 @tgt_agent_rw_doorbell(i32 noundef %tcode, ptr noundef %callback_data)
  br label %out

if.else34:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_const_cmp8(i64 20, i64 %sub)
  %cmp35 = icmp eq i64 %sub, 20
  %or.cond82 = and i1 %cmp14, %cmp35
  br i1 %or.cond82, label %if.then38, label %if.else34.out_crit_edge

if.else34.out_crit_edge:                          ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then38:                                        ; preds = %if.else34
  %15 = zext i32 %tcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %tcode, label %sw.default.i89 [
    i32 0, label %do.body.i87
    i32 4, label %if.then38.out_crit_edge
  ]

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body.i87:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_unsolicited_status_enable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw, %if.then.i88)) #16
          to label %out [label %if.then.i88], !srcloc !369

if.then.i88:                                      ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_unsolicited_status_enable.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.120) #16
  br label %out

sw.default.i89:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %sw.default.i89, %if.then.i88, %do.body.i87, %if.then38.out_crit_edge, %if.else34.out_crit_edge, %if.then32, %if.then26, %do.end.i85, %if.then20.out_crit_edge, %sw.default.i, %do.end.i, %if.then15.out_crit_edge, %do.end8, %do.end
  %rcode.0 = phi i32 [ 6, %do.end ], [ 6, %do.end8 ], [ %call27, %if.then26 ], [ %call33, %if.then32 ], [ 7, %if.else34.out_crit_edge ], [ 6, %sw.default.i ], [ 0, %do.end.i ], [ %tcode, %if.then15.out_crit_edge ], [ 0, %do.end.i85 ], [ 6, %if.then20.out_crit_edge ], [ 6, %sw.default.i89 ], [ 0, %if.then.i88 ], [ 0, %if.then38.out_crit_edge ], [ 0, %do.body.i87 ]
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef %rcode.0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgt_agent_fetch_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -88
  %login = getelementptr i8, ptr %work, i32 -8
  %doorbell2 = getelementptr i8, ptr %work, i32 56
  %orb_pointer = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %orb_pointer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool3.not139 = icmp eq i64 %1, 0
  br i1 %tobool3.not139, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %doorbell2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %doorbell2, align 8, !range !382
  %4 = ptrtoint ptr %login to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %login, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %state.i = getelementptr i8, ptr %work, i32 -4
  %se_sess1.i = getelementptr inbounds %struct.sbp_session, ptr %7, i32 0, i32 1
  %card = getelementptr inbounds %struct.sbp_session, ptr %7, i32 0, i32 6
  %node_id = getelementptr inbounds %struct.sbp_session, ptr %7, i32 0, i32 5
  %generation = getelementptr inbounds %struct.sbp_session, ptr %7, i32 0, i32 7
  %speed = getelementptr inbounds %struct.sbp_session, ptr %7, i32 0, i32 8
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i157 = icmp eq i32 %9, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  br i1 %cmp.i157, label %while.body.lr.ph, label %land.rhs.lr.ph.cleanup_crit_edge

land.rhs.lr.ph.cleanup_crit_edge:                 ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %extract.t = icmp ne i8 %3, 0
  br label %while.body

while.body:                                       ; preds = %if.end75.while.body_crit_edge, %while.body.lr.ph
  %doorbell.0.off0140159 = phi i1 [ %extract.t, %while.body.lr.ph ], [ false, %if.end75.while.body_crit_edge ]
  %next_orb.0141158 = phi i64 [ %1, %while.body.lr.ph ], [ %next_orb.1, %if.end75.while.body_crit_edge ]
  %10 = ptrtoint ptr %se_sess1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_sess1.i, align 4
  %sess_tag_pool.i = getelementptr inbounds %struct.se_session, ptr %11, i32 0, i32 14
  %12 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !383
  %16 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu1.i.i, align 4
  %call2.i.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool.i) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !384
  %20 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i6.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i6.i.i to ptr
  %preempt_count.i.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i7.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i129 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i129, label %while.body.if.then_crit_edge, label %sbp_mgt_get_req.exit

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

sbp_mgt_get_req.exit:                             ; preds = %while.body
  %sess_cmd_map.i = getelementptr inbounds %struct.se_session, ptr %11, i32 0, i32 13
  %24 = ptrtoint ptr %sess_cmd_map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sess_cmd_map.i, align 4
  %arrayidx.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i
  %26 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 672)
  %map_tag.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 5, i32 8
  %27 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call2.i.i, ptr %map_tag.i, align 4
  %map_cpu.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 5, i32 9
  %28 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %19, ptr %map_cpu.i, align 8
  %tag5.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 5, i32 4
  %29 = ptrtoint ptr %tag5.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %next_orb.0141158, ptr %tag5.i, align 8
  %cmp.i131 = icmp ugt ptr %arrayidx.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %sbp_mgt_get_req.exit.if.then_crit_edge, label %if.end

sbp_mgt_get_req.exit.if.then_crit_edge:           ; preds = %sbp_mgt_get_req.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %sbp_mgt_get_req.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  br label %cleanup

if.end:                                           ; preds = %sbp_mgt_get_req.exit
  %31 = ptrtoint ptr %login to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %login, align 8
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx.i, align 8
  %orb_pointer9 = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 1
  %34 = ptrtoint ptr %orb_pointer9 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %next_orb.0141158, ptr %orb_pointer9, align 8
  %shr = lshr i64 %next_orb.0141158, 32
  %35 = trunc i64 %shr to i32
  %conv = and i32 %35, 65535
  %status = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 3
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %status, align 8
  %37 = trunc i64 %next_orb.0141158 to i32
  %conv14 = and i32 %37, -4
  %orb_low = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 3, i32 1
  %38 = ptrtoint ptr %orb_low to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv14, ptr %orb_low, align 4
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %41 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %node_id, align 8
  %43 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %generation, align 8
  %45 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed, align 4
  %orb = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 2
  %call18 = tail call fastcc i32 @sbp_run_transaction(ptr noundef %40, i32 noundef 5, i32 noundef %42, i32 noundef %44, i32 noundef %46, i64 noundef %next_orb.0141158, ptr noundef %orb, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp.not = icmp eq i32 %call18, 0
  br i1 %cmp.not, label %if.end35, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_fetch_work.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_fetch_work, %if.then27)) #16
          to label %do.end [label %if.then27], !srcloc !369

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_fetch_work.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.123, i32 noundef %call18) #16
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 8
  %or = or i32 %48, 1509883904
  store i32 %or, ptr %status, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 8
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 8
  %54 = lshr i32 %53, 22
  %add.i = and i32 %54, 28
  %mul.i = add nuw nsw i32 %add.i, 4
  %status_fifo_addr.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %51, i32 0, i32 3
  %55 = ptrtoint ptr %status_fifo_addr.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %status_fifo_addr.i, align 8
  %call.i = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %arrayidx.i, i32 noundef 1, i64 noundef %56, ptr noundef %status, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_fetch_work, %if.then7.i)) #16
          to label %sbp_send_status.exit [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i) #16
  br label %sbp_send_status.exit

do.body9.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_fetch_work, %if.then21.i)) #16
          to label %sbp_send_status.exit [label %if.then21.i], !srcloc !369

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %orb_pointer9 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %orb_pointer9, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %58) #16
  br label %sbp_send_status.exit

sbp_send_status.exit:                             ; preds = %if.then21.i, %do.body9.i, %if.then7.i, %do.body.i
  %se_cmd.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 5
  %call25.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i) #16
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %59 = ptrtoint ptr %orb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %orb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool39.not = icmp sgt i32 %60, -1
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status, align 8
  %or43 = or i32 %62, 1073741824
  store i32 %or43, ptr %status, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %and.i = and i32 %60, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %low.i = getelementptr inbounds %struct.sbp2_pointer, ptr %orb, i32 0, i32 1
  %63 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %low.i, align 4
  %and1.i = and i32 %64, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then40
  %next_orb.1 = phi i64 [ 0, %if.then40 ], [ %or.i, %if.else ]
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i133 = icmp ne i32 %66, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  %brmerge = select i1 %cmp.i133, i1 true, i1 %doorbell.0.off0140159
  br i1 %brmerge, label %if.else66, label %do.body55

do.body55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %work56 = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 4
  tail call void @__init_work(ptr noundef %work56, i32 noundef 0) #16
  %67 = ptrtoint ptr %work56 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %work56, align 8
  %lockdep_map = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.124, ptr noundef nonnull @tgt_agent_fetch_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry60 = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 4, i32 1
  %68 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 4, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry60, ptr %prev.i, align 4
  %func = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 4, i32 2
  %70 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @tgt_agent_process_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %71 = load ptr, ptr @system_unbound_wq, align 4
  %call.i134 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %work56) #16
  br label %if.end67

if.else66:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %se_sess2.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 5, i32 21
  %72 = ptrtoint ptr %se_sess2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %se_sess2.i, align 4
  %pg_tbl.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 6
  %74 = ptrtoint ptr %pg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pg_tbl.i, align 8
  tail call void @kfree(ptr noundef %75) #16
  %cmd_buf.i = getelementptr %struct.sbp_target_request, ptr %25, i32 %call2.i.i, i32 7
  %76 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmd_buf.i, align 4
  tail call void @kfree(ptr noundef %77) #16
  %sess_tag_pool.i.i = getelementptr inbounds %struct.se_session, ptr %73, i32 0, i32 14
  %78 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %map_tag.i, align 4
  %80 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %map_cpu.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i.i, i32 noundef %79, i32 noundef %81) #16
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %do.body55
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %82 = ptrtoint ptr %doorbell2 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %doorbell2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %next_orb.1)
  %tobool70.not = icmp eq i64 %next_orb.1, 0
  br i1 %tobool70.not, label %if.end75.thread, label %if.end75

if.end75.thread:                                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  br label %cleanup

if.end75:                                         ; preds = %if.end67
  %84 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %next_orb.1, ptr %orb_pointer, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #16
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i, align 4
  %cmp.i = icmp eq i32 %86, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #16
  br i1 %cmp.i, label %if.end75.while.body_crit_edge, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup:                                          ; preds = %if.end75.cleanup_crit_edge, %if.end75.thread, %sbp_send_status.exit, %if.then, %land.rhs.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tgt_agent_rw_orb_pointer(i32 noundef %tcode, ptr nocapture noundef %data, ptr noundef %agent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %tcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %tcode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %do.body19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %agent) #16
  %state = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %2, label %if.then [
    i32 2, label %sw.bb.if.end_crit_edge
    i32 0, label %sw.bb.if.end_crit_edge8
  ]

sw.bb.if.end_crit_edge8:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %agent) #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #19
  br label %cleanup

if.end:                                           ; preds = %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %agent) #16
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %and.i = and i32 %6, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %low.i = getelementptr inbounds %struct.sbp2_pointer, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %low.i, align 4
  %and1.i = and i32 %8, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  %orb_pointer = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 5
  %9 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or.i, ptr %orb_pointer, align 8
  %doorbell = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 6
  %10 = ptrtoint ptr %doorbell to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %doorbell, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw_orb_pointer, %if.then12)) #16
          to label %do.end16 [label %if.then12], !srcloc !369

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %orb_pointer, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.110, i64 noundef %12) #16
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %13 = load ptr, ptr @system_unbound_wq, align 4
  %work = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work) #16
  br label %cleanup

do.body19:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw_orb_pointer, %if.then31)) #16
          to label %do.end34 [label %if.then31], !srcloc !369

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.112) #16
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  tail call void @_raw_spin_lock_bh(ptr noundef %agent) #16
  %orb_pointer36 = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 5
  %14 = ptrtoint ptr %orb_pointer36 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %orb_pointer36, align 8
  %shr.i = lshr i64 %15, 32
  %conv.i4 = trunc i64 %shr.i to i32
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i4, ptr %data, align 4
  %conv1.i = trunc i64 %15 to i32
  %low.i5 = getelementptr inbounds %struct.sbp2_pointer, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %low.i5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv1.i, ptr %low.i5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %agent) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end16, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end34 ], [ 4, %if.then ], [ 0, %do.end16 ], [ 6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tgt_agent_rw_doorbell(i32 noundef %tcode, ptr noundef %agent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %tcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %tcode, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %agent) #16
  %state = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %agent) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw_doorbell, %if.then4)) #16
          to label %return [label %if.then4], !srcloc !369

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.115) #16
  br label %return

if.end5:                                          ; preds = %sw.bb
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %agent) #16
  %doorbell = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 6
  %4 = ptrtoint ptr %doorbell to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %doorbell, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_rw_doorbell, %if.then20)) #16
          to label %do.end22 [label %if.then20], !srcloc !369

if.then20:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.117) #16
  br label %do.end22

do.end22:                                         ; preds = %if.then20, %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %5 = load ptr, ptr @system_unbound_wq, align 4
  %work = getelementptr inbounds %struct.sbp_target_agent, ptr %agent, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work) #16
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %sw.default, %do.end22, %if.then4, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 6, %sw.default ], [ 0, %do.end22 ], [ 4, %if.then4 ], [ 0, %entry.return_crit_edge ], [ 4, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgt_agent_process_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_process_work.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_process_work, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !369

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %orb_pointer = getelementptr i8, ptr %work, i32 -72
  %0 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %orb_pointer, align 8
  %orb = getelementptr i8, ptr %work, i32 -64
  %2 = ptrtoint ptr %orb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orb, align 4
  %and.i = and i32 %3, 65535
  %conv.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %low.i = getelementptr i8, ptr %work, i32 -60
  %4 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %low.i, align 4
  %and1.i = and i32 %5, -4
  %conv2.i = zext i32 %and1.i to i64
  %or.i = or i64 %shl.i, %conv2.i
  %data_descriptor = getelementptr i8, ptr %work, i32 -56
  %6 = ptrtoint ptr %data_descriptor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_descriptor, align 4
  %and.i58 = and i32 %7, 65535
  %conv.i59 = zext i32 %and.i58 to i64
  %shl.i60 = shl nuw nsw i64 %conv.i59, 32
  %low.i61 = getelementptr i8, ptr %work, i32 -52
  %8 = ptrtoint ptr %low.i61 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %low.i61, align 4
  %and1.i62 = and i32 %9, -4
  %conv2.i63 = zext i32 %and1.i62 to i64
  %or.i64 = or i64 %shl.i60, %conv2.i63
  %misc = getelementptr i8, ptr %work, i32 -48
  %10 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %misc, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_process_work.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.127, i64 noundef %1, i64 noundef %or.i, i64 noundef %or.i64, i32 noundef %11) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %orb_pointer8 = getelementptr i8, ptr %work, i32 -72
  %12 = ptrtoint ptr %orb_pointer8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %orb_pointer8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %tobool9.not = icmp ult i64 %13, 4294967296
  br i1 %tobool9.not, label %do.end.if.end27_crit_edge, label %do.body11

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgt_agent_process_work.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_process_work, %if.then23)) #16
          to label %if.end27 [label %if.then23], !srcloc !369

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgt_agent_process_work.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.129) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body11, %do.end.if.end27_crit_edge
  %misc29 = getelementptr i8, ptr %work, i32 -48
  %14 = ptrtoint ptr %misc29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %misc29, align 8
  %shr30 = lshr i32 %15, 29
  %and = and i32 %shr30, 3
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %and, label %if.end27.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %if.end27.sw.bb31_crit_edge
    i32 2, label %if.end27.sw.bb31_crit_edge82
    i32 3, label %sw.bb34
  ]

if.end27.sw.bb31_crit_edge82:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb31

if.end27.sw.bb31_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb31

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @sbp_handle_command(ptr noundef %add.ptr)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end27.sw.bb31_crit_edge, %if.end27.sw.bb31_crit_edge82
  %status = getelementptr i8, ptr %work, i32 -32
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 8
  %or = or i32 %18, 16842752
  store i32 %or, ptr %status, align 8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %21 = lshr i32 %or, 22
  %add.i = and i32 %21, 28
  %mul.i = add nuw nsw i32 %add.i, 4
  %status_fifo_addr.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %20, i32 0, i32 3
  %22 = ptrtoint ptr %status_fifo_addr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %status_fifo_addr.i, align 8
  %call.i = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %add.ptr, i32 noundef 1, i64 noundef %23, ptr noundef %status, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_process_work, %if.then7.i)) #16
          to label %sbp_send_status.exit [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i) #16
  br label %sbp_send_status.exit

do.body9.i:                                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_process_work, %if.then21.i)) #16
          to label %sbp_send_status.exit [label %if.then21.i], !srcloc !369

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %orb_pointer8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %orb_pointer8, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %25) #16
  br label %sbp_send_status.exit

sbp_send_status.exit:                             ; preds = %if.then21.i, %do.body9.i, %if.then7.i, %do.body.i
  %se_cmd.i = getelementptr i8, ptr %work, i32 48
  %call25.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i) #16
  br label %cleanup

sw.bb34:                                          ; preds = %if.end27
  %status35 = getelementptr i8, ptr %work, i32 -32
  %26 = ptrtoint ptr %status35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status35, align 8
  %or37 = or i32 %27, 17498112
  store i32 %or37, ptr %status35, align 8
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %30 = lshr i32 %or37, 22
  %add.i66 = and i32 %30, 28
  %mul.i67 = add nuw nsw i32 %add.i66, 4
  %status_fifo_addr.i68 = getelementptr inbounds %struct.sbp_login_descriptor, ptr %29, i32 0, i32 3
  %31 = ptrtoint ptr %status_fifo_addr.i68 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %status_fifo_addr.i68, align 8
  %call.i69 = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %add.ptr, i32 noundef 1, i64 noundef %32, ptr noundef %status35, i32 noundef %mul.i67) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %cmp.not.i70, label %do.body9.i73, label %do.body.i71

do.body.i71:                                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_process_work, %if.then7.i72)) #16
          to label %sbp_send_status.exit79 [label %if.then7.i72], !srcloc !369

if.then7.i72:                                     ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i69) #16
  br label %sbp_send_status.exit79

do.body9.i73:                                     ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgt_agent_process_work, %if.then21.i75)) #16
          to label %sbp_send_status.exit79 [label %if.then21.i75], !srcloc !369

if.then21.i75:                                    ; preds = %do.body9.i73
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %orb_pointer8 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %orb_pointer8, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %34) #16
  br label %sbp_send_status.exit79

sbp_send_status.exit79:                           ; preds = %if.then21.i75, %do.body9.i73, %if.then7.i72, %do.body.i71
  %se_cmd.i77 = getelementptr i8, ptr %work, i32 48
  %call25.i78 = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i77) #16
  br label %cleanup

if.end27.unreachabledefault:                      ; preds = %if.end27
  unreachable

cleanup:                                          ; preds = %sbp_send_status.exit79, %sbp_send_status.exit, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp_handle_command(ptr noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call fastcc i32 @sbp_fetch_command(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_handle_command.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_handle_command, %if.then7)) #16
          to label %err [label %if.then7], !srcloc !369

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_handle_command.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.132, i32 noundef %call) #16
  br label %err

if.end8:                                          ; preds = %entry
  %misc.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %misc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %misc.i, align 8
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end8.if.end28_crit_edge, label %if.end.i

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.end.i:                                         ; preds = %if.end8
  %and4.i = shl i32 %5, 3
  %mul.i = and i32 %and4.i, 524280
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #21
  %tobool5.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.do.body12_crit_edge, label %if.end7.i

if.end.i.do.body12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12

if.end7.i:                                        ; preds = %if.end.i
  %data_descriptor.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %data_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_descriptor.i, align 4
  %and.i.i = and i32 %8, 65535
  %conv.i.i = zext i32 %and.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %low.i.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %low.i.i, align 4
  %and1.i.i = and i32 %10, -4
  %conv2.i.i = zext i32 %and1.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call10.i = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %req, i32 noundef 5, i64 noundef %or.i.i, ptr noundef nonnull %call9.i.i, i32 noundef %mul.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  br label %do.body12

if.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %pg_tbl13.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 6
  %11 = ptrtoint ptr %pg_tbl13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %pg_tbl13.i, align 8
  br label %if.end28

do.body12:                                        ; preds = %if.then11.i, %if.end.i.do.body12_crit_edge
  %retval.0.i77 = phi i32 [ -5, %if.then11.i ], [ -12, %if.end.i.do.body12_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_handle_command.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_handle_command, %if.then24)) #16
          to label %err [label %if.then24], !srcloc !369

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_handle_command.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.134, i32 noundef %retval.0.i77) #16
  br label %err

if.end28:                                         ; preds = %if.end12.i, %if.end8.if.end28_crit_edge
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 8
  %login_lun = getelementptr inbounds %struct.sbp_login_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %login_lun to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %login_lun, align 4
  %16 = ptrtoint ptr %misc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %misc.i, align 8
  %and.i = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i79 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i79, label %if.end28.sbp_calc_data_length_direction.exit_crit_edge, label %if.end.i81

if.end28.sbp_calc_data_length_direction.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_calc_data_length_direction.exit

if.end.i81:                                       ; preds = %if.end28
  %18 = and i32 %17, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i80 = icmp eq i32 %18, 0
  %cond.i = select i1 %tobool5.not.i80, i32 1, i32 2
  %pg_tbl.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 6
  %19 = ptrtoint ptr %pg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pg_tbl.i, align 8
  %tobool6.not.i = icmp eq ptr %20, null
  br i1 %tobool6.not.i, label %if.end.i81.sbp_calc_data_length_direction.exit_crit_edge, label %if.end.i81.for.body.i_crit_edge

if.end.i81.for.body.i_crit_edge:                  ; preds = %if.end.i81
  br label %for.body.i

if.end.i81.sbp_calc_data_length_direction.exit_crit_edge: ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_calc_data_length_direction.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i81.for.body.i_crit_edge
  %data_length.0 = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i81.for.body.i_crit_edge ]
  %idx.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i81.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sbp_page_table_entry, ptr %20, i32 %idx.024.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %22 to i32
  %add.i = add i32 %data_length.0, %conv.i
  %inc.i = add nuw nsw i32 %idx.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %for.body.i.sbp_calc_data_length_direction.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.sbp_calc_data_length_direction.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sbp_calc_data_length_direction.exit

sbp_calc_data_length_direction.exit:              ; preds = %for.body.i.sbp_calc_data_length_direction.exit_crit_edge, %if.end.i81.sbp_calc_data_length_direction.exit_crit_edge, %if.end28.sbp_calc_data_length_direction.exit_crit_edge
  %data_length.1 = phi i32 [ 0, %if.end28.sbp_calc_data_length_direction.exit_crit_edge ], [ %and.i, %if.end.i81.sbp_calc_data_length_direction.exit_crit_edge ], [ %add.i, %for.body.i.sbp_calc_data_length_direction.exit_crit_edge ]
  %data_dir.0 = phi i32 [ 3, %if.end28.sbp_calc_data_length_direction.exit_crit_edge ], [ %cond.i, %if.end.i81.sbp_calc_data_length_direction.exit_crit_edge ], [ %cond.i, %for.body.i.sbp_calc_data_length_direction.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_handle_command.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_handle_command, %if.then42)) #16
          to label %do.end45 [label %if.then42], !srcloc !369

if.then42:                                        ; preds = %sbp_calc_data_length_direction.exit
  call void @__sanitizer_cov_trace_pc() #18
  %orb_pointer = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %orb_pointer, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_handle_command.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.136, i64 noundef %24, i32 noundef %15, i32 noundef %data_length.1, i32 noundef %data_dir.0) #16
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %sbp_calc_data_length_direction.exit
  %orb_pointer46 = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %orb_pointer46 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %orb_pointer46, align 8
  %se_cmd = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5
  %tag = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %tag to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tag, align 8
  %se_sess = getelementptr inbounds %struct.sbp_session, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_sess, align 4
  %cmd_buf = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 7
  %30 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_buf, align 4
  %sense_buf = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 8
  %conv = sext i32 %15 to i64
  tail call void @target_submit_cmd(ptr noundef %se_cmd, ptr noundef %29, ptr noundef %31, ptr noundef %sense_buf, i64 noundef %conv, i32 noundef %data_length.1, i32 noundef 32, i32 noundef %data_dir.0, i32 noundef 2) #16
  br label %cleanup

err:                                              ; preds = %if.then24, %do.body12, %if.then7, %do.body
  %status = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 3
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 8
  %or = or i32 %33, 301924352
  store i32 %or, ptr %status, align 8
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 8
  %36 = lshr i32 %or, 22
  %add.i82 = and i32 %36, 28
  %mul.i83 = add nuw nsw i32 %add.i82, 4
  %status_fifo_addr.i = getelementptr inbounds %struct.sbp_login_descriptor, ptr %35, i32 0, i32 3
  %37 = ptrtoint ptr %status_fifo_addr.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %status_fifo_addr.i, align 8
  %call.i = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %req, i32 noundef 1, i64 noundef %38, ptr noundef %status, i32 noundef %mul.i83) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i84 = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i84, label %do.body9.i, label %do.body.i

do.body.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_handle_command, %if.then7.i)) #16
          to label %sbp_send_status.exit [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.7, i32 noundef %call.i) #16
  br label %sbp_send_status.exit

do.body9.i:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_send_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_handle_command, %if.then21.i)) #16
          to label %sbp_send_status.exit [label %if.then21.i], !srcloc !369

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #18
  %orb_pointer.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 1
  %39 = ptrtoint ptr %orb_pointer.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %orb_pointer.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_send_status.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.9, i64 noundef %40) #16
  br label %sbp_send_status.exit

sbp_send_status.exit:                             ; preds = %if.then21.i, %do.body9.i, %if.then7.i, %do.body.i
  %se_cmd.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 5
  %call25.i = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd.i) #16
  br label %cleanup

cleanup:                                          ; preds = %sbp_send_status.exit, %do.end45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_fetch_command(ptr nocapture noundef %req) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %command_block = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %command_block to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command_block, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp.i = icmp eq i8 %1, 127
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %additional_cdb_length.i.i = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 2, i32 3, i32 7
  %2 = ptrtoint ptr %additional_cdb_length.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %additional_cdb_length.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  br label %if.end8.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = lshr i8 %1, 5
  %5 = zext i8 %4 to i32
  %arrayidx4.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i, %cond.true.i ], [ %conv5.i, %cond.false.i ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond.i, i32 noundef 3264) #21
  %cmd_buf = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 7
  %8 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %cmd_buf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  %9 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 12)
  %10 = call ptr @memcpy(ptr %call9.i, ptr %command_block, i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %cond.i)
  %cmp7 = icmp ugt i32 %cond.i, 12
  br i1 %cmp7, label %do.body, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_fetch_command.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbp_fetch_command, %if.then14)) #16
          to label %do.end [label %if.then14], !srcloc !369

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_fetch_command.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.139) #16
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %sub = add nsw i32 %cond.i, -12
  %orb_pointer = getelementptr inbounds %struct.sbp_target_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %orb_pointer, align 8
  %add = add i64 %12, 32
  %13 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_buf, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 12
  %call17 = tail call fastcc i32 @sbp_run_request_transaction(ptr noundef %req, i32 noundef 5, i64 noundef %add, ptr noundef %add.ptr, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %do.end.if.end21_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.end21:                                         ; preds = %do.end.if.end21_crit_edge, %if.end.if.end21_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_submit_cmd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_count_se_tpg_luns(ptr noundef %tpg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !377
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 696, ptr noundef nonnull @.str.82) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @sbp_count_se_tpg_luns.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sbp_count_se_tpg_luns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1801, ptr noundef nonnull @.str.80) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %tpg_lun_hlist = getelementptr inbounds %struct.se_portal_group, ptr %tpg, i32 0, i32 7
  %4 = ptrtoint ptr %tpg_lun_hlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tpg_lun_hlist, align 4
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -728
  %tobool12.not4649 = icmp eq ptr %add.ptr, null
  %tobool12.not46 = or i1 %tobool10.not, %tobool12.not4649
  br i1 %tobool12.not46, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %6 = phi ptr [ %8, %for.body.for.body_crit_edge ], [ %5, %do.end.for.body_crit_edge ]
  %count.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %inc = add i32 %count.047, 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 8
  %tobool20.not = icmp eq ptr %8, null
  %add.ptr24 = getelementptr i8, ptr %8, i32 -728
  %tobool12.not50 = icmp eq ptr %add.ptr24, null
  %tobool12.not = or i1 %tobool20.not, %tobool12.not50
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i35, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %for.end
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 724, ptr noundef nonnull @.str.83) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !378
  %9 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i42 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp_update_unit_directory(ptr noundef %tport) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %unit_directory = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 4
  %data1 = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @fw_core_remove_descriptor(ptr noundef %unit_directory) #16
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  tail call void @kfree(ptr noundef %3) #16
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enable = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 6
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tpg = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 3
  %7 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tpg, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %se_tpg = getelementptr inbounds %struct.sbp_tpg, ptr %8, i32 0, i32 2
  %call = tail call fastcc i32 @sbp_count_se_tpg_luns(ptr noundef %se_tpg)
  %directory_id = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 7
  %9 = ptrtoint ptr %directory_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %directory_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.not = icmp eq i32 %10, -1
  %spec.select.v = select i1 %cmp.not, i32 10, i32 11
  %spec.select = add i32 %spec.select.v, %call
  %add14 = add i32 %spec.select, 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add14, i32 4) #16
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end10.cleanup_crit_edge, label %if.end7.i.i, !prof !372

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end10
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #21
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end18

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i.i
  %shl = shl i32 %spec.select, 16
  %14 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %call8.i.i, align 128
  %15 = ptrtoint ptr %directory_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %directory_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp21.not = icmp eq i32 %16, -1
  br i1 %cmp21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i32 %16, 536870912
  %arrayidx25 = getelementptr i32, ptr %call8.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %arrayidx25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %idx.0 = phi i32 [ 2, %if.then22 ], [ 1, %if.end18.if.end26_crit_edge ]
  %arrayidx27 = getelementptr i32, ptr %call8.i.i, i32 %idx.0
  %18 = call ptr @memcpy(ptr %arrayidx27, ptr @sbp_unit_directory_template, i32 24)
  %add28 = add nuw nsw i32 %idx.0, 6
  %mgt_agt = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 5
  %19 = ptrtoint ptr %mgt_agt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mgt_agt, align 8
  %handler = getelementptr inbounds %struct.sbp_management_agent, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %handler to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %handler, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 2
  %and = and i32 %24, 16777215
  %or29 = or i32 %and, 1409286144
  %inc30 = add nuw nsw i32 %idx.0, 7
  %arrayidx31 = getelementptr i32, ptr %call8.i.i, i32 %add28
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or29, ptr %arrayidx31, align 4
  %mgt_orb_timeout = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 8
  %26 = ptrtoint ptr %mgt_orb_timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mgt_orb_timeout, align 4
  %mul = shl i32 %27, 9
  %and33 = and i32 %mul, 65024
  %or35 = or i32 %and33, 973078536
  %inc36 = or i32 %idx.0, 8
  %arrayidx37 = getelementptr i32, ptr %call8.i.i, i32 %inc30
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or35, ptr %arrayidx37, align 4
  %max_reconnect_timeout = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 9
  %29 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_reconnect_timeout, align 8
  %and38 = and i32 %30, 65535
  %or39 = or i32 %and38, 1023410176
  %inc40 = add nuw nsw i32 %idx.0, 9
  %arrayidx41 = getelementptr i32, ptr %call8.i.i, i32 %inc36
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or39, ptr %arrayidx41, align 4
  %add42 = add i32 %call, 1
  %or43 = or i32 %add42, -1929379840
  %inc44 = add nuw nsw i32 %idx.0, 10
  %arrayidx45 = getelementptr i32, ptr %call8.i.i, i32 %inc40
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or43, ptr %arrayidx45, align 4
  %33 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !377
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end26.rcu_read_lock.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 696, ptr noundef nonnull @.str.82) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end26.rcu_read_lock.exit_crit_edge
  %call46 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true50

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true50:                                  ; preds = %land.lhs.true
  %.b182 = load i1, ptr @sbp_update_unit_directory.__warned, align 1
  br i1 %.b182, label %land.lhs.true50.do.end_crit_edge, label %if.then52

land.lhs.true50.do.end_crit_edge:                 ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @sbp_update_unit_directory.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1874, ptr noundef nonnull @.str.80) #16
  br label %do.end

do.end:                                           ; preds = %if.then52, %land.lhs.true50.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %37 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tpg, align 4
  %tpg_lun_hlist = getelementptr inbounds %struct.sbp_tpg, ptr %38, i32 0, i32 2, i32 7
  %39 = ptrtoint ptr %tpg_lun_hlist to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %tpg_lun_hlist, align 4
  %tobool61.not = icmp eq ptr %40, null
  %add.ptr = getelementptr i8, ptr %40, i32 -728
  %tobool63.not203206 = icmp eq ptr %add.ptr, null
  %tobool63.not203 = or i1 %tobool61.not, %tobool63.not203206
  br i1 %tobool63.not203, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %lun.0205 = phi ptr [ %add.ptr90, %for.body.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %idx.1204 = phi i32 [ %inc77, %for.body.for.body_crit_edge ], [ %inc44, %do.end.for.body_crit_edge ]
  %lun_se_dev = getelementptr inbounds %struct.se_lun, ptr %lun.0205, i32 0, i32 6
  %41 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %lun_se_dev, align 8
  %transport = getelementptr inbounds %struct.se_device, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_device_type, align 4
  %call69 = tail call i32 %46(ptr noundef %42) #16
  %shl70 = shl i32 %call69, 16
  %and71 = and i32 %shl70, 2031616
  %47 = ptrtoint ptr %lun.0205 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %lun.0205, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %or72 = or i32 %and71, %50
  %conv76 = or i32 %or72, 335544320
  %inc77 = add i32 %idx.1204, 1
  %arrayidx78 = getelementptr i32, ptr %call8.i.i, i32 %idx.1204
  %51 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv76, ptr %arrayidx78, align 4
  %link = getelementptr inbounds %struct.se_lun, ptr %lun.0205, i32 0, i32 23
  %52 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %link, align 8
  %tobool86.not = icmp eq ptr %53, null
  %add.ptr90 = getelementptr i8, ptr %53, i32 -728
  %tobool63.not207 = icmp eq ptr %add.ptr90, null
  %tobool63.not = or i1 %tobool86.not, %tobool63.not207
  br i1 %tobool63.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.1.lcssa = phi i32 [ %inc44, %do.end.for.end_crit_edge ], [ %inc77, %for.body.for.end_crit_edge ]
  %call.i185 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i185, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i188

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i188:                               ; preds = %for.end
  %call1.i186 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i186)
  %tobool.not.i187 = icmp eq i32 %call1.i186, 0
  br i1 %tobool.not.i187, label %land.lhs.true.i188.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i190

land.lhs.true.i188.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i190:                              ; preds = %land.lhs.true.i188
  %.b4.i189 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i189, label %land.lhs.true2.i190.rcu_read_unlock.exit_crit_edge, label %if.then.i191

land.lhs.true2.i190.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i190
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i191:                                     ; preds = %land.lhs.true2.i190
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.81, i32 noundef 724, ptr noundef nonnull @.str.83) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i191, %land.lhs.true2.i190.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i188.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !378
  %54 = tail call i32 @llvm.read_register.i32(metadata !359) #16
  %and.i.i.i.i.i192 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i192 to ptr
  %preempt_count.i.i.i.i193 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i193, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i193, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %inc94 = add i32 %idx.1.lcssa, 1
  %arrayidx95 = getelementptr i32, ptr %call8.i.i, i32 %idx.1.lcssa
  %58 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 131072, ptr %arrayidx95, align 4
  %59 = ptrtoint ptr %tport to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tport, align 8
  %shr = lshr i64 %60, 32
  %conv96 = trunc i64 %shr to i32
  %inc97 = add i32 %idx.1.lcssa, 2
  %arrayidx98 = getelementptr i32, ptr %call8.i.i, i32 %inc94
  %61 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv96, ptr %arrayidx98, align 4
  %conv100 = trunc i64 %60 to i32
  %inc101 = add i32 %idx.1.lcssa, 3
  %arrayidx102 = getelementptr i32, ptr %call8.i.i, i32 %inc97
  %62 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv100, ptr %arrayidx102, align 4
  %length = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc101, ptr %length, align 8
  %key = getelementptr inbounds %struct.sbp_tport, ptr %tport, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -788529152, ptr %key, align 8
  %65 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call8.i.i, ptr %data1, align 4
  %call108 = tail call i32 @fw_core_add_descriptor(ptr noundef %unit_directory) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then111:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data1, align 4
  tail call void @kfree(ptr noundef %67) #16
  %68 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %data1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %rcu_read_unlock.exit.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call108, %if.then111 ], [ %call108, %rcu_read_unlock.exit.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_descriptor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_descriptor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_wwn_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_directory_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -276
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %directory_id = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %directory_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %directory_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 10)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.172, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 9, %if.then ], [ %call4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_directory_id_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -276
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !370
  %enable = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %strncmp = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(9) @.str.175, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp22 = icmp eq i32 %strncmp, 0
  br i1 %cmp22, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %directory_id = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %directory_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %directory_id, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 16, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %cmp10 = icmp ugt i32 %7, 16777215
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %directory_id13 = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %directory_id13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %directory_id13, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then5, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %count, %if.end12 ], [ %count, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_attrib_mgt_orb_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %mgt_orb_timeout = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mgt_orb_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mgt_orb_timeout, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.177, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_attrib_mgt_orb_timeout_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !370
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %5)
  %6 = icmp ult i32 %5, -127
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mgt_orb_timeout = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %mgt_orb_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mgt_orb_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp7 = icmp eq i32 %8, %4
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %mgt_orb_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %mgt_orb_timeout, align 4
  %call11 = call fastcc i32 @sbp_update_unit_directory(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %call11.count = select i1 %cmp12, i32 %call11, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end6.cleanup_crit_edge ], [ %call11.count, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_attrib_max_reconnect_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %max_reconnect_timeout = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reconnect_timeout, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.177, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_attrib_max_reconnect_timeout_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !370
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = add i32 %4, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32767, i32 %5)
  %6 = icmp ult i32 %5, -32767
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %max_reconnect_timeout = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_reconnect_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp7 = icmp eq i32 %8, %4
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %max_reconnect_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %max_reconnect_timeout, align 8
  %call11 = call fastcc i32 @sbp_update_unit_directory(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %call11.count = select i1 %cmp12, i32 %call11, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end6.cleanup_crit_edge ], [ %call11.count, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_attrib_max_logins_per_lun_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %max_logins_per_lun = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %max_logins_per_lun to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_logins_per_lun, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.177, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp_tpg_attrib_max_logins_per_lun_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %item, i32 -596
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !370
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = add i32 %4, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %5)
  %6 = icmp ult i32 %5, -127
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %max_logins_per_lun = getelementptr inbounds %struct.sbp_tport, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %max_logins_per_lun to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %max_logins_per_lun, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !303, !304, !305, !306, !308, !309, !310, !312, !314, !316, !318, !319, !320, !321, !323, !325, !326, !328, !330, !332, !334, !335, !337, !339, !341, !342, !343, !344, !346, !348, !350, !351, !353, !355, !356, !358}
!llvm.named.register.sp = !{!359}
!llvm.module.flags = !{!360, !361, !362, !363, !364, !365, !366, !367}
!llvm.ident = !{!368}

!0 = !{ptr @__UNIQUE_ID_description327, !1, !"__UNIQUE_ID_description327", i1 false, i1 false}
!1 = !{!"../drivers/target/sbp/sbp_target.c", i32 2324, i32 1}
!2 = !{ptr @__UNIQUE_ID_file328, !3, !"__UNIQUE_ID_file328", i1 false, i1 false}
!3 = !{!"../drivers/target/sbp/sbp_target.c", i32 2325, i32 1}
!4 = !{ptr @__UNIQUE_ID_license329, !3, !"__UNIQUE_ID_license329", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_sbp_target__330_2326_sbp_init6, !6, !"__initcall__kmod_sbp_target__330_2326_sbp_init6", i1 false, i1 false}
!6 = !{!"../drivers/target/sbp/sbp_target.c", i32 2326, i32 1}
!7 = !{ptr @__exitcall_sbp_exit, !8, !"__exitcall_sbp_exit", i1 false, i1 false}
!8 = !{!"../drivers/target/sbp/sbp_target.c", i32 2327, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/target/sbp/sbp_target.c", i32 2279, i32 19}
!11 = !{ptr @sbp_ops, !12, !"sbp_ops", i1 false, i1 false}
!12 = !{!"../drivers/target/sbp/sbp_target.c", i32 2277, i32 44}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/sbp/sbp_target.c", i32 1263, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sbp_rw_data._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @sbp_rw_data._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/sbp/sbp_target.c", i32 1338, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sbp_send_status.__UNIQUE_ID_ddebug312, !20, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/sbp/sbp_target.c", i32 1343, i32 2}
!27 = !{ptr @sbp_send_status.__UNIQUE_ID_ddebug313, !26, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/sbp/sbp_target.c", i32 1377, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sbp_sense_mangle._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @sbp_sense_mangle._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/sbp/sbp_target.c", i32 1938, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sbp_parse_wwn._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sbp_parse_wwn._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/sbp/sbp_target.c", i32 1945, i32 28}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/target/sbp/sbp_target.c", i32 1992, i32 19}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/sbp/sbp_target.c", i32 1998, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sbp_make_tpg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sbp_make_tpg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sbp_management_agent_register.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/target/sbp/sbp_target.c", i32 1644, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sbp_management_agent_register.__key.19, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/target/sbp/sbp_target.c", i32 1650, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/sbp/sbp_target.c", i32 1603, i32 4}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sbp_mgt_agent_rw._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sbp_mgt_agent_rw._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/sbp/sbp_target.c", i32 1463, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sbp_mgt_agent_process.__UNIQUE_ID_ddebug314, !60, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!63 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/sbp/sbp_target.c", i32 1467, i32 2}
!66 = !{ptr @sbp_mgt_agent_process.__UNIQUE_ID_ddebug315, !65, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!67 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/sbp/sbp_target.c", i32 1475, i32 3}
!70 = !{ptr @sbp_mgt_agent_process._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sbp_mgt_agent_process._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/sbp/sbp_target.c", i32 1494, i32 3}
!74 = !{ptr @sbp_mgt_agent_process._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sbp_mgt_agent_process._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/target/sbp/sbp_target.c", i32 1507, i32 3}
!78 = !{ptr @sbp_mgt_agent_process._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sbp_mgt_agent_process._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/sbp/sbp_target.c", i32 1516, i32 3}
!82 = !{ptr @sbp_mgt_agent_process._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sbp_mgt_agent_process._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/sbp/sbp_target.c", i32 1525, i32 3}
!86 = !{ptr @sbp_mgt_agent_process._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sbp_mgt_agent_process._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/sbp/sbp_target.c", i32 1534, i32 3}
!90 = !{ptr @sbp_mgt_agent_process._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sbp_mgt_agent_process._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/sbp/sbp_target.c", i32 1543, i32 3}
!94 = !{ptr @sbp_mgt_agent_process._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sbp_mgt_agent_process._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/sbp/sbp_target.c", i32 1565, i32 3}
!98 = !{ptr @sbp_mgt_agent_process.__UNIQUE_ID_ddebug316, !97, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!99 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/target/sbp/sbp_target.c", i32 274, i32 3}
!102 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @sbp_management_request_login._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @sbp_management_request_login._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/sbp/sbp_target.c", i32 285, i32 3}
!107 = !{ptr @sbp_management_request_login._entry.51, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @sbp_management_request_login._entry_ptr.53, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/sbp/sbp_target.c", i32 293, i32 2}
!111 = !{ptr @sbp_management_request_login._entry.54, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @sbp_management_request_login._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/target/sbp/sbp_target.c", i32 300, i32 4}
!115 = !{ptr @sbp_management_request_login._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @sbp_management_request_login._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/target/sbp/sbp_target.c", i32 327, i32 3}
!119 = !{ptr @sbp_management_request_login._entry.60, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @sbp_management_request_login._entry_ptr.62, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/target/sbp/sbp_target.c", i32 340, i32 3}
!123 = !{ptr @sbp_management_request_login._entry.63, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @sbp_management_request_login._entry_ptr.65, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/target/sbp/sbp_target.c", i32 354, i32 3}
!127 = !{ptr @sbp_management_request_login._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sbp_management_request_login._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/sbp/sbp_target.c", i32 397, i32 3}
!131 = !{ptr @sbp_management_request_login._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @sbp_management_request_login._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/sbp/sbp_target.c", i32 416, i32 3}
!135 = !{ptr @sbp_management_request_login._entry.72, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @sbp_management_request_login._entry_ptr.74, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/sbp/sbp_target.c", i32 434, i32 3}
!139 = !{ptr @sbp_management_request_login._entry.75, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @sbp_management_request_login._entry_ptr.77, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/sbp/sbp_target.c", i32 459, i32 3}
!143 = !{ptr @sbp_management_request_login.__UNIQUE_ID_ddebug291, !142, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!144 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!146 = !{!"../drivers/target/sbp/sbp_target.c", i32 167, i32 2}
!147 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!150 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!154 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @sbp_session_create.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/target/sbp/sbp_target.c", i32 194, i32 2}
!157 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sbp_session_create.__key.85, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/target/sbp/sbp_target.c", i32 196, i32 2}
!160 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sbp_session_create.__key.87, !159, !"__key", i1 false, i1 false}
!162 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/sbp/sbp_target.c", i32 204, i32 3}
!165 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @sbp_session_create._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @sbp_session_create._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/target/sbp/sbp_target.c", i32 606, i32 3}
!170 = !{ptr @.str.92, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @session_check_for_reset._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @session_check_for_reset._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/target/sbp/sbp_target.c", i32 622, i32 2}
!175 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @session_reconnect_expired._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @session_reconnect_expired._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @login_id, !179, !"login_id", i1 false, i1 false}
!179 = !{!"../drivers/target/sbp/sbp_target.c", i32 47, i32 17}
!180 = !{ptr @sbp_target_agent_register.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/target/sbp/sbp_target.c", i32 1022, i32 2}
!182 = !{ptr @sbp_target_agent_register.__key.95, !183, !"__key", i1 false, i1 false}
!183 = !{!"../drivers/target/sbp/sbp_target.c", i32 1030, i32 2}
!184 = !{ptr @.str.96, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/target/sbp/sbp_target.c", i32 811, i32 3}
!186 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @tgt_agent_rw._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @tgt_agent_rw._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/target/sbp/sbp_target.c", i32 817, i32 3}
!191 = !{ptr @tgt_agent_rw._entry.98, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @tgt_agent_rw._entry_ptr.100, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.101, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/target/sbp/sbp_target.c", i32 675, i32 3}
!195 = !{ptr @.str.102, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @tgt_agent_rw_agent_state.__UNIQUE_ID_ddebug292, !194, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!197 = !{ptr @.str.103, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.104, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/target/sbp/sbp_target.c", i32 699, i32 3}
!200 = !{ptr @.str.105, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @tgt_agent_rw_agent_reset.__UNIQUE_ID_ddebug293, !199, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!202 = !{ptr @.str.106, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.107, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/target/sbp/sbp_target.c", i32 721, i32 4}
!205 = !{ptr @.str.108, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @tgt_agent_rw_orb_pointer._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @tgt_agent_rw_orb_pointer._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/target/sbp/sbp_target.c", i32 730, i32 3}
!210 = !{ptr @tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug294, !209, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!211 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/target/sbp/sbp_target.c", i32 738, i32 3}
!214 = !{ptr @tgt_agent_rw_orb_pointer.__UNIQUE_ID_ddebug295, !213, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!215 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/sbp/sbp_target.c", i32 757, i32 4}
!218 = !{ptr @.str.114, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug296, !217, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!220 = !{ptr @.str.115, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.116, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/target/sbp/sbp_target.c", i32 765, i32 3}
!223 = !{ptr @tgt_agent_rw_doorbell.__UNIQUE_ID_ddebug297, !222, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!224 = !{ptr @.str.117, !222, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.118, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/target/sbp/sbp_target.c", i32 784, i32 3}
!227 = !{ptr @.str.119, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @tgt_agent_rw_unsolicited_status_enable.__UNIQUE_ID_ddebug298, !226, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!229 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/target/sbp/sbp_target.c", i32 962, i32 4}
!232 = !{ptr @.str.122, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @tgt_agent_fetch_work.__UNIQUE_ID_ddebug301, !231, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!234 = !{ptr @.str.123, !231, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @tgt_agent_fetch_work.__key, !236, !"__key", i1 false, i1 false}
!236 = !{!"../drivers/target/sbp/sbp_target.c", i32 992, i32 4}
!237 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.125, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/target/sbp/sbp_target.c", i32 859, i32 2}
!240 = !{ptr @.str.126, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @tgt_agent_process_work.__UNIQUE_ID_ddebug299, !239, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!242 = !{ptr @.str.127, !239, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.128, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/target/sbp/sbp_target.c", i32 866, i32 3}
!245 = !{ptr @tgt_agent_process_work.__UNIQUE_ID_ddebug300, !244, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!246 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.130, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/target/sbp/sbp_target.c", i32 1202, i32 3}
!249 = !{ptr @.str.131, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @sbp_handle_command.__UNIQUE_ID_ddebug305, !248, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!251 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/target/sbp/sbp_target.c", i32 1208, i32 3}
!254 = !{ptr @sbp_handle_command.__UNIQUE_ID_ddebug306, !253, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!255 = !{ptr @.str.134, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.135, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/target/sbp/sbp_target.c", i32 1216, i32 2}
!258 = !{ptr @sbp_handle_command.__UNIQUE_ID_ddebug307, !257, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!259 = !{ptr @.str.136, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.137, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/target/sbp/sbp_target.c", i32 1123, i32 3}
!262 = !{ptr @.str.138, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @sbp_fetch_command.__UNIQUE_ID_ddebug304, !261, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!264 = !{ptr @.str.139, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/target/sbp/sbp_target.c", i32 481, i32 2}
!267 = !{ptr @.str.141, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @sbp_management_request_query_logins._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @sbp_management_request_query_logins._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.142, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/target/sbp/sbp_target.c", i32 501, i32 3}
!272 = !{ptr @sbp_management_request_reconnect._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @sbp_management_request_reconnect._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.144, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/target/sbp/sbp_target.c", i32 509, i32 2}
!276 = !{ptr @sbp_management_request_reconnect._entry.143, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @sbp_management_request_reconnect._entry_ptr.145, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.147, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/target/sbp/sbp_target.c", i32 515, i32 3}
!280 = !{ptr @sbp_management_request_reconnect._entry.146, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @sbp_management_request_reconnect._entry_ptr.148, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.150, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/target/sbp/sbp_target.c", i32 524, i32 3}
!284 = !{ptr @sbp_management_request_reconnect._entry.149, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @sbp_management_request_reconnect._entry_ptr.151, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.152, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/target/sbp/sbp_target.c", i32 561, i32 3}
!288 = !{ptr @.str.153, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @sbp_management_request_logout._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @sbp_management_request_logout._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.155, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/target/sbp/sbp_target.c", i32 569, i32 2}
!293 = !{ptr @sbp_management_request_logout._entry.154, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @sbp_management_request_logout._entry_ptr.156, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.158, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/target/sbp/sbp_target.c", i32 573, i32 3}
!297 = !{ptr @sbp_management_request_logout._entry.157, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @sbp_management_request_logout._entry_ptr.159, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @sbp_register_region, !300, !"sbp_register_region", i1 false, i1 false}
!300 = !{!"../drivers/target/sbp/sbp_target.c", i32 31, i32 39}
!301 = !{ptr @.str.160, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/target/sbp/sbp_target.c", i32 2136, i32 4}
!303 = !{ptr @.str.161, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @sbp_enable_tpg._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @sbp_enable_tpg._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.163, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/target/sbp/sbp_target.c", i32 2153, i32 3}
!308 = !{ptr @sbp_enable_tpg._entry.162, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @sbp_enable_tpg._entry_ptr.164, !307, !"_entry_ptr", i1 false, i1 false}
!310 = distinct !{null, !311, !"__warned", i1 false, i1 false}
!311 = !{!"../drivers/target/sbp/sbp_target.c", i32 1801, i32 2}
!312 = distinct !{null, !313, !"__warned", i1 false, i1 false}
!313 = !{!"../drivers/target/sbp/sbp_target.c", i32 1874, i32 2}
!314 = !{ptr @sbp_unit_directory_template, !315, !"sbp_unit_directory_template", i1 false, i1 false}
!315 = !{!"../drivers/target/sbp/sbp_target.c", i32 36, i32 18}
!316 = !{ptr @.str.165, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/target/sbp/sbp_target.c", i32 1979, i32 3}
!318 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @sbp_pre_unlink_lun._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @sbp_pre_unlink_lun._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @sbp_wwn_attrs, !322, !"sbp_wwn_attrs", i1 false, i1 false}
!322 = !{!"../drivers/target/sbp/sbp_target.c", i32 2084, i32 35}
!323 = !{ptr @.str.167, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/target/sbp/sbp_target.c", i32 2082, i32 1}
!325 = !{ptr @sbp_wwn_attr_version, !324, !"sbp_wwn_attr_version", i1 false, i1 false}
!326 = !{ptr @.str.168, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/target/sbp/sbp_target.c", i32 2079, i32 23}
!328 = !{ptr @.str.169, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/target/sbp/sbp_target.c", i32 2079, i32 58}
!330 = !{ptr @sbp_tpg_base_attrs, !331, !"sbp_tpg_base_attrs", i1 false, i1 false}
!331 = !{!"../drivers/target/sbp/sbp_target.c", i32 2162, i32 35}
!332 = !{ptr @.str.170, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/target/sbp/sbp_target.c", i32 2160, i32 1}
!334 = !{ptr @sbp_tpg_attr_directory_id, !333, !"sbp_tpg_attr_directory_id", i1 false, i1 false}
!335 = !{ptr @.str.171, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/target/sbp/sbp_target.c", i32 2096, i32 24}
!337 = !{ptr @.str.172, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/target/sbp/sbp_target.c", i32 2098, i32 24}
!339 = !{ptr @.str.173, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/target/sbp/sbp_target.c", i32 2110, i32 3}
!341 = !{ptr @.str.174, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @sbp_tpg_directory_id_store._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @sbp_tpg_directory_id_store._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/target/sbp/sbp_target.c", i32 2114, i32 19}
!346 = !{ptr @sbp_tpg_attrib_attrs, !347, !"sbp_tpg_attrib_attrs", i1 false, i1 false}
!347 = !{!"../drivers/target/sbp/sbp_target.c", i32 2270, i32 35}
!348 = !{ptr @.str.176, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/target/sbp/sbp_target.c", i32 2266, i32 1}
!350 = !{ptr @sbp_tpg_attrib_attr_mgt_orb_timeout, !349, !"sbp_tpg_attrib_attr_mgt_orb_timeout", i1 false, i1 false}
!351 = !{ptr @.str.177, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/target/sbp/sbp_target.c", i32 2173, i32 23}
!353 = !{ptr @.str.178, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/target/sbp/sbp_target.c", i32 2267, i32 1}
!355 = !{ptr @sbp_tpg_attrib_attr_max_reconnect_timeout, !354, !"sbp_tpg_attrib_attr_max_reconnect_timeout", i1 false, i1 false}
!356 = !{ptr @.str.179, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/target/sbp/sbp_target.c", i32 2268, i32 1}
!358 = !{ptr @sbp_tpg_attrib_attr_max_logins_per_lun, !357, !"sbp_tpg_attrib_attr_max_logins_per_lun", i1 false, i1 false}
!359 = !{!"sp"}
!360 = !{i32 1, !"wchar_size", i32 2}
!361 = !{i32 1, !"min_enum_size", i32 4}
!362 = !{i32 8, !"branch-target-enforcement", i32 0}
!363 = !{i32 8, !"sign-return-address", i32 0}
!364 = !{i32 8, !"sign-return-address-all", i32 0}
!365 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!366 = !{i32 7, !"uwtable", i32 1}
!367 = !{i32 7, !"frame-pointer", i32 2}
!368 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!369 = !{i64 2148749335, i64 2148749340, i64 2148749353, i64 2148749397, i64 2148749431, i64 2148749452}
!370 = !{!"auto-init"}
!371 = !{i64 2148269050, i64 2148269082, i64 2148269111, i64 2148269145, i64 2148269176, i64 2148269199}
!372 = !{!"branch_weights", i32 1, i32 2000}
!373 = !{!"branch_weights", i32 2000, i32 1}
!374 = !{i64 2148357051}
!375 = !{i64 2148271515, i64 2148271547, i64 2148271576, i64 2148271610, i64 2148271641, i64 2148271664}
!376 = !{i64 2149363499}
!377 = !{i64 2149413989}
!378 = !{i64 2149414255}
!379 = !{i64 2148352931}
!380 = !{i64 2148268240, i64 2148268272, i64 2148268301, i64 2148268335, i64 2148268366, i64 2148268389}
!381 = !{i64 2148353160}
!382 = !{i8 0, i8 2}
!383 = !{i64 2154385202}
!384 = !{i64 2154385369}
