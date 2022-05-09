; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_tcm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_tcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_pipe_usage_descriptor = type { i8, i8, i8, i8 }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.f_tcm_opts = type { %struct.usb_function_instance, ptr, %struct.mutex, i8, i8, i8, ptr, ptr }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.f_uas = type { ptr, %struct.usb_function, i16, i32, %struct.usbg_cdb, ptr, ptr, ptr, ptr, [16 x %struct.uas_stream], %struct.bot_status, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usbg_cdb = type { ptr, ptr }
%struct.uas_stream = type { ptr, ptr, ptr }
%struct.bot_status = type { ptr, %struct.bulk_cs_wrap }
%struct.bulk_cs_wrap = type { i32, i32, i32, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.guas_setup_wq = type { %struct.work_struct, ptr, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usbg_tpg = type { %struct.mutex, i16, ptr, ptr, %struct.se_portal_group, i32, ptr, %struct.atomic_t, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usbg_cmd = type { [64 x i8], i32, %struct.work_struct, i32, %struct.se_cmd, ptr, ptr, %struct.completion, %struct.kref, i16, i16, %struct.sense_iu, i32, ptr, i32, i32, i8 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.sense_iu = type { i8, i8, i16, i16, i8, [7 x i8], i16, [96 x i8] }
%struct.bulk_cb_wrap = type { i32, i32, i32, i8, i8, i8, [16 x i8] }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.command_iu = type { i8, i8, i16, i8, i8, i8, i8, %struct.scsi_lun, [16 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.usbg_tport = type { i64, [32 x i8], %struct.se_wwn }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }

@__UNIQUE_ID_alias285 = internal constant [28 x i8] c"usb_f_tcm.alias=usbfunc:tcm\00", section ".modinfo", align 1
@__initcall__kmod_usb_f_tcm__286_2323_tcm_init6 = internal global ptr @tcm_init, section ".initcall6.init", align 4
@__exitcall_tcm_exit = internal global ptr @tcm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file287 = internal constant [53 x i8] c"usb_f_tcm.file=drivers/usb/gadget/function/usb_f_tcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [22 x i8] c"usb_f_tcm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [43 x i8] c"usb_f_tcm.author=Sebastian Andrzej Siewior\00", section ".modinfo", align 1
@tcmusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @tcm_alloc_inst, ptr @tcm_alloc }, [40 x i8] zeroinitializer }, align 32
@usbg_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.55, i32 0, i32 0, ptr @usbg_get_fabric_wwn, ptr @usbg_get_tag, ptr null, ptr @usbg_check_true, ptr @usbg_check_false, ptr @usbg_check_false, ptr @usbg_check_false, ptr null, ptr null, ptr @usbg_tpg_get_inst_index, ptr @usbg_check_stop_free, ptr @usbg_release_cmd, ptr null, ptr @usbg_sess_get_index, ptr null, ptr @usbg_send_write_request, ptr @usbg_set_default_node_attrs, ptr @usbg_get_cmd_state, ptr @usbg_send_read_response, ptr @usbg_send_status_response, ptr @usbg_queue_tm_rsp, ptr @usbg_aborted_task, ptr @usbg_make_tport, ptr @usbg_drop_tport, ptr null, ptr @usbg_make_tpg, ptr @usbg_enable_tpg, ptr @usbg_drop_tpg, ptr @usbg_port_link, ptr @usbg_port_unlink, ptr null, ptr null, ptr @usbg_init_nodeacl, ptr null, ptr @usbg_wwn_attrs, ptr @usbg_base_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcm\00", [28 x i8] zeroinitializer }, align 32
@tpg_instances_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tpg_instances_lock, i64 52), ptr getelementptr (i8, ptr @tpg_instances_lock, i64 52) }, ptr @tpg_instances_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tpg_instances.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tpg_instances.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tcm_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&opts->dep_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tcm_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @tcm_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tpg_instances_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpg_instances_lock\00", [45 x i8] zeroinitializer }, align 32
@tcm_set_name.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 2, i8 42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_tcm\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcm_set_name\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_tcm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm: Activating %s\0A\00", [44 x i8] zeroinitializer }, align 32
@tcm_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @tcm_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Target Function\00", [16 x i8] zeroinitializer }, align 32
@tcm_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tcm_stringtab, ptr null], [24 x i8] zeroinitializer }, align 32
@bot_intf_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 8, i8 6, i8 80, i8 0 }, [23 x i8] zeroinitializer }, align 32
@uasp_intf_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 4, i8 8, i8 6, i8 98, i8 0 }, [23 x i8] zeroinitializer }, align 32
@uasp_ss_bi_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_bi_ep_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 4, i16 0 }, [26 x i8] zeroinitializer }, align 32
@uasp_ss_bo_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_bo_ep_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 4, i16 0 }, [26 x i8] zeroinitializer }, align 32
@uasp_ss_status_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_status_in_ep_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 4, i16 0 }, [26 x i8] zeroinitializer }, align 32
@uasp_ss_cmd_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_cmd_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@uasp_bi_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_bo_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_status_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_cmd_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_fs_bi_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_fs_bo_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_fs_status_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_fs_cmd_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@uasp_fs_function_desc = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @bot_intf_desc, ptr @uasp_fs_bi_desc, ptr @uasp_fs_bo_desc, ptr @uasp_intf_desc, ptr @uasp_fs_bi_desc, ptr @uasp_bi_pipe_desc, ptr @uasp_fs_bo_desc, ptr @uasp_bo_pipe_desc, ptr @uasp_fs_status_desc, ptr @uasp_status_pipe_desc, ptr @uasp_fs_cmd_desc, ptr @uasp_cmd_pipe_desc, ptr null], [44 x i8] zeroinitializer }, align 32
@uasp_hs_function_desc = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @bot_intf_desc, ptr @uasp_bi_desc, ptr @uasp_bo_desc, ptr @uasp_intf_desc, ptr @uasp_bi_desc, ptr @uasp_bi_pipe_desc, ptr @uasp_bo_desc, ptr @uasp_bo_pipe_desc, ptr @uasp_status_desc, ptr @uasp_status_pipe_desc, ptr @uasp_cmd_desc, ptr @uasp_cmd_pipe_desc, ptr null], [44 x i8] zeroinitializer }, align 32
@uasp_ss_function_desc = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @bot_intf_desc, ptr @uasp_ss_bi_desc, ptr @bot_bi_ep_comp_desc, ptr @uasp_ss_bo_desc, ptr @bot_bo_ep_comp_desc, ptr @uasp_intf_desc, ptr @uasp_ss_bi_desc, ptr @uasp_bi_ep_comp_desc, ptr @uasp_bi_pipe_desc, ptr @uasp_ss_bo_desc, ptr @uasp_bo_ep_comp_desc, ptr @uasp_bo_pipe_desc, ptr @uasp_ss_status_desc, ptr @uasp_status_in_ep_comp_desc, ptr @uasp_status_pipe_desc, ptr @uasp_ss_cmd_desc, ptr @uasp_cmd_comp_desc, ptr @uasp_cmd_pipe_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@tcm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 2048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Can't claim all required eps\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcm_bind\00", [23 x i8] zeroinitializer }, align 32
@tcm_bind._entry_ptr = internal global ptr @tcm_bind._entry, section ".printk_index", align 4
@tcm_stringtab = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @tcm_us_strings }, [24 x i8] zeroinitializer }, align 32
@tcm_us_strings = internal global { [3 x %struct.usb_string], [40 x i8] } { [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.12 }, %struct.usb_string { i8 0, ptr @.str.13 }, %struct.usb_string zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB Attached SCSI\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bulk Only Transport\00", [44 x i8] zeroinitializer }, align 32
@uasp_bi_pipe_desc = internal global { %struct.usb_pipe_usage_descriptor, [28 x i8] } { %struct.usb_pipe_usage_descriptor { i8 4, i8 36, i8 3, i8 0 }, [28 x i8] zeroinitializer }, align 32
@uasp_bo_pipe_desc = internal global { %struct.usb_pipe_usage_descriptor, [28 x i8] } { %struct.usb_pipe_usage_descriptor { i8 4, i8 36, i8 4, i8 0 }, [28 x i8] zeroinitializer }, align 32
@uasp_status_pipe_desc = internal global { %struct.usb_pipe_usage_descriptor, [28 x i8] } { %struct.usb_pipe_usage_descriptor { i8 4, i8 36, i8 2, i8 0 }, [28 x i8] zeroinitializer }, align 32
@uasp_cmd_pipe_desc = internal global { %struct.usb_pipe_usage_descriptor, [28 x i8] } { %struct.usb_pipe_usage_descriptor { i8 4, i8 36, i8 1, i8 0 }, [28 x i8] zeroinitializer }, align 32
@bot_bi_ep_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@bot_bo_ep_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@tcm_set_alt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@bot_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Using the BOT protocol\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bot_set_alt\00", [20 x i8] zeroinitializer }, align 32
@bot_set_alt._entry_ptr = internal global ptr @bot_set_alt._entry, section ".printk_index", align 4
@bot_prepare_reqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013BOT: endpoint setup failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bot_prepare_reqs\00", [47 x i8] zeroinitializer }, align 32
@bot_prepare_reqs._entry_ptr = internal global ptr @bot_prepare_reqs._entry, section ".printk_index", align 4
@bot_status_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013ERR %s(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bot_status_complete\00", [44 x i8] zeroinitializer }, align 32
@bot_status_complete._entry_ptr = internal global ptr @bot_status_complete._entry, section ".printk_index", align 4
@bot_cmd_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013%s(%d): %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bot_cmd_complete\00", [47 x i8] zeroinitializer }, align 32
@bot_cmd_complete._entry_ptr = internal global ptr @bot_cmd_complete._entry, section ".printk_index", align 4
@bot_submit_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Wrong signature on CBW\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bot_submit_command\00", [45 x i8] zeroinitializer }, align 32
@bot_submit_command._entry_ptr = internal global ptr @bot_submit_command._entry, section ".printk_index", align 4
@bot_submit_command._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Wrong length for CBW\0A\00", [40 x i8] zeroinitializer }, align 32
@bot_submit_command._entry_ptr.27 = internal global ptr @bot_submit_command._entry.25, section ".printk_index", align 4
@bot_submit_command._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.7, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Missing nexus, ignoring command\0A\00", [61 x i8] zeroinitializer }, align 32
@bot_submit_command._entry_ptr.30 = internal global ptr @bot_submit_command._entry.28, section ".printk_index", align 4
@bot_submit_command._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.7, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013usbg_get_cmd failed\0A\00", [41 x i8] zeroinitializer }, align 32
@bot_submit_command._entry_ptr.33 = internal global ptr @bot_submit_command._entry.31, section ".printk_index", align 4
@bot_submit_command.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&cmd->work)\00", [34 x i8] zeroinitializer }, align 32
@get_cmd_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.7, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014target: Unknown data direction for SCSI Opcode 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_cmd_dir\00", [20 x i8] zeroinitializer }, align 32
@get_cmd_dir._entry_ptr = internal global ptr @get_cmd_dir._entry, section ".printk_index", align 4
@uasp_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.7, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Using the UAS protocol\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uasp_set_alt\00", [19 x i8] zeroinitializer }, align 32
@uasp_set_alt._entry_ptr = internal global ptr @uasp_set_alt._entry, section ".printk_index", align 4
@uasp_prepare_reqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.7, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013UASP: endpoint setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uasp_prepare_reqs\00", [46 x i8] zeroinitializer }, align 32
@uasp_prepare_reqs._entry_ptr = internal global ptr @uasp_prepare_reqs._entry, section ".printk_index", align 4
@usbg_submit_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Unsupported type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbg_submit_command\00", [44 x i8] zeroinitializer }, align 32
@usbg_submit_command._entry_ptr = internal global ptr @usbg_submit_command._entry, section ".printk_index", align 4
@usbg_submit_command._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.42, ptr @.str.7, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usbg_submit_command._entry_ptr.44 = internal global ptr @usbg_submit_command._entry.43, section ".printk_index", align 4
@usbg_submit_command._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.42, ptr @.str.7, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usbg_submit_command._entry_ptr.46 = internal global ptr @usbg_submit_command._entry.45, section ".printk_index", align 4
@usbg_submit_command.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@usbg_submit_command._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.7, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017Unsupported prio_attr: %02x.\0A\00", [32 x i8] zeroinitializer }, align 32
@usbg_submit_command._entry_ptr.49 = internal global ptr @usbg_submit_command._entry.47, section ".printk_index", align 4
@usbg_submit_command.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@usbg_bot_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.7, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013No LUNs configured?\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usbg_bot_setup\00", [17 x i8] zeroinitializer }, align 32
@usbg_bot_setup._entry_ptr = internal global ptr @usbg_bot_setup._entry, section ".printk_index", align 4
@usbg_bot_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@usbg_bot_setup._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.7, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Limiting the number of luns to 16\0A\00", [59 x i8] zeroinitializer }, align 32
@usbg_bot_setup._entry_ptr.54 = internal global ptr @usbg_bot_setup._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_gadget\00", [21 x i8] zeroinitializer }, align 32
@usbg_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usbg_wwn_attr_version, ptr null], [24 x i8] zeroinitializer }, align 32
@usbg_base_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tcm_usbg_tpg_attr_nexus, ptr null], [24 x i8] zeroinitializer }, align 32
@bot_send_write_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\013%s(%d)\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bot_send_write_request\00", [41 x i8] zeroinitializer }, align 32
@bot_send_write_request._entry_ptr = internal global ptr @bot_send_write_request._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@usbg_data_write_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.7, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s() state %d transfer failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usbg_data_write_cmpl\00", [43 x i8] zeroinitializer }, align 32
@usbg_data_write_cmpl._entry_ptr = internal global ptr @usbg_data_write_cmpl._entry, section ".printk_index", align 4
@uasp_send_write_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.61, ptr @.str.7, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uasp_send_write_request\00", [40 x i8] zeroinitializer }, align 32
@uasp_send_write_request._entry_ptr = internal global ptr @uasp_send_write_request._entry, section ".printk_index", align 4
@uasp_send_write_request._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.61, ptr @.str.7, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uasp_send_write_request._entry_ptr.63 = internal global ptr @uasp_send_write_request._entry.62, section ".printk_index", align 4
@uasp_status_data_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.7, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013%s(%d) => %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uasp_status_data_cmpl\00", [42 x i8] zeroinitializer }, align 32
@uasp_status_data_cmpl._entry_ptr = internal global ptr @uasp_status_data_cmpl._entry, section ".printk_index", align 4
@uasp_status_data_cmpl._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.7, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uasp_status_data_cmpl._entry_ptr.67 = internal global ptr @uasp_status_data_cmpl._entry.66, section ".printk_index", align 4
@uasp_status_data_cmpl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.7, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uasp_status_data_cmpl._entry_ptr.69 = internal global ptr @uasp_status_data_cmpl._entry.68, section ".printk_index", align 4
@bot_send_read_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.70, ptr @.str.7, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bot_send_read_response\00", [41 x i8] zeroinitializer }, align 32
@bot_send_read_response._entry_ptr = internal global ptr @bot_send_read_response._entry, section ".printk_index", align 4
@bot_err_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.71, ptr @.str.7, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bot_err_compl\00", [18 x i8] zeroinitializer }, align 32
@bot_err_compl._entry_ptr = internal global ptr @bot_err_compl._entry, section ".printk_index", align 4
@bot_enqueue_sense_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.7, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s(%d) ERR: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bot_enqueue_sense_code\00", [41 x i8] zeroinitializer }, align 32
@bot_enqueue_sense_code._entry_ptr = internal global ptr @bot_enqueue_sense_code._entry, section ".printk_index", align 4
@bot_read_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.74, ptr @.str.7, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bot_read_compl\00", [17 x i8] zeroinitializer }, align 32
@bot_read_compl._entry_ptr = internal global ptr @bot_read_compl._entry, section ".printk_index", align 4
@bot_send_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.75, ptr @.str.7, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bot_send_status\00", [16 x i8] zeroinitializer }, align 32
@bot_send_status._entry_ptr = internal global ptr @bot_send_status._entry, section ".printk_index", align 4
@uasp_send_read_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.76, ptr @.str.7, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uasp_send_read_response\00", [40 x i8] zeroinitializer }, align 32
@uasp_send_read_response._entry_ptr = internal global ptr @uasp_send_read_response._entry, section ".printk_index", align 4
@uasp_send_read_response._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.76, ptr @.str.7, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@uasp_send_read_response._entry_ptr.78 = internal global ptr @uasp_send_read_response._entry.77, section ".printk_index", align 4
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"naa.\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@usbg_make_tpg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tpg->tpg_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcm_usb_gadget\00", [17 x i8] zeroinitializer }, align 32
@tcm_usbg_drop_nexus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.7, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013Unable to remove Host I_T Nexus with active TPG port count: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm_usbg_drop_nexus\00", [44 x i8] zeroinitializer }, align 32
@tcm_usbg_drop_nexus._entry_ptr = internal global ptr @tcm_usbg_drop_nexus._entry, section ".printk_index", align 4
@tcm_usbg_drop_nexus.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.7, ptr @.str.86, i8 1, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Removing I_T Nexus to Initiator Port: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@usbg_wwn_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.87, ptr null, i16 292, ptr @usbg_wwn_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb-gadget fabric module\0A\00", [38 x i8] zeroinitializer }, align 32
@tcm_usbg_tpg_attr_nexus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.89, ptr null, i16 420, ptr @tcm_usbg_tpg_nexus_show, ptr @tcm_usbg_tpg_nexus_store }, [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nexus\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@tcm_usbg_tpg_nexus_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.7, i32 1637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Emulated NAA Sas Address: %s, exceeds max: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcm_usbg_tpg_nexus_store\00", [39 x i8] zeroinitializer }, align 32
@tcm_usbg_tpg_nexus_store._entry_ptr = internal global ptr @tcm_usbg_tpg_nexus_store._entry, section ".printk_index", align 4
@tcm_usbg_tpg_nexus_store._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.7, i32 1645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Missing 'naa.' prefix\0A\00", [39 x i8] zeroinitializer }, align 32
@tcm_usbg_tpg_nexus_store._entry_ptr.96 = internal global ptr @tcm_usbg_tpg_nexus_store._entry.94, section ".printk_index", align 4
@tcm_usbg_make_nexus.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.7, ptr @.str.98, i8 1, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcm_usbg_make_nexus\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tpg->tpg_nexus already exists\0A\00", [33 x i8] zeroinitializer }, align 32
@tcm_usbg_make_nexus.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.7, ptr @.str.99, i8 1, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"core_tpg_check_initiator_node_acl() failed for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.uasp_cmd_complete = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 32, i16 33, i16 34, i16 33, i16 36], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.101 = internal global [43 x i64] [i64 41, i64 8, i64 0, i64 1, i64 3, i64 5, i64 8, i64 10, i64 16, i64 17, i64 18, i64 21, i64 25, i64 26, i64 27, i64 30, i64 35, i64 37, i64 40, i64 42, i64 43, i64 46, i64 47, i64 52, i64 53, i64 67, i64 85, i64 90, i64 94, i64 95, i64 134, i64 135, i64 136, i64 138, i64 158, i64 160, i64 162, i64 163, i64 164, i64 168, i64 170, i64 174, i64 181]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"tcmusb_func\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"usbg_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1688, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2307, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"tpg_instances_lock\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"tpg_instances.0\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"tpg_instances.1\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2249, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2255, i32 54 }
@___asan_gen_.126 = private unnamed_addr constant [14 x i8] c"tcm_func_type\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2148, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 37, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2217, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"tcm_item_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2144, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2293, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"tcm_strings\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1965, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"bot_intf_desc\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1725, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"uasp_intf_desc\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1735, i32 40 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"uasp_ss_bi_desc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1766, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"uasp_bi_ep_comp_desc\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1774, i32 41 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"uasp_ss_bo_desc\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1809, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"uasp_bo_ep_comp_desc\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1817, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"uasp_ss_status_desc\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1849, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant [28 x i8] c"uasp_status_in_ep_comp_desc\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1857, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"uasp_ss_cmd_desc\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1884, i32 39 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"uasp_cmd_comp_desc\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1892, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [13 x i8] c"uasp_bi_desc\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1745, i32 39 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"uasp_bo_desc\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1788, i32 39 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"uasp_status_desc\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1828, i32 39 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"uasp_cmd_desc\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1863, i32 39 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"uasp_fs_bi_desc\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1753, i32 39 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"uasp_fs_bo_desc\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1796, i32 39 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"uasp_fs_status_desc\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1836, i32 39 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"uasp_fs_cmd_desc\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1871, i32 39 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"uasp_fs_function_desc\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1897, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"uasp_hs_function_desc\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1914, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant [22 x i8] c"uasp_ss_function_desc\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1931, i32 38 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2048, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"tcm_stringtab\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1960, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"tcm_us_strings\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1954, i32 26 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1955, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1956, i32 27 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"uasp_bi_pipe_desc\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1760, i32 41 }
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"uasp_bo_pipe_desc\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1803, i32 41 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"uasp_status_pipe_desc\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1843, i32 41 }
@___asan_gen_.249 = private unnamed_addr constant [19 x i8] c"uasp_cmd_pipe_desc\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1878, i32 41 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"bot_bi_ep_comp_desc\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1782, i32 41 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"bot_bo_ep_comp_desc\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1823, i32 41 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 2100, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 409, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 358, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 66, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 302, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1211, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1215, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1225, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1231, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1243, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 948, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 879, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 840, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1106, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1112, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1123, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1150, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1160, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 441, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 450, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1690, i32 19 }
@___asan_gen_.402 = private unnamed_addr constant [15 x i8] c"usbg_wwn_attrs\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1493, i32 35 }
@___asan_gen_.405 = private unnamed_addr constant [16 x i8] c"usbg_base_attrs\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1660, i32 35 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 280, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 87, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 961, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 693, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 710, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 582, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 591, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 599, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 237, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 95, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 86, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 197, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 170, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 647, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 667, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1472, i32 57 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1319, i32 19 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1347, i32 19 }
@___asan_gen_.507 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1380, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1382, i32 35 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1602, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1607, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [22 x i8] c"usbg_wwn_attr_version\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1491, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1488, i32 23 }
@___asan_gen_.537 = private unnamed_addr constant [24 x i8] c"tcm_usbg_tpg_attr_nexus\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1658, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1531, i32 34 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1630, i32 21 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1637, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1645, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1556, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.571 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_tcm.c\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 1573, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant [31 x i8] c"switch.table.uasp_cmd_complete\00", align 1
@llvm.compiler.used = appending global [200 x ptr] [ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_tcm_exit, ptr @__initcall__kmod_usb_f_tcm__286_2323_tcm_init6, ptr @bot_cmd_complete._entry, ptr @bot_cmd_complete._entry_ptr, ptr @bot_enqueue_sense_code._entry, ptr @bot_enqueue_sense_code._entry_ptr, ptr @bot_err_compl._entry, ptr @bot_err_compl._entry_ptr, ptr @bot_prepare_reqs._entry, ptr @bot_prepare_reqs._entry_ptr, ptr @bot_read_compl._entry, ptr @bot_read_compl._entry_ptr, ptr @bot_send_read_response._entry, ptr @bot_send_read_response._entry_ptr, ptr @bot_send_status._entry, ptr @bot_send_status._entry_ptr, ptr @bot_send_write_request._entry, ptr @bot_send_write_request._entry_ptr, ptr @bot_set_alt._entry, ptr @bot_set_alt._entry_ptr, ptr @bot_status_complete._entry, ptr @bot_status_complete._entry_ptr, ptr @bot_submit_command._entry, ptr @bot_submit_command._entry.25, ptr @bot_submit_command._entry.28, ptr @bot_submit_command._entry.31, ptr @bot_submit_command._entry_ptr, ptr @bot_submit_command._entry_ptr.27, ptr @bot_submit_command._entry_ptr.30, ptr @bot_submit_command._entry_ptr.33, ptr @get_cmd_dir._entry, ptr @get_cmd_dir._entry_ptr, ptr @tcm_bind._entry, ptr @tcm_bind._entry_ptr, ptr @tcm_usbg_drop_nexus._entry, ptr @tcm_usbg_drop_nexus._entry_ptr, ptr @tcm_usbg_tpg_nexus_store._entry, ptr @tcm_usbg_tpg_nexus_store._entry.94, ptr @tcm_usbg_tpg_nexus_store._entry_ptr, ptr @tcm_usbg_tpg_nexus_store._entry_ptr.96, ptr @uasp_prepare_reqs._entry, ptr @uasp_prepare_reqs._entry_ptr, ptr @uasp_send_read_response._entry, ptr @uasp_send_read_response._entry.77, ptr @uasp_send_read_response._entry_ptr, ptr @uasp_send_read_response._entry_ptr.78, ptr @uasp_send_write_request._entry, ptr @uasp_send_write_request._entry.62, ptr @uasp_send_write_request._entry_ptr, ptr @uasp_send_write_request._entry_ptr.63, ptr @uasp_set_alt._entry, ptr @uasp_set_alt._entry_ptr, ptr @uasp_status_data_cmpl._entry, ptr @uasp_status_data_cmpl._entry.66, ptr @uasp_status_data_cmpl._entry.68, ptr @uasp_status_data_cmpl._entry_ptr, ptr @uasp_status_data_cmpl._entry_ptr.67, ptr @uasp_status_data_cmpl._entry_ptr.69, ptr @usbg_bot_setup._entry, ptr @usbg_bot_setup._entry.52, ptr @usbg_bot_setup._entry_ptr, ptr @usbg_bot_setup._entry_ptr.54, ptr @usbg_data_write_cmpl._entry, ptr @usbg_data_write_cmpl._entry_ptr, ptr @usbg_submit_command._entry, ptr @usbg_submit_command._entry.43, ptr @usbg_submit_command._entry.45, ptr @usbg_submit_command._entry.47, ptr @usbg_submit_command._entry_ptr, ptr @usbg_submit_command._entry_ptr.44, ptr @usbg_submit_command._entry_ptr.46, ptr @usbg_submit_command._entry_ptr.49, ptr @tcmusb_func, ptr @usbg_ops, ptr @.str, ptr @tpg_instances_lock, ptr @tpg_instances.0, ptr @tpg_instances.1, ptr @tcm_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @tcm_func_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tcm_item_ops, ptr @.str.9, ptr @tcm_strings, ptr @bot_intf_desc, ptr @uasp_intf_desc, ptr @uasp_ss_bi_desc, ptr @uasp_bi_ep_comp_desc, ptr @uasp_ss_bo_desc, ptr @uasp_bo_ep_comp_desc, ptr @uasp_ss_status_desc, ptr @uasp_status_in_ep_comp_desc, ptr @uasp_ss_cmd_desc, ptr @uasp_cmd_comp_desc, ptr @uasp_bi_desc, ptr @uasp_bo_desc, ptr @uasp_status_desc, ptr @uasp_cmd_desc, ptr @uasp_fs_bi_desc, ptr @uasp_fs_bo_desc, ptr @uasp_fs_status_desc, ptr @uasp_fs_cmd_desc, ptr @uasp_fs_function_desc, ptr @uasp_hs_function_desc, ptr @uasp_ss_function_desc, ptr @.str.10, ptr @.str.11, ptr @tcm_stringtab, ptr @tcm_us_strings, ptr @.str.12, ptr @.str.13, ptr @uasp_bi_pipe_desc, ptr @uasp_bo_pipe_desc, ptr @uasp_status_pipe_desc, ptr @uasp_cmd_pipe_desc, ptr @bot_bi_ep_comp_desc, ptr @bot_bo_ep_comp_desc, ptr @tcm_set_alt.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @bot_submit_command.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.48, ptr @usbg_submit_command.__key, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @usbg_wwn_attrs, ptr @usbg_base_attrs, ptr @.str.56, ptr @.str.57, ptr @init_completion.__key, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @usbg_make_tpg.__key, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @usbg_wwn_attr_version, ptr @.str.87, ptr @.str.88, ptr @tcm_usbg_tpg_attr_nexus, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @switch.table.uasp_cmd_complete], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg_instances_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg_instances.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg_instances.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_intf_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_intf_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_ss_bi_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_bi_ep_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_ss_bo_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_bo_ep_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_ss_status_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_status_in_ep_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_ss_cmd_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_cmd_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_bi_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_bo_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_status_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_cmd_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_fs_bi_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_fs_bo_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_fs_status_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_fs_cmd_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_fs_function_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_hs_function_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_ss_function_desc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_stringtab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_us_strings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_bi_pipe_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_bo_pipe_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_status_pipe_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_cmd_pipe_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_bi_ep_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_bo_ep_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_set_alt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_prepare_reqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_status_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_cmd_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_submit_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_submit_command._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_submit_command._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_submit_command._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_submit_command.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cmd_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_prepare_reqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_submit_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_submit_command._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_submit_command._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_submit_command._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_submit_command.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_bot_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_bot_setup._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_base_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_send_write_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_data_write_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_send_write_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_send_write_request._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_status_data_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_status_data_cmpl._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_status_data_cmpl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_send_read_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_err_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_enqueue_sense_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_read_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bot_send_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_send_read_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uasp_send_read_response._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_make_tpg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_usbg_drop_nexus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_wwn_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_usbg_tpg_attr_nexus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_usbg_tpg_nexus_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_usbg_tpg_nexus_store._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uasp_cmd_complete to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @tcmusb_func) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @target_register_template(ptr noundef nonnull @usbg_ops) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @usb_function_unregister(ptr noundef nonnull @tcmusb_func) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_unregister_template(ptr noundef nonnull @usbg_ops) #17
  tail call void @usb_function_unregister(ptr noundef nonnull @tcmusb_func) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_alloc_inst() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @tpg_instances_lock, i32 noundef 0) #17
  %1 = load ptr, ptr @tpg_instances.0, align 4
  %tobool2.not.not = icmp eq ptr %1, null
  br i1 %tobool2.not.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %call7.i.i, ptr @tpg_instances.0, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %dep_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tcm_alloc_inst.__key) #17
  %set_inst_name = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %set_inst_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tcm_set_name, ptr %set_inst_name, align 4
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tcm_free_inst, ptr %free_func_inst, align 8
  %tcm_register_callback = getelementptr inbounds %struct.f_tcm_opts, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %tcm_register_callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tcm_register_callback, ptr %tcm_register_callback, align 8
  %tcm_unregister_callback = getelementptr inbounds %struct.f_tcm_opts, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %tcm_unregister_callback to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tcm_unregister_callback, ptr %tcm_unregister_callback, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @tcm_func_type) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then6 ], [ %call7.i.i, %if.end8 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcm_alloc(ptr nocapture noundef readnone %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tpg_instances_lock, i32 noundef 0) #17
  %0 = load ptr, ptr @tpg_instances.0, align 4
  %cmp1.not = icmp eq ptr %0, %fi
  br i1 %cmp1.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 364) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %function = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.9, ptr %function, align 4
  %bind = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tcm_bind, ptr %bind, align 8
  %unbind = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tcm_unbind, ptr %unbind, align 4
  %set_alt = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 13
  %5 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tcm_set_alt, ptr %set_alt, align 8
  %get_alt = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 14
  %6 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tcm_get_alt, ptr %get_alt, align 4
  %setup = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 16
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tcm_setup, ptr %setup, align 4
  %disable = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 15
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tcm_disable, ptr %disable, align 8
  %free_func = getelementptr inbounds %struct.f_uas, ptr %call7.i.i, i32 0, i32 1, i32 11
  %9 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tcm_free, ptr %free_func, align 8
  %10 = load ptr, ptr @tpg_instances.1, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %function, %if.end8 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_set_name(ptr noundef %f, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_set_name.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tcm_set_name, %do.end)) #17
          to label %if.then [label %do.end], !srcloc !315

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_set_name.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.8, ptr noundef %name) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %f, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #17
  %ready = getelementptr inbounds %struct.f_tcm_opts, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ready, align 4
  tail call void @mutex_unlock(ptr noundef %dep_lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_free_inst(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @tpg_instances_lock, i32 noundef 0) #17
  %0 = load ptr, ptr @tpg_instances.0, align 4
  %cmp1 = icmp eq ptr %0, %f
  br i1 %cmp1, label %if.then3.critedge, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then3.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  store ptr null, ptr @tpg_instances.0, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3.critedge, %entry.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  tail call void @kfree(ptr noundef %f) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_register_callback(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %f, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #17
  %can_attach = getelementptr inbounds %struct.f_tcm_opts, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %can_attach to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %can_attach, align 1
  tail call void @mutex_unlock(ptr noundef %dep_lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_unregister_callback(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %f, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #17
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %ci_parent1 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent1, align 4
  tail call void @unregister_gadget_item(ptr noundef %3) #17
  %can_attach = getelementptr inbounds %struct.f_tcm_opts, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %can_attach to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %can_attach, align 1
  tail call void @mutex_unlock(ptr noundef %dep_lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_gadget_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_bind(ptr noundef %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi, align 4
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #17
  %can_attach = getelementptr inbounds %struct.f_tcm_opts, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %can_attach to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %can_attach, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  tail call void @mutex_unlock(ptr noundef %dep_lock) #17
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev, align 4
  %call5 = tail call ptr @usb_gstrings_attach(ptr noundef %9, ptr noundef nonnull @tcm_strings, i32 noundef 3) #17
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.usb_string, ptr %call5, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  store i8 %12, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @bot_intf_desc, i32 0, i32 8), align 1
  %13 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call5, align 4
  store i8 %14, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uasp_intf_desc, i32 0, i32 8), align 1
  %call12 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %conv = trunc i32 %call12 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @bot_intf_desc, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uasp_intf_desc, i32 0, i32 2), align 1
  %conv16 = trunc i32 %call12 to i16
  %iface17 = getelementptr i8, ptr %f, i32 108
  %15 = ptrtoint ptr %iface17 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv16, ptr %iface17, align 4
  %call18 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %3, ptr noundef nonnull @uasp_ss_bi_desc, ptr noundef nonnull @uasp_bi_ep_comp_desc) #17
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end14.do.end_crit_edge, label %if.end21

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end21:                                         ; preds = %if.end14
  %ep_in = getelementptr i8, ptr %f, i32 124
  %16 = ptrtoint ptr %ep_in to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %ep_in, align 4
  %call22 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %3, ptr noundef nonnull @uasp_ss_bo_desc, ptr noundef nonnull @uasp_bo_ep_comp_desc) #17
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.do.end_crit_edge, label %if.end25

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end25:                                         ; preds = %if.end21
  %ep_out = getelementptr i8, ptr %f, i32 128
  %17 = ptrtoint ptr %ep_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %ep_out, align 4
  %call26 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %3, ptr noundef nonnull @uasp_ss_status_desc, ptr noundef nonnull @uasp_status_in_ep_comp_desc) #17
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.do.end_crit_edge, label %if.end29

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end29:                                         ; preds = %if.end25
  %ep_status = getelementptr i8, ptr %f, i32 132
  %18 = ptrtoint ptr %ep_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26, ptr %ep_status, align 4
  %call30 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %3, ptr noundef nonnull @uasp_ss_cmd_desc, ptr noundef nonnull @uasp_cmd_comp_desc) #17
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.do.end_crit_edge, label %if.end33

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end33:                                         ; preds = %if.end29
  %ep_cmd = getelementptr i8, ptr %f, i32 136
  %19 = ptrtoint ptr %ep_cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30, ptr %ep_cmd, align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_ss_bi_desc, i32 0, i32 2), align 1
  store i8 %20, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_bi_desc, i32 0, i32 2), align 1
  %21 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_ss_bo_desc, i32 0, i32 2), align 1
  store i8 %21, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_bo_desc, i32 0, i32 2), align 1
  %22 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_ss_status_desc, i32 0, i32 2), align 1
  store i8 %22, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_status_desc, i32 0, i32 2), align 1
  %23 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_ss_cmd_desc, i32 0, i32 2), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_cmd_desc, i32 0, i32 2), align 1
  store i8 %20, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_fs_bi_desc, i32 0, i32 2), align 1
  store i8 %21, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_fs_bo_desc, i32 0, i32 2), align 1
  store i8 %22, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_fs_status_desc, i32 0, i32 2), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uasp_fs_cmd_desc, i32 0, i32 2), align 1
  %call34 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @uasp_fs_function_desc, ptr noundef nonnull @uasp_hs_function_desc, ptr noundef nonnull @uasp_ss_function_desc, ptr noundef nonnull @uasp_ss_function_desc) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %if.end33.do.end_crit_edge

if.end33.do.end_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.end33.do.end_crit_edge, %if.end29.do.end_crit_edge, %if.end25.do.end_crit_edge, %if.end21.do.end_crit_edge, %if.end14.do.end_crit_edge
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end33.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then7 ], [ -524, %do.end ], [ %call12, %if.end9.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_free_all_descriptors(ptr noundef %f) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alt)
  %switch = icmp ult i32 %alt, 2
  br i1 %switch, label %if.then, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup15

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 52) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.cleanup15_crit_edge, label %do.body

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup15

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #17
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @tcm_set_alt.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry8 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tcm_delayed_set_alt, ptr %func, align 4
  %fu10 = getelementptr inbounds %struct.guas_setup_wq, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %fu10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %fu10, align 4
  %alt11 = getelementptr inbounds %struct.guas_setup_wq, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %alt11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %alt, ptr %alt11, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef nonnull %call7.i) #17
  br label %cleanup15

cleanup15:                                        ; preds = %do.body, %if.then.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.1 = phi i32 [ 32767, %do.body ], [ -12, %if.then.cleanup15_crit_edge ], [ -95, %entry.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_get_alt(ptr nocapture noundef readnone %f, i32 noundef %intf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @bot_intf_desc, i32 0, i32 2), align 1
  %conv = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uasp_intf_desc, i32 0, i32 2), align 1
  %conv2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %intf)
  %cmp3 = icmp eq i32 %conv2, %intf
  %. = select i1 %cmp3, i32 1, i32 -95
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_setup(ptr nocapture noundef %f, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -4
  %flags = getelementptr i8, ptr %f, i32 112
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %config.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  %cdev1.i = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1.i, align 4
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %6 = ptrtoint ptr %wValue.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wValue.i, align 1
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %wLength.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wLength.i, align 1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %10 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bRequest.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end.cleanup_crit_edge [
    i8 -2, label %sw.bb.i
    i8 -1, label %sw.bb46.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %14)
  %cmp.not.i = icmp eq i8 %14, -95
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp5.i = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp10.not.i = icmp eq i16 %7, 0
  %or.cond.i = select i1 %cmp5.i, i1 %cmp10.not.i, i1 false
  br i1 %or.cond.i, label %if.end13.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %tpg_port_count.i = getelementptr inbounds %struct.usbg_tpg, ptr %16, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tpg_port_count.i, i32 noundef 4) #17
  %17 = ptrtoint ptr %tpg_port_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tpg_port_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #21
  br label %cleanup

if.end17.i:                                       ; preds = %if.end13.i
  %dec.i = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %dec.i)
  %cmp18.i = icmp sgt i32 %dec.i, 15
  br i1 %cmp18.i, label %land.end.i, label %if.end17.i.if.end41.i_crit_edge

if.end17.i.if.end41.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41.i

land.end.i:                                       ; preds = %if.end17.i
  %.b65.i = load i1, ptr @usbg_bot_setup.__already_done, align 1
  br i1 %.b65.i, label %land.end.i.if.end41.i_crit_edge, label %if.then27.i, !prof !317

land.end.i.if.end41.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41.i

if.then27.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @usbg_bot_setup.__already_done, align 1
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #21
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then27.i, %land.end.i.if.end41.i_crit_edge, %if.end17.i.if.end41.i_crit_edge
  %luns.0.i = phi i32 [ %dec.i, %if.end17.i.if.end41.i_crit_edge ], [ 15, %if.then27.i ], [ 15, %land.end.i.if.end41.i_crit_edge ]
  %req.i = getelementptr inbounds %struct.usb_composite_dev, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %conv42.i = trunc i32 %luns.0.i to i8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv42.i, ptr %22, align 1
  %24 = load ptr, ptr %req.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %length.i, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep0.i, align 4
  %30 = load ptr, ptr %req.i, align 4
  %call45.i = tail call i32 @usb_ep_queue(ptr noundef %29, ptr noundef %30, i32 noundef 2592) #17
  br label %cleanup

sw.bb46.i:                                        ; preds = %if.end
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb46.i.cleanup_crit_edge

sw.bb46.i.cleanup_crit_edge:                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb46.i
  %ep_out.i.i = getelementptr i8, ptr %f, i32 128
  %33 = ptrtoint ptr %ep_out.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep_out.i.i, align 4
  %cmd.i.i = getelementptr i8, ptr %f, i32 116
  %35 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd.i.i, align 4
  %call.i.i = tail call i32 @usb_ep_queue(ptr noundef %34, ptr noundef %36, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or.i.i = or i32 %38, 16
  store i32 %or.i.i, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i.i, %if.end.i.i.cleanup_crit_edge, %sw.bb46.i.cleanup_crit_edge, %if.end41.i, %do.end.i, %if.end.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call45.i, %if.end41.i ], [ -22, %do.end.i ], [ -524, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ 0, %sw.bb46.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_disable(ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -4
  %flags = getelementptr i8, ptr %f, i32 112
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @uasp_cleanup_old_alt(ptr noundef %add.ptr.i)
  br label %if.end5

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @bot_cleanup_old_alt(ptr noundef %add.ptr.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_free(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -4
  tail call void @kfree(ptr noundef %add.ptr.i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig_ss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcm_delayed_set_alt(ptr noundef %wq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fu1 = getelementptr inbounds %struct.guas_setup_wq, ptr %wq, i32 0, i32 1
  %0 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu1, align 4
  %alt2 = getelementptr inbounds %struct.guas_setup_wq, ptr %wq, i32 0, i32 2
  %2 = ptrtoint ptr %alt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alt2, align 4
  tail call void @kfree(ptr noundef %wq) #17
  %flags = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @bot_cleanup_old_alt(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and4 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @uasp_cleanup_old_alt(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %3, label %if.end7.if.end12_crit_edge [
    i32 0, label %if.then8
    i32 1, label %if.then10
  ]

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then8:                                         ; preds = %if.end7
  %function.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1
  %config.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %flags, align 4
  %ep_in.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_in.i, align 4
  %call.i = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %14, ptr noundef %function.i, ptr noundef %17, i8 noundef zeroext 0) #17
  %18 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_in.i, align 4
  %call3.i = tail call i32 @usb_ep_enable(ptr noundef %19) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.err_b_in.i_crit_edge

if.then8.err_b_in.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_b_in.i

if.end.i:                                         ; preds = %if.then8
  %ep_out.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ep_out.i, align 4
  %call4.i = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %14, ptr noundef %function.i, ptr noundef %21, i8 noundef zeroext 0) #17
  %22 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep_out.i, align 4
  %call6.i = tail call i32 @usb_ep_enable(ptr noundef %23) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.err_b_out.i_crit_edge

if.end.i.err_b_out.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_b_out.i

if.end9.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep_in.i, align 4
  %call.i.i = tail call ptr @usb_ep_alloc_request(ptr noundef %25, i32 noundef 3264) #17
  %bot_req_in.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %bot_req_in.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %bot_req_in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end9.i.err_wq.i_crit_edge, label %if.end.i.i

if.end9.i.err_wq.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_wq.i

if.end.i.i:                                       ; preds = %if.end9.i
  %27 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep_out.i, align 4
  %call2.i.i = tail call ptr @usb_ep_alloc_request(ptr noundef %28, i32 noundef 3264) #17
  %bot_req_out.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %bot_req_out.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2.i.i, ptr %bot_req_out.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.err_out.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.err_out.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %30 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep_out.i, align 4
  %call8.i.i = tail call ptr @usb_ep_alloc_request(ptr noundef %31, i32 noundef 3264) #17
  %cmd.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i, ptr %cmd.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not.i.i, label %if.end6.i.i.err_cmd.i.i_crit_edge, label %if.end13.i.i

if.end6.i.i.err_cmd.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_cmd.i.i

if.end13.i.i:                                     ; preds = %if.end6.i.i
  %33 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep_in.i, align 4
  %call15.i.i = tail call ptr @usb_ep_alloc_request(ptr noundef %34, i32 noundef 3264) #17
  %bot_status.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %bot_status.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call15.i.i, ptr %bot_status.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool19.not.i.i, label %if.end13.i.i.err_sts.i.i_crit_edge, label %if.end21.i.i

if.end13.i.i.err_sts.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_sts.i.i

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %csw.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %call15.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %csw.i.i, ptr %call15.i.i, align 4
  %37 = ptrtoint ptr %bot_status.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bot_status.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 13, ptr %length.i.i, align 4
  %40 = load ptr, ptr %bot_status.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bot_status_complete, ptr %complete.i.i, align 4
  %42 = ptrtoint ptr %csw.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1431519827, ptr %csw.i.i, align 4
  %43 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep_out.i, align 4
  %maxpacket.i.i = getelementptr inbounds %struct.usb_ep, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 7)
  %bf.load.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr.i.i = lshr i56 %bf.load.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr.i.i to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %bf.cast.i.i, i32 noundef 3264) #22
  %buf34.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %buf34.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i.i, ptr %buf34.i.i, align 4
  %tobool37.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool37.not.i.i, label %if.end21.i.i.err_buf.i.i_crit_edge, label %if.end39.i.i

if.end21.i.i.err_buf.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_buf.i.i

if.end39.i.i:                                     ; preds = %if.end21.i.i
  %47 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd.i.i, align 4
  %complete42.i.i = getelementptr inbounds %struct.usb_request, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %complete42.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @bot_cmd_complete, ptr %complete42.i.i, align 4
  %50 = ptrtoint ptr %buf34.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf34.i.i, align 4
  %52 = load ptr, ptr %cmd.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %52, align 4
  %54 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ep_out.i, align 4
  %maxpacket49.i.i = getelementptr inbounds %struct.usb_ep, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %maxpacket49.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 7)
  %bf.load50.i.i = load i56, ptr %maxpacket49.i.i, align 2
  %bf.lshr51.i.i = lshr i56 %bf.load50.i.i, 40
  %bf.cast52.i.i = trunc i56 %bf.lshr51.i.i to i32
  %57 = load ptr, ptr %cmd.i.i, align 4
  %length55.i.i = getelementptr inbounds %struct.usb_request, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %length55.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %bf.cast52.i.i, ptr %length55.i.i, align 4
  %59 = load ptr, ptr %cmd.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %1, ptr %context.i.i, align 4
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %and.i.i.i = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i121.i.i, label %if.end39.i.i.if.end13.i_crit_edge

if.end39.i.i.if.end13.i_crit_edge:                ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.end.i121.i.i:                                  ; preds = %if.end39.i.i
  %63 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ep_out.i, align 4
  %65 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmd.i.i, align 4
  %call.i.i.i = tail call i32 @usb_ep_queue(ptr noundef %64, ptr noundef %66, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then2.i.i.i, label %err_queue.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i121.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %or.i.i.i = or i32 %68, 16
  store i32 %or.i.i.i, ptr %flags, align 4
  br label %if.end13.i

err_queue.i.i:                                    ; preds = %if.end.i121.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %buf34.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf34.i.i, align 4
  tail call void @kfree(ptr noundef %70) #17
  %71 = ptrtoint ptr %buf34.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %buf34.i.i, align 4
  br label %err_buf.i.i

err_buf.i.i:                                      ; preds = %err_queue.i.i, %if.end21.i.i.err_buf.i.i_crit_edge
  %72 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ep_in.i, align 4
  %74 = ptrtoint ptr %bot_status.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bot_status.i.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %73, ptr noundef %75) #17
  br label %err_sts.i.i

err_sts.i.i:                                      ; preds = %err_buf.i.i, %if.end13.i.i.err_sts.i.i_crit_edge
  %76 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ep_out.i, align 4
  %78 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cmd.i.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %77, ptr noundef %79) #17
  %80 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %cmd.i.i, align 4
  br label %err_cmd.i.i

err_cmd.i.i:                                      ; preds = %err_sts.i.i, %if.end6.i.i.err_cmd.i.i_crit_edge
  %81 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ep_out.i, align 4
  %83 = ptrtoint ptr %bot_req_out.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bot_req_out.i.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %82, ptr noundef %84) #17
  %85 = ptrtoint ptr %bot_req_out.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %bot_req_out.i.i, align 4
  br label %err_out.i.i

err_out.i.i:                                      ; preds = %err_cmd.i.i, %if.end.i.i.err_out.i.i_crit_edge
  %86 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ep_in.i, align 4
  %88 = ptrtoint ptr %bot_req_in.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bot_req_in.i.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %87, ptr noundef %89) #17
  %90 = ptrtoint ptr %bot_req_in.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %bot_req_in.i.i, align 4
  br label %err_wq.i

if.end13.i:                                       ; preds = %if.then2.i.i.i, %if.end39.i.i.if.end13.i_crit_edge
  %91 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags, align 4
  %or.i = or i32 %92, 1
  store i32 %or.i, ptr %flags, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #21
  br label %if.end12

err_wq.i:                                         ; preds = %err_out.i.i, %if.end9.i.err_wq.i_crit_edge
  %call80.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #21
  %93 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ep_out.i, align 4
  %call17.i = tail call i32 @usb_ep_disable(ptr noundef %94) #17
  br label %err_b_out.i

err_b_out.i:                                      ; preds = %err_wq.i, %if.end.i.err_b_out.i_crit_edge
  %95 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ep_in.i, align 4
  %call19.i = tail call i32 @usb_ep_disable(ptr noundef %96) #17
  br label %err_b_in.i

err_b_in.i:                                       ; preds = %err_b_out.i, %if.then8.err_b_in.i_crit_edge
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8, ptr %flags, align 4
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  %function.i22 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1
  %config.i23 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %98 = ptrtoint ptr %config.i23 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config.i23, align 4
  %cdev.i24 = getelementptr inbounds %struct.usb_configuration, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %cdev.i24 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cdev.i24, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %104 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %flags, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %103, i32 0, i32 5
  %105 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp.i = icmp ugt i32 %106, 4
  %spec.store.select.i = select i1 %cmp.i, i32 6, i32 2
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.store.select.i, ptr %flags, align 4
  %ep_in.i26 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %108 = ptrtoint ptr %ep_in.i26 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ep_in.i26, align 4
  %call.i27 = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %103, ptr noundef %function.i22, ptr noundef %109, i8 noundef zeroext 1) #17
  %110 = ptrtoint ptr %ep_in.i26 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ep_in.i26, align 4
  %call4.i28 = tail call i32 @usb_ep_enable(ptr noundef %111) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i28)
  %tobool.not.i29 = icmp eq i32 %call4.i28, 0
  br i1 %tobool.not.i29, label %if.end6.i, label %if.then10.err_b_in.i35_crit_edge

if.then10.err_b_in.i35_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_b_in.i35

if.end6.i:                                        ; preds = %if.then10
  %ep_out.i30 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 6
  %112 = ptrtoint ptr %ep_out.i30 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ep_out.i30, align 4
  %call7.i = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %103, ptr noundef %function.i22, ptr noundef %113, i8 noundef zeroext 1) #17
  %114 = ptrtoint ptr %ep_out.i30 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ep_out.i30, align 4
  %call9.i = tail call i32 @usb_ep_enable(ptr noundef %115) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end6.i.err_b_out.i34_crit_edge

if.end6.i.err_b_out.i34_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_b_out.i34

if.end12.i:                                       ; preds = %if.end6.i
  %ep_cmd.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 8
  %116 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ep_cmd.i, align 4
  %call13.i = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %103, ptr noundef %function.i22, ptr noundef %117, i8 noundef zeroext 1) #17
  %118 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ep_cmd.i, align 4
  %call15.i31 = tail call i32 @usb_ep_enable(ptr noundef %119) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i31)
  %tobool16.not.i = icmp eq i32 %call15.i31, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end12.i.err_cmd.i_crit_edge

if.end12.i.err_cmd.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_cmd.i

if.end18.i:                                       ; preds = %if.end12.i
  %ep_status.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 7
  %120 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ep_status.i, align 4
  %call19.i32 = tail call i32 @config_ep_by_speed_and_alt(ptr noundef %103, ptr noundef %function.i22, ptr noundef %121, i8 noundef zeroext 1) #17
  %122 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ep_status.i, align 4
  %call21.i = tail call i32 @usb_ep_enable(ptr noundef %123) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end18.i.err_status.i_crit_edge

if.end18.i.err_status.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_status.i

if.end24.i:                                       ; preds = %if.end18.i
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags, align 4
  %and.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i37 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i37, i32 1, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end24.i
  %i.078.i = phi i32 [ 0, %if.end24.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %i.078.i
  %126 = ptrtoint ptr %ep_in.i26 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ep_in.i26, align 4
  %call.i.i38 = tail call ptr @usb_ep_alloc_request(ptr noundef %127, i32 noundef 3264) #17
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i.i38, ptr %arrayidx.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %call.i.i38, null
  br i1 %tobool.not.i.i39, label %for.body.i.err_cleanup.i_crit_edge, label %if.end.i.i42

for.body.i.err_cleanup.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_cleanup.i

if.end.i.i42:                                     ; preds = %for.body.i
  %129 = ptrtoint ptr %ep_out.i30 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ep_out.i30, align 4
  %call2.i.i40 = tail call ptr @usb_ep_alloc_request(ptr noundef %130, i32 noundef 3264) #17
  %req_out.i.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %i.078.i, i32 1
  %131 = ptrtoint ptr %req_out.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call2.i.i40, ptr %req_out.i.i, align 4
  %tobool4.not.i.i41 = icmp eq ptr %call2.i.i40, null
  br i1 %tobool4.not.i.i41, label %if.end.i.i42.err_out.i.i45_crit_edge, label %if.end6.i.i43

if.end.i.i42.err_out.i.i45_crit_edge:             ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_out.i.i45

if.end6.i.i43:                                    ; preds = %if.end.i.i42
  %132 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ep_status.i, align 4
  %call7.i.i = tail call ptr @usb_ep_alloc_request(ptr noundef %133, i32 noundef 3264) #17
  %req_status.i.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %i.078.i, i32 2
  %134 = ptrtoint ptr %req_status.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call7.i.i, ptr %req_status.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i.i, label %err_sts.i.i44, label %for.inc.i

err_sts.i.i44:                                    ; preds = %if.end6.i.i43
  call void @__sanitizer_cov_trace_pc() #19
  %135 = ptrtoint ptr %ep_out.i30 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ep_out.i30, align 4
  %137 = ptrtoint ptr %req_out.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %req_out.i.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %136, ptr noundef %138) #17
  %139 = ptrtoint ptr %req_out.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %req_out.i.i, align 4
  br label %err_out.i.i45

err_out.i.i45:                                    ; preds = %err_sts.i.i44, %if.end.i.i42.err_out.i.i45_crit_edge
  %140 = ptrtoint ptr %ep_in.i26 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ep_in.i26, align 4
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %141, ptr noundef %143) #17
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %arrayidx.i, align 4
  br label %err_cleanup.i

for.inc.i:                                        ; preds = %if.end6.i.i43
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %..i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %145 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ep_cmd.i, align 4
  %call.i43.i = tail call ptr @usb_ep_alloc_request(ptr noundef %146, i32 noundef 3264) #17
  %cmd.i.i46 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4
  %147 = ptrtoint ptr %cmd.i.i46 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i43.i, ptr %cmd.i.i46, align 4
  %tobool.not.i44.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool.not.i44.i, label %for.end.i.err_cleanup.thread.i_crit_edge, label %if.end8.i.i.i78

for.end.i.err_cleanup.thread.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_cleanup.thread.i

if.end8.i.i.i78:                                  ; preds = %for.end.i
  %148 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ep_cmd.i, align 4
  %maxpacket.i.i47 = getelementptr inbounds %struct.usb_ep, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %maxpacket.i.i47 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 7)
  %bf.load.i.i48 = load i56, ptr %maxpacket.i.i47, align 2
  %bf.lshr.i.i49 = lshr i56 %bf.load.i.i48, 40
  %bf.cast.i.i50 = trunc i56 %bf.lshr.i.i49 to i32
  %call9.i.i.i77 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %bf.cast.i.i50, i32 noundef 3264) #22
  %buf.i.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4, i32 1
  %151 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call9.i.i.i77, ptr %buf.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %call9.i.i.i77, null
  br i1 %tobool8.not.i.i, label %err_buf.i.i81, label %if.end7.i

err_buf.i.i81:                                    ; preds = %if.end8.i.i.i78
  call void @__sanitizer_cov_trace_pc() #19
  %152 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ep_cmd.i, align 4
  %154 = ptrtoint ptr %cmd.i.i46 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cmd.i.i46, align 4
  tail call void @usb_ep_free_request(ptr noundef %153, ptr noundef %155) #17
  br label %err_cleanup.thread.i

if.end7.i:                                        ; preds = %if.end8.i.i.i78
  %156 = ptrtoint ptr %cmd.i.i46 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cmd.i.i46, align 4
  %complete.i.i82 = getelementptr inbounds %struct.usb_request, ptr %157, i32 0, i32 7
  %158 = ptrtoint ptr %complete.i.i82 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @uasp_cmd_complete, ptr %complete.i.i82, align 4
  %159 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %buf.i.i, align 4
  %161 = load ptr, ptr %cmd.i.i46, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %160, ptr %161, align 4
  %163 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ep_cmd.i, align 4
  %maxpacket19.i.i = getelementptr inbounds %struct.usb_ep, ptr %164, i32 0, i32 7
  %165 = ptrtoint ptr %maxpacket19.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 7)
  %bf.load20.i.i = load i56, ptr %maxpacket19.i.i, align 2
  %bf.lshr21.i.i = lshr i56 %bf.load20.i.i, 40
  %bf.cast22.i.i = trunc i56 %bf.lshr21.i.i to i32
  %166 = load ptr, ptr %cmd.i.i46, align 4
  %length.i.i83 = getelementptr inbounds %struct.usb_request, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %length.i.i83 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %bf.cast22.i.i, ptr %length.i.i83, align 4
  %168 = load ptr, ptr %cmd.i.i46, align 4
  %context.i.i84 = getelementptr inbounds %struct.usb_request, ptr %168, i32 0, i32 8
  %169 = ptrtoint ptr %context.i.i84 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %1, ptr %context.i.i84, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.i
  %i.023.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end7.i ]
  %arrayidx.i.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %i.023.i.i
  %add.i.i = add nuw nsw i32 %i.023.i.i, 1
  %170 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i.i, align 4
  %stream_id.i.i = getelementptr inbounds %struct.usb_request, ptr %171, i32 0, i32 6
  %172 = ptrtoint ptr %stream_id.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %bf.load.i47.i = load i32, ptr %stream_id.i.i, align 4
  %bf.shl.i.i = shl i32 %add.i.i, 16
  %bf.clear.i.i = and i32 %bf.load.i47.i, 65535
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %stream_id.i.i, align 4
  %req_out.i48.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %i.023.i.i, i32 1
  %173 = ptrtoint ptr %req_out.i48.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %req_out.i48.i, align 4
  %stream_id2.i.i = getelementptr inbounds %struct.usb_request, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %stream_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %bf.load3.i.i = load i32, ptr %stream_id2.i.i, align 4
  %bf.clear6.i.i = and i32 %bf.load3.i.i, 65535
  %bf.set7.i.i = or i32 %bf.clear6.i.i, %bf.shl.i.i
  store i32 %bf.set7.i.i, ptr %stream_id2.i.i, align 4
  %req_status.i49.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %i.023.i.i, i32 2
  %176 = ptrtoint ptr %req_status.i49.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %req_status.i49.i, align 4
  %stream_id9.i.i = getelementptr inbounds %struct.usb_request, ptr %177, i32 0, i32 6
  %178 = ptrtoint ptr %stream_id9.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %bf.load10.i.i = load i32, ptr %stream_id9.i.i, align 4
  %bf.clear13.i.i = and i32 %bf.load10.i.i, 65535
  %bf.set14.i.i = or i32 %bf.clear13.i.i, %bf.shl.i.i
  store i32 %bf.set14.i.i, ptr %stream_id9.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %..i
  br i1 %exitcond.not.i.i, label %uasp_setup_stream_res.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

uasp_setup_stream_res.exit.i:                     ; preds = %for.body.i.i
  %179 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ep_cmd.i, align 4
  %181 = ptrtoint ptr %cmd.i.i46 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cmd.i.i46, align 4
  %call8.i = tail call i32 @usb_ep_queue(ptr noundef %180, ptr noundef %182, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %uasp_setup_stream_res.exit.i.if.end28.i_crit_edge, label %uasp_setup_stream_res.exit.i.err_cleanup.thread.i_crit_edge

uasp_setup_stream_res.exit.i.err_cleanup.thread.i_crit_edge: ; preds = %uasp_setup_stream_res.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_cleanup.thread.i

uasp_setup_stream_res.exit.i.if.end28.i_crit_edge: ; preds = %uasp_setup_stream_res.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

err_cleanup.thread.i:                             ; preds = %uasp_setup_stream_res.exit.i.err_cleanup.thread.i_crit_edge, %err_buf.i.i81, %for.end.i.err_cleanup.thread.i_crit_edge
  %ret.0.i = phi i32 [ %call8.i, %uasp_setup_stream_res.exit.i.err_cleanup.thread.i_crit_edge ], [ -12, %for.end.i.err_cleanup.thread.i_crit_edge ], [ -12, %err_buf.i.i81 ]
  %183 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ep_cmd.i, align 4
  %185 = ptrtoint ptr %cmd.i.i46 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cmd.i.i46, align 4
  tail call void @usb_ep_free_request(ptr noundef %184, ptr noundef %186) #17
  %buf.i52.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4, i32 1
  %187 = ptrtoint ptr %buf.i52.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %buf.i52.i, align 4
  tail call void @kfree(ptr noundef %188) #17
  %189 = ptrtoint ptr %cmd.i.i46 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %cmd.i.i46, align 4
  %190 = ptrtoint ptr %buf.i52.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %buf.i52.i, align 4
  br label %do.body.preheader.i

err_cleanup.i:                                    ; preds = %err_out.i.i45, %for.body.i.err_cleanup.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.078.i)
  %tobool12.not.i = icmp eq i32 %i.078.i, 0
  br i1 %tobool12.not.i, label %uasp_prepare_reqs.exit.thread89, label %err_cleanup.i.do.body.preheader.i_crit_edge

err_cleanup.i.do.body.preheader.i_crit_edge:      ; preds = %err_cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.preheader.i

uasp_prepare_reqs.exit.thread89:                  ; preds = %err_cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  %call21.i8691 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #21
  br label %err_wq.i33

do.body.preheader.i:                              ; preds = %err_cleanup.i.do.body.preheader.i_crit_edge, %err_cleanup.thread.i
  %ret.193.i = phi i32 [ %ret.0.i, %err_cleanup.thread.i ], [ -12, %err_cleanup.i.do.body.preheader.i_crit_edge ]
  %i.06792.i = phi i32 [ %..i, %err_cleanup.thread.i ], [ %i.078.i, %err_cleanup.i.do.body.preheader.i_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %uasp_cleanup_one_stream.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %i.1.i = phi i32 [ %sub.i, %uasp_cleanup_one_stream.exit.i.do.body.i_crit_edge ], [ %i.06792.i, %do.body.preheader.i ]
  %sub.i = add nsw i32 %i.1.i, -1
  %arrayidx15.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %sub.i
  %191 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx15.i, align 4
  %tobool.not.i53.i = icmp eq ptr %192, null
  br i1 %tobool.not.i53.i, label %do.body.i.uasp_cleanup_one_stream.exit.i_crit_edge, label %if.end.i59.i

do.body.i.uasp_cleanup_one_stream.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %uasp_cleanup_one_stream.exit.i

if.end.i59.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %193 = ptrtoint ptr %ep_in.i26 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ep_in.i26, align 4
  tail call void @usb_ep_free_request(ptr noundef %194, ptr noundef nonnull %192) #17
  %195 = ptrtoint ptr %ep_out.i30 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ep_out.i30, align 4
  %req_out.i56.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %sub.i, i32 1
  %197 = ptrtoint ptr %req_out.i56.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %req_out.i56.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %196, ptr noundef %198) #17
  %199 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ep_status.i, align 4
  %req_status.i58.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %sub.i, i32 2
  %201 = ptrtoint ptr %req_status.i58.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %req_status.i58.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %200, ptr noundef %202) #17
  %203 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %arrayidx15.i, align 4
  %204 = ptrtoint ptr %req_out.i56.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %req_out.i56.i, align 4
  %205 = ptrtoint ptr %req_status.i58.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %req_status.i58.i, align 4
  br label %uasp_cleanup_one_stream.exit.i

uasp_cleanup_one_stream.exit.i:                   ; preds = %if.end.i59.i, %do.body.i.uasp_cleanup_one_stream.exit.i_crit_edge
  %tobool16.not.i85 = icmp eq i32 %sub.i, 0
  br i1 %tobool16.not.i85, label %uasp_prepare_reqs.exit, label %uasp_cleanup_one_stream.exit.i.do.body.i_crit_edge

uasp_cleanup_one_stream.exit.i.do.body.i_crit_edge: ; preds = %uasp_cleanup_one_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

uasp_prepare_reqs.exit:                           ; preds = %uasp_cleanup_one_stream.exit.i
  %call21.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.193.i)
  %tobool26.not.i = icmp eq i32 %ret.193.i, 0
  br i1 %tobool26.not.i, label %uasp_prepare_reqs.exit.if.end28.i_crit_edge, label %uasp_prepare_reqs.exit.err_wq.i33_crit_edge

uasp_prepare_reqs.exit.err_wq.i33_crit_edge:      ; preds = %uasp_prepare_reqs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_wq.i33

uasp_prepare_reqs.exit.if.end28.i_crit_edge:      ; preds = %uasp_prepare_reqs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28.i

if.end28.i:                                       ; preds = %uasp_prepare_reqs.exit.if.end28.i_crit_edge, %uasp_setup_stream_res.exit.i.if.end28.i_crit_edge
  %206 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %flags, align 4
  %or30.i = or i32 %207, 1
  store i32 %or30.i, ptr %flags, align 4
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #21
  br label %if.end12

err_wq.i33:                                       ; preds = %uasp_prepare_reqs.exit.err_wq.i33_crit_edge, %uasp_prepare_reqs.exit.thread89
  %208 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ep_status.i, align 4
  %call33.i = tail call i32 @usb_ep_disable(ptr noundef %209) #17
  br label %err_status.i

err_status.i:                                     ; preds = %err_wq.i33, %if.end18.i.err_status.i_crit_edge
  %210 = ptrtoint ptr %ep_cmd.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ep_cmd.i, align 4
  %call35.i = tail call i32 @usb_ep_disable(ptr noundef %211) #17
  br label %err_cmd.i

err_cmd.i:                                        ; preds = %err_status.i, %if.end12.i.err_cmd.i_crit_edge
  %212 = ptrtoint ptr %ep_out.i30 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ep_out.i30, align 4
  %call37.i = tail call i32 @usb_ep_disable(ptr noundef %213) #17
  br label %err_b_out.i34

err_b_out.i34:                                    ; preds = %err_cmd.i, %if.end6.i.err_b_out.i34_crit_edge
  %214 = ptrtoint ptr %ep_in.i26 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ep_in.i26, align 4
  %call39.i = tail call i32 @usb_ep_disable(ptr noundef %215) #17
  br label %err_b_in.i35

err_b_in.i35:                                     ; preds = %err_b_out.i34, %if.then10.err_b_in.i35_crit_edge
  %216 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %err_b_in.i35, %if.end28.i, %err_b_in.i, %if.end13.i, %if.end7.if.end12_crit_edge
  %config = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %217 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %218, i32 0, i32 9
  %219 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cdev, align 4
  tail call void @usb_composite_setup_continue(ptr noundef %220) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bot_cleanup_old_alt(ptr nocapture noundef %fu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %ep_in = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 5
  %2 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_in, align 4
  %call = tail call i32 @usb_ep_disable(ptr noundef %3) #17
  %ep_out = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 6
  %4 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_out, align 4
  %call1 = tail call i32 @usb_ep_disable(ptr noundef %5) #17
  %bot_req_in = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 11
  %6 = ptrtoint ptr %bot_req_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bot_req_in, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_in, align 4
  tail call void @usb_ep_free_request(ptr noundef %9, ptr noundef nonnull %7) #17
  %10 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ep_out, align 4
  %bot_req_out = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 12
  %12 = ptrtoint ptr %bot_req_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bot_req_out, align 4
  tail call void @usb_ep_free_request(ptr noundef %11, ptr noundef %13) #17
  %14 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_out, align 4
  %cmd = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 4
  tail call void @usb_ep_free_request(ptr noundef %15, ptr noundef %17) #17
  %18 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_in, align 4
  %bot_status = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 10
  %20 = ptrtoint ptr %bot_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bot_status, align 4
  tail call void @usb_ep_free_request(ptr noundef %19, ptr noundef %21) #17
  %buf = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %23) #17
  %24 = ptrtoint ptr %bot_req_in to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bot_req_in, align 4
  %25 = ptrtoint ptr %bot_req_out to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bot_req_out, align 4
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cmd, align 4
  %27 = ptrtoint ptr %bot_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bot_status, align 4
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %buf, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uasp_cleanup_old_alt(ptr nocapture noundef %fu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %ep_in = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 5
  %2 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_in, align 4
  %call = tail call i32 @usb_ep_disable(ptr noundef %3) #17
  %ep_out = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 6
  %4 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_out, align 4
  %call1 = tail call i32 @usb_ep_disable(ptr noundef %5) #17
  %ep_status = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 7
  %6 = ptrtoint ptr %ep_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_status, align 4
  %call2 = tail call i32 @usb_ep_disable(ptr noundef %7) #17
  %ep_cmd = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 8
  %8 = ptrtoint ptr %ep_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_cmd, align 4
  %call3 = tail call i32 @usb_ep_disable(ptr noundef %9) #17
  br label %for.body

for.body:                                         ; preds = %uasp_cleanup_one_stream.exit.for.body_crit_edge, %if.end
  %i.013 = phi i32 [ 0, %if.end ], [ %inc, %uasp_cleanup_one_stream.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.f_uas, ptr %fu, i32 0, i32 9, i32 %i.013
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.uasp_cleanup_one_stream.exit_crit_edge, label %if.end.i

for.body.uasp_cleanup_one_stream.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %uasp_cleanup_one_stream.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep_in, align 4
  tail call void @usb_ep_free_request(ptr noundef %13, ptr noundef nonnull %11) #17
  %14 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_out, align 4
  %req_out.i = getelementptr %struct.f_uas, ptr %fu, i32 0, i32 9, i32 %i.013, i32 1
  %16 = ptrtoint ptr %req_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_out.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %15, ptr noundef %17) #17
  %18 = ptrtoint ptr %ep_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_status, align 4
  %req_status.i = getelementptr %struct.f_uas, ptr %fu, i32 0, i32 9, i32 %i.013, i32 2
  %20 = ptrtoint ptr %req_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req_status.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %19, ptr noundef %21) #17
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %req_out.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %req_out.i, align 4
  %24 = ptrtoint ptr %req_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %req_status.i, align 4
  br label %uasp_cleanup_one_stream.exit

uasp_cleanup_one_stream.exit:                     ; preds = %if.end.i, %for.body.uasp_cleanup_one_stream.exit_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %uasp_cleanup_one_stream.exit.for.body_crit_edge

uasp_cleanup_one_stream.exit.for.body_crit_edge:  ; preds = %uasp_cleanup_one_stream.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %uasp_cleanup_one_stream.exit
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %ep_cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep_cmd, align 4
  %cmd.i = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 4
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %26, ptr noundef %28) #17
  %buf.i = getelementptr inbounds %struct.f_uas, ptr %fu, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %30) #17
  %31 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cmd.i, align 4
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %buf.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_setup_continue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed_and_alt(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bot_status_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %fu1 = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fu1, align 4
  %se_cmd = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #17
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 66) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %ep_out.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_out.i, align 4
  %cmd.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd.i, align 4
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %9, ptr noundef %11, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %13, 16
  store i32 %or.i, ptr %flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bot_cmd_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %flags = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -17
  store i32 %and, ptr %flags, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431519811, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1431519811
  br i1 %cmp.not.i, label %if.end.i, label %if.end.do.end.sink.split_crit_edge

if.end.do.end.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.sink.split

if.end.i:                                         ; preds = %if.end
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %13)
  %cmp2.not.i = icmp eq i32 %13, 31
  br i1 %cmp2.not.i, label %if.end9.i, label %if.end.i.do.end.sink.split_crit_edge

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.sink.split

if.end9.i:                                        ; preds = %if.end.i
  %Length.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %Length.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %Length.i, align 2
  %conv.i = zext i8 %15 to i32
  %16 = add i8 %15, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %16)
  %17 = icmp ult i8 %16, -16
  br i1 %17, label %if.end9.i.do.end_crit_edge, label %if.end15.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end15.i:                                       ; preds = %if.end9.i
  %tpg_nexus.i = getelementptr inbounds %struct.usbg_tpg, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %tpg_nexus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tpg_nexus.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end15.i.do.end.sink.split_crit_edge, label %if.end22.i

if.end15.i.do.end.sink.split_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.sink.split

if.end22.i:                                       ; preds = %if.end15.i
  %Tag.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %Tag.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Tag.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %sess_tag_pool.i.i = getelementptr inbounds %struct.se_session, ptr %23, i32 0, i32 14
  %24 = tail call i32 @llvm.read_register.i32(metadata !305) #17
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !318
  %28 = tail call i32 @llvm.read_register.i32(metadata !305) #17
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu1.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu1.i.i.i, align 4
  %call2.i.i.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !319
  %32 = tail call i32 @llvm.read_register.i32(metadata !305) #17
  %and.i.i.i6.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i6.i.i.i to ptr
  %preempt_count.i.i7.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i7.i.i.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i, label %if.end22.i.do.end.sink.split_crit_edge, label %usbg_get_cmd.exit.i

if.end22.i.do.end.sink.split_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.sink.split

usbg_get_cmd.exit.i:                              ; preds = %if.end22.i
  %sess_cmd_map.i.i = getelementptr inbounds %struct.se_session, ptr %23, i32 0, i32 13
  %36 = ptrtoint ptr %sess_cmd_map.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sess_cmd_map.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i
  %38 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 768)
  %map_tag.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 4, i32 8
  %39 = ptrtoint ptr %map_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call2.i.i.i, ptr %map_tag.i.i, align 4
  %map_cpu.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 4, i32 9
  %40 = ptrtoint ptr %map_cpu.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %31, ptr %map_cpu.i.i, align 8
  %conv.i.i = trunc i32 %21 to i16
  %tag3.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 9
  %41 = ptrtoint ptr %tag3.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %tag3.i.i, align 4
  %conv.mask.i.i = and i32 %21, 65535
  %conv4.i.i = zext i32 %conv.mask.i.i to i64
  %tag6.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 4, i32 4
  %42 = ptrtoint ptr %tag6.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv4.i.i, ptr %tag6.i.i, align 8
  %fu7.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 6
  %43 = ptrtoint ptr %fu7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %fu7.i.i, align 4
  %cmp.i79.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.i, label %usbg_get_cmd.exit.i.do.end.sink.split_crit_edge, label %bot_submit_command.exit

usbg_get_cmd.exit.i.do.end.sink.split_crit_edge:  ; preds = %usbg_get_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.sink.split

bot_submit_command.exit:                          ; preds = %usbg_get_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %CDB.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 6
  %44 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %CDB.i, i32 %conv.i)
  %45 = ptrtoint ptr %Tag.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %Tag.i, align 4
  %bot_tag.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 14
  %47 = ptrtoint ptr %bot_tag.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %bot_tag.i, align 8
  %prio_attr.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 10
  %48 = ptrtoint ptr %prio_attr.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 32, ptr %prio_attr.i, align 2
  %Lun.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 4
  %49 = ptrtoint ptr %Lun.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %Lun.i, align 1
  %conv34.i = zext i8 %50 to i32
  %unpacked_lun.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 3
  %51 = ptrtoint ptr %unpacked_lun.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv34.i, ptr %unpacked_lun.i, align 8
  %Flags.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 3
  %52 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %Flags.i, align 4
  %is_read.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 16
  %.lobit.i = and i8 %53, -128
  %54 = ptrtoint ptr %is_read.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i = load i8, ptr %is_read.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %.lobit.i
  store i8 %bf.set.i, ptr %is_read.i, align 8
  %DataTransferLength.i = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 2
  %55 = ptrtoint ptr %DataTransferLength.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %DataTransferLength.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #17
  %data_len.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 1
  %58 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %data_len.i, align 8
  %59 = tail call i32 @llvm.bswap.i32(i32 %46) #17
  %conv38.i = zext i32 %59 to i64
  %60 = ptrtoint ptr %tag6.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv38.i, ptr %tag6.i.i, align 8
  %work.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #17
  %61 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @bot_submit_command.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry43.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 2, i32 1
  %62 = ptrtoint ptr %entry43.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry43.i, ptr %entry43.i, align 4
  %prev.i.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 2, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry43.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.usbg_cmd, ptr %37, i32 %call2.i.i.i, i32 2, i32 2
  %64 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @bot_cmd_work, ptr %func.i, align 4
  %workqueue.i = getelementptr inbounds %struct.usbg_tpg, ptr %9, i32 0, i32 3
  %65 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %workqueue.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work.i) #17
  br label %cleanup

do.end.sink.split:                                ; preds = %usbg_get_cmd.exit.i.do.end.sink.split_crit_edge, %if.end22.i.do.end.sink.split_crit_edge, %if.end15.i.do.end.sink.split_crit_edge, %if.end.i.do.end.sink.split_crit_edge, %if.end.do.end.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.23, %if.end.do.end.sink.split_crit_edge ], [ @.str.26, %if.end.i.do.end.sink.split_crit_edge ], [ @.str.29, %if.end15.i.do.end.sink.split_crit_edge ], [ @.str.32, %usbg_get_cmd.exit.i.do.end.sink.split_crit_edge ], [ @.str.32, %if.end22.i.do.end.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %if.end.do.end.sink.split_crit_edge ], [ -22, %if.end.i.do.end.sink.split_crit_edge ], [ -19, %if.end15.i.do.end.sink.split_crit_edge ], [ -12, %usbg_get_cmd.exit.i.do.end.sink.split_crit_edge ], [ -12, %if.end22.i.do.end.sink.split_crit_edge ]
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink) #21
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end9.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end9.i.do.end_crit_edge ], [ %retval.0.i.ph.ph, %do.end.sink.split ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 302, i32 noundef %retval.0.i.ph) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %bot_submit_command.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bot_cmd_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %se_cmd1 = getelementptr i8, ptr %work, i32 52
  %fu = getelementptr i8, ptr %work, i32 496
  %0 = ptrtoint ptr %fu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tpg_nexus = getelementptr inbounds %struct.usbg_tpg, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg_nexus, align 4
  %call = tail call fastcc i32 @get_cmd_dir(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %se_tpg = getelementptr inbounds %struct.se_session, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %data_len = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len, align 8
  %prio_attr = getelementptr i8, ptr %work, i32 562
  %14 = ptrtoint ptr %prio_attr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %prio_attr, align 2
  %conv = zext i16 %15 to i32
  %sense = getelementptr i8, ptr %work, i32 580
  %unpacked_lun = getelementptr i8, ptr %work, i32 44
  %16 = ptrtoint ptr %unpacked_lun to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unpacked_lun, align 8
  %conv5 = sext i32 %17 to i64
  tail call void @__target_init_cmd(ptr noundef %se_cmd1, ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 3, i32 noundef %conv, ptr noundef %sense, i64 noundef %conv5) #17
  %call17 = tail call i32 @transport_send_check_condition_and_sense(ptr noundef %se_cmd1, i32 noundef 2, i32 noundef 1) #17
  %call19 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd1, i32 noundef 0) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sense10 = getelementptr i8, ptr %work, i32 580
  %unpacked_lun12 = getelementptr i8, ptr %work, i32 44
  %18 = ptrtoint ptr %unpacked_lun12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unpacked_lun12, align 8
  %conv13 = sext i32 %19 to i64
  %data_len14 = getelementptr i8, ptr %work, i32 -4
  %20 = ptrtoint ptr %data_len14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len14, align 8
  %prio_attr15 = getelementptr i8, ptr %work, i32 562
  %22 = ptrtoint ptr %prio_attr15 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %prio_attr15, align 2
  %conv16 = zext i16 %23 to i32
  tail call void @target_submit_cmd(ptr noundef %se_cmd1, ptr noundef %7, ptr noundef %add.ptr, ptr noundef %sense10, i64 noundef %conv13, i32 noundef %21, i32 noundef %conv16, i32 noundef %call, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_cmd_dir(ptr nocapture noundef readonly %cdb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %1, label %do.end [
    i8 8, label %entry.sw.epilog_crit_edge
    i8 40, label %entry.sw.epilog_crit_edge6
    i8 -88, label %entry.sw.epilog_crit_edge7
    i8 -120, label %entry.sw.epilog_crit_edge8
    i8 18, label %entry.sw.epilog_crit_edge9
    i8 26, label %entry.sw.epilog_crit_edge10
    i8 90, label %entry.sw.epilog_crit_edge11
    i8 -98, label %entry.sw.epilog_crit_edge12
    i8 -93, label %entry.sw.epilog_crit_edge13
    i8 94, label %entry.sw.epilog_crit_edge14
    i8 -94, label %entry.sw.epilog_crit_edge15
    i8 -122, label %entry.sw.epilog_crit_edge16
    i8 -96, label %entry.sw.epilog_crit_edge17
    i8 5, label %entry.sw.epilog_crit_edge18
    i8 52, label %entry.sw.epilog_crit_edge19
    i8 37, label %entry.sw.epilog_crit_edge20
    i8 67, label %entry.sw.epilog_crit_edge21
    i8 35, label %entry.sw.epilog_crit_edge22
    i8 3, label %entry.sw.epilog_crit_edge23
    i8 10, label %entry.sw.bb1_crit_edge
    i8 42, label %entry.sw.bb1_crit_edge24
    i8 -86, label %entry.sw.bb1_crit_edge25
    i8 -118, label %entry.sw.bb1_crit_edge26
    i8 21, label %entry.sw.bb1_crit_edge27
    i8 85, label %entry.sw.bb1_crit_edge28
    i8 46, label %entry.sw.bb1_crit_edge29
    i8 -82, label %entry.sw.bb1_crit_edge30
    i8 95, label %entry.sw.bb1_crit_edge31
    i8 -92, label %entry.sw.bb1_crit_edge32
    i8 -75, label %entry.sw.bb1_crit_edge33
    i8 -121, label %entry.sw.bb1_crit_edge34
    i8 30, label %entry.sw.bb2_crit_edge
    i8 0, label %entry.sw.bb2_crit_edge35
    i8 53, label %entry.sw.bb2_crit_edge36
    i8 27, label %entry.sw.bb2_crit_edge37
    i8 25, label %entry.sw.bb2_crit_edge38
    i8 1, label %entry.sw.bb2_crit_edge39
    i8 43, label %entry.sw.bb2_crit_edge40
    i8 17, label %entry.sw.bb2_crit_edge41
    i8 47, label %entry.sw.bb2_crit_edge42
    i8 16, label %entry.sw.bb2_crit_edge43
  ]

entry.sw.bb2_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb2

entry.sw.bb1_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb1

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26, %entry.sw.bb1_crit_edge27, %entry.sw.bb1_crit_edge28, %entry.sw.bb1_crit_edge29, %entry.sw.bb1_crit_edge30, %entry.sw.bb1_crit_edge31, %entry.sw.bb1_crit_edge32, %entry.sw.bb1_crit_edge33, %entry.sw.bb1_crit_edge34
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge35, %entry.sw.bb2_crit_edge36, %entry.sw.bb2_crit_edge37, %entry.sw.bb2_crit_edge38, %entry.sw.bb2_crit_edge39, %entry.sw.bb2_crit_edge40, %entry.sw.bb2_crit_edge41, %entry.sw.bb2_crit_edge42, %entry.sw.bb2_crit_edge43
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13, %entry.sw.epilog_crit_edge14, %entry.sw.epilog_crit_edge15, %entry.sw.epilog_crit_edge16, %entry.sw.epilog_crit_edge17, %entry.sw.epilog_crit_edge18, %entry.sw.epilog_crit_edge19, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21, %entry.sw.epilog_crit_edge22, %entry.sw.epilog_crit_edge23
  %ret.0 = phi i32 [ -22, %do.end ], [ 3, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge6 ], [ 2, %entry.sw.epilog_crit_edge7 ], [ 2, %entry.sw.epilog_crit_edge8 ], [ 2, %entry.sw.epilog_crit_edge9 ], [ 2, %entry.sw.epilog_crit_edge10 ], [ 2, %entry.sw.epilog_crit_edge11 ], [ 2, %entry.sw.epilog_crit_edge12 ], [ 2, %entry.sw.epilog_crit_edge13 ], [ 2, %entry.sw.epilog_crit_edge14 ], [ 2, %entry.sw.epilog_crit_edge15 ], [ 2, %entry.sw.epilog_crit_edge16 ], [ 2, %entry.sw.epilog_crit_edge17 ], [ 2, %entry.sw.epilog_crit_edge18 ], [ 2, %entry.sw.epilog_crit_edge19 ], [ 2, %entry.sw.epilog_crit_edge20 ], [ 2, %entry.sw.epilog_crit_edge21 ], [ 2, %entry.sw.epilog_crit_edge22 ], [ 2, %entry.sw.epilog_crit_edge23 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_submit_cmd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_send_check_condition_and_sense(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uasp_cmd_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = zext i8 %9 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv.i) #21
  br label %if.end2

if.end.i:                                         ; preds = %if.end
  %tpg_nexus.i = getelementptr inbounds %struct.usbg_tpg, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %tpg_nexus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpg_nexus.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #21
  br label %if.end2

if.end11.i:                                       ; preds = %if.end.i
  %len12.i = getelementptr inbounds %struct.command_iu, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %len12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len12.i, align 1
  %14 = and i8 %13, -4
  %and.i = zext i8 %14 to i32
  %add.i = add nuw nsw i32 %and.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %14)
  %cmp14.i = icmp ugt i8 %14, 48
  br i1 %cmp14.i, label %if.end11.i.if.end2_crit_edge, label %if.end17.i

if.end11.i.if.end2_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end2

if.end17.i:                                       ; preds = %if.end11.i
  %tag.i = getelementptr inbounds %struct.command_iu, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tag.i, align 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  %sess_tag_pool.i.i = getelementptr inbounds %struct.se_session, ptr %18, i32 0, i32 14
  %19 = tail call i32 @llvm.read_register.i32(metadata !305) #17
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !318
  %23 = tail call i32 @llvm.read_register.i32(metadata !305) #17
  %and.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu1.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu1.i.i.i, align 4
  %call2.i.i.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !319
  %27 = tail call i32 @llvm.read_register.i32(metadata !305) #17
  %and.i.i.i6.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i6.i.i.i to ptr
  %preempt_count.i.i7.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i7.i.i.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i, label %if.end17.i.do.end25.i_crit_edge, label %usbg_get_cmd.exit.i

if.end17.i.do.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25.i

usbg_get_cmd.exit.i:                              ; preds = %if.end17.i
  %sess_cmd_map.i.i = getelementptr inbounds %struct.se_session, ptr %18, i32 0, i32 13
  %31 = ptrtoint ptr %sess_cmd_map.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sess_cmd_map.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i
  %33 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 768)
  %map_tag.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 4, i32 8
  %34 = ptrtoint ptr %map_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call2.i.i.i, ptr %map_tag.i.i, align 4
  %map_cpu.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 4, i32 9
  %35 = ptrtoint ptr %map_cpu.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %26, ptr %map_cpu.i.i, align 8
  %tag3.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 9
  %36 = ptrtoint ptr %tag3.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %16, ptr %tag3.i.i, align 4
  %conv4.i.i = zext i16 %16 to i64
  %tag6.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 4, i32 4
  %37 = ptrtoint ptr %tag6.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv4.i.i, ptr %tag6.i.i, align 8
  %fu7.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 6
  %38 = ptrtoint ptr %fu7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %fu7.i.i, align 4
  %cmp.i2.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %usbg_get_cmd.exit.i.do.end25.i_crit_edge, label %if.end28.i

usbg_get_cmd.exit.i.do.end25.i_crit_edge:         ; preds = %usbg_get_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25.i

do.end25.i:                                       ; preds = %usbg_get_cmd.exit.i.do.end25.i_crit_edge, %if.end17.i.do.end25.i_crit_edge
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #21
  br label %if.end2

if.end28.i:                                       ; preds = %usbg_get_cmd.exit.i
  %cdb.i = getelementptr inbounds %struct.command_iu, ptr %5, i32 0, i32 8
  %39 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %cdb.i, i32 %add.i)
  %flags.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and30.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else49.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end28.i
  %42 = ptrtoint ptr %tag3.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tag3.i.i, align 4
  %conv34.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %43)
  %cmp35.i = icmp ugt i16 %43, 16
  br i1 %cmp35.i, label %err.i, label %if.end38.i

if.end38.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool40.not.i = icmp eq i16 %43, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.else.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  %stream.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 9
  br label %if.end53.i

if.else.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i = add nsw i32 %conv34.i, -1
  %arrayidx46.i = getelementptr %struct.f_uas, ptr %1, i32 0, i32 9, i32 %sub.i
  br label %if.end53.i

if.else49.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  %stream50.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 9
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else49.i, %if.else.i, %if.then41.i
  %stream.sink.i = phi ptr [ %stream.i, %if.then41.i ], [ %arrayidx46.i, %if.else.i ], [ %stream50.i, %if.else49.i ]
  %stream42.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 13
  %44 = ptrtoint ptr %stream42.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %stream.sink.i, ptr %stream42.i, align 4
  %prio_attr.i = getelementptr inbounds %struct.command_iu, ptr %5, i32 0, i32 3
  %45 = ptrtoint ptr %prio_attr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %prio_attr.i, align 1
  %47 = and i8 %46, 7
  %and55.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %47)
  %48 = icmp ult i8 %47, 5
  br i1 %48, label %switch.hole_check, label %if.end53.i.land.end.i_crit_edge

if.end53.i.land.end.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end53.i.land.end.i_crit_edge
  %.b1.i = load i1, ptr @usbg_submit_command.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.usbg_submit_command.exit_crit_edge, label %if.then67.i, !prof !317

land.end.i.usbg_submit_command.exit_crit_edge:    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %usbg_submit_command.exit

if.then67.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @usbg_submit_command.__already_done, align 1
  %conv73.i = zext i8 %46 to i32
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv73.i) #21
  br label %usbg_submit_command.exit

err.i:                                            ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #19
  %se_sess1.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 4, i32 21
  %49 = ptrtoint ptr %se_sess1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %se_sess1.i.i, align 4
  %data_buf.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 5
  %51 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data_buf.i.i, align 8
  tail call void @kfree(ptr noundef %52) #17
  %sess_tag_pool.i.i.i = getelementptr inbounds %struct.se_session, ptr %50, i32 0, i32 14
  %53 = ptrtoint ptr %map_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %map_tag.i.i, align 4
  %55 = ptrtoint ptr %map_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %map_cpu.i.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i.i.i, i32 noundef %54, i32 noundef %56) #17
  br label %if.end2

switch.hole_check:                                ; preds = %if.end53.i
  %switch.shifted = lshr i8 23, %47
  %57 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.lobit.not = icmp eq i8 %57, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.uasp_cmd_complete, i32 0, i32 %and55.i
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %58)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %usbg_submit_command.exit

usbg_submit_command.exit:                         ; preds = %switch.lookup, %if.then67.i, %land.end.i.usbg_submit_command.exit_crit_edge
  %.sink.i = phi i16 [ %switch.load, %switch.lookup ], [ 32, %if.then67.i ], [ 32, %land.end.i.usbg_submit_command.exit_crit_edge ]
  %prio_attr84.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 10
  %59 = ptrtoint ptr %prio_attr84.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %.sink.i, ptr %prio_attr84.i, align 2
  %lun.i = getelementptr inbounds %struct.command_iu, ptr %5, i32 0, i32 7
  %call85.i = tail call i64 @scsilun_to_int(ptr noundef %lun.i) #17
  %conv86.i = trunc i64 %call85.i to i32
  %unpacked_lun.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 3
  %60 = ptrtoint ptr %unpacked_lun.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv86.i, ptr %unpacked_lun.i, align 8
  %work.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #17
  %61 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @usbg_submit_command.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry91.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 2, i32 1
  %62 = ptrtoint ptr %entry91.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry91.i, ptr %entry91.i, align 4
  %prev.i.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 2, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry91.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.usbg_cmd, ptr %32, i32 %call2.i.i.i, i32 2, i32 2
  %64 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @usbg_cmd_work, ptr %func.i, align 4
  %workqueue.i = getelementptr inbounds %struct.usbg_tpg, ptr %7, i32 0, i32 3
  %65 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %workqueue.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work.i) #17
  br label %cleanup

if.end2:                                          ; preds = %err.i, %do.end25.i, %if.end11.i.if.end2_crit_edge, %do.end8.i, %do.end.i
  %ep_cmd = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %ep_cmd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ep_cmd, align 4
  %cmd = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4
  %69 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmd, align 4
  %call4 = tail call i32 @usb_ep_queue(ptr noundef %68, ptr noundef %70, i32 noundef 2592) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %usbg_submit_command.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_cmd_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %se_cmd1 = getelementptr i8, ptr %work, i32 52
  %fu = getelementptr i8, ptr %work, i32 496
  %0 = ptrtoint ptr %fu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tpg_nexus = getelementptr inbounds %struct.usbg_tpg, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg_nexus, align 4
  %call = tail call fastcc i32 @get_cmd_dir(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %se_tpg = getelementptr inbounds %struct.se_session, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %data_len = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len, align 8
  %prio_attr = getelementptr i8, ptr %work, i32 562
  %14 = ptrtoint ptr %prio_attr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %prio_attr, align 2
  %conv = zext i16 %15 to i32
  %sense = getelementptr i8, ptr %work, i32 580
  %unpacked_lun = getelementptr i8, ptr %work, i32 44
  %16 = ptrtoint ptr %unpacked_lun to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unpacked_lun, align 8
  %conv5 = sext i32 %17 to i64
  tail call void @__target_init_cmd(ptr noundef %se_cmd1, ptr noundef %11, ptr noundef %7, i32 noundef %13, i32 noundef 3, i32 noundef %conv, ptr noundef %sense, i64 noundef %conv5) #17
  %call16 = tail call i32 @transport_send_check_condition_and_sense(ptr noundef %se_cmd1, i32 noundef 2, i32 noundef 1) #17
  %call18 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd1, i32 noundef 0) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sense10 = getelementptr i8, ptr %work, i32 580
  %unpacked_lun12 = getelementptr i8, ptr %work, i32 44
  %18 = ptrtoint ptr %unpacked_lun12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unpacked_lun12, align 8
  %conv13 = sext i32 %19 to i64
  %prio_attr14 = getelementptr i8, ptr %work, i32 562
  %20 = ptrtoint ptr %prio_attr14 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %prio_attr14, align 2
  %conv15 = zext i16 %21 to i32
  tail call void @target_submit_cmd(ptr noundef %se_cmd1, ptr noundef %7, ptr noundef %add.ptr, ptr noundef %sense10, i64 noundef %conv13, i32 noundef 0, i32 noundef %conv15, i32 noundef %call, i32 noundef 6) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_release_cmd(ptr nocapture noundef readonly %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess1, align 4
  %data_buf = getelementptr i8, ptr %se_cmd, i32 440
  %2 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_buf, align 8
  tail call void @kfree(ptr noundef %3) #17
  %sess_tag_pool.i = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 14
  %map_tag.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 8
  %4 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map_tag.i, align 4
  %map_cpu.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 9
  %6 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_cpu.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i, i32 noundef %5, i32 noundef %7) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @usbg_get_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tport1 = getelementptr i8, ptr %se_tpg, i32 -8
  %0 = ptrtoint ptr %tport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport1, align 4
  %tport_name = getelementptr inbounds %struct.usbg_tport, ptr %1, i32 0, i32 1
  ret ptr %tport_name
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @usbg_get_tag(ptr nocapture noundef readonly %se_tpg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tport_tpgt = getelementptr i8, ptr %se_tpg, i32 -12
  %0 = ptrtoint ptr %tport_tpgt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tport_tpgt, align 4
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_check_true(ptr nocapture noundef readnone %se_tpg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_check_false(ptr nocapture noundef readnone %se_tpg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_tpg_get_inst_index(ptr nocapture noundef readnone %se_tpg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_check_stop_free(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_sess_get_index(ptr nocapture noundef readnone %se_sess) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_send_write_request(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -120
  %fu1 = getelementptr i8, ptr %se_cmd, i32 444
  %0 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu1, align 4
  %flags = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %config.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write_complete.i = getelementptr i8, ptr %se_cmd, i32 448
  %10 = ptrtoint ptr %write_complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %write_complete.i, align 4
  %wait.i.i = getelementptr i8, ptr %se_cmd, i32 452
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #17
  %11 = ptrtoint ptr %fu1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %fu1, align 4
  %data_len.i = getelementptr i8, ptr %se_cmd, i32 -56
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %csw_code.i = getelementptr i8, ptr %se_cmd, i32 636
  %14 = ptrtoint ptr %csw_code.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %csw_code.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %sg_supported.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 17
  %15 = ptrtoint ptr %sg_supported.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %sg_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool5.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool5.not.i, label %if.end8.i.i, label %if.else.i

if.end8.i.i:                                      ; preds = %if.end.i
  %data_length.i = getelementptr i8, ptr %se_cmd, i32 52
  %16 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_length.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #22
  %data_buf.i = getelementptr i8, ptr %se_cmd, i32 440
  %18 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %data_buf.i, align 8
  %tobool8.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end10.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %bot_req_out.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %bot_req_out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bot_req_out.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %20, align 4
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %bot_req_out12.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %bot_req_out12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bot_req_out12.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 4
  %t_data_nents.i = getelementptr i8, ptr %se_cmd, i32 356
  %25 = ptrtoint ptr %t_data_nents.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t_data_nents.i, align 4
  %27 = load ptr, ptr %bot_req_out12.i, align 4
  %num_sgs.i = getelementptr inbounds %struct.usb_request, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %num_sgs.i, align 4
  %t_data_sg.i = getelementptr i8, ptr %se_cmd, i32 348
  %29 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t_data_sg.i, align 4
  %31 = load ptr, ptr %bot_req_out12.i, align 4
  %sg.i = getelementptr inbounds %struct.usb_request, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %sg.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.end10.i
  %bot_req_out17.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %bot_req_out17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bot_req_out17.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @usbg_data_write_cmpl, ptr %complete.i, align 4
  %data_length18.i = getelementptr i8, ptr %se_cmd, i32 52
  %36 = ptrtoint ptr %data_length18.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_length18.i, align 4
  %38 = load ptr, ptr %bot_req_out17.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %length.i, align 4
  %40 = load ptr, ptr %bot_req_out17.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr, ptr %context.i, align 4
  %42 = load ptr, ptr %bot_req_out17.i, align 4
  %43 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fu1, align 4
  %config.i.i = getelementptr inbounds %struct.f_uas, ptr %44, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i.i, align 4
  %cdev.i.i = getelementptr inbounds %struct.usb_configuration, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %cdev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cdev.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %sg_supported.i.i = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %sg_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i.i = load i32, ptr %sg_supported.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end8.i.i.i, label %if.else.i.i

if.end8.i.i.i:                                    ; preds = %if.end16.i
  %52 = ptrtoint ptr %data_length18.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_length18.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 2592) #22
  %data_buf.i.i = getelementptr i8, ptr %se_cmd, i32 440
  %54 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i.i, ptr %data_buf.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end.i69.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i69.i:                                     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i.i.i, ptr %42, align 4
  br label %if.end25.i

if.else.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %42, align 4
  %t_data_nents.i.i = getelementptr i8, ptr %se_cmd, i32 356
  %57 = ptrtoint ptr %t_data_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %t_data_nents.i.i, align 4
  %num_sgs.i.i = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 4
  %59 = ptrtoint ptr %num_sgs.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %num_sgs.i.i, align 4
  %t_data_sg.i.i = getelementptr i8, ptr %se_cmd, i32 348
  %60 = ptrtoint ptr %t_data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t_data_sg.i.i, align 4
  %sg.i.i = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 3
  %62 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %sg.i.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i.i, %if.end.i69.i
  %is_last.i.i = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 6
  %63 = ptrtoint ptr %is_last.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load10.i.i = load i32, ptr %is_last.i.i, align 4
  %bf.set.i.i = or i32 %bf.load10.i.i, 32768
  store i32 %bf.set.i.i, ptr %is_last.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 7
  %64 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @usbg_data_write_cmpl, ptr %complete.i.i, align 4
  %65 = ptrtoint ptr %data_length18.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_length18.i, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 1
  %67 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %length.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 8
  %68 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr, ptr %context.i.i, align 4
  %ep_out.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ep_out.i, align 4
  %71 = ptrtoint ptr %bot_req_out17.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bot_req_out17.i, align 4
  %call27.i = tail call i32 @usb_ep_queue(ptr noundef %70, ptr noundef %72, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end31.i_crit_edge, label %do.end.i

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31.i

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 280) #21
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i, %if.end25.i.if.end31.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %write_complete.i) #17
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %stream3.i = getelementptr i8, ptr %se_cmd, i32 628
  %73 = ptrtoint ptr %stream3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stream3.i, align 4
  %write_complete.i8 = getelementptr i8, ptr %se_cmd, i32 448
  %75 = ptrtoint ptr %write_complete.i8 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %write_complete.i8, align 4
  %wait.i.i9 = getelementptr i8, ptr %se_cmd, i32 452
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i9, ptr noundef nonnull @.str.58, ptr noundef nonnull @init_completion.__key) #17
  %76 = ptrtoint ptr %fu1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %1, ptr %fu1, align 4
  %tag.i = getelementptr i8, ptr %se_cmd, i32 508
  %77 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tag.i, align 4
  %tag5.i = getelementptr i8, ptr %se_cmd, i32 514
  %79 = ptrtoint ptr %tag5.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %tag5.i, align 1
  %flags.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i10, label %if.else.i69, label %if.then.i16

if.then.i16:                                      ; preds = %if.else
  %req_out.i = getelementptr inbounds %struct.uas_stream, ptr %74, i32 0, i32 1
  %82 = ptrtoint ptr %req_out.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %req_out.i, align 4
  %config.i.i11 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %84 = ptrtoint ptr %config.i.i11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config.i.i11, align 4
  %cdev.i.i12 = getelementptr inbounds %struct.usb_configuration, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %cdev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cdev.i.i12, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %sg_supported.i.i13 = getelementptr inbounds %struct.usb_gadget, ptr %89, i32 0, i32 17
  %90 = ptrtoint ptr %sg_supported.i.i13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load.i.i14 = load i32, ptr %sg_supported.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i14)
  %tobool.not.i.i15 = icmp sgt i32 %bf.load.i.i14, -1
  br i1 %tobool.not.i.i15, label %if.end8.i.i.i46, label %if.else.i.i57

if.end8.i.i.i46:                                  ; preds = %if.then.i16
  %data_length.i.i = getelementptr i8, ptr %se_cmd, i32 52
  %91 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_length.i.i, align 4
  %call9.i.i.i45 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %92, i32 noundef 2592) #22
  %data_buf.i.i48 = getelementptr i8, ptr %se_cmd, i32 440
  %93 = ptrtoint ptr %data_buf.i.i48 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call9.i.i.i45, ptr %data_buf.i.i48, align 8
  %tobool5.not.i.i49 = icmp eq ptr %call9.i.i.i45, null
  br i1 %tobool5.not.i.i49, label %if.end8.i.i.i46.cleanup_crit_edge, label %if.end.i.i52

if.end8.i.i.i46.cleanup_crit_edge:                ; preds = %if.end8.i.i.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i52:                                     ; preds = %if.end8.i.i.i46
  call void @__sanitizer_cov_trace_pc() #19
  %94 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call9.i.i.i45, ptr %83, align 4
  br label %if.end.i65

if.else.i.i57:                                    ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #19
  %95 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %83, align 4
  %t_data_nents.i.i53 = getelementptr i8, ptr %se_cmd, i32 356
  %96 = ptrtoint ptr %t_data_nents.i.i53 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %t_data_nents.i.i53, align 4
  %num_sgs.i.i54 = getelementptr inbounds %struct.usb_request, ptr %83, i32 0, i32 4
  %98 = ptrtoint ptr %num_sgs.i.i54 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %num_sgs.i.i54, align 4
  %t_data_sg.i.i55 = getelementptr i8, ptr %se_cmd, i32 348
  %99 = ptrtoint ptr %t_data_sg.i.i55 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %t_data_sg.i.i55, align 4
  %sg.i.i56 = getelementptr inbounds %struct.usb_request, ptr %83, i32 0, i32 3
  %101 = ptrtoint ptr %sg.i.i56 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %sg.i.i56, align 4
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.else.i.i57, %if.end.i.i52
  %is_last.i.i58 = getelementptr inbounds %struct.usb_request, ptr %83, i32 0, i32 6
  %102 = ptrtoint ptr %is_last.i.i58 to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load10.i.i59 = load i32, ptr %is_last.i.i58, align 4
  %bf.set.i.i60 = or i32 %bf.load10.i.i59, 32768
  store i32 %bf.set.i.i60, ptr %is_last.i.i58, align 4
  %complete.i.i61 = getelementptr inbounds %struct.usb_request, ptr %83, i32 0, i32 7
  %103 = ptrtoint ptr %complete.i.i61 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @usbg_data_write_cmpl, ptr %complete.i.i61, align 4
  %data_length11.i.i = getelementptr i8, ptr %se_cmd, i32 52
  %104 = ptrtoint ptr %data_length11.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_length11.i.i, align 4
  %length.i.i62 = getelementptr inbounds %struct.usb_request, ptr %83, i32 0, i32 1
  %106 = ptrtoint ptr %length.i.i62 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %length.i.i62, align 4
  %context.i.i63 = getelementptr inbounds %struct.usb_request, ptr %83, i32 0, i32 8
  %107 = ptrtoint ptr %context.i.i63 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr, ptr %context.i.i63, align 4
  %ep_out.i64 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 6
  %108 = ptrtoint ptr %ep_out.i64 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ep_out.i64, align 4
  %110 = ptrtoint ptr %req_out.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %req_out.i, align 4
  %call9.i = tail call i32 @usb_ep_queue(ptr noundef %109, ptr noundef %111, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end.i65.if.end29.i_crit_edge, label %if.end.i65.if.end29.sink.split.i_crit_edge

if.end.i65.if.end29.sink.split.i_crit_edge:       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.sink.split.i

if.end.i65.if.end29.i_crit_edge:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.else.i69:                                      ; preds = %if.else
  %sense_iu.i = getelementptr i8, ptr %se_cmd, i32 512
  %112 = ptrtoint ptr %sense_iu.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 7, ptr %sense_iu.i, align 1
  %113 = ptrtoint ptr %tag5.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %78, ptr %tag5.i, align 1
  %req_status.i = getelementptr inbounds %struct.uas_stream, ptr %74, i32 0, i32 2
  %114 = ptrtoint ptr %req_status.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %req_status.i, align 4
  %complete.i66 = getelementptr inbounds %struct.usb_request, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %complete.i66 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @uasp_status_data_cmpl, ptr %complete.i66, align 4
  %117 = load ptr, ptr %req_status.i, align 4
  %context.i67 = getelementptr inbounds %struct.usb_request, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %context.i67 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr, ptr %context.i67, align 4
  %state.i = getelementptr i8, ptr %se_cmd, i32 624
  %119 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %state.i, align 8
  %120 = load ptr, ptr %req_status.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %sense_iu.i, ptr %120, align 4
  %122 = load ptr, ptr %req_status.i, align 4
  %length.i68 = getelementptr inbounds %struct.usb_request, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %length.i68 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4, ptr %length.i68, align 4
  %ep_status.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 7
  %124 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ep_status.i, align 4
  %126 = load ptr, ptr %req_status.i, align 4
  %call20.i = tail call i32 @usb_ep_queue(ptr noundef %125, ptr noundef %126, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.else.i69.if.end29.i_crit_edge, label %if.else.i69.if.end29.sink.split.i_crit_edge

if.else.i69.if.end29.sink.split.i_crit_edge:      ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.sink.split.i

if.else.i69.if.end29.i_crit_edge:                 ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.end29.sink.split.i:                            ; preds = %if.else.i69.if.end29.sink.split.i_crit_edge, %if.end.i65.if.end29.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 693, %if.end.i65.if.end29.sink.split.i_crit_edge ], [ 710, %if.else.i69.if.end29.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call9.i, %if.end.i65.if.end29.sink.split.i_crit_edge ], [ %call20.i, %if.else.i69.if.end29.sink.split.i_crit_edge ]
  %call27.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.61, i32 noundef %.sink.i) #21
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %if.else.i69.if.end29.i_crit_edge, %if.end.i65.if.end29.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i65.if.end29.i_crit_edge ], [ 0, %if.else.i69.if.end29.i_crit_edge ], [ %ret.0.ph.i, %if.end29.sink.split.i ]
  tail call void @wait_for_completion(ptr noundef %write_complete.i8) #17
  tail call void @target_execute_cmd(ptr noundef %se_cmd) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i, %if.end8.i.i.i46.cleanup_crit_edge, %if.end31.i, %if.end8.i.i.i.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ -22, %if.then.i ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call27.i, %if.end31.i ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ %ret.0.i, %if.end29.i ], [ -12, %if.end8.i.i.i46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usbg_set_default_node_attrs(ptr nocapture noundef %nacl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_get_cmd_state(ptr nocapture noundef readnone %se_cmd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_send_read_response(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -120
  %fu1 = getelementptr i8, ptr %se_cmd, i32 444
  %0 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu1, align 4
  %flags = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %data_len.i = getelementptr i8, ptr %se_cmd, i32 -56
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %csw_code.i = getelementptr i8, ptr %se_cmd, i32 636
  %6 = ptrtoint ptr %csw_code.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %csw_code.i, align 4
  tail call fastcc void @bot_send_bad_status(ptr noundef %add.ptr) #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %config.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %sg_supported.i = getelementptr inbounds %struct.usb_gadget, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %sg_supported.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %sg_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool4.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  %data_length.i = getelementptr i8, ptr %se_cmd, i32 52
  %14 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_length.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 2592) #22
  %data_buf.i = getelementptr i8, ptr %se_cmd, i32 440
  %16 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %data_buf.i, align 8
  %tobool7.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not.i, label %if.then5.i.cleanup_crit_edge, label %if.end9.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  %t_data_sg.i = getelementptr i8, ptr %se_cmd, i32 348
  %17 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t_data_sg.i, align 4
  %t_data_nents.i = getelementptr i8, ptr %se_cmd, i32 356
  %19 = ptrtoint ptr %t_data_nents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t_data_nents.i, align 4
  %21 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_length.i, align 4
  %call12.i = tail call i32 @sg_copy_to_buffer(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %call9.i.i, i32 noundef %22) #17
  %23 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_buf.i, align 8
  %bot_req_in.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %bot_req_in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bot_req_in.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %26, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %bot_req_in14.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %bot_req_in14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bot_req_in14.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  %t_data_nents16.i = getelementptr i8, ptr %se_cmd, i32 356
  %31 = ptrtoint ptr %t_data_nents16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t_data_nents16.i, align 4
  %33 = load ptr, ptr %bot_req_in14.i, align 4
  %num_sgs.i = getelementptr inbounds %struct.usb_request, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %num_sgs.i, align 4
  %t_data_sg18.i = getelementptr i8, ptr %se_cmd, i32 348
  %35 = ptrtoint ptr %t_data_sg18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t_data_sg18.i, align 4
  %37 = load ptr, ptr %bot_req_in14.i, align 4
  %sg.i = getelementptr inbounds %struct.usb_request, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %sg.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.end9.i
  %bot_req_in21.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %bot_req_in21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bot_req_in21.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bot_read_compl, ptr %complete.i, align 4
  %data_length22.i = getelementptr i8, ptr %se_cmd, i32 52
  %42 = ptrtoint ptr %data_length22.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_length22.i, align 4
  %44 = load ptr, ptr %bot_req_in21.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %length.i, align 4
  %46 = load ptr, ptr %bot_req_in21.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %context.i, align 4
  %ep_in.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ep_in.i, align 4
  %50 = load ptr, ptr %bot_req_in21.i, align 4
  %call26.i = tail call i32 @usb_ep_queue(ptr noundef %49, ptr noundef %50, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end20.i.cleanup_crit_edge, label %do.end.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.70, i32 noundef 237) #21
  br label %cleanup

if.else:                                          ; preds = %entry
  %stream2.i = getelementptr i8, ptr %se_cmd, i32 628
  %51 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stream2.i, align 4
  %tag.i = getelementptr i8, ptr %se_cmd, i32 508
  %53 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tag.i, align 4
  %tag4.i = getelementptr i8, ptr %se_cmd, i32 514
  %55 = ptrtoint ptr %tag4.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %tag4.i, align 1
  %flags.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i7, label %if.else.i16, label %if.then.i8

if.then.i8:                                       ; preds = %if.else
  %call.i = tail call fastcc i32 @uasp_prepare_r_request(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i10, label %if.then.i8.cleanup_crit_edge

if.then.i8.cleanup_crit_edge:                     ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i10:                                       ; preds = %if.then.i8
  %ep_in.i9 = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %ep_in.i9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ep_in.i9, align 4
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %52, align 4
  %call7.i = tail call i32 @usb_ep_queue(ptr noundef %59, ptr noundef %61, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i10.cleanup_crit_edge, label %do.end.i12

if.end.i10.cleanup_crit_edge:                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i12:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.76, i32 noundef 647, i32 noundef %call7.i) #21
  %data_buf.i11 = getelementptr i8, ptr %se_cmd, i32 440
  %62 = ptrtoint ptr %data_buf.i11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_buf.i11, align 8
  tail call void @kfree(ptr noundef %63) #17
  %64 = ptrtoint ptr %data_buf.i11 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %data_buf.i11, align 8
  br label %cleanup

if.else.i16:                                      ; preds = %if.else
  %sense_iu.i = getelementptr i8, ptr %se_cmd, i32 512
  %65 = ptrtoint ptr %sense_iu.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 6, ptr %sense_iu.i, align 1
  %66 = ptrtoint ptr %tag4.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %54, ptr %tag4.i, align 1
  %req_status.i = getelementptr inbounds %struct.uas_stream, ptr %52, i32 0, i32 2
  %67 = ptrtoint ptr %req_status.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %req_status.i, align 4
  %complete.i13 = getelementptr inbounds %struct.usb_request, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %complete.i13 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @uasp_status_data_cmpl, ptr %complete.i13, align 4
  %70 = load ptr, ptr %req_status.i, align 4
  %context.i14 = getelementptr inbounds %struct.usb_request, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %context.i14 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr, ptr %context.i14, align 4
  %state.i = getelementptr i8, ptr %se_cmd, i32 624
  %72 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %state.i, align 8
  %73 = load ptr, ptr %req_status.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %sense_iu.i, ptr %73, align 4
  %75 = load ptr, ptr %req_status.i, align 4
  %length.i15 = getelementptr inbounds %struct.usb_request, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %length.i15 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %length.i15, align 4
  %ep_status.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 7
  %77 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ep_status.i, align 4
  %79 = load ptr, ptr %req_status.i, align 4
  %call19.i = tail call i32 @usb_ep_queue(ptr noundef %78, ptr noundef %79, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.else.i16.cleanup_crit_edge, label %do.end24.i

if.else.i16.cleanup_crit_edge:                    ; preds = %if.else.i16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end24.i:                                       ; preds = %if.else.i16
  call void @__sanitizer_cov_trace_pc() #19
  %call26.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.76, i32 noundef 667, i32 noundef %call19.i) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end24.i, %if.else.i16.cleanup_crit_edge, %do.end.i12, %if.end.i10.cleanup_crit_edge, %if.then.i8.cleanup_crit_edge, %do.end.i, %if.end20.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then.i ], [ -12, %if.then5.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end20.i.cleanup_crit_edge ], [ %call.i, %if.then.i8.cleanup_crit_edge ], [ %call7.i, %do.end.i12 ], [ 0, %if.end.i10.cleanup_crit_edge ], [ %call19.i, %do.end24.i ], [ 0, %if.else.i16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_send_status_response(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -120
  %fu1 = getelementptr i8, ptr %se_cmd, i32 444
  %0 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu1, align 4
  %flags = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %is_read.i = getelementptr i8, ptr %se_cmd, i32 640
  %4 = ptrtoint ptr %is_read.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_read.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  tail call fastcc void @bot_send_status(ptr noundef %add.ptr, i1 noundef zeroext %tobool.not.i) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fu1, align 4
  %stream2.i = getelementptr i8, ptr %se_cmd, i32 628
  %7 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream2.i, align 4
  %tag.i = getelementptr i8, ptr %se_cmd, i32 508
  %9 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tag.i, align 4
  %tag3.i = getelementptr i8, ptr %se_cmd, i32 514
  %11 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %tag3.i, align 1
  %req_status.i = getelementptr inbounds %struct.uas_stream, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %req_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_status.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @uasp_status_data_cmpl, ptr %complete.i, align 4
  %15 = load ptr, ptr %req_status.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %context.i, align 4
  store ptr %6, ptr %fu1, align 4
  %sense_iu.i.i = getelementptr i8, ptr %se_cmd, i32 512
  %17 = load ptr, ptr %stream2.i, align 4
  %state.i.i = getelementptr i8, ptr %se_cmd, i32 624
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state.i.i, align 8
  %19 = ptrtoint ptr %sense_iu.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %sense_iu.i.i, align 1
  %20 = load i16, ptr %tag.i, align 4
  store i16 %20, ptr %tag3.i, align 1
  %scsi_sense_length.i.i = getelementptr i8, ptr %se_cmd, i32 6
  %21 = ptrtoint ptr %scsi_sense_length.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %scsi_sense_length.i.i, align 2
  %len.i.i = getelementptr i8, ptr %se_cmd, i32 526
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %len.i.i, align 1
  %scsi_status.i.i = getelementptr i8, ptr %se_cmd, i32 4
  %24 = ptrtoint ptr %scsi_status.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scsi_status.i.i, align 4
  %status.i.i = getelementptr i8, ptr %se_cmd, i32 518
  %26 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %status.i.i, align 1
  %req_status.i.i = getelementptr inbounds %struct.uas_stream, ptr %17, i32 0, i32 2
  %27 = ptrtoint ptr %req_status.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req_status.i.i, align 4
  %is_last.i.i = getelementptr inbounds %struct.usb_request, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %is_last.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i.i = load i32, ptr %is_last.i.i, align 4
  %bf.set.i.i = or i32 %bf.load.i.i, 32768
  store i32 %bf.set.i.i, ptr %is_last.i.i, align 4
  %30 = load ptr, ptr %req_status.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %context.i.i, align 4
  %32 = load i16, ptr %scsi_sense_length.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 16
  %33 = load ptr, ptr %req_status.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.usb_request, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i.i, ptr %length.i.i, align 4
  %35 = load ptr, ptr %req_status.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %sense_iu.i.i, ptr %35, align 4
  %37 = load ptr, ptr %req_status.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @uasp_status_data_cmpl, ptr %complete.i.i, align 4
  %ep_status.i = getelementptr inbounds %struct.f_uas, ptr %6, i32 0, i32 7
  %39 = ptrtoint ptr %ep_status.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep_status.i, align 4
  %41 = load ptr, ptr %req_status.i, align 4
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %40, ptr noundef %41, i32 noundef 2592) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usbg_queue_tm_rsp(ptr nocapture noundef %se_cmd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @usbg_aborted_task(ptr nocapture noundef %se_cmd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @usbg_make_tport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.80) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 4
  %call1.i = tail call i32 @strlen(ptr noundef %add.ptr.i) #23
  %0 = add i32 %call1.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %0)
  %1 = icmp ult i32 %0, -31
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %1
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 296) #20
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %call7.i.i, align 8
  %tport_name = getelementptr inbounds %struct.usbg_tport, ptr %call7.i.i, i32 0, i32 1
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tport_name, i32 noundef 32, ptr noundef nonnull @.str.79, ptr noundef nonnull %add.ptr.i)
  %tport_wwn = getelementptr inbounds %struct.usbg_tport, ptr %call7.i.i, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %tport_wwn, %if.end6 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_drop_tport(ptr noundef %wwn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -40
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @usbg_make_tpg(ptr noundef %wwn, ptr noundef %name) #0 align 64 {
entry:
  %tpgt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpgt) #17
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpgt, align 4, !annotation !320
  %strncmp = tail call i32 @strncmp(ptr %name, ptr nonnull dereferenceable(6) @.str.81, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp109.not = icmp eq i32 %strncmp, 0
  br i1 %cmp109.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr2, i32 noundef 0, ptr noundef nonnull %tpgt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @tpg_instances_lock, i32 noundef 0) #17
  %1 = load ptr, ptr @tpg_instances.0, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end7.unlock_inst_crit_edge, label %land.lhs.true

if.end7.unlock_inst_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock_inst

land.lhs.true:                                    ; preds = %if.end7
  %2 = load ptr, ptr @tpg_instances.1, align 4
  %tobool12.not = icmp eq ptr %2, null
  br i1 %tobool12.not, label %if.end17.critedge, label %land.lhs.true.unlock_inst_crit_edge

land.lhs.true.unlock_inst_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock_inst

if.end17.critedge:                                ; preds = %land.lhs.true
  %3 = load ptr, ptr @tpg_instances.0, align 4
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #17
  %ready = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool23.not = icmp eq i8 %5, 0
  br i1 %tobool23.not, label %if.end17.critedge.unlock_dep_crit_edge, label %if.end25

if.end17.critedge.unlock_dep_crit_edge:           ; preds = %if.end17.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock_dep

if.end25:                                         ; preds = %if.end17.critedge
  %has_dep = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %has_dep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_dep, align 2, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool26.not = icmp eq i8 %7, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %dependent = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dependent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dependent, align 4
  %call28 = call zeroext i1 @try_module_get(ptr noundef %9) #17
  br i1 %call28, label %if.then27.if.end36_crit_edge, label %if.then27.unlock_dep_crit_edge

if.then27.unlock_dep_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock_dep

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.else:                                          ; preds = %if.end25
  %cg_subsys = getelementptr inbounds %struct.se_wwn, ptr %wwn, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cg_subsys, align 4
  %call32 = call i32 @configfs_depend_item_unlocked(ptr noundef %11, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else.if.end36_crit_edge, label %if.else.unlock_dep_crit_edge

if.else.unlock_dep_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock_dep

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then27.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 952) #20
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %if.end36.unref_dep_crit_edge, label %do.body

if.end36.unref_dep_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %unref_dep

do.body:                                          ; preds = %if.end36
  call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @usbg_make_tpg.__key) #17
  %tpg_port_count = getelementptr inbounds %struct.usbg_tpg, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_port_count, i32 noundef 4) #17
  %13 = ptrtoint ptr %tpg_port_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %tpg_port_count, align 8
  %call41 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.83, i32 noundef 0, i32 noundef 1) #17
  %workqueue = getelementptr inbounds %struct.usbg_tpg, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call41, ptr %workqueue, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %do.body.free_tpg_crit_edge, label %if.end45

do.body.free_tpg_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_tpg

if.end45:                                         ; preds = %do.body
  %tport46 = getelementptr inbounds %struct.usbg_tpg, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %tport46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %tport46, align 8
  %16 = ptrtoint ptr %tpgt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tpgt, align 4
  %conv = trunc i32 %17 to i16
  %tport_tpgt = getelementptr inbounds %struct.usbg_tpg, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %tport_tpgt to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %tport_tpgt, align 4
  %se_tpg = getelementptr inbounds %struct.usbg_tpg, ptr %call7.i.i, i32 0, i32 4
  %call47 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %se_tpg, i32 noundef 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %free_workqueue, label %if.end51

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %call7.i.i, ptr @tpg_instances.1, align 4
  %19 = load ptr, ptr @tpg_instances.0, align 4
  %fi = getelementptr inbounds %struct.usbg_tpg, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %fi, align 4
  call void @mutex_unlock(ptr noundef %dep_lock) #17
  call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  br label %cleanup

free_workqueue:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %22) #17
  br label %free_tpg

free_tpg:                                         ; preds = %free_workqueue, %do.body.free_tpg_crit_edge
  %ret.0 = phi i32 [ %call47, %free_workqueue ], [ -12, %do.body.free_tpg_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %unref_dep

unref_dep:                                        ; preds = %free_tpg, %if.end36.unref_dep_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_tpg ], [ -12, %if.end36.unref_dep_crit_edge ]
  %23 = ptrtoint ptr %has_dep to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_dep, align 2, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  br i1 %tobool60.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %unref_dep
  call void @__sanitizer_cov_trace_pc() #19
  %dependent62 = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %dependent62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dependent62, align 4
  call void @module_put(ptr noundef %26) #17
  br label %unlock_dep

if.else63:                                        ; preds = %unref_dep
  call void @__sanitizer_cov_trace_pc() #19
  call void @configfs_undepend_item(ptr noundef %3) #17
  br label %unlock_dep

unlock_dep:                                       ; preds = %if.else63, %if.then61, %if.else.unlock_dep_crit_edge, %if.then27.unlock_dep_crit_edge, %if.end17.critedge.unlock_dep_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.then61 ], [ %ret.1, %if.else63 ], [ -19, %if.then27.unlock_dep_crit_edge ], [ %call32, %if.else.unlock_dep_crit_edge ], [ -19, %if.end17.critedge.unlock_dep_crit_edge ]
  call void @mutex_unlock(ptr noundef %dep_lock) #17
  br label %unlock_inst

unlock_inst:                                      ; preds = %unlock_dep, %land.lhs.true.unlock_inst_crit_edge, %if.end7.unlock_inst_crit_edge
  %ret.3 = phi i32 [ %ret.2, %unlock_dep ], [ -19, %if.end7.unlock_inst_crit_edge ], [ -19, %land.lhs.true.unlock_inst_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  %27 = inttoptr i32 %ret.3 to ptr
  br label %cleanup

cleanup:                                          ; preds = %unlock_inst, %if.end51, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %27, %unlock_inst ], [ %se_tpg, %if.end51 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpgt) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_enable_tpg(ptr nocapture noundef %se_tpg, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fi.i = getelementptr i8, ptr %se_tpg, i32 844
  %0 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tcm_register_callback.i = getelementptr inbounds %struct.f_tcm_opts, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tcm_register_callback.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcm_register_callback.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end3_crit_edge, label %if.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.else:                                          ; preds = %entry
  %tcm_unregister_callback.i = getelementptr inbounds %struct.f_tcm_opts, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %tcm_unregister_callback.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcm_unregister_callback.i, align 4
  %tobool.not.i11 = icmp eq ptr %5, null
  br i1 %tobool.not.i11, label %if.else.if.end3_crit_edge, label %if.then.i12

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then.i12:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void %5(ptr noundef %1) #17
  br label %if.end3

if.end:                                           ; preds = %if.then
  %call.i = tail call i32 %3(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.then.i12, %if.else.if.end3_crit_edge, %if.then.if.end3_crit_edge
  %conv = zext i1 %enable to i32
  %gadget_connect = getelementptr i8, ptr %se_tpg, i32 832
  %6 = ptrtoint ptr %gadget_connect to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %gadget_connect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_drop_tpg(ptr noundef %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -104
  %call = tail call fastcc i32 @tcm_usbg_drop_nexus(ptr noundef %add.ptr)
  %call1 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #17
  %workqueue = getelementptr i8, ptr %se_tpg, i32 -4
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @tpg_instances_lock, i32 noundef 0) #17
  %2 = load ptr, ptr @tpg_instances.1, align 4
  %cmp3 = icmp eq ptr %2, %add.ptr
  br i1 %cmp3, label %if.then5.critedge, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then5.critedge:                                ; preds = %entry
  store ptr null, ptr @tpg_instances.1, align 4
  %3 = load ptr, ptr @tpg_instances.0, align 4
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #17
  %has_dep = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %has_dep to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_dep, align 2, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then5.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %dependent = getelementptr inbounds %struct.f_tcm_opts, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dependent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dependent, align 4
  tail call void @module_put(ptr noundef %7) #17
  br label %if.end14

if.else:                                          ; preds = %if.then5.critedge
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @configfs_undepend_item(ptr noundef %3) #17
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  tail call void @mutex_unlock(ptr noundef %dep_lock) #17
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tpg_instances_lock) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_port_link(ptr noundef %se_tpg, ptr nocapture noundef readnone %lun) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_port_count = getelementptr i8, ptr %se_tpg, i32 840
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpg_port_count, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %tpg_port_count, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_port_count, ptr %tpg_port_count, i32 1, ptr elementtype(i32) %tpg_port_count) #17, !srcloc !321
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !322
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_port_unlink(ptr noundef %se_tpg, ptr nocapture noundef readnone %se_lun) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_port_count = getelementptr i8, ptr %se_tpg, i32 840
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tpg_port_count, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %tpg_port_count, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_port_count, ptr %tpg_port_count, i32 1, ptr elementtype(i32) %tpg_port_count) #17, !srcloc !323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !324
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_init_nodeacl(ptr nocapture noundef readnone %se_nacl, ptr noundef readonly %name) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.80) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.usbg_check_wwn.exit_crit_edge, label %if.end.i

entry.usbg_check_wwn.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %usbg_check_wwn.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 4
  %call1.i = tail call i32 @strlen(ptr noundef %add.ptr.i) #23
  %0 = add i32 %call1.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %0)
  %1 = icmp ult i32 %0, -31
  %phi.cmp1 = icmp eq ptr %add.ptr.i, null
  %phi.cmp = or i1 %phi.cmp1, %1
  %phi.sel = select i1 %phi.cmp, i32 -22, i32 0
  br label %usbg_check_wwn.exit

usbg_check_wwn.exit:                              ; preds = %if.end.i, %entry.usbg_check_wwn.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.usbg_check_wwn.exit_crit_edge ], [ %phi.sel, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_data_write_cmpl(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %se_cmd1 = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4
  %state = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %5) #21
  %call7 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd1, i32 noundef 0) #17
  br label %cleanup8

if.end:                                           ; preds = %entry
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %t_data_sg = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 39
  %8 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 41
  %10 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_data_nents, align 4
  %data_buf = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_buf, align 8
  %data_length = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 12
  %14 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_length, align 4
  %call4 = tail call i32 @sg_copy_from_buffer(ptr noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15) #17
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %write_complete = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %write_complete) #17
  br label %cleanup8

cleanup8:                                         ; preds = %if.end5, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uasp_status_data_cmpl(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %stream1 = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream1, align 4
  %fu2 = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %fu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fu2, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %9, label %do.body40 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb25
    i32 3, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end
  %call = tail call fastcc i32 @uasp_prepare_r_request(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %ep_in = getelementptr inbounds %struct.f_uas, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep_in, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @usb_ep_queue(ptr noundef %12, ptr noundef %14, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup48_crit_edge, label %do.end

if.end4.cleanup48_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup48

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 582, i32 noundef %call5) #21
  br label %cleanup48

sw.bb10:                                          ; preds = %if.end
  %req_out = getelementptr inbounds %struct.uas_stream, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %req_out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_out, align 4
  %config.i = getelementptr inbounds %struct.f_uas, ptr %5, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config.i, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %sg_supported.i = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %sg_supported.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %sg_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end8.i.i, label %if.else.i

if.end8.i.i:                                      ; preds = %sw.bb10
  %data_length.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 12
  %24 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_length.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 2592) #22
  %data_buf.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i, ptr %data_buf.i, align 8
  %tobool5.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i, ptr %16, align 4
  br label %if.end14

if.else.i:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %16, align 4
  %t_data_nents.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 41
  %29 = ptrtoint ptr %t_data_nents.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t_data_nents.i, align 4
  %num_sgs.i = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 4
  %31 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %num_sgs.i, align 4
  %t_data_sg.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 39
  %32 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t_data_sg.i, align 4
  %sg.i = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 3
  %34 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %sg.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else.i, %if.end.i
  %is_last.i = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 6
  %35 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load10.i = load i32, ptr %is_last.i, align 4
  %bf.set.i = or i32 %bf.load10.i, 32768
  store i32 %bf.set.i, ptr %is_last.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 7
  %36 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @usbg_data_write_cmpl, ptr %complete.i, align 4
  %data_length11.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 12
  %37 = ptrtoint ptr %data_length11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_length11.i, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 1
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %length.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 8
  %40 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %context.i, align 4
  %ep_out = getelementptr inbounds %struct.f_uas, ptr %5, i32 0, i32 6
  %41 = ptrtoint ptr %ep_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep_out, align 4
  %43 = ptrtoint ptr %req_out to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req_out, align 4
  %call16 = tail call i32 @usb_ep_queue(ptr noundef %42, ptr noundef %44, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup48_crit_edge, label %do.end21

if.end14.cleanup48_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup48

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 591, i32 noundef %call16) #21
  br label %cleanup48

sw.bb25:                                          ; preds = %if.end
  %sense_iu.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 11
  %45 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %state, align 8
  %46 = ptrtoint ptr %sense_iu.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %sense_iu.i, align 1
  %tag.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tag.i, align 4
  %tag3.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 11, i32 2
  %49 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %tag3.i, align 1
  %scsi_sense_length.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %scsi_sense_length.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %scsi_sense_length.i, align 2
  %len.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 11, i32 6
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %len.i, align 1
  %scsi_status.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %scsi_status.i, align 4
  %status.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 11, i32 4
  %55 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %status.i, align 1
  %req_status.i = getelementptr inbounds %struct.uas_stream, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %req_status.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req_status.i, align 4
  %is_last.i74 = getelementptr inbounds %struct.usb_request, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %is_last.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load.i75 = load i32, ptr %is_last.i74, align 4
  %bf.set.i76 = or i32 %bf.load.i75, 32768
  store i32 %bf.set.i76, ptr %is_last.i74, align 4
  %59 = load ptr, ptr %req_status.i, align 4
  %context.i77 = getelementptr inbounds %struct.usb_request, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %context.i77 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %1, ptr %context.i77, align 4
  %61 = load i16, ptr %scsi_sense_length.i, align 2
  %conv.i = zext i16 %61 to i32
  %add.i = add nuw nsw i32 %conv.i, 16
  %62 = load ptr, ptr %req_status.i, align 4
  %length.i78 = getelementptr inbounds %struct.usb_request, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %length.i78 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i, ptr %length.i78, align 4
  %64 = load ptr, ptr %req_status.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %sense_iu.i, ptr %64, align 4
  %66 = load ptr, ptr %req_status.i, align 4
  %complete.i79 = getelementptr inbounds %struct.usb_request, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %complete.i79 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @uasp_status_data_cmpl, ptr %complete.i79, align 4
  %ep_status = getelementptr inbounds %struct.f_uas, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %ep_status to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ep_status, align 4
  %70 = load ptr, ptr %req_status.i, align 4
  %call26 = tail call i32 @usb_ep_queue(ptr noundef %69, ptr noundef %70, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.bb25.cleanup48_crit_edge, label %do.end31

sw.bb25.cleanup48_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup48

do.end31:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #19
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 599, i32 noundef %call26) #21
  br label %cleanup48

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %se_cmd = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4
  %call36 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #17
  %ep_cmd = getelementptr inbounds %struct.f_uas, ptr %5, i32 0, i32 8
  %71 = ptrtoint ptr %ep_cmd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ep_cmd, align 4
  %cmd37 = getelementptr inbounds %struct.f_uas, ptr %5, i32 0, i32 4
  %73 = ptrtoint ptr %cmd37 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cmd37, align 4
  %call39 = tail call i32 @usb_ep_queue(ptr noundef %72, ptr noundef %74, i32 noundef 2592) #17
  br label %cleanup48

do.body40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_tcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 608, 0\0A.popsection", ""() #17, !srcloc !325
  unreachable

cleanup:                                          ; preds = %if.end8.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %se_cmd46 = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4
  %call47 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd46, i32 noundef 0) #17
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup, %sw.bb35, %do.end31, %sw.bb25.cleanup48_crit_edge, %do.end21, %if.end14.cleanup48_crit_edge, %do.end, %if.end4.cleanup48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uasp_prepare_r_request(ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fu2 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 6
  %0 = ptrtoint ptr %fu2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu2, align 4
  %config = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %stream4 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 13
  %8 = ptrtoint ptr %stream4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream4, align 4
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 17
  %10 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %sg_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data_length = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 12
  %11 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_length, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 2592) #22
  %data_buf = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 5
  %13 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %data_buf, align 8
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %t_data_sg = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 39
  %14 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 41
  %16 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_data_nents, align 4
  %18 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_length, align 4
  %call10 = tail call i32 @sg_copy_to_buffer(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %call9.i, i32 noundef %19) #17
  %20 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_buf, align 8
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %23, align 4
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %9, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 4
  %t_data_nents14 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 41
  %28 = ptrtoint ptr %t_data_nents14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_data_nents14, align 4
  %30 = load ptr, ptr %9, align 4
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %num_sgs, align 4
  %t_data_sg16 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 39
  %32 = ptrtoint ptr %t_data_sg16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t_data_sg16, align 4
  %34 = load ptr, ptr %9, align 4
  %sg = getelementptr inbounds %struct.usb_request, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %sg, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 4
  %is_last = getelementptr inbounds %struct.usb_request, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %is_last to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load20 = load i32, ptr %is_last, align 4
  %bf.set = or i32 %bf.load20, 32768
  store i32 %bf.set, ptr %is_last, align 4
  %39 = load ptr, ptr %9, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @uasp_status_data_cmpl, ptr %complete, align 4
  %data_length22 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 12
  %41 = ptrtoint ptr %data_length22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_length22, align 4
  %43 = load ptr, ptr %9, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %length, align 4
  %45 = load ptr, ptr %9, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cmd, ptr %context, align 4
  %state = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 12
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bot_send_bad_status(ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fu1 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 6
  %0 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu1, align 4
  %data_len = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %Residue = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1, i32 2
  %5 = ptrtoint ptr %Residue to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %Residue, align 4
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else28, label %if.then

if.then:                                          ; preds = %entry
  %is_read = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 16
  %8 = ptrtoint ptr %is_read to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %is_read, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  %ep_in = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %bot_req_in = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 11
  %ep_out = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 6
  %bot_req_out = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 12
  %req.0.in = select i1 %tobool4.not, ptr %bot_req_out, ptr %bot_req_in
  %ep.0.in = select i1 %tobool4.not, ptr %ep_out, ptr %ep_in
  %9 = ptrtoint ptr %ep.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %ep.0 = load ptr, ptr %ep.0.in, align 4
  %10 = ptrtoint ptr %req.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %req.0 = load ptr, ptr %req.0.in, align 4
  %11 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep_in, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load8 = load i56, ptr %maxpacket, align 2
  %bf.lshr9 = lshr i56 %bf.load8, 40
  %bf.cast10 = trunc i56 %bf.lshr9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bf.cast10)
  %cmp = icmp ugt i32 %7, %bf.cast10
  br i1 %cmp, label %if.then11, label %if.else21

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %maxpacket12 = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 7
  %14 = ptrtoint ptr %maxpacket12 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load13 = load i56, ptr %maxpacket12, align 2
  %bf.lshr14 = lshr i56 %bf.load13, 40
  %bf.cast15 = trunc i56 %bf.lshr14 to i32
  %length = getelementptr inbounds %struct.usb_request, ptr %req.0, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.cast15, ptr %length, align 4
  %bf.load17 = load i56, ptr %maxpacket12, align 2
  %bf.lshr18 = lshr i56 %bf.load17, 40
  %bf.cast19 = trunc i56 %bf.lshr18 to i32
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len, align 8
  %sub = sub i32 %17, %bf.cast19
  br label %if.end25

if.else21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %length23 = getelementptr inbounds %struct.usb_request, ptr %req.0, i32 0, i32 1
  %18 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %length23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then11
  %storemerge = phi i32 [ 0, %if.else21 ], [ %sub, %if.then11 ]
  %19 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %data_len, align 8
  %complete = getelementptr inbounds %struct.usb_request, ptr %req.0, i32 0, i32 7
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bot_err_compl, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %req.0, i32 0, i32 8
  %21 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %context, align 4
  %buf = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  %24 = ptrtoint ptr %req.0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %req.0, align 4
  %call = tail call i32 @usb_ep_queue(ptr noundef %ep.0, ptr noundef %req.0, i32 noundef 3264) #17
  br label %if.end29

if.else28:                                        ; preds = %entry
  %bot_status.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10
  %csw_code.i = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 15
  %25 = ptrtoint ptr %csw_code.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %csw_code.i, align 4
  %bot_tag.i = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 14
  %27 = ptrtoint ptr %bot_tag.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bot_tag.i, align 8
  %Tag.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1, i32 1
  %29 = ptrtoint ptr %Tag.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %Tag.i, align 4
  %conv.i = trunc i32 %26 to i8
  %Status.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1, i32 3
  %30 = ptrtoint ptr %Status.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %Status.i, align 4
  %31 = ptrtoint ptr %bot_status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bot_status.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cmd, ptr %context.i, align 4
  %ep_in.i = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep_in.i, align 4
  %36 = load ptr, ptr %bot_status.i, align 4
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %35, ptr noundef %36, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else28.if.end29_crit_edge, label %do.end.i

if.else28.if.end29_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

do.end.i:                                         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef 86, i32 noundef %call.i) #21
  br label %if.end29

if.end29:                                         ; preds = %do.end.i, %if.else28.if.end29_crit_edge, %if.end25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bot_read_compl(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.74, i32 noundef 197) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %scsi_status.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scsi_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %fu1.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fu1.i, align 4
  %bot_status.i = getelementptr inbounds %struct.f_uas, ptr %7, i32 0, i32 10
  %bot_tag.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %bot_tag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bot_tag.i, align 8
  %Tag.i = getelementptr inbounds %struct.f_uas, ptr %7, i32 0, i32 10, i32 1, i32 1
  %10 = ptrtoint ptr %Tag.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %Tag.i, align 4
  %Residue.i = getelementptr inbounds %struct.f_uas, ptr %7, i32 0, i32 10, i32 1, i32 2
  %11 = ptrtoint ptr %Residue.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %Residue.i, align 4
  %Status.i = getelementptr inbounds %struct.f_uas, ptr %7, i32 0, i32 10, i32 1, i32 3
  %12 = ptrtoint ptr %Status.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %Status.i, align 4
  %13 = ptrtoint ptr %bot_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bot_status.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %context.i, align 4
  %ep_in.i = getelementptr inbounds %struct.f_uas, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_in.i, align 4
  %18 = load ptr, ptr %bot_status.i, align 4
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %17, ptr noundef %18, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.then.i.bot_send_status.exit_crit_edge, label %do.end.i

if.then.i.bot_send_status.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bot_send_status.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 170, i32 noundef %call.i) #21
  br label %bot_send_status.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %csw_code13.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %csw_code13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %csw_code13.i, align 4
  tail call fastcc void @bot_send_bad_status(ptr noundef %1) #17
  br label %bot_send_status.exit

bot_send_status.exit:                             ; preds = %if.else.i, %do.end.i, %if.then.i.bot_send_status.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bot_err_compl(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %fu1 = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fu1, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.71, i32 noundef 95) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data_len = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end20, label %if.then2

if.then2:                                         ; preds = %if.end
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %8 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bf.cast)
  %cmp4 = icmp ugt i32 %7, %bf.cast
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast, ptr %length, align 4
  %10 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load11 = load i56, ptr %maxpacket, align 2
  %bf.lshr12 = lshr i56 %bf.load11, 40
  %bf.cast13 = trunc i56 %bf.lshr12 to i32
  %11 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len, align 8
  %sub = sub i32 %12, %bf.cast13
  br label %if.end18

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %length, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then5
  %storemerge = phi i32 [ 0, %if.else ], [ %sub, %if.then5 ]
  %14 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %data_len, align 8
  %call19 = tail call i32 @usb_ep_queue(ptr noundef %ep, ptr noundef %req, i32 noundef 2592) #17
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %bot_status.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 10
  %csw_code.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %csw_code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %csw_code.i, align 4
  %bot_tag.i = getelementptr inbounds %struct.usbg_cmd, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %bot_tag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bot_tag.i, align 8
  %Tag.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 10, i32 1, i32 1
  %19 = ptrtoint ptr %Tag.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %Tag.i, align 4
  %conv.i = trunc i32 %16 to i8
  %Status.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 10, i32 1, i32 3
  %20 = ptrtoint ptr %Status.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %Status.i, align 4
  %21 = ptrtoint ptr %bot_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bot_status.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %context.i, align 4
  %ep_in.i = getelementptr inbounds %struct.f_uas, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %ep_in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep_in.i, align 4
  %26 = load ptr, ptr %bot_status.i, align 4
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %25, ptr noundef %26, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20.cleanup_crit_edge, label %do.end.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef 86, i32 noundef %call.i) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end20.cleanup_crit_edge, %if.end18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bot_send_status(ptr noundef %cmd, i1 noundef zeroext %moved_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fu1 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 6
  %0 = ptrtoint ptr %fu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fu1, align 4
  %bot_status = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10
  %scsi_status = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %moved_data, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %data_len = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %csw_code = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 15
  %6 = ptrtoint ptr %csw_code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %csw_code, align 4
  tail call fastcc void @bot_send_bad_status(ptr noundef %cmd)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %bot_tag = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 14
  %7 = ptrtoint ptr %bot_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bot_tag, align 8
  %Tag = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1, i32 1
  %9 = ptrtoint ptr %Tag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %Tag, align 4
  %Residue = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1, i32 2
  %10 = ptrtoint ptr %Residue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %Residue, align 4
  %Status = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 10, i32 1, i32 3
  %11 = ptrtoint ptr %Status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %Status, align 4
  %12 = ptrtoint ptr %bot_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bot_status, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %context, align 4
  %ep_in = getelementptr inbounds %struct.f_uas, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ep_in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep_in, align 4
  %17 = load ptr, ptr %bot_status, align 4
  %call = tail call i32 @usb_ep_queue(ptr noundef %16, ptr noundef %17, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 170, i32 noundef %call) #21
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %csw_code13 = getelementptr inbounds %struct.usbg_cmd, ptr %cmd, i32 0, i32 15
  %18 = ptrtoint ptr %csw_code13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %csw_code13, align 4
  tail call fastcc void @bot_send_bad_status(ptr noundef %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end.cleanup_crit_edge, %if.then5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_depend_item_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_undepend_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_usbg_drop_nexus(ptr noundef %tpg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %tpg, i32 noundef 0) #17
  %tpg_nexus = getelementptr inbounds %struct.usbg_tpg, ptr %tpg, i32 0, i32 6
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end3:                                          ; preds = %if.end
  %tpg_port_count = getelementptr inbounds %struct.usbg_tpg, ptr %tpg, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tpg_port_count, i32 noundef 4) #17
  %4 = ptrtoint ptr %tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tpg_port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %do.body10, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tpg_port_count, i32 noundef 4) #17
  %6 = ptrtoint ptr %tpg_port_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tpg_port_count, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %7) #21
  br label %out

do.body10:                                        ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_usbg_drop_nexus.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tcm_usbg_drop_nexus, %do.end21)) #17
          to label %if.then17 [label %do.end21], !srcloc !315

if.then17:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_node_acl, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_usbg_drop_nexus.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.86, ptr noundef %11) #17
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body10
  tail call void @target_remove_session(ptr noundef nonnull %3) #17
  %12 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tpg_nexus, align 4
  tail call void @kfree(ptr noundef nonnull %1) #17
  br label %out

out:                                              ; preds = %do.end21, %if.then5, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -1, %if.then5 ], [ 0, %do.end21 ], [ -19, %if.end.out_crit_edge ], [ -19, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %tpg) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbg_wwn_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.88, i32 26)
  ret i32 25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_usbg_tpg_nexus_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -376
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #17
  %tpg_nexus = getelementptr i8, ptr %item, i32 564
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_node_acl, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.90, ptr noundef %5)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %add.ptr) #17
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_usbg_tpg_nexus_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %i_port = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -376
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_port) #17
  %0 = call ptr @memset(ptr %i_port, i32 255, i32 32)
  %call1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(5) @.str.91, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call fastcc i32 @tcm_usbg_drop_nexus(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %count.call2 = select i1 %tobool3.not, i32 %count, i32 %call2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strlen(ptr noundef %page) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call4)
  %cmp = icmp ugt i32 %call4, 31
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %page, i32 noundef 32) #21
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_port, i32 noundef 32, ptr noundef nonnull @.str.79, ptr noundef %page)
  %call11 = call ptr @strstr(ptr noundef nonnull %i_port, ptr noundef nonnull @.str.80)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #21
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call21 = call i32 @strlen(ptr noundef nonnull %i_port) #24
  %sub = add i32 %call21, -1
  %arrayidx = getelementptr [32 x i8], ptr %i_port, i32 0, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp22 = icmp eq i8 %2, 10
  br i1 %cmp22, label %if.then24, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end19.if.end29_crit_edge
  %call31 = call fastcc i32 @tcm_usbg_make_nexus(ptr noundef %add.ptr, ptr noundef nonnull %i_port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  %call31.count = select i1 %cmp32, i32 %call31, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end16, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ %count.call2, %if.then ], [ %call31.count, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_port) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcm_usbg_make_nexus(ptr noundef %tpg, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %tpg, i32 noundef 0) #17
  %tpg_nexus = getelementptr inbounds %struct.usbg_tpg, ptr %tpg, i32 0, i32 6
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_nexus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_usbg_make_nexus.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tcm_usbg_make_nexus, %out_unlock)) #17
          to label %if.then5 [label %out_unlock], !srcloc !315

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_usbg_make_nexus.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.98) #17
  br label %out_unlock

if.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #20
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.out_unlock_crit_edge, label %if.end10

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %se_tpg = getelementptr inbounds %struct.usbg_tpg, ptr %tpg, i32 0, i32 4
  %call11 = tail call ptr @target_setup_session(ptr noundef %se_tpg, i32 noundef 128, i32 noundef 768, i32 noundef 0, ptr noundef %name, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @usbg_alloc_sess_cb) #17
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %call7.i.i, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body15, label %if.end10.out_unlock_crit_edge

if.end10.out_unlock_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

do.body15:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_usbg_make_nexus.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tcm_usbg_make_nexus, %do.end32)) #17
          to label %if.then29 [label %do.end32], !srcloc !315

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_usbg_make_nexus.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.99, ptr noundef %name) #17
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body15
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %out_unlock

out_unlock:                                       ; preds = %do.end32, %if.end10.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %if.then5, %if.then
  %ret.0 = phi i32 [ -17, %if.then5 ], [ %6, %do.end32 ], [ 0, %if.end10.out_unlock_crit_edge ], [ -12, %if.end6.out_unlock_crit_edge ], [ -17, %if.then ]
  tail call void @mutex_unlock(ptr noundef %tpg) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @usbg_alloc_sess_cb(ptr nocapture noundef writeonly %se_tpg, ptr nocapture noundef readnone %se_sess, ptr noundef %p) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_nexus = getelementptr i8, ptr %se_tpg, i32 836
  %0 = ptrtoint ptr %tpg_nexus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p, ptr %tpg_nexus, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !173, !174, !176, !177, !178, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !197, !198, !199, !200, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !258, !260, !262, !263, !265, !267, !268, !269, !270, !272, !273, !275, !277, !278, !280, !282, !284, !285, !287, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304}
!llvm.named.register.sp = !{!305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @__UNIQUE_ID_alias285, !1, !"__UNIQUE_ID_alias285", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2307, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_tcm__286_2323_tcm_init6, !3, !"__initcall__kmod_usb_f_tcm__286_2323_tcm_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2323, i32 1}
!4 = !{ptr @__exitcall_tcm_exit, !5, !"__exitcall_tcm_exit", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2330, i32 1}
!6 = !{ptr @__UNIQUE_ID_file287, !7, !"__UNIQUE_ID_file287", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2332, i32 1}
!8 = !{ptr @__UNIQUE_ID_license288, !7, !"__UNIQUE_ID_license288", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author289, !10, !"__UNIQUE_ID_author289", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2333, i32 1}
!11 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tcmusb_func, !1, !"tcmusb_func", i1 false, i1 false}
!13 = !{ptr @tcm_alloc_inst.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2249, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2255, i32 54}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 37, i32 8}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tpg_instances_lock, !19, !"tpg_instances_lock", i1 false, i1 false}
!22 = distinct !{null, !23, !"tpg_instances", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 35, i32 28}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2217, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tcm_set_name.__UNIQUE_ID_ddebug284, !25, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!30 = !{ptr @tcm_func_type, !31, !"tcm_func_type", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2148, i32 38}
!32 = !{ptr @tcm_item_ops, !33, !"tcm_item_ops", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2144, i32 40}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2293, i32 22}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2048, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tcm_bind._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @tcm_bind._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @tcm_strings, !42, !"tcm_strings", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1965, i32 35}
!43 = !{ptr @tcm_stringtab, !44, !"tcm_stringtab", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1960, i32 34}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1955, i32 27}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1956, i32 27}
!49 = !{ptr @tcm_us_strings, !50, !"tcm_us_strings", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1954, i32 26}
!51 = !{ptr @bot_intf_desc, !52, !"bot_intf_desc", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1725, i32 40}
!53 = !{ptr @uasp_intf_desc, !54, !"uasp_intf_desc", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1735, i32 40}
!55 = !{ptr @uasp_ss_bi_desc, !56, !"uasp_ss_bi_desc", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1766, i32 39}
!57 = !{ptr @uasp_bi_ep_comp_desc, !58, !"uasp_bi_ep_comp_desc", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1774, i32 41}
!59 = !{ptr @uasp_ss_bo_desc, !60, !"uasp_ss_bo_desc", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1809, i32 39}
!61 = !{ptr @uasp_bo_ep_comp_desc, !62, !"uasp_bo_ep_comp_desc", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1817, i32 41}
!63 = !{ptr @uasp_ss_status_desc, !64, !"uasp_ss_status_desc", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1849, i32 39}
!65 = !{ptr @uasp_status_in_ep_comp_desc, !66, !"uasp_status_in_ep_comp_desc", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1857, i32 41}
!67 = !{ptr @uasp_ss_cmd_desc, !68, !"uasp_ss_cmd_desc", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1884, i32 39}
!69 = !{ptr @uasp_cmd_comp_desc, !70, !"uasp_cmd_comp_desc", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1892, i32 41}
!71 = !{ptr @uasp_bi_desc, !72, !"uasp_bi_desc", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1745, i32 39}
!73 = !{ptr @uasp_bo_desc, !74, !"uasp_bo_desc", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1788, i32 39}
!75 = !{ptr @uasp_status_desc, !76, !"uasp_status_desc", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1828, i32 39}
!77 = !{ptr @uasp_cmd_desc, !78, !"uasp_cmd_desc", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1863, i32 39}
!79 = !{ptr @uasp_fs_bi_desc, !80, !"uasp_fs_bi_desc", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1753, i32 39}
!81 = !{ptr @uasp_fs_bo_desc, !82, !"uasp_fs_bo_desc", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1796, i32 39}
!83 = !{ptr @uasp_fs_status_desc, !84, !"uasp_fs_status_desc", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1836, i32 39}
!85 = !{ptr @uasp_fs_cmd_desc, !86, !"uasp_fs_cmd_desc", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1871, i32 39}
!87 = !{ptr @uasp_fs_function_desc, !88, !"uasp_fs_function_desc", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1897, i32 38}
!89 = !{ptr @uasp_bi_pipe_desc, !90, !"uasp_bi_pipe_desc", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1760, i32 41}
!91 = !{ptr @uasp_bo_pipe_desc, !92, !"uasp_bo_pipe_desc", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1803, i32 41}
!93 = !{ptr @uasp_status_pipe_desc, !94, !"uasp_status_pipe_desc", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1843, i32 41}
!95 = !{ptr @uasp_cmd_pipe_desc, !96, !"uasp_cmd_pipe_desc", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1878, i32 41}
!97 = !{ptr @uasp_hs_function_desc, !98, !"uasp_hs_function_desc", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1914, i32 38}
!99 = !{ptr @uasp_ss_function_desc, !100, !"uasp_ss_function_desc", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1931, i32 38}
!101 = !{ptr @bot_bi_ep_comp_desc, !102, !"bot_bi_ep_comp_desc", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1782, i32 41}
!103 = !{ptr @bot_bo_ep_comp_desc, !104, !"bot_bo_ep_comp_desc", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1823, i32 41}
!105 = !{ptr @tcm_set_alt.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 2100, i32 3}
!107 = !{ptr @.str.14, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.15, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 409, i32 2}
!110 = !{ptr @.str.16, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @bot_set_alt._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @bot_set_alt._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.17, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 358, i32 2}
!115 = !{ptr @.str.18, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @bot_prepare_reqs._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @bot_prepare_reqs._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.19, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 66, i32 3}
!120 = !{ptr @.str.20, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @bot_status_complete._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @bot_status_complete._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.21, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 302, i32 3}
!125 = !{ptr @.str.22, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @bot_cmd_complete._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @bot_cmd_complete._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.23, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1211, i32 3}
!130 = !{ptr @.str.24, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @bot_submit_command._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @bot_submit_command._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.26, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1215, i32 3}
!135 = !{ptr @bot_submit_command._entry.25, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bot_submit_command._entry_ptr.27, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.29, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1225, i32 3}
!139 = !{ptr @bot_submit_command._entry.28, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bot_submit_command._entry_ptr.30, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.32, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1231, i32 3}
!143 = !{ptr @bot_submit_command._entry.31, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @bot_submit_command._entry_ptr.33, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @bot_submit_command.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1243, i32 2}
!147 = !{ptr @.str.34, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.35, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 948, i32 3}
!150 = !{ptr @.str.36, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @get_cmd_dir._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @get_cmd_dir._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.37, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 879, i32 2}
!155 = !{ptr @.str.38, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @uasp_set_alt._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @uasp_set_alt._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.39, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 840, i32 2}
!160 = !{ptr @.str.40, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @uasp_prepare_reqs._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @uasp_prepare_reqs._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.41, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1106, i32 3}
!165 = !{ptr @.str.42, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @usbg_submit_command._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @usbg_submit_command._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @usbg_submit_command._entry.43, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1112, i32 3}
!170 = !{ptr @usbg_submit_command._entry_ptr.44, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @usbg_submit_command._entry.45, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1123, i32 3}
!173 = !{ptr @usbg_submit_command._entry_ptr.46, !172, !"_entry_ptr", i1 false, i1 false}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1150, i32 3}
!176 = !{ptr @.str.48, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @usbg_submit_command._entry.47, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @usbg_submit_command._entry_ptr.49, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @usbg_submit_command.__key, !180, !"__key", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1160, i32 2}
!181 = !{ptr @.str.50, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 441, i32 4}
!183 = !{ptr @.str.51, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @usbg_bot_setup._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @usbg_bot_setup._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"__already_done", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 450, i32 4}
!188 = !{ptr @.str.53, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @usbg_bot_setup._entry.52, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @usbg_bot_setup._entry_ptr.54, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.55, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1690, i32 19}
!193 = !{ptr @usbg_ops, !194, !"usbg_ops", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1688, i32 44}
!195 = !{ptr @.str.56, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 280, i32 3}
!197 = !{ptr @.str.57, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @bot_send_write_request._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @bot_send_write_request._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @init_completion.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../include/linux/completion.h", i32 87, i32 2}
!202 = !{ptr @.str.58, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.59, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 961, i32 3}
!205 = !{ptr @.str.60, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @usbg_data_write_cmpl._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @usbg_data_write_cmpl._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.61, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 693, i32 4}
!210 = !{ptr @uasp_send_write_request._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @uasp_send_write_request._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @uasp_send_write_request._entry.62, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 710, i32 4}
!214 = !{ptr @uasp_send_write_request._entry_ptr.63, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.64, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 582, i32 4}
!217 = !{ptr @.str.65, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @uasp_status_data_cmpl._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @uasp_status_data_cmpl._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @uasp_status_data_cmpl._entry.66, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 591, i32 4}
!222 = !{ptr @uasp_status_data_cmpl._entry_ptr.67, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @uasp_status_data_cmpl._entry.68, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 599, i32 4}
!225 = !{ptr @uasp_status_data_cmpl._entry_ptr.69, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.70, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 237, i32 3}
!228 = !{ptr @bot_send_read_response._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @bot_send_read_response._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.71, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 95, i32 3}
!232 = !{ptr @bot_err_compl._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @bot_err_compl._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.72, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 86, i32 3}
!236 = !{ptr @.str.73, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @bot_enqueue_sense_code._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @bot_enqueue_sense_code._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.74, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 197, i32 3}
!241 = !{ptr @bot_read_compl._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @bot_read_compl._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.75, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 170, i32 4}
!245 = !{ptr @bot_send_status._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @bot_send_status._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.76, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 647, i32 4}
!249 = !{ptr @uasp_send_read_response._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @uasp_send_read_response._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @uasp_send_read_response._entry.77, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 667, i32 4}
!253 = !{ptr @uasp_send_read_response._entry_ptr.78, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.79, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1472, i32 57}
!256 = !{ptr @.str.80, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1319, i32 19}
!258 = !{ptr @.str.81, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1347, i32 19}
!260 = !{ptr @usbg_make_tpg.__key, !261, !"__key", i1 false, i1 false}
!261 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1380, i32 2}
!262 = !{ptr @.str.82, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.83, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1382, i32 35}
!265 = !{ptr @.str.84, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1602, i32 3}
!267 = !{ptr @.str.85, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @tcm_usbg_drop_nexus._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @tcm_usbg_drop_nexus._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.86, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1607, i32 2}
!272 = !{ptr @tcm_usbg_drop_nexus.__UNIQUE_ID_ddebug283, !271, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!273 = !{ptr @usbg_wwn_attrs, !274, !"usbg_wwn_attrs", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1493, i32 35}
!275 = !{ptr @.str.87, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1491, i32 1}
!277 = !{ptr @usbg_wwn_attr_version, !276, !"usbg_wwn_attr_version", i1 false, i1 false}
!278 = !{ptr @.str.88, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1488, i32 23}
!280 = !{ptr @usbg_base_attrs, !281, !"usbg_base_attrs", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1660, i32 35}
!282 = !{ptr @.str.89, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1658, i32 1}
!284 = !{ptr @tcm_usbg_tpg_attr_nexus, !283, !"tcm_usbg_tpg_attr_nexus", i1 false, i1 false}
!285 = !{ptr @.str.90, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1531, i32 34}
!287 = !{ptr @.str.91, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1630, i32 21}
!289 = !{ptr @.str.92, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1637, i32 3}
!291 = !{ptr @.str.93, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @tcm_usbg_tpg_nexus_store._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @tcm_usbg_tpg_nexus_store._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.95, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1645, i32 3}
!296 = !{ptr @tcm_usbg_tpg_nexus_store._entry.94, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @tcm_usbg_tpg_nexus_store._entry_ptr.96, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.97, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1556, i32 3}
!300 = !{ptr @.str.98, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @tcm_usbg_make_nexus.__UNIQUE_ID_ddebug281, !299, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!302 = !{ptr @.str.99, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/usb/gadget/function/f_tcm.c", i32 1573, i32 3}
!304 = !{ptr @tcm_usbg_make_nexus.__UNIQUE_ID_ddebug282, !303, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!305 = !{!"sp"}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{i64 2148746587, i64 2148746592, i64 2148746605, i64 2148746649, i64 2148746683, i64 2148746704}
!316 = !{i8 0, i8 2}
!317 = !{!"branch_weights", i32 2000, i32 1}
!318 = !{i64 2154428895}
!319 = !{i64 2154429062}
!320 = !{!"auto-init"}
!321 = !{i64 2148264772, i64 2148264798, i64 2148264827, i64 2148264861, i64 2148264892, i64 2148264915}
!322 = !{i64 2154887001}
!323 = !{i64 2148267237, i64 2148267263, i64 2148267292, i64 2148267326, i64 2148267357, i64 2148267380}
!324 = !{i64 2154888355}
!325 = !{i64 2154814535, i64 2154815035, i64 2154814572, i64 2154814628, i64 2154814662, i64 2154814686, i64 2154814727, i64 2154814748, i64 2154814776, i64 2154814810}
