; ModuleID = '/llk/IR_all_yes/drivers/greybus/svc.c_pt.bc'
source_filename = "../drivers/greybus/svc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gb_svc_intf_set_power_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_svc_intf_set_power_mode\09\09\09\09"
module asm "\09.long\09__crc_gb_svc_intf_set_power_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_svc_intf_set_power_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_svc_intf_set_power_mode\22\09\09\09\09\09"
module asm "__kstrtabns_gb_svc_intf_set_power_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gb_svc_pwrmon_intf_sample_get_request = type { i8, i8 }
%struct.gb_svc_pwrmon_intf_sample_get_response = type <{ i8, i32 }>
%struct.gb_svc = type { %struct.device, ptr, ptr, i32, %struct.ida, ptr, i16, i8, i8, i8, ptr, i32, ptr, ptr }
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gb_svc_intf_device_id_request = type { i8, i8 }
%struct.gb_svc_intf_eject_request = type { i8 }
%struct.gb_svc_intf_vsys_request = type { i8 }
%struct.gb_svc_intf_vsys_response = type { i8 }
%struct.gb_svc_intf_refclk_request = type { i8 }
%struct.gb_svc_intf_refclk_response = type { i8 }
%struct.gb_svc_intf_unipro_request = type { i8 }
%struct.gb_svc_intf_unipro_response = type { i8 }
%struct.gb_svc_intf_activate_request = type { i8 }
%struct.gb_svc_intf_activate_response = type { i8, i8 }
%struct.gb_svc_intf_resume_request = type { i8 }
%struct.gb_svc_intf_resume_response = type { i8 }
%struct.gb_svc_dme_peer_get_request = type <{ i8, i16, i16 }>
%struct.gb_svc_dme_peer_get_response = type <{ i16, i32 }>
%struct.gb_svc_dme_peer_set_request = type <{ i8, i16, i16, i32 }>
%struct.gb_svc_dme_peer_set_response = type { i16 }
%struct.gb_svc_conn_create_request = type <{ i8, i16, i8, i16, i8, i8 }>
%struct.gb_svc_conn_destroy_request = type <{ i8, i16, i8, i16 }>
%struct.gb_svc_route_create_request = type { i8, i8, i8, i8 }
%struct.gb_svc_route_destroy_request = type { i8, i8 }
%struct.gb_svc_intf_set_pwrm_request = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.gb_svc_l2_timer_cfg, %struct.gb_svc_l2_timer_cfg }>
%struct.gb_svc_l2_timer_cfg = type { i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16] }
%struct.gb_svc_intf_set_pwrm_response = type { i8 }
%struct.gb_host_device = type { %struct.device, i32, ptr, %struct.list_head, %struct.list_head, %struct.ida, i32, i32, ptr, [0 x i32] }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_svc_pwrmon_rail_count_get_response = type { i8 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_svc_version_request = type { i8, i8 }
%struct.gb_svc_version_response = type { i8, i8 }
%struct.gb_svc_hello_request = type <{ i16, i8 }>
%struct.svc_debugfs_pwrmon_rail = type { i8, ptr }
%struct.gb_svc_pwrmon_rail_names_get_response = type { i8, [0 x [32 x i8]] }
%struct.gb_svc_deferred_request = type { %struct.work_struct, ptr }
%struct.gb_svc_pwrmon_sample_get_request = type { i8, i8 }
%struct.gb_svc_pwrmon_sample_get_response = type <{ i8, i32 }>
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.gb_svc_intf_oops_request = type { i8, i8 }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_svc_module_inserted_request = type { i8, i8, i16 }
%struct.gb_module = type { %struct.device, ptr, %struct.list_head, i8, i32, i8, [0 x ptr] }
%struct.gb_svc_intf_mailbox_event_request = type <{ i8, i16, i32 }>

@gb_svc_pwrmon_intf_sample_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get intf sample: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gb_svc_pwrmon_intf_sample_get\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/greybus/svc.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_intf_sample_get._entry_ptr = internal global ptr @gb_svc_pwrmon_intf_sample_get._entry, section ".printk_index", align 4
@gb_svc_pwrmon_intf_sample_get._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UniPro error while getting intf power sample (%d %d): %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_intf_sample_get._entry_ptr.7 = internal global ptr @gb_svc_pwrmon_intf_sample_get._entry.5, section ".printk_index", align 4
@gb_svc_intf_eject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to eject interface %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gb_svc_intf_eject\00", [46 x i8] zeroinitializer }, align 32
@gb_svc_intf_eject._entry_ptr = internal global ptr @gb_svc_intf_eject._entry, section ".printk_index", align 4
@gb_svc_intf_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to activate interface %u: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gb_svc_intf_activate\00", [43 x i8] zeroinitializer }, align 32
@gb_svc_intf_activate._entry_ptr = internal global ptr @gb_svc_intf_activate._entry, section ".printk_index", align 4
@gb_svc_intf_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to send interface resume %u: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gb_svc_intf_resume\00", [45 x i8] zeroinitializer }, align 32
@gb_svc_intf_resume._entry_ptr = internal global ptr @gb_svc_intf_resume._entry, section ".printk_index", align 4
@gb_svc_intf_resume._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to resume interface %u: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@gb_svc_intf_resume._entry_ptr.16 = internal global ptr @gb_svc_intf_resume._entry.14, section ".printk_index", align 4
@gb_svc_dme_peer_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 431, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to get DME attribute (%u 0x%04x %u): %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gb_svc_dme_peer_get\00", [44 x i8] zeroinitializer }, align 32
@gb_svc_dme_peer_get._entry_ptr = internal global ptr @gb_svc_dme_peer_get._entry, section ".printk_index", align 4
@gb_svc_dme_peer_get._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UniPro error while getting DME attribute (%u 0x%04x %u): %u\0A\00", [35 x i8] zeroinitializer }, align 32
@gb_svc_dme_peer_get._entry_ptr.21 = internal global ptr @gb_svc_dme_peer_get._entry.19, section ".printk_index", align 4
@gb_svc_dme_peer_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 466, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to set DME attribute (%u 0x%04x %u %u): %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gb_svc_dme_peer_set\00", [44 x i8] zeroinitializer }, align 32
@gb_svc_dme_peer_set._entry_ptr = internal global ptr @gb_svc_dme_peer_set._entry, section ".printk_index", align 4
@gb_svc_dme_peer_set._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 473, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UniPro error while setting DME attribute (%u 0x%04x %u %u): %u\0A\00", [32 x i8] zeroinitializer }, align 32
@gb_svc_dme_peer_set._entry_ptr.26 = internal global ptr @gb_svc_dme_peer_set._entry.24, section ".printk_index", align 4
@gb_svc_connection_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 514, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to destroy connection (%u:%u %u:%u): %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_svc_connection_destroy\00", [38 x i8] zeroinitializer }, align 32
@gb_svc_connection_destroy._entry_ptr = internal global ptr @gb_svc_connection_destroy._entry, section ".printk_index", align 4
@gb_svc_route_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to destroy route (%u %u): %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gb_svc_route_destroy\00", [43 x i8] zeroinitializer }, align 32
@gb_svc_route_destroy._entry_ptr = internal global ptr @gb_svc_route_destroy._entry, section ".printk_index", align 4
@gb_svc_intf_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 590, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set power mode = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_svc_intf_set_power_mode\00", [37 x i8] zeroinitializer }, align 32
@gb_svc_intf_set_power_mode._entry_ptr = internal global ptr @gb_svc_intf_set_power_mode._entry, section ".printk_index", align 4
@__kstrtab_gb_svc_intf_set_power_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_svc_intf_set_power_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_svc_intf_set_power_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_svc_intf_set_power_mode to i32), ptr @__kstrtab_gb_svc_intf_set_power_mode, ptr @__kstrtabns_gb_svc_intf_set_power_mode }, section "___ksymtab_gpl+gb_svc_intf_set_power_mode", align 4
@gb_svc_intf_set_power_mode_hibernate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 618, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"failed to send set power mode operation to interface %u: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gb_svc_intf_set_power_mode_hibernate\00", [59 x i8] zeroinitializer }, align 32
@gb_svc_intf_set_power_mode_hibernate._entry_ptr = internal global ptr @gb_svc_intf_set_power_mode_hibernate._entry, section ".printk_index", align 4
@gb_svc_intf_set_power_mode_hibernate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 626, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to hibernate the link for interface %u: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@gb_svc_intf_set_power_mode_hibernate._entry_ptr.37 = internal global ptr @gb_svc_intf_set_power_mode_hibernate._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"greybus_svc\00", [20 x i8] zeroinitializer }, align 32
@greybus_svc_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.38, ptr null, ptr null, ptr null, ptr @gb_svc_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:svc\00", [25 x i8] zeroinitializer }, align 32
@greybus_bus_type = external dso_local global %struct.bus_type, align 4
@svc_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @svc_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d-svc\00", [25 x i8] zeroinitializer }, align 32
@gb_svc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create connection: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gb_svc_create\00", [18 x i8] zeroinitializer }, align 32
@gb_svc_create._entry_ptr = internal global ptr @gb_svc_create._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@svc_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @svc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@svc_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_endo_id, ptr @dev_attr_ap_intf_id, ptr @dev_attr_intf_eject, ptr @dev_attr_watchdog, ptr @dev_attr_watchdog_action, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_endo_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @endo_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ap_intf_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ap_intf_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_intf_eject = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @intf_eject_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_watchdog = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @watchdog_show, ptr @watchdog_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_watchdog_action = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @watchdog_action_show, ptr @watchdog_action_store }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"endo_id\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ap_intf_id\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intf_eject\00", [21 x i8] zeroinitializer }, align 32
@intf_eject_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 59, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Forcibly trying to eject interface %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intf_eject_store\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@intf_eject_store._entry_ptr = internal global ptr @intf_eject_store._entry, section ".printk_index", align 4
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"watchdog_action\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"panic\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@gb_svc_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1255, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unexpected request 0x%02x received (state %u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_svc_request_handler\00", [41 x i8] zeroinitializer }, align 32
@gb_svc_request_handler._entry_ptr = internal global ptr @gb_svc_request_handler._entry, section ".printk_index", align 4
@gb_svc_request_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1281, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported request 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_svc_request_handler._entry_ptr.65 = internal global ptr @gb_svc_request_handler._entry.63, section ".printk_index", align 4
@gb_svc_version_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 650, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"short version request (%zu < %zu)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_svc_version_request\00", [41 x i8] zeroinitializer }, align 32
@gb_svc_version_request._entry_ptr = internal global ptr @gb_svc_version_request._entry, section ".printk_index", align 4
@gb_svc_version_request._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 658, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported major version (%u > %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@gb_svc_version_request._entry_ptr.70 = internal global ptr @gb_svc_version_request._entry.68, section ".printk_index", align 4
@gb_svc_hello._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 847, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"short hello request (%zu < %zu)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gb_svc_hello\00", [19 x i8] zeroinitializer }, align 32
@gb_svc_hello._entry_ptr = internal global ptr @gb_svc_hello._entry, section ".printk_index", align 4
@gb_svc_hello._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register svc device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@gb_svc_hello._entry_ptr.75 = internal global ptr @gb_svc_hello._entry.73, section ".printk_index", align 4
@gb_svc_hello._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 863, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create watchdog: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gb_svc_hello._entry_ptr.78 = internal global ptr @gb_svc_hello._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwrmon\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"voltage_now\00", [20 x i8] zeroinitializer }, align 32
@pwrmon_debugfs_voltage_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @pwr_debugfs_voltage_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"current_now\00", [20 x i8] zeroinitializer }, align 32
@pwrmon_debugfs_current_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @pwr_debugfs_current_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power_now\00", [22 x i8] zeroinitializer }, align 32
@pwrmon_debugfs_power_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @pwr_debugfs_power_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_rail_count_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get rail count: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_svc_pwrmon_rail_count_get\00", [35 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_rail_count_get._entry_ptr = internal global ptr @gb_svc_pwrmon_rail_count_get._entry, section ".printk_index", align 4
@gb_svc_pwrmon_rail_names_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get rail names: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_svc_pwrmon_rail_names_get\00", [35 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_rail_names_get._entry_ptr = internal global ptr @gb_svc_pwrmon_rail_names_get._entry, section ".printk_index", align 4
@gb_svc_pwrmon_rail_names_get._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SVC error while getting rail names: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_rail_names_get._entry_ptr.90 = internal global ptr @gb_svc_pwrmon_rail_names_get._entry.88, section ".printk_index", align 4
@pwr_debugfs_voltage_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 690, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get voltage sample %u: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwr_debugfs_voltage_read\00", [39 x i8] zeroinitializer }, align 32
@pwr_debugfs_voltage_read._entry_ptr = internal global ptr @pwr_debugfs_voltage_read._entry, section ".printk_index", align 4
@gb_svc_pwrmon_sample_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get rail sample: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gb_svc_pwrmon_sample_get\00", [39 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_sample_get._entry_ptr = internal global ptr @gb_svc_pwrmon_sample_get._entry, section ".printk_index", align 4
@gb_svc_pwrmon_sample_get._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UniPro error while getting rail power sample (%d %d): %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gb_svc_pwrmon_sample_get._entry_ptr.97 = internal global ptr @gb_svc_pwrmon_sample_get._entry.95, section ".printk_index", align 4
@pwr_debugfs_current_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 714, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get current sample %u: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwr_debugfs_current_read\00", [39 x i8] zeroinitializer }, align 32
@pwr_debugfs_current_read._entry_ptr = internal global ptr @pwr_debugfs_current_read._entry, section ".printk_index", align 4
@pwr_debugfs_power_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get power sample %u: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwr_debugfs_power_read\00", [41 x i8] zeroinitializer }, align 32
@pwr_debugfs_power_read._entry_ptr = internal global ptr @pwr_debugfs_power_read._entry, section ".printk_index", align 4
@gb_svc_queue_deferred_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&dr->work)\00", [35 x i8] zeroinitializer }, align 32
@gb_svc_process_deferred_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad deferred request type: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gb_svc_process_deferred_request\00", [32 x i8] zeroinitializer }, align 32
@gb_svc_process_deferred_request._entry_ptr = internal global ptr @gb_svc_process_deferred_request._entry, section ".printk_index", align 4
@gb_svc_process_hello_deferred._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 940, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"power mode change failed on AP to switch link: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gb_svc_process_hello_deferred\00", [34 x i8] zeroinitializer }, align 32
@gb_svc_process_hello_deferred._entry_ptr = internal global ptr @gb_svc_process_hello_deferred._entry, section ".printk_index", align 4
@gb_svc_process_module_inserted.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.107, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greybus\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gb_svc_process_module_inserted\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s - id = %u, num_interfaces = %zu, flags = 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@gb_svc_process_module_inserted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 966, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no primary interface detected on module %u\0A\00", [52 x i8] zeroinitializer }, align 32
@gb_svc_process_module_inserted._entry_ptr = internal global ptr @gb_svc_process_module_inserted._entry, section ".printk_index", align 4
@gb_svc_process_module_inserted._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.108, ptr @.str.2, i32 972, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected module-inserted event %u\0A\00", [59 x i8] zeroinitializer }, align 32
@gb_svc_process_module_inserted._entry_ptr.113 = internal global ptr @gb_svc_process_module_inserted._entry.111, section ".printk_index", align 4
@gb_svc_process_module_inserted._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.108, ptr @.str.2, i32 978, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to create module\0A\00", [39 x i8] zeroinitializer }, align 32
@gb_svc_process_module_inserted._entry_ptr.116 = internal global ptr @gb_svc_process_module_inserted._entry.114, section ".printk_index", align 4
@gb_svc_process_module_removed.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.107, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gb_svc_process_module_removed\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s - id = %u\0A\00", [18 x i8] zeroinitializer }, align 32
@gb_svc_process_module_removed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 1008, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected module-removed event %u\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_svc_process_module_removed._entry_ptr = internal global ptr @gb_svc_process_module_removed._entry, section ".printk_index", align 4
@gb_svc_process_intf_mailbox_event.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.107, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gb_svc_process_intf_mailbox_event\00", [62 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s - id = %u, result = 0x%04x, mailbox = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@gb_svc_process_intf_mailbox_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 1071, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected mailbox event %u\0A\00", [35 x i8] zeroinitializer }, align 32
@gb_svc_process_intf_mailbox_event._entry_ptr = internal global ptr @gb_svc_process_intf_mailbox_event._entry, section ".printk_index", align 4
@gb_svc_process_intf_oops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1036, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected interface-oops event %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gb_svc_process_intf_oops\00", [39 x i8] zeroinitializer }, align 32
@gb_svc_process_intf_oops._entry_ptr = internal global ptr @gb_svc_process_intf_oops._entry, section ".printk_index", align 4
@gb_svc_process_intf_oops._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 1041, ptr @.str.127, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Deactivating interface %u, interface oops reason = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gb_svc_process_intf_oops._entry_ptr.128 = internal global ptr @gb_svc_process_intf_oops._entry.125, section ".printk_index", align 4
@gb_svc_intf_reset_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1141, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"short reset request received (%zu < %zu)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_svc_intf_reset_recv\00", [41 x i8] zeroinitializer }, align 32
@gb_svc_intf_reset_recv._entry_ptr = internal global ptr @gb_svc_intf_reset_recv._entry, section ".printk_index", align 4
@gb_svc_module_inserted_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 1158, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"short module-inserted request received (%zu < %zu)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_svc_module_inserted_recv\00", [36 x i8] zeroinitializer }, align 32
@gb_svc_module_inserted_recv._entry_ptr = internal global ptr @gb_svc_module_inserted_recv._entry, section ".printk_index", align 4
@gb_svc_module_inserted_recv.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.107, ptr @.str.132, ptr @.str.2, ptr @.str.118, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gb_svc_module_removed_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1177, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"short module-removed request received (%zu < %zu)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_svc_module_removed_recv\00", [37 x i8] zeroinitializer }, align 32
@gb_svc_module_removed_recv._entry_ptr = internal global ptr @gb_svc_module_removed_recv._entry, section ".printk_index", align 4
@gb_svc_module_removed_recv.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.107, ptr @.str.134, ptr @.str.2, ptr @.str.118, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gb_svc_intf_mailbox_event_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1210, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"short mailbox request received (%zu < %zu)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gb_svc_intf_mailbox_event_recv\00", [33 x i8] zeroinitializer }, align 32
@gb_svc_intf_mailbox_event_recv._entry_ptr = internal global ptr @gb_svc_intf_mailbox_event_recv._entry, section ".printk_index", align 4
@gb_svc_intf_mailbox_event_recv.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.107, ptr @.str.136, ptr @.str.2, ptr @.str.118, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gb_svc_intf_oops_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1196, ptr @.str.50, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"short intf-oops request received (%zu < %zu)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb_svc_intf_oops_recv\00", [42 x i8] zeroinitializer }, align 32
@gb_svc_intf_oops_recv._entry_ptr = internal global ptr @gb_svc_intf_oops_recv._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 31, i64 32, i64 41, i64 42]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 31, i64 32, i64 41, i64 42]
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 224, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 229, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 284, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 376, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 400, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 406, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 430, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 437, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 465, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 472, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 513, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 545, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 590, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 616, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 624, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1298, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"greybus_svc_type\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1297, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1310, i32 28 }
@___asan_gen_.281 = private unnamed_addr constant [11 x i8] c"svc_groups\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1323, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1332, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [10 x i8] c"svc_group\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 255, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [10 x i8] c"svc_attrs\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 247, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"dev_attr_endo_id\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c"dev_attr_ap_intf_id\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c"dev_attr_intf_eject\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"dev_attr_watchdog\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [25 x i8] c"dev_attr_watchdog_action\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 31, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 29, i32 22 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 40, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 38, i32 22 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 67, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 59, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 98, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 74, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 75, i32 41 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 75, i32 53 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 128, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 106, i32 23 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 108, i32 23 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 119, i32 23 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 121, i32 28 }
@___asan_gen_.375 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 378, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1254, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1281, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 648, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 657, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 845, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 857, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 863, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 766, i32 28 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 796, i32 34 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 803, i32 23 }
@___asan_gen_.437 = private unnamed_addr constant [28 x i8] c"pwrmon_debugfs_voltage_fops\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 746, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 805, i32 23 }
@___asan_gen_.443 = private unnamed_addr constant [28 x i8] c"pwrmon_debugfs_current_fops\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 750, i32 37 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 807, i32 23 }
@___asan_gen_.449 = private unnamed_addr constant [26 x i8] c"pwrmon_debugfs_power_fops\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 754, i32 37 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 139, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 158, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 163, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 688, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 186, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 191, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 712, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 736, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1126, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1107, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 938, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 961, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 965, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 971, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 978, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1003, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1007, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1066, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1071, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1035, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1040, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1140, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1157, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1176, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1209, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.654 = private constant [25 x i8] c"../drivers/greybus/svc.c\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1195, i32 3 }
@llvm.compiler.used = appending global [218 x ptr] [ptr @__ksymtab_gb_svc_intf_set_power_mode, ptr @gb_svc_connection_destroy._entry, ptr @gb_svc_connection_destroy._entry_ptr, ptr @gb_svc_create._entry, ptr @gb_svc_create._entry_ptr, ptr @gb_svc_dme_peer_get._entry, ptr @gb_svc_dme_peer_get._entry.19, ptr @gb_svc_dme_peer_get._entry_ptr, ptr @gb_svc_dme_peer_get._entry_ptr.21, ptr @gb_svc_dme_peer_set._entry, ptr @gb_svc_dme_peer_set._entry.24, ptr @gb_svc_dme_peer_set._entry_ptr, ptr @gb_svc_dme_peer_set._entry_ptr.26, ptr @gb_svc_hello._entry, ptr @gb_svc_hello._entry.73, ptr @gb_svc_hello._entry.76, ptr @gb_svc_hello._entry_ptr, ptr @gb_svc_hello._entry_ptr.75, ptr @gb_svc_hello._entry_ptr.78, ptr @gb_svc_intf_activate._entry, ptr @gb_svc_intf_activate._entry_ptr, ptr @gb_svc_intf_eject._entry, ptr @gb_svc_intf_eject._entry_ptr, ptr @gb_svc_intf_mailbox_event_recv._entry, ptr @gb_svc_intf_mailbox_event_recv._entry_ptr, ptr @gb_svc_intf_oops_recv._entry, ptr @gb_svc_intf_oops_recv._entry_ptr, ptr @gb_svc_intf_reset_recv._entry, ptr @gb_svc_intf_reset_recv._entry_ptr, ptr @gb_svc_intf_resume._entry, ptr @gb_svc_intf_resume._entry.14, ptr @gb_svc_intf_resume._entry_ptr, ptr @gb_svc_intf_resume._entry_ptr.16, ptr @gb_svc_intf_set_power_mode._entry, ptr @gb_svc_intf_set_power_mode._entry_ptr, ptr @gb_svc_intf_set_power_mode_hibernate._entry, ptr @gb_svc_intf_set_power_mode_hibernate._entry.35, ptr @gb_svc_intf_set_power_mode_hibernate._entry_ptr, ptr @gb_svc_intf_set_power_mode_hibernate._entry_ptr.37, ptr @gb_svc_module_inserted_recv._entry, ptr @gb_svc_module_inserted_recv._entry_ptr, ptr @gb_svc_module_removed_recv._entry, ptr @gb_svc_module_removed_recv._entry_ptr, ptr @gb_svc_process_deferred_request._entry, ptr @gb_svc_process_deferred_request._entry_ptr, ptr @gb_svc_process_hello_deferred._entry, ptr @gb_svc_process_hello_deferred._entry_ptr, ptr @gb_svc_process_intf_mailbox_event._entry, ptr @gb_svc_process_intf_mailbox_event._entry_ptr, ptr @gb_svc_process_intf_oops._entry, ptr @gb_svc_process_intf_oops._entry.125, ptr @gb_svc_process_intf_oops._entry_ptr, ptr @gb_svc_process_intf_oops._entry_ptr.128, ptr @gb_svc_process_module_inserted._entry, ptr @gb_svc_process_module_inserted._entry.111, ptr @gb_svc_process_module_inserted._entry.114, ptr @gb_svc_process_module_inserted._entry_ptr, ptr @gb_svc_process_module_inserted._entry_ptr.113, ptr @gb_svc_process_module_inserted._entry_ptr.116, ptr @gb_svc_process_module_removed._entry, ptr @gb_svc_process_module_removed._entry_ptr, ptr @gb_svc_pwrmon_intf_sample_get._entry, ptr @gb_svc_pwrmon_intf_sample_get._entry.5, ptr @gb_svc_pwrmon_intf_sample_get._entry_ptr, ptr @gb_svc_pwrmon_intf_sample_get._entry_ptr.7, ptr @gb_svc_pwrmon_rail_count_get._entry, ptr @gb_svc_pwrmon_rail_count_get._entry_ptr, ptr @gb_svc_pwrmon_rail_names_get._entry, ptr @gb_svc_pwrmon_rail_names_get._entry.88, ptr @gb_svc_pwrmon_rail_names_get._entry_ptr, ptr @gb_svc_pwrmon_rail_names_get._entry_ptr.90, ptr @gb_svc_pwrmon_sample_get._entry, ptr @gb_svc_pwrmon_sample_get._entry.95, ptr @gb_svc_pwrmon_sample_get._entry_ptr, ptr @gb_svc_pwrmon_sample_get._entry_ptr.97, ptr @gb_svc_request_handler._entry, ptr @gb_svc_request_handler._entry.63, ptr @gb_svc_request_handler._entry_ptr, ptr @gb_svc_request_handler._entry_ptr.65, ptr @gb_svc_route_destroy._entry, ptr @gb_svc_route_destroy._entry_ptr, ptr @gb_svc_version_request._entry, ptr @gb_svc_version_request._entry.68, ptr @gb_svc_version_request._entry_ptr, ptr @gb_svc_version_request._entry_ptr.70, ptr @intf_eject_store._entry, ptr @intf_eject_store._entry_ptr, ptr @pwr_debugfs_current_read._entry, ptr @pwr_debugfs_current_read._entry_ptr, ptr @pwr_debugfs_power_read._entry, ptr @pwr_debugfs_power_read._entry_ptr, ptr @pwr_debugfs_voltage_read._entry, ptr @pwr_debugfs_voltage_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @greybus_svc_type, ptr @.str.39, ptr @svc_groups, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @svc_group, ptr @svc_attrs, ptr @dev_attr_endo_id, ptr @dev_attr_ap_intf_id, ptr @dev_attr_intf_eject, ptr @dev_attr_watchdog, ptr @dev_attr_watchdog_action, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @xa_init_flags.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @pwrmon_debugfs_voltage_fops, ptr @.str.82, ptr @pwrmon_debugfs_current_fops, ptr @.str.83, ptr @pwrmon_debugfs_power_fops, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @gb_svc_queue_deferred_request.__key, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_intf_sample_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_intf_sample_get._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_eject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_resume._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_dme_peer_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_dme_peer_get._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_dme_peer_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_dme_peer_set._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_connection_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_route_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_set_power_mode_hibernate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_set_power_mode_hibernate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_svc_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_endo_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ap_intf_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_intf_eject to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_watchdog to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_watchdog_action to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_eject_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_request_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_version_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_version_request._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_hello._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_hello._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_hello._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrmon_debugfs_voltage_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrmon_debugfs_current_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrmon_debugfs_power_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_rail_count_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_rail_names_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_rail_names_get._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_debugfs_voltage_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_sample_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_pwrmon_sample_get._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_debugfs_current_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_debugfs_power_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_queue_deferred_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_deferred_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_hello_deferred._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_module_inserted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_module_inserted._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_module_inserted._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_module_removed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_intf_mailbox_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_intf_oops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_process_intf_oops._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_reset_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_module_inserted_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_module_removed_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_mailbox_event_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_svc_intf_oops_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_pwrmon_intf_sample_get(ptr noundef %svc, i8 noundef zeroext %intf_id, i8 noundef zeroext %measurement_type, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_pwrmon_intf_sample_get_request, align 1
  %response = alloca %struct.gb_svc_pwrmon_intf_sample_get_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_pwrmon_intf_sample_get_request, ptr %request, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %response) #10
  %1 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %response, align 1, !annotation !316
  %2 = getelementptr inbounds %struct.gb_svc_pwrmon_intf_sample_get_response, ptr %response, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 -1, ptr %2, align 1, !annotation !316
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %intf_id, ptr %request, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %measurement_type, ptr %0, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %6 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %7, i32 noundef 23, ptr noundef nonnull %request, i32 noundef 2, ptr noundef nonnull %response, i32 noundef 5, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end15, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf_id to i32
  %conv9 = zext i8 %measurement_type to i32
  %conv11 = zext i8 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv11) #13
  %10 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %switch.selectcmp = icmp eq i8 %11, 2
  %switch.select = select i1 %switch.selectcmp, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %switch.selectcmp24 = icmp eq i8 %11, 1
  %switch.select25 = select i1 %switch.selectcmp24, i32 -22, i32 %switch.select
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %2, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end15 ], [ %switch.select25, %do.end7 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_device_id(ptr nocapture noundef readonly %svc, i8 noundef zeroext %intf_id, i8 noundef zeroext %device_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_device_id_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_intf_device_id_request, ptr %request, i32 0, i32 1
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %intf_id, ptr %request, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %device_id, ptr %0, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %3 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 3, ptr noundef nonnull %request, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_eject(ptr noundef %svc, i8 noundef zeroext %intf_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_eject_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #10
  %0 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %intf_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %1 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %connection, align 4
  %call = call i32 @gb_operation_sync_timeout(ptr noundef %2, i32 noundef 17, ptr noundef nonnull %request, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 9000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.8, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_vsys_set(ptr nocapture noundef readonly %svc, i8 noundef zeroext %intf_id, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_vsys_request, align 1
  %response = alloca %struct.gb_svc_intf_vsys_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %intf_id, ptr %request, align 1
  %. = select i1 %enable, i32 33, i32 34
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef %., ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not = icmp eq i8 %5, 0
  %.12 = select i1 %cmp4.not, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %.12, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_refclk_set(ptr nocapture noundef readonly %svc, i8 noundef zeroext %intf_id, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_refclk_request, align 1
  %response = alloca %struct.gb_svc_intf_refclk_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %intf_id, ptr %request, align 1
  %. = select i1 %enable, i32 35, i32 36
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef %., ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not = icmp eq i8 %5, 0
  %.12 = select i1 %cmp4.not, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %.12, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_unipro_set(ptr nocapture noundef readonly %svc, i8 noundef zeroext %intf_id, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_unipro_request, align 1
  %response = alloca %struct.gb_svc_intf_unipro_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %intf_id, ptr %request, align 1
  %. = select i1 %enable, i32 37, i32 38
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef %., ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp4.not = icmp eq i8 %5, 0
  %.12 = select i1 %cmp4.not, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %.12, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_activate(ptr noundef %svc, i8 noundef zeroext %intf_id, ptr nocapture noundef writeonly %intf_type) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_activate_request, align 1
  %response = alloca %struct.gb_svc_intf_activate_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = getelementptr inbounds %struct.gb_svc_intf_activate_response, ptr %response, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !316
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %intf_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %4 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection, align 4
  %call = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 39, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 2, i32 noundef 6000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2.not = icmp eq i8 %7, 0
  br i1 %cmp2.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %7 to i32
  %conv5 = zext i8 %intf_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.10, i32 noundef %conv5, i32 noundef %conv) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %10 = ptrtoint ptr %intf_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %intf_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_resume(ptr noundef %svc, i8 noundef zeroext %intf_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_resume_request, align 1
  %response = alloca %struct.gb_svc_intf_resume_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %intf_id, ptr %request, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %2 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection, align 4
  %call = call i32 @gb_operation_sync_timeout(ptr noundef %3, i32 noundef 40, ptr noundef nonnull %request, i32 noundef 1, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 3000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3.not = icmp eq i8 %5, 0
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = zext i8 %5 to i32
  %conv10 = zext i8 %intf_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.15, i32 noundef %conv10, i32 noundef %conv2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -121, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_dme_peer_get(ptr noundef %svc, i8 noundef zeroext %intf_id, i16 noundef zeroext %attr, i16 noundef zeroext %selector, ptr noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_dme_peer_get_request, align 1
  %response = alloca %struct.gb_svc_dme_peer_get_response, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_dme_peer_get_request, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_svc_dme_peer_get_request, ptr %request, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %response) #10
  %2 = ptrtoint ptr %response to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %response, align 2, !annotation !316
  %3 = getelementptr inbounds %struct.gb_svc_dme_peer_get_response, ptr %response, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %3, align 2, !annotation !316
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %intf_id, ptr %request, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %attr)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %0, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %selector)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %1, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %10 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %11, i32 noundef 9, ptr noundef nonnull %request, i32 noundef 5, ptr noundef nonnull %response, i32 noundef 6, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf_id to i32
  %conv4 = zext i16 %attr to i32
  %conv5 = zext i16 %selector to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %response to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %response, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool6.not = icmp eq i16 %13, 0
  br i1 %tobool6.not, label %if.end16, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv12 = zext i8 %intf_id to i32
  %conv13 = zext i16 %attr to i32
  %conv14 = zext i16 %selector to i32
  %conv15 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.20, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %tobool17.not = icmp eq ptr %value, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %3, align 2
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -121, %do.end10 ], [ 0, %if.then18 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_dme_peer_set(ptr noundef %svc, i8 noundef zeroext %intf_id, i16 noundef zeroext %attr, i16 noundef zeroext %selector, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_dme_peer_set_request, align 1
  %response = alloca %struct.gb_svc_dme_peer_set_response, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gb_svc_dme_peer_set_request, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %response) #10
  %3 = ptrtoint ptr %response to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %response, align 2, !annotation !316
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %intf_id, ptr %request, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %attr)
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %0, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %selector)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %1, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %value)
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %2, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %11 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %12, i32 noundef 10, ptr noundef nonnull %request, i32 noundef 9, ptr noundef nonnull %response, i32 noundef 2, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf_id to i32
  %conv5 = zext i16 %attr to i32
  %conv6 = zext i16 %selector to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %value, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %response to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %response, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool7.not = icmp eq i16 %14, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv13 = zext i8 %intf_id to i32
  %conv14 = zext i16 %attr to i32
  %conv15 = zext i16 %selector to i32
  %conv16 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.25, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %value, i32 noundef %conv16) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -121, %do.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_connection_create(ptr nocapture noundef readonly %svc, i8 noundef zeroext %intf1_id, i16 noundef zeroext %cport1_id, i8 noundef zeroext %intf2_id, i16 noundef zeroext %cport2_id, i8 noundef zeroext %cport_flags) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_conn_create_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_conn_create_request, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_svc_conn_create_request, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gb_svc_conn_create_request, ptr %request, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gb_svc_conn_create_request, ptr %request, i32 0, i32 4
  %4 = getelementptr inbounds %struct.gb_svc_conn_create_request, ptr %request, i32 0, i32 5
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %intf1_id, ptr %request, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %cport1_id)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %intf2_id, ptr %1, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %cport2_id)
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cport_flags, ptr %4, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %13 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %14, i32 noundef 7, ptr noundef nonnull %request, i32 noundef 8, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_svc_connection_destroy(ptr noundef %svc, i8 noundef zeroext %intf1_id, i16 noundef zeroext %cport1_id, i8 noundef zeroext %intf2_id, i16 noundef zeroext %cport2_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_conn_destroy_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gb_svc_conn_destroy_request, ptr %request, i32 0, i32 3
  %connection1 = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %3 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection1, align 4
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %intf1_id, ptr %request, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %cport1_id)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %intf2_id, ptr %1, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %cport2_id)
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %2, align 1
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %request, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf1_id to i32
  %conv6 = zext i16 %cport1_id to i32
  %conv7 = zext i8 %intf2_id to i32
  %conv8 = zext i16 %cport2_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %call.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %request) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_route_create(ptr nocapture noundef readonly %svc, i8 noundef zeroext %intf1_id, i8 noundef zeroext %dev1_id, i8 noundef zeroext %intf2_id, i8 noundef zeroext %dev2_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_route_create_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_route_create_request, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gb_svc_route_create_request, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gb_svc_route_create_request, ptr %request, i32 0, i32 3
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %intf1_id, ptr %request, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %dev1_id, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %intf2_id, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %dev2_id, ptr %2, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %7 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %8, i32 noundef 11, ptr noundef nonnull %request, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_svc_route_destroy(ptr noundef %svc, i8 noundef zeroext %intf1_id, i8 noundef zeroext %intf2_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_route_destroy_request, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.gb_svc_route_destroy_request, ptr %request, i32 0, i32 1
  %1 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %intf1_id, ptr %request, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %intf2_id, ptr %0, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %3 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %request, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf1_id to i32
  %conv3 = zext i8 %intf2_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %conv3, i32 noundef %call.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_set_power_mode(ptr noundef %svc, i8 noundef zeroext %intf_id, i8 noundef zeroext %hs_series, i8 noundef zeroext %tx_mode, i8 noundef zeroext %tx_gear, i8 noundef zeroext %tx_nlanes, i8 noundef zeroext %tx_amplitude, i8 noundef zeroext %tx_hs_equalizer, i8 noundef zeroext %rx_mode, i8 noundef zeroext %rx_gear, i8 noundef zeroext %rx_nlanes, i8 noundef zeroext %flags, i32 noundef %quirks, ptr noundef readonly %local, ptr noundef readonly %remote) #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_set_pwrm_request, align 1
  %response = alloca %struct.gb_svc_intf_set_pwrm_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = getelementptr inbounds i8, ptr %request, i32 15
  %2 = call ptr @memset(ptr %1, i32 0, i32 48)
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %intf_id, ptr %request, align 1
  %hs_series2 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 1
  %4 = ptrtoint ptr %hs_series2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %hs_series, ptr %hs_series2, align 1
  %tx_mode3 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 2
  %5 = ptrtoint ptr %tx_mode3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %tx_mode, ptr %tx_mode3, align 1
  %tx_gear4 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 3
  %6 = ptrtoint ptr %tx_gear4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %tx_gear, ptr %tx_gear4, align 1
  %tx_nlanes5 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 4
  %7 = ptrtoint ptr %tx_nlanes5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tx_nlanes, ptr %tx_nlanes5, align 1
  %tx_amplitude6 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 5
  %8 = ptrtoint ptr %tx_amplitude6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tx_amplitude, ptr %tx_amplitude6, align 1
  %tx_hs_equalizer7 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 6
  %9 = ptrtoint ptr %tx_hs_equalizer7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %tx_hs_equalizer, ptr %tx_hs_equalizer7, align 1
  %rx_mode8 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 7
  %10 = ptrtoint ptr %rx_mode8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %rx_mode, ptr %rx_mode8, align 1
  %rx_gear9 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 8
  %11 = ptrtoint ptr %rx_gear9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %rx_gear, ptr %rx_gear9, align 1
  %rx_nlanes10 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 9
  %12 = ptrtoint ptr %rx_nlanes10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %rx_nlanes, ptr %rx_nlanes10, align 1
  %flags11 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 10
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %flags, ptr %flags11, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %quirks)
  %quirks12 = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 11
  %15 = ptrtoint ptr %quirks12 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %quirks12, align 1
  %tobool.not = icmp eq ptr %local, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %local_l2timerdata = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 12
  %16 = call ptr @memcpy(ptr %local_l2timerdata, ptr %local, i32 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool13.not = icmp eq ptr %remote, null
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %remote_l2timerdata = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 13
  %17 = call ptr @memcpy(ptr %remote_l2timerdata, ptr %remote, i32 24)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %18 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %19, i32 noundef 16, ptr noundef nonnull %request, i32 noundef 63, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp20.not = icmp eq i8 %21, 1
  br i1 %cmp20.not, label %if.end17.cleanup_crit_edge, label %do.end

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.31, i32 noundef %conv19) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call.i, %if.end15.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_intf_set_power_mode_hibernate(ptr noundef %svc, i8 noundef zeroext %intf_id) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.gb_svc_intf_set_pwrm_request, align 1
  %response = alloca %struct.gb_svc_intf_set_pwrm_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %request) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response) #10
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %response, align 1, !annotation !316
  %1 = getelementptr inbounds i8, ptr %request, i32 3
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %intf_id, ptr %request, align 1
  %hs_series = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 1
  %4 = ptrtoint ptr %hs_series to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hs_series, align 1
  %tx_mode = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 2
  %5 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %tx_mode, align 1
  %rx_mode = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request, i32 0, i32 7
  %6 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 17, ptr %rx_mode, align 1
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %7 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connection, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %request, i32 noundef 63, ptr noundef nonnull %response, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %intf_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp5.not = icmp eq i8 %10, 0
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = zext i8 %10 to i32
  %conv12 = zext i8 %intf_id to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %svc, ptr noundef nonnull @.str.36, i32 noundef %conv12, i32 noundef %conv4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -5, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response) #10
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_ping(ptr nocapture noundef readonly %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %call = tail call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 19, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 2000) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_svc_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gb_connection_destroy(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device_id_map = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 4
  tail call void @ida_destroy(ptr noundef %device_id_map) #10
  %wq = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %dev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_svc_create(ptr noundef %hd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1024) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %hd, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hd, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end.dev_name.exit_crit_edge ]
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.39, i32 noundef 2, i32 noundef 1, ptr noundef %retval.0.i) #10
  %wq = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %wq, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end6:                                          ; preds = %dev_name.exit
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hd, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @greybus_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @greybus_svc_type, ptr %type, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %9 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @svc_groups, ptr %groups, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %hd, i32 0, i32 18
  %10 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_mask, align 8
  %dma_mask15 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %dma_mask15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dma_mask15, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #10
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 1
  %13 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_id, align 8
  %call18 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.40, i32 noundef %14) #10
  %device_id_map = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %device_id_map, ptr noundef nonnull @.str.60, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i, align 4
  %state = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state, align 8
  %hd19 = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %hd19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hd, ptr %hd19, align 8
  %call20 = tail call ptr @gb_connection_create_static(ptr noundef %hd, i16 noundef zeroext 0, ptr noundef nonnull @gb_svc_request_handler) #10
  %connection = getelementptr inbounds %struct.gb_svc, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %connection to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %connection, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.41, i32 noundef %20) #13
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call20, i32 0, i32 17
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end27 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create_static(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_svc_request_handler(ptr noundef %op) #0 align 64 {
entry:
  %response.i.i.i.i = alloca %struct.gb_svc_pwrmon_rail_count_get_response, align 1
  %fname.i.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %type2 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type2, align 4
  %conv = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.epilog [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %sw.bb20, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb4:                                           ; preds = %entry
  %state5 = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6.not = icmp eq i32 %10, 1
  br i1 %cmp6.not, label %sw.bb26, label %sw.bb4.do.end_crit_edge

sw.bb4.do.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.epilog:                                        ; preds = %entry
  %state10 = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp11.not = icmp eq i32 %12, 2
  br i1 %cmp11.not, label %if.end18, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %sw.bb4.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %state17 = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state17, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %14) #13
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %15 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %5, label %do.end45 [
    i8 42, label %sw.bb40
    i8 41, label %sw.bb38
    i8 6, label %sw.bb32
    i8 31, label %sw.bb34
    i8 32, label %sw.bb36
  ]

sw.bb20:                                          ; preds = %sw.bb
  %request2.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %16 = ptrtoint ptr %request2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request2.i, align 4
  %payload_size.i = getelementptr inbounds %struct.gb_message, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %payload_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp ult i32 %19, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %19, i32 noundef 2) #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb20
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %payload.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp6.not.i = icmp eq i8 %23, 0
  br i1 %cmp6.not.i, label %if.end15.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %conv.i, i32 noundef 0) #13
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  %protocol_major.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %protocol_major.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %protocol_major.i, align 1
  %minor.i = getelementptr inbounds %struct.gb_svc_version_request, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %minor.i, align 1
  %protocol_minor.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %protocol_minor.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %protocol_minor.i, align 8
  %call17.i = tail call zeroext i1 @gb_operation_response_alloc(ptr noundef %op, i32 noundef 2, i32 noundef 3264) #10
  br i1 %call17.i, label %if.then23, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %response20.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 2
  %28 = ptrtoint ptr %response20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %response20.i, align 4
  %payload21.i = getelementptr inbounds %struct.gb_message, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %payload21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %payload21.i, align 4
  %32 = ptrtoint ptr %protocol_major.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %protocol_major.i, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %31, align 1
  %35 = ptrtoint ptr %protocol_minor.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %protocol_minor.i, align 8
  %minor25.i = getelementptr inbounds %struct.gb_svc_version_response, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %minor25.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %minor25.i, align 1
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %state, align 8
  br label %cleanup

sw.bb26:                                          ; preds = %sw.bb4
  %request.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %39 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %request.i, align 4
  %payload_size.i80 = getelementptr inbounds %struct.gb_message, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %payload_size.i80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %payload_size.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp.i81 = icmp ult i32 %42, 3
  br i1 %cmp.i81, label %do.end.i82, label %if.end.i84

do.end.i82:                                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %42, i32 noundef 3) #13
  br label %cleanup

if.end.i84:                                       ; preds = %sw.bb26
  %payload.i83 = getelementptr inbounds %struct.gb_message, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %payload.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %payload.i83, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %44, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #10
  %endo_id5.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 6
  %48 = ptrtoint ptr %endo_id5.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %endo_id5.i, align 4
  %interface_id.i = getelementptr inbounds %struct.gb_svc_hello_request, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %interface_id.i, align 1
  %ap_intf_id.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 7
  %51 = ptrtoint ptr %ap_intf_id.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %ap_intf_id.i, align 2
  %call7.i = tail call i32 @device_add(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %do.end11.i85

do.end11.i85:                                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.74, i32 noundef %call7.i) #13
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i84
  %call14.i = tail call i32 @gb_svc_watchdog_create(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end21.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.77, i32 noundef %call14.i) #13
  tail call void @gb_svc_watchdog_destroy(ptr noundef %3) #10
  tail call void @device_del(ptr noundef %3) #10
  br label %cleanup

if.end21.i:                                       ; preds = %if.end13.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %52 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end21.i.dev_name.exit.i.i_crit_edge

if.end21.i.dev_name.exit.i.i_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end21.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %55, %if.end.i.i.i ], [ %53, %if.end21.i.dev_name.exit.i.i_crit_edge ]
  %call1.i.i = tail call ptr @gb_debugfs_get() #10
  %call2.i.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i, ptr noundef %call1.i.i) #10
  %debugfs_dentry.i.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 12
  %56 = ptrtoint ptr %debugfs_dentry.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call2.i.i, ptr %debugfs_dentry.i.i, align 4
  %call.i.i.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.79, ptr noundef %call2.i.i) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i, null
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %dev_name.exit.i.i.gb_svc_hello.exit_crit_edge, label %if.end.i5.i.i

dev_name.exit.i.i.gb_svc_hello.exit_crit_edge:    ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_svc_hello.exit

if.end.i5.i.i:                                    ; preds = %dev_name.exit.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response.i.i.i.i) #10
  %57 = ptrtoint ptr %response.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %response.i.i.i.i, align 1, !annotation !316
  %connection.i.i.i.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 2
  %58 = ptrtoint ptr %connection.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %connection.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %59, i32 noundef 20, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i.i.i.i, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i68.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i68.i.i.i, label %if.end4.i.i.i, label %gb_svc_pwrmon_rail_count_get.exit.i.i.i

gb_svc_pwrmon_rail_count_get.exit.i.i.i:          ; preds = %if.end.i5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %call.i.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i.i.i.i) #10
  br label %err_pwrmon_debugfs.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i5.i.i
  %60 = ptrtoint ptr %response.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %response.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i.i.i.i) #10
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %61, label %if.end8.i.i.i [
    i8 0, label %if.end4.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge
    i8 -1, label %if.end4.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge139
  ]

if.end4.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge139: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pwrmon_debugfs.i.i.i

if.end4.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pwrmon_debugfs.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %conv.i.i.i = zext i8 %61 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 5
  %add.i.i.i = or i32 %mul.i.i.i, 1
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3520) #15
  %tobool11.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %if.end8.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge, label %if.end7.i.i.i.i.i

if.end8.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pwrmon_debugfs.i.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.end8.i.i.i
  %63 = shl nuw nsw i32 %conv.i.i.i, 3
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3520) #15
  %pwrmon_rails.i.i.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 13
  %64 = ptrtoint ptr %pwrmon_rails.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call8.i.i.i.i.i, ptr %pwrmon_rails.i.i.i, align 8
  %tobool17.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %if.end7.i.i.i.i.i.err_pwrmon_debugfs_free.i.i.i_crit_edge, label %if.end19.i.i.i

if.end7.i.i.i.i.i.err_pwrmon_debugfs_free.i.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pwrmon_debugfs_free.i.i.i

if.end19.i.i.i:                                   ; preds = %if.end7.i.i.i.i.i
  %65 = ptrtoint ptr %connection.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %connection.i.i.i.i, align 4
  %call.i.i73.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %66, i32 noundef 21, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef %add.i.i.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73.i.i.i)
  %tobool.not.i74.i.i.i = icmp eq i32 %call.i.i73.i.i.i, 0
  br i1 %tobool.not.i74.i.i.i, label %if.end.i76.i.i.i, label %do.end.i75.i.i.i

do.end.i75.i.i.i:                                 ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.86, i32 noundef %call.i.i73.i.i.i) #13
  br label %err_pwrmon_debugfs_free.i.i.i

if.end.i76.i.i.i:                                 ; preds = %if.end19.i.i.i
  %67 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %call9.i.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp.not.i.i.i.i = icmp eq i8 %68, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i76.i.i.i.for.body.i.i.i_crit_edge, label %do.end5.i.i.i.i

if.end.i76.i.i.i.for.body.i.i.i_crit_edge:        ; preds = %if.end.i76.i.i.i
  br label %for.body.i.i.i

do.end5.i.i.i.i:                                  ; preds = %if.end.i76.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef %conv.i.i.i.i) #13
  br label %err_pwrmon_debugfs_free.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i76.i.i.i.for.body.i.i.i_crit_edge
  %i.088.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i76.i.i.i.for.body.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %pwrmon_rails.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pwrmon_rails.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.svc_debugfs_pwrmon_rail, ptr %70, i32 %i.088.i.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname.i.i.i) #10
  %arrayidx28.i.i.i = getelementptr %struct.gb_svc_pwrmon_rail_names_get_response, ptr %call9.i.i.i.i.i, i32 0, i32 1, i32 %i.088.i.i.i
  %71 = call ptr @memset(ptr %fname.i.i.i, i32 255, i32 32)
  %call29.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fname.i.i.i, i32 noundef 32, ptr noundef nonnull @.str.80, ptr noundef %arrayidx28.i.i.i) #10
  %conv30.i.i.i = trunc i32 %i.088.i.i.i to i8
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv30.i.i.i, ptr %arrayidx.i.i.i, align 4
  %svc31.i.i.i = getelementptr %struct.svc_debugfs_pwrmon_rail, ptr %70, i32 %i.088.i.i.i, i32 1
  %73 = ptrtoint ptr %svc31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %3, ptr %svc31.i.i.i, align 4
  %call33.i.i.i = call ptr @debugfs_create_dir(ptr noundef nonnull %fname.i.i.i, ptr noundef %call.i.i.i) #10
  %call34.i.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 292, ptr noundef %call33.i.i.i, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull @pwrmon_debugfs_voltage_fops) #10
  %call35.i.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 292, ptr noundef %call33.i.i.i, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull @pwrmon_debugfs_current_fops) #10
  %call36.i.i.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 292, ptr noundef %call33.i.i.i, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull @pwrmon_debugfs_power_fops) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i.i.i) #10
  %inc.i.i.i = add nuw nsw i32 %i.088.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #10
  br label %gb_svc_hello.exit

err_pwrmon_debugfs_free.i.i.i:                    ; preds = %do.end5.i.i.i.i, %do.end.i75.i.i.i, %if.end7.i.i.i.i.i.err_pwrmon_debugfs_free.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #10
  %74 = ptrtoint ptr %pwrmon_rails.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pwrmon_rails.i.i.i, align 8
  call void @kfree(ptr noundef %75) #10
  %76 = ptrtoint ptr %pwrmon_rails.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %pwrmon_rails.i.i.i, align 8
  br label %err_pwrmon_debugfs.i.i.i

err_pwrmon_debugfs.i.i.i:                         ; preds = %err_pwrmon_debugfs_free.i.i.i, %if.end8.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge, %if.end4.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge, %if.end4.i.i.i.err_pwrmon_debugfs.i.i.i_crit_edge139, %gb_svc_pwrmon_rail_count_get.exit.i.i.i
  call void @debugfs_remove(ptr noundef nonnull %call.i.i.i) #10
  br label %gb_svc_hello.exit

gb_svc_hello.exit:                                ; preds = %err_pwrmon_debugfs.i.i.i, %for.end.i.i.i, %dev_name.exit.i.i.gb_svc_hello.exit_crit_edge
  %call22.i = call fastcc i32 @gb_svc_queue_deferred_request(ptr noundef %op) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool28.not = icmp eq i32 %call22.i, 0
  br i1 %tobool28.not, label %if.then29, label %gb_svc_hello.exit.cleanup_crit_edge

gb_svc_hello.exit.cleanup_crit_edge:              ; preds = %gb_svc_hello.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %gb_svc_hello.exit
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %state5, align 8
  br label %cleanup

sw.bb32:                                          ; preds = %if.end18
  %request1.i = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %78 = ptrtoint ptr %request1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %request1.i, align 4
  %payload_size.i87 = getelementptr inbounds %struct.gb_message, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %payload_size.i87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %payload_size.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i88 = icmp eq i32 %81, 0
  br i1 %cmp.i88, label %do.end.i90, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i90:                                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.129, i32 noundef 0, i32 noundef 1) #13
  br label %cleanup

sw.bb34:                                          ; preds = %if.end18
  %request1.i93 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %82 = ptrtoint ptr %request1.i93 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %request1.i93, align 4
  %payload_size.i94 = getelementptr inbounds %struct.gb_message, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %payload_size.i94 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %payload_size.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %cmp.i95 = icmp ult i32 %85, 4
  br i1 %cmp.i95, label %do.end.i96, label %if.end.i98

do.end.i96:                                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.131, i32 noundef %85, i32 noundef 4) #13
  br label %cleanup

if.end.i98:                                       ; preds = %sw.bb34
  %payload.i97 = getelementptr inbounds %struct.gb_message, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %payload.i97 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %payload.i97, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_svc_module_inserted_recv.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_svc_request_handler, %if.then9.i)) #10
          to label %do.end13.i [label %if.then9.i], !srcloc !317

if.then9.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv.i99 = zext i8 %89 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_svc_module_inserted_recv.__UNIQUE_ID_ddebug232, ptr noundef %3, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.132, i32 noundef %conv.i99) #10
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then9.i, %if.end.i98
  %call14.i100 = tail call fastcc i32 @gb_svc_queue_deferred_request(ptr noundef %op) #10
  br label %cleanup

sw.bb36:                                          ; preds = %if.end18
  %request1.i103 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %90 = ptrtoint ptr %request1.i103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %request1.i103, align 4
  %payload_size.i104 = getelementptr inbounds %struct.gb_message, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %payload_size.i104 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %payload_size.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i105 = icmp eq i32 %93, 0
  br i1 %cmp.i105, label %do.end.i106, label %if.end.i108

do.end.i106:                                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.133, i32 noundef 0, i32 noundef 1) #13
  br label %cleanup

if.end.i108:                                      ; preds = %sw.bb36
  %payload.i107 = getelementptr inbounds %struct.gb_message, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %payload.i107 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %payload.i107, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_svc_module_removed_recv.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_svc_request_handler, %if.then9.i110)) #10
          to label %do.end13.i112 [label %if.then9.i110], !srcloc !317

if.then9.i110:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  %conv.i109 = zext i8 %97 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_svc_module_removed_recv.__UNIQUE_ID_ddebug233, ptr noundef %3, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.134, i32 noundef %conv.i109) #10
  br label %do.end13.i112

do.end13.i112:                                    ; preds = %if.then9.i110, %if.end.i108
  %call14.i111 = tail call fastcc i32 @gb_svc_queue_deferred_request(ptr noundef %op) #10
  br label %cleanup

sw.bb38:                                          ; preds = %if.end18
  %request1.i115 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %98 = ptrtoint ptr %request1.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %request1.i115, align 4
  %payload_size.i116 = getelementptr inbounds %struct.gb_message, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %payload_size.i116 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %payload_size.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %101)
  %cmp.i117 = icmp ult i32 %101, 7
  br i1 %cmp.i117, label %do.end.i118, label %if.end.i120

do.end.i118:                                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.135, i32 noundef %101, i32 noundef 7) #13
  br label %cleanup

if.end.i120:                                      ; preds = %sw.bb38
  %payload.i119 = getelementptr inbounds %struct.gb_message, ptr %99, i32 0, i32 2
  %102 = ptrtoint ptr %payload.i119 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %payload.i119, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_svc_intf_mailbox_event_recv.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_svc_request_handler, %if.then9.i122)) #10
          to label %do.end13.i124 [label %if.then9.i122], !srcloc !317

if.then9.i122:                                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %103, align 1
  %conv.i121 = zext i8 %105 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_svc_intf_mailbox_event_recv.__UNIQUE_ID_ddebug234, ptr noundef %3, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.136, i32 noundef %conv.i121) #10
  br label %do.end13.i124

do.end13.i124:                                    ; preds = %if.then9.i122, %if.end.i120
  %call14.i123 = tail call fastcc i32 @gb_svc_queue_deferred_request(ptr noundef %op) #10
  br label %cleanup

sw.bb40:                                          ; preds = %if.end18
  %request1.i126 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %106 = ptrtoint ptr %request1.i126 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %request1.i126, align 4
  %payload_size.i127 = getelementptr inbounds %struct.gb_message, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %payload_size.i127 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %payload_size.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp.i128 = icmp ult i32 %109, 2
  br i1 %cmp.i128, label %do.end.i130, label %if.end.i131

do.end.i130:                                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.137, i32 noundef %109, i32 noundef 2) #13
  br label %cleanup

if.end.i131:                                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call fastcc i32 @gb_svc_queue_deferred_request(ptr noundef %op) #10
  br label %cleanup

do.end45:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end.i131, %do.end.i130, %do.end13.i124, %do.end.i118, %do.end13.i112, %do.end.i106, %do.end13.i, %do.end.i96, %do.end.i90, %sw.bb32.cleanup_crit_edge, %if.then29, %gb_svc_hello.exit.cleanup_crit_edge, %do.end19.i, %do.end11.i85, %do.end.i82, %if.then23, %if.end15.i.cleanup_crit_edge, %do.end11.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end45 ], [ 0, %if.then23 ], [ 0, %if.then29 ], [ %call22.i, %gb_svc_hello.exit.cleanup_crit_edge ], [ -22, %do.end.i90 ], [ 0, %sw.bb32.cleanup_crit_edge ], [ -22, %do.end.i96 ], [ %call14.i100, %do.end13.i ], [ -22, %do.end.i106 ], [ %call14.i111, %do.end13.i112 ], [ -22, %do.end.i118 ], [ %call14.i123, %do.end13.i124 ], [ -22, %do.end.i130 ], [ %call4.i, %if.end.i131 ], [ -12, %if.end15.i.cleanup_crit_edge ], [ -524, %do.end11.i ], [ -22, %do.end.i ], [ %call14.i, %do.end19.i ], [ %call7.i, %do.end11.i85 ], [ -22, %do.end.i82 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_svc_add(ptr nocapture noundef readonly %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %call = tail call i32 @gb_connection_enable(ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_svc_del(ptr noundef %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_disable_rx(ptr noundef %1) #10
  %state_in_sysfs.i = getelementptr inbounds %struct.kobject, ptr %svc, i32 0, i32 8
  %2 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %debugfs_dentry.i = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 12
  %4 = ptrtoint ptr %debugfs_dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #10
  %pwrmon_rails.i = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 13
  %6 = ptrtoint ptr %pwrmon_rails.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrmon_rails.i, align 8
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %pwrmon_rails.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pwrmon_rails.i, align 8
  tail call void @gb_svc_watchdog_destroy(ptr noundef %svc) #10
  tail call void @device_del(ptr noundef %svc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wq = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 5
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 8
  tail call void @flush_workqueue(ptr noundef %10) #10
  %hd1.i = getelementptr inbounds %struct.gb_svc, ptr %svc, i32 0, i32 1
  %11 = ptrtoint ptr %hd1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hd1.i, align 8
  %modules.i = getelementptr inbounds %struct.gb_host_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %modules.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %modules.i, align 8
  %cmp.not22.i = icmp eq ptr %14, %modules.i
  br i1 %cmp.not22.i, label %if.end.gb_svc_remove_modules.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.gb_svc_remove_modules.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_svc_remove_modules.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %14, %if.end.for.body.i_crit_edge ]
  %module.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -932
  %15 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 4
  tail call void @gb_module_del(ptr noundef %module.0.i) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @gb_module_put(ptr noundef %module.0.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %modules.i
  br i1 %cmp.not.i, label %list_del.exit.i.gb_svc_remove_modules.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.gb_svc_remove_modules.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_svc_remove_modules.exit

gb_svc_remove_modules.exit:                       ; preds = %list_del.exit.i.gb_svc_remove_modules.exit_crit_edge, %if.end.gb_svc_remove_modules.exit_crit_edge
  %24 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_disable(ptr noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_svc_watchdog_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_svc_put(ptr noundef %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %svc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @endo_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %endo_id = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %endo_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %endo_id, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_intf_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ap_intf_id = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %ap_intf_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ap_intf_id, align 2
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intf_eject_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_svc_intf_eject_request, align 1
  %intf_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %intf_id) #10
  %0 = ptrtoint ptr %intf_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %intf_id, align 2, !annotation !316
  %call = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %intf_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %intf_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %intf_id, align 2
  %conv = zext i16 %2 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %conv) #13
  %3 = ptrtoint ptr %intf_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %intf_id, align 2
  %conv1 = trunc i16 %4 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %request.i) #10
  %5 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %request.i, align 1
  %connection.i = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connection.i, align 4
  %call.i = call i32 @gb_operation_sync_timeout(ptr noundef %7, i32 noundef 17, ptr noundef nonnull %request.i, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 9000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.gb_svc_intf_eject.exit_crit_edge, label %do.end.i

do.end.gb_svc_intf_eject.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_svc_intf_eject.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.mask = and i16 %4, 255
  %conv.i = zext i16 %conv1.mask to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv.i) #13
  br label %gb_svc_intf_eject.exit

gb_svc_intf_eject.exit:                           ; preds = %do.end.i, %do.end.gb_svc_intf_eject.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %request.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  %call2.len = select i1 %cmp3, i32 %call.i, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %gb_svc_intf_eject.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2.len, %gb_svc_intf_eject.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %intf_id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @gb_svc_watchdog_enabled(ptr noundef %dev) #10
  %cond = select i1 %call, ptr @.str.53, ptr @.str.54
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %user_request = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %user_request) #10
  %0 = ptrtoint ptr %user_request to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %user_request, align 1, !annotation !316
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %user_request) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %user_request to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %user_request, align 1, !range !318
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 @gb_svc_watchdog_enable(ptr noundef %dev) #10
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i32 @gb_svc_watchdog_disable(ptr noundef %dev) #10
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %retval1.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool7.not = icmp eq i32 %retval1.0, 0
  %len.retval1.0 = select i1 %tobool7.not, i32 %len, i32 %retval1.0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %len.retval1.0, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %user_request) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gb_svc_watchdog_enabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_watchdog_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_watchdog_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @watchdog_action_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.56, i32 7)
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.57, i32 7)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %if.then ], [ 6, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_action_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.58) #10
  br i1 %call, label %entry.cleanup.sink.split_crit_edge, label %if.else

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.59) #10
  br i1 %call1, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.else.cleanup.sink.split_crit_edge ]
  %action = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %action, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %len, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gb_operation_response_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_svc_watchdog_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_svc_queue_deferred_request(ptr noundef %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 48) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gb_operation_get(ptr noundef %operation) #10
  %operation2 = getelementptr inbounds %struct.gb_svc_deferred_request, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %operation2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %operation, ptr %operation2, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #10
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.102, ptr noundef nonnull @gb_svc_queue_deferred_request.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry6 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry6, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gb_svc_process_deferred_request, ptr %func, align 4
  %wq = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_debugfs_get() local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_debugfs_voltage_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %offset) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_svc_pwrmon_sample_get_request, align 1
  %response.i = alloca %struct.gb_svc_pwrmon_sample_get_response, align 1
  %buff = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %svc1 = getelementptr inbounds %struct.svc_debugfs_pwrmon_rail, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buff) #10
  %6 = call ptr @memset(ptr %buff, i32 255, i32 16)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #10
  %9 = getelementptr inbounds %struct.gb_svc_pwrmon_sample_get_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %response.i) #10
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %response.i, align 1, !annotation !316
  %11 = getelementptr inbounds %struct.gb_svc_pwrmon_sample_get_response, ptr %response.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 -1, ptr %11, align 1, !annotation !316
  %13 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %8, ptr %request.i, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %9, align 1
  %connection.i = getelementptr inbounds %struct.gb_svc, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %16, i32 noundef 22, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef nonnull %response.i, i32 noundef 5, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.93, i32 noundef %call.i.i) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %17 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %8 to i32
  %conv11.i = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.96, i32 noundef %conv.i, i32 noundef 2, i32 noundef %conv11.i) #13
  %19 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %switch.selectcmp.i = icmp eq i8 %20, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %switch.selectcmp24.i = icmp eq i8 %20, 1
  %switch.select25.i = select i1 %switch.selectcmp24.i, i32 -22, i32 %switch.select.i
  br label %do.end

do.end:                                           ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %switch.select25.i, %do.end7.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 4
  %conv = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.91, i32 noundef %conv, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %11, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buff, i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef %25) #10
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %offset, ptr noundef nonnull %buff, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buff) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_debugfs_current_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %offset) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_svc_pwrmon_sample_get_request, align 1
  %response.i = alloca %struct.gb_svc_pwrmon_sample_get_response, align 1
  %buff = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %svc1 = getelementptr inbounds %struct.svc_debugfs_pwrmon_rail, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buff) #10
  %6 = call ptr @memset(ptr %buff, i32 255, i32 16)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #10
  %9 = getelementptr inbounds %struct.gb_svc_pwrmon_sample_get_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %response.i) #10
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %response.i, align 1, !annotation !316
  %11 = getelementptr inbounds %struct.gb_svc_pwrmon_sample_get_response, ptr %response.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 -1, ptr %11, align 1, !annotation !316
  %13 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %8, ptr %request.i, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %9, align 1
  %connection.i = getelementptr inbounds %struct.gb_svc, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %16, i32 noundef 22, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef nonnull %response.i, i32 noundef 5, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.93, i32 noundef %call.i.i) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %17 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %8 to i32
  %conv11.i = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.96, i32 noundef %conv.i, i32 noundef 1, i32 noundef %conv11.i) #13
  %19 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %switch.selectcmp.i = icmp eq i8 %20, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %switch.selectcmp24.i = icmp eq i8 %20, 1
  %switch.select25.i = select i1 %switch.selectcmp24.i, i32 -22, i32 %switch.select.i
  br label %do.end

do.end:                                           ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %switch.select25.i, %do.end7.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 4
  %conv = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.98, i32 noundef %conv, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %11, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buff, i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef %25) #10
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %offset, ptr noundef nonnull %buff, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buff) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwr_debugfs_power_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %offset) #0 align 64 {
entry:
  %request.i = alloca %struct.gb_svc_pwrmon_sample_get_request, align 1
  %response.i = alloca %struct.gb_svc_pwrmon_sample_get_response, align 1
  %buff = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %svc1 = getelementptr inbounds %struct.svc_debugfs_pwrmon_rail, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %svc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %svc1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buff) #10
  %6 = call ptr @memset(ptr %buff, i32 255, i32 16)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %request.i) #10
  %9 = getelementptr inbounds %struct.gb_svc_pwrmon_sample_get_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %response.i) #10
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %response.i, align 1, !annotation !316
  %11 = getelementptr inbounds %struct.gb_svc_pwrmon_sample_get_response, ptr %response.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 -1, ptr %11, align 1, !annotation !316
  %13 = ptrtoint ptr %request.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %8, ptr %request.i, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %9, align 1
  %connection.i = getelementptr inbounds %struct.gb_svc, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection.i, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %16, i32 noundef 22, ptr noundef nonnull %request.i, i32 noundef 2, ptr noundef nonnull %response.i, i32 noundef 5, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.93, i32 noundef %call.i.i) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %17 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %8 to i32
  %conv11.i = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.96, i32 noundef %conv.i, i32 noundef 3, i32 noundef %conv11.i) #13
  %19 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %switch.selectcmp.i = icmp eq i8 %20, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -42, i32 -121
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %switch.selectcmp24.i = icmp eq i8 %20, 1
  %switch.select25.i = select i1 %switch.selectcmp24.i, i32 -22, i32 %switch.select.i
  br label %do.end

do.end:                                           ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %switch.select25.i, %do.end7.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 4
  %conv = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.100, i32 noundef %conv, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %11, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %response.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %request.i) #10
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buff, i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef %25) #10
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %offset, ptr noundef nonnull %buff, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buff) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_svc_process_deferred_request(ptr noundef %work) #0 align 64 {
entry:
  %request.i.i = alloca %struct.gb_svc_intf_set_pwrm_request, align 1
  %response.i.i = alloca %struct.gb_svc_intf_set_pwrm_response, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %operation1 = getelementptr inbounds %struct.gb_svc_deferred_request, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %operation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %request = getelementptr inbounds %struct.gb_operation, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request, align 4
  %header = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %header, align 4
  %type2 = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %type2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type2, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %11, label %do.end [
    i8 2, label %sw.bb
    i8 31, label %sw.bb3
    i8 32, label %sw.bb4
    i8 41, label %sw.bb5
    i8 42, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %ap_intf_id.i = getelementptr inbounds %struct.gb_svc, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %ap_intf_id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ap_intf_id.i, align 2
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %request.i.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %response.i.i) #10
  %15 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %response.i.i, align 1, !annotation !316
  %16 = getelementptr inbounds i8, ptr %request.i.i, i32 15
  %17 = call ptr @memset(ptr %16, i32 0, i32 48)
  %18 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %14, ptr %request.i.i, align 1
  %hs_series2.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %hs_series2.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %hs_series2.i.i, align 1
  %tx_mode3.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %tx_mode3.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %tx_mode3.i.i, align 1
  %tx_gear4.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %tx_gear4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %tx_gear4.i.i, align 1
  %tx_nlanes5.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %tx_nlanes5.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %tx_nlanes5.i.i, align 1
  %tx_amplitude6.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %tx_amplitude6.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %tx_amplitude6.i.i, align 1
  %tx_hs_equalizer7.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %tx_hs_equalizer7.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %tx_hs_equalizer7.i.i, align 1
  %rx_mode8.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %rx_mode8.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %rx_mode8.i.i, align 1
  %rx_gear9.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %rx_gear9.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %rx_gear9.i.i, align 1
  %rx_nlanes10.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %rx_nlanes10.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rx_nlanes10.i.i, align 1
  %flags11.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %flags11.i.i, align 1
  %quirks12.i.i = getelementptr inbounds %struct.gb_svc_intf_set_pwrm_request, ptr %request.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %quirks12.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %quirks12.i.i, align 1
  %connection.i.i = getelementptr inbounds %struct.gb_svc, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %connection.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %connection.i.i, align 4
  %call.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %31, i32 noundef 16, ptr noundef nonnull %request.i.i, i32 noundef 63, ptr noundef nonnull %response.i.i, i32 noundef 1, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.do.end.i_crit_edge, label %if.end17.i.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end17.i.i:                                     ; preds = %sw.bb
  %32 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %response.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp20.not.i.i = icmp eq i8 %33, 1
  br i1 %cmp20.not.i.i, label %gb_svc_intf_set_power_mode.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv19.i.i = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.31, i32 noundef %conv19.i.i) #13
  br label %do.end.i

gb_svc_intf_set_power_mode.exit.i:                ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i.i) #10
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %request.i.i) #10
  br label %sw.epilog

do.end.i:                                         ; preds = %do.end.i.i, %sw.bb.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %sw.bb.do.end.i_crit_edge ], [ -5, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %response.i.i) #10
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %request.i.i) #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.105, i32 noundef %retval.0.i.ph.i) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gb_svc_process_module_inserted(ptr noundef %1)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gb_svc_process_module_removed(ptr noundef %1)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gb_svc_process_intf_mailbox_event(ptr noundef %1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 2
  %34 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %payload.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %reason4.i = getelementptr inbounds %struct.gb_svc_intf_oops_request, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %reason4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reason4.i, align 1
  %hd1.i.i = getelementptr inbounds %struct.gb_svc, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %hd1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hd1.i.i, align 8
  %modules.i.i = getelementptr inbounds %struct.gb_host_device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %modules.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn32.i.i = load ptr, ptr %modules.i.i, align 4
  %cmp.not33.i.i = icmp eq ptr %.pn32.i.i, %modules.i.i
  %.pre.i = zext i8 %37 to i32
  br i1 %cmp.not33.i.i, label %sw.bb6.do.end.i18_crit_edge, label %sw.bb6.for.body.i.i_crit_edge

sw.bb6.for.body.i.i_crit_edge:                    ; preds = %sw.bb6
  br label %for.body.i.i

sw.bb6.do.end.i18_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i18

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb6.for.body.i.i_crit_edge
  %.pn34.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn32.i.i, %sw.bb6.for.body.i.i_crit_edge ]
  %module_id3.i.i = getelementptr i8, ptr %.pn34.i.i, i32 8
  %43 = ptrtoint ptr %module_id3.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %module_id3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %37)
  %cmp6.not.i.i = icmp ugt i8 %44, %37
  br i1 %cmp6.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %conv5.i.i = zext i8 %44 to i32
  %num_interfaces4.i.i = getelementptr i8, ptr %.pn34.i.i, i32 12
  %45 = ptrtoint ptr %num_interfaces4.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_interfaces4.i.i, align 8
  %add.i.i = add i32 %46, %conv5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %.pre.i)
  %cmp10.i.i = icmp ugt i32 %add.i.i, %.pre.i
  br i1 %cmp10.i.i, label %gb_svc_interface_lookup.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %47 = ptrtoint ptr %.pn34.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i.i = load ptr, ptr %.pn34.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %modules.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i18_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.do.end.i18_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i18

gb_svc_interface_lookup.exit.i:                   ; preds = %land.lhs.true.i.i
  %conv5.i.i.le = zext i8 %44 to i32
  %interfaces.i.i = getelementptr i8, ptr %.pn34.i.i, i32 20
  %sub.i.i = sub nsw i32 %.pre.i, %conv5.i.i.le
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %interfaces.i.i, i32 0, i32 %sub.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %gb_svc_interface_lookup.exit.i.do.end.i18_crit_edge, label %do.end8.i

gb_svc_interface_lookup.exit.i.do.end.i18_crit_edge: ; preds = %gb_svc_interface_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i18

do.end.i18:                                       ; preds = %gb_svc_interface_lookup.exit.i.do.end.i18_crit_edge, %for.inc.i.i.do.end.i18_crit_edge, %sw.bb6.do.end.i18_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.123, i32 noundef %.pre.i) #13
  br label %sw.epilog

do.end8.i:                                        ; preds = %gb_svc_interface_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv11.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.126, i32 noundef %.pre.i, i32 noundef %conv11.i) #13
  %mutex.i = getelementptr inbounds %struct.gb_interface, ptr %49, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %disconnected.i = getelementptr inbounds %struct.gb_interface, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %disconnected.i, align 8
  tail call void @gb_interface_disable(ptr noundef nonnull %49) #10
  tail call void @gb_interface_deactivate(ptr noundef nonnull %49) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.103, i32 noundef %conv) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.end8.i, %do.end.i18, %sw.bb5, %sw.bb4, %sw.bb3, %do.end.i, %gb_svc_intf_set_power_mode.exit.i
  call void @gb_operation_put(ptr noundef %1) #10
  call void @kfree(ptr noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_svc_process_module_inserted(ptr nocapture noundef readonly %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %hd2 = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hd2, align 8
  %request3 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %6 = ptrtoint ptr %request3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request3, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %payload, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %intf_count = getelementptr inbounds %struct.gb_svc_module_inserted_request, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %intf_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %intf_count, align 1
  %conv = zext i8 %13 to i32
  %flags4 = getelementptr inbounds %struct.gb_svc_module_inserted_request, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %flags4 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %flags4, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_svc_process_module_inserted.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_svc_process_module_inserted, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv8 = zext i8 %11 to i32
  %conv9 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_svc_process_module_inserted.__UNIQUE_ID_ddebug229, ptr noundef %3, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, i32 noundef %conv8, i32 noundef %conv, i32 noundef %conv9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool11.not = icmp eq i16 %17, 0
  br i1 %tobool11.not, label %do.end.if.end18_crit_edge, label %do.end15

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv17 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef %conv17) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %18 = ptrtoint ptr %hd2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hd2, align 8
  %modules.i = getelementptr inbounds %struct.gb_host_device, ptr %19, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end18
  %.pn.in.i = phi ptr [ %modules.i, %if.end18 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %modules.i
  br i1 %cmp.not.i, label %for.cond.i.if.end27_crit_edge, label %for.body.i

for.cond.i.if.end27_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.body.i:                                       ; preds = %for.cond.i
  %module_id3.i = getelementptr i8, ptr %.pn.i, i32 8
  %21 = ptrtoint ptr %module_id3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %module_id3.i, align 4
  %cmp5.i = icmp eq i8 %22, %11
  br i1 %cmp5.i, label %gb_svc_module_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gb_svc_module_lookup.exit:                        ; preds = %for.body.i
  %module.0.le.i = getelementptr i8, ptr %.pn.i, i32 -932
  %tobool20.not = icmp eq ptr %module.0.le.i, null
  br i1 %tobool20.not, label %gb_svc_module_lookup.exit.if.end27_crit_edge, label %do.end24

gb_svc_module_lookup.exit.if.end27_crit_edge:     ; preds = %gb_svc_module_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end24:                                         ; preds = %gb_svc_module_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.112, i32 noundef %conv26) #13
  br label %cleanup

if.end27:                                         ; preds = %gb_svc_module_lookup.exit.if.end27_crit_edge, %for.cond.i.if.end27_crit_edge
  %call28 = tail call ptr @gb_module_create(ptr noundef %5, i8 noundef zeroext %11, i32 noundef %conv) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.115) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %call36 = tail call i32 @gb_module_add(ptr noundef nonnull %call28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gb_module_put(ptr noundef nonnull %call28) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %hd_node = getelementptr inbounds %struct.gb_module, ptr %call28, i32 0, i32 2
  %modules = getelementptr inbounds %struct.gb_host_device, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %modules, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hd_node, ptr noundef %modules, ptr noundef %24) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %hd_node, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %hd_node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %hd_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.gb_module, ptr %call28, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %modules, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %modules to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hd_node, ptr %modules, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end39.cleanup_crit_edge, %if.then38, %do.end33, %do.end24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_svc_process_module_removed(ptr nocapture noundef readonly %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %4 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request2, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_svc_process_module_removed.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_svc_process_module_removed, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_svc_process_module_removed.__UNIQUE_ID_ddebug230, ptr noundef %3, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hd1.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %hd1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hd1.i, align 8
  %modules.i = getelementptr inbounds %struct.gb_host_device, ptr %11, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %.pn.in.i = phi ptr [ %modules.i, %do.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %modules.i
  br i1 %cmp.not.i, label %for.cond.i.do.end11_crit_edge, label %for.body.i

for.cond.i.do.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

for.body.i:                                       ; preds = %for.cond.i
  %module_id3.i = getelementptr i8, ptr %.pn.i, i32 8
  %13 = ptrtoint ptr %module_id3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %module_id3.i, align 4
  %cmp5.i = icmp eq i8 %14, %9
  br i1 %cmp5.i, label %gb_svc_module_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gb_svc_module_lookup.exit:                        ; preds = %for.body.i
  %module.0.le.i = getelementptr i8, ptr %.pn.i, i32 -932
  %tobool7.not = icmp eq ptr %module.0.le.i, null
  br i1 %tobool7.not, label %gb_svc_module_lookup.exit.do.end11_crit_edge, label %if.end14

gb_svc_module_lookup.exit.do.end11_crit_edge:     ; preds = %gb_svc_module_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end11:                                         ; preds = %gb_svc_module_lookup.exit.do.end11_crit_edge, %for.cond.i.do.end11_crit_edge
  %conv13 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.119, i32 noundef %conv13) #13
  br label %cleanup

if.end14:                                         ; preds = %gb_svc_module_lookup.exit
  %disconnected = getelementptr i8, ptr %.pn.i, i32 16
  %15 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %disconnected, align 4
  tail call void @gb_module_del(ptr noundef nonnull %module.0.le.i) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @gb_module_put(ptr noundef nonnull %module.0.le.i) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_svc_process_intf_mailbox_event(ptr nocapture noundef readonly %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %4 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request2, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %result_code4 = getelementptr inbounds %struct.gb_svc_intf_mailbox_event_request, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %result_code4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %result_code4, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %mailbox5 = getelementptr inbounds %struct.gb_svc_intf_mailbox_event_request, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %mailbox5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %mailbox5, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_svc_process_intf_mailbox_event.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_svc_process_intf_mailbox_event, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !317

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %9 to i32
  %conv9 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_svc_process_intf_mailbox_event.__UNIQUE_ID_ddebug231, ptr noundef %3, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120, i32 noundef %conv, i32 noundef %conv9, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hd1.i = getelementptr inbounds %struct.gb_svc, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %hd1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hd1.i, align 8
  %modules.i = getelementptr inbounds %struct.gb_host_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %modules.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn32.i = load ptr, ptr %modules.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn32.i, %modules.i
  %.pre = zext i8 %9 to i32
  br i1 %cmp.not33.i, label %do.end.do.end15_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.do.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %.pn34.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn32.i, %do.end.for.body.i_crit_edge ]
  %module_id3.i = getelementptr i8, ptr %.pn34.i, i32 8
  %19 = ptrtoint ptr %module_id3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %module_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %9)
  %cmp6.not.i = icmp ugt i8 %20, %9
  br i1 %cmp6.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %conv5.i = zext i8 %20 to i32
  %num_interfaces4.i = getelementptr i8, ptr %.pn34.i, i32 12
  %21 = ptrtoint ptr %num_interfaces4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_interfaces4.i, align 8
  %add.i = add i32 %22, %conv5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %.pre)
  %cmp10.i = icmp ugt i32 %add.i, %.pre
  br i1 %cmp10.i, label %gb_svc_interface_lookup.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %modules.i
  br i1 %cmp.not.i, label %for.inc.i.do.end15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

gb_svc_interface_lookup.exit:                     ; preds = %land.lhs.true.i
  %conv5.i.le = zext i8 %20 to i32
  %interfaces.i = getelementptr i8, ptr %.pn34.i, i32 20
  %sub.i = sub nsw i32 %.pre, %conv5.i.le
  %arrayidx.i = getelementptr [0 x ptr], ptr %interfaces.i, i32 0, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %gb_svc_interface_lookup.exit.do.end15_crit_edge, label %if.end18

gb_svc_interface_lookup.exit.do.end15_crit_edge:  ; preds = %gb_svc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end15:                                         ; preds = %gb_svc_interface_lookup.exit.do.end15_crit_edge, %for.inc.i.do.end15_crit_edge, %do.end.do.end15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.122, i32 noundef %.pre) #13
  br label %cleanup

if.end18:                                         ; preds = %gb_svc_interface_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gb_interface_mailbox_event(ptr noundef nonnull %25, i16 noundef zeroext %12, i32 noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_module_create(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_module_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_module_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_interface_mailbox_event(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_interface_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_interface_deactivate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !93, !95, !96, !98, !100, !101, !103, !105, !106, !108, !109, !110, !111, !112, !114, !115, !117, !119, !121, !123, !124, !126, !128, !130, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !210, !211, !212, !213, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !286, !288, !290, !291, !292, !293, !295, !297, !298, !299, !300, !302, !304, !305, !306}
!llvm.module.flags = !{!307, !308, !309, !310, !311, !312, !313, !314}
!llvm.ident = !{!315}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/greybus/svc.c", i32 224, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_svc_pwrmon_intf_sample_get._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_svc_pwrmon_intf_sample_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/greybus/svc.c", i32 229, i32 3}
!10 = !{ptr @gb_svc_pwrmon_intf_sample_get._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gb_svc_pwrmon_intf_sample_get._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/greybus/svc.c", i32 284, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gb_svc_intf_eject._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @gb_svc_intf_eject._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/greybus/svc.c", i32 376, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gb_svc_intf_activate._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @gb_svc_intf_activate._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/greybus/svc.c", i32 400, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gb_svc_intf_resume._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @gb_svc_intf_resume._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/greybus/svc.c", i32 406, i32 3}
!29 = !{ptr @gb_svc_intf_resume._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gb_svc_intf_resume._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/greybus/svc.c", i32 430, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gb_svc_dme_peer_get._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @gb_svc_dme_peer_get._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/greybus/svc.c", i32 437, i32 3}
!38 = !{ptr @gb_svc_dme_peer_get._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gb_svc_dme_peer_get._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/greybus/svc.c", i32 465, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gb_svc_dme_peer_set._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @gb_svc_dme_peer_set._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/greybus/svc.c", i32 472, i32 3}
!47 = !{ptr @gb_svc_dme_peer_set._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gb_svc_dme_peer_set._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/greybus/svc.c", i32 513, i32 3}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @gb_svc_connection_destroy._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @gb_svc_connection_destroy._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/greybus/svc.c", i32 545, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gb_svc_route_destroy._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @gb_svc_route_destroy._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/greybus/svc.c", i32 590, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gb_svc_intf_set_power_mode._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @gb_svc_intf_set_power_mode._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @__ksymtab_gb_svc_intf_set_power_mode, !65, !"__ksymtab_gb_svc_intf_set_power_mode", i1 false, i1 false}
!65 = !{!"../drivers/greybus/svc.c", i32 596, i32 1}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/greybus/svc.c", i32 616, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gb_svc_intf_set_power_mode_hibernate._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @gb_svc_intf_set_power_mode_hibernate._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/greybus/svc.c", i32 624, i32 3}
!73 = !{ptr @gb_svc_intf_set_power_mode_hibernate._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @gb_svc_intf_set_power_mode_hibernate._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/greybus/svc.c", i32 1298, i32 11}
!77 = !{ptr @greybus_svc_type, !78, !"greybus_svc_type", i1 false, i1 false}
!78 = !{!"../drivers/greybus/svc.c", i32 1297, i32 20}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/greybus/svc.c", i32 1310, i32 28}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/greybus/svc.c", i32 1323, i32 26}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/greybus/svc.c", i32 1332, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @gb_svc_create._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @gb_svc_create._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @svc_groups, !89, !"svc_groups", i1 false, i1 false}
!89 = !{!"../drivers/greybus/svc.c", i32 255, i32 1}
!90 = !{ptr @svc_group, !89, !"svc_group", i1 false, i1 false}
!91 = !{ptr @svc_attrs, !92, !"svc_attrs", i1 false, i1 false}
!92 = !{!"../drivers/greybus/svc.c", i32 247, i32 26}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/greybus/svc.c", i32 31, i32 8}
!95 = !{ptr @dev_attr_endo_id, !94, !"dev_attr_endo_id", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/greybus/svc.c", i32 29, i32 22}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/greybus/svc.c", i32 40, i32 8}
!100 = !{ptr @dev_attr_ap_intf_id, !99, !"dev_attr_ap_intf_id", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/greybus/svc.c", i32 38, i32 22}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/greybus/svc.c", i32 67, i32 8}
!105 = !{ptr @dev_attr_intf_eject, !104, !"dev_attr_intf_eject", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/greybus/svc.c", i32 59, i32 2}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @intf_eject_store._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @intf_eject_store._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/greybus/svc.c", i32 98, i32 8}
!114 = !{ptr @dev_attr_watchdog, !113, !"dev_attr_watchdog", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/greybus/svc.c", i32 74, i32 22}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/greybus/svc.c", i32 75, i32 41}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/greybus/svc.c", i32 75, i32 53}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/greybus/svc.c", i32 128, i32 8}
!123 = !{ptr @dev_attr_watchdog_action, !122, !"dev_attr_watchdog_action", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/greybus/svc.c", i32 106, i32 23}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/greybus/svc.c", i32 108, i32 23}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/greybus/svc.c", i32 119, i32 23}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/greybus/svc.c", i32 121, i32 28}
!132 = !{ptr @xa_init_flags.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/greybus/svc.c", i32 1254, i32 3}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @gb_svc_request_handler._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @gb_svc_request_handler._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/greybus/svc.c", i32 1281, i32 3}
!142 = !{ptr @gb_svc_request_handler._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @gb_svc_request_handler._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/greybus/svc.c", i32 648, i32 3}
!146 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @gb_svc_version_request._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @gb_svc_version_request._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/greybus/svc.c", i32 657, i32 3}
!151 = !{ptr @gb_svc_version_request._entry.68, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @gb_svc_version_request._entry_ptr.70, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/greybus/svc.c", i32 845, i32 3}
!155 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @gb_svc_hello._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @gb_svc_hello._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/greybus/svc.c", i32 857, i32 3}
!160 = !{ptr @gb_svc_hello._entry.73, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @gb_svc_hello._entry_ptr.75, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/greybus/svc.c", i32 863, i32 3}
!164 = !{ptr @gb_svc_hello._entry.76, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @gb_svc_hello._entry_ptr.78, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/greybus/svc.c", i32 766, i32 28}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/greybus/svc.c", i32 796, i32 34}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/greybus/svc.c", i32 803, i32 23}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/greybus/svc.c", i32 805, i32 23}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/greybus/svc.c", i32 807, i32 23}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/greybus/svc.c", i32 139, i32 3}
!178 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @gb_svc_pwrmon_rail_count_get._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @gb_svc_pwrmon_rail_count_get._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/greybus/svc.c", i32 158, i32 3}
!183 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @gb_svc_pwrmon_rail_names_get._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @gb_svc_pwrmon_rail_names_get._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/greybus/svc.c", i32 163, i32 3}
!188 = !{ptr @gb_svc_pwrmon_rail_names_get._entry.88, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @gb_svc_pwrmon_rail_names_get._entry_ptr.90, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @pwrmon_debugfs_voltage_fops, !191, !"pwrmon_debugfs_voltage_fops", i1 false, i1 false}
!191 = !{!"../drivers/greybus/svc.c", i32 746, i32 37}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/greybus/svc.c", i32 688, i32 3}
!194 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @pwr_debugfs_voltage_read._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @pwr_debugfs_voltage_read._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/greybus/svc.c", i32 186, i32 3}
!199 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @gb_svc_pwrmon_sample_get._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @gb_svc_pwrmon_sample_get._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/greybus/svc.c", i32 191, i32 3}
!204 = !{ptr @gb_svc_pwrmon_sample_get._entry.95, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @gb_svc_pwrmon_sample_get._entry_ptr.97, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @pwrmon_debugfs_current_fops, !207, !"pwrmon_debugfs_current_fops", i1 false, i1 false}
!207 = !{!"../drivers/greybus/svc.c", i32 750, i32 37}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/greybus/svc.c", i32 712, i32 3}
!210 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @pwr_debugfs_current_read._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @pwr_debugfs_current_read._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @pwrmon_debugfs_power_fops, !214, !"pwrmon_debugfs_power_fops", i1 false, i1 false}
!214 = !{!"../drivers/greybus/svc.c", i32 754, i32 37}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/greybus/svc.c", i32 736, i32 3}
!217 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @pwr_debugfs_power_read._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @pwr_debugfs_power_read._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @gb_svc_queue_deferred_request.__key, !221, !"__key", i1 false, i1 false}
!221 = !{!"../drivers/greybus/svc.c", i32 1126, i32 2}
!222 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/greybus/svc.c", i32 1107, i32 3}
!225 = !{ptr @.str.104, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @gb_svc_process_deferred_request._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @gb_svc_process_deferred_request._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/greybus/svc.c", i32 938, i32 3}
!230 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @gb_svc_process_hello_deferred._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @gb_svc_process_hello_deferred._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/greybus/svc.c", i32 961, i32 2}
!235 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @gb_svc_process_module_inserted.__UNIQUE_ID_ddebug229, !234, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/greybus/svc.c", i32 965, i32 3}
!240 = !{ptr @gb_svc_process_module_inserted._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @gb_svc_process_module_inserted._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/greybus/svc.c", i32 971, i32 3}
!244 = !{ptr @gb_svc_process_module_inserted._entry.111, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @gb_svc_process_module_inserted._entry_ptr.113, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/greybus/svc.c", i32 978, i32 3}
!248 = !{ptr @gb_svc_process_module_inserted._entry.114, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @gb_svc_process_module_inserted._entry_ptr.116, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/greybus/svc.c", i32 1003, i32 2}
!252 = !{ptr @.str.118, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @gb_svc_process_module_removed.__UNIQUE_ID_ddebug230, !251, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/greybus/svc.c", i32 1007, i32 3}
!256 = !{ptr @gb_svc_process_module_removed._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @gb_svc_process_module_removed._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.120, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/greybus/svc.c", i32 1066, i32 2}
!260 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @gb_svc_process_intf_mailbox_event.__UNIQUE_ID_ddebug231, !259, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/greybus/svc.c", i32 1071, i32 3}
!264 = !{ptr @gb_svc_process_intf_mailbox_event._entry, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @gb_svc_process_intf_mailbox_event._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.123, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/greybus/svc.c", i32 1035, i32 3}
!268 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @gb_svc_process_intf_oops._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @gb_svc_process_intf_oops._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.126, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/greybus/svc.c", i32 1040, i32 2}
!273 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @gb_svc_process_intf_oops._entry.125, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @gb_svc_process_intf_oops._entry_ptr.128, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/greybus/svc.c", i32 1140, i32 3}
!278 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @gb_svc_intf_reset_recv._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @gb_svc_intf_reset_recv._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.131, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/greybus/svc.c", i32 1157, i32 3}
!283 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @gb_svc_module_inserted_recv._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @gb_svc_module_inserted_recv._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @gb_svc_module_inserted_recv.__UNIQUE_ID_ddebug232, !287, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!287 = !{!"../drivers/greybus/svc.c", i32 1164, i32 2}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/greybus/svc.c", i32 1176, i32 3}
!290 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @gb_svc_module_removed_recv._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @gb_svc_module_removed_recv._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @gb_svc_module_removed_recv.__UNIQUE_ID_ddebug233, !294, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!294 = !{!"../drivers/greybus/svc.c", i32 1183, i32 2}
!295 = !{ptr @.str.135, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/greybus/svc.c", i32 1209, i32 3}
!297 = !{ptr @.str.136, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @gb_svc_intf_mailbox_event_recv._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @gb_svc_intf_mailbox_event_recv._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @gb_svc_intf_mailbox_event_recv.__UNIQUE_ID_ddebug234, !301, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!301 = !{!"../drivers/greybus/svc.c", i32 1216, i32 2}
!302 = !{ptr @.str.137, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/greybus/svc.c", i32 1195, i32 3}
!304 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @gb_svc_intf_oops_recv._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @gb_svc_intf_oops_recv._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{i32 1, !"wchar_size", i32 2}
!308 = !{i32 1, !"min_enum_size", i32 4}
!309 = !{i32 8, !"branch-target-enforcement", i32 0}
!310 = !{i32 8, !"sign-return-address", i32 0}
!311 = !{i32 8, !"sign-return-address-all", i32 0}
!312 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!313 = !{i32 7, !"uwtable", i32 1}
!314 = !{i32 7, !"frame-pointer", i32 2}
!315 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!316 = !{!"auto-init"}
!317 = !{i64 2148522023, i64 2148522028, i64 2148522041, i64 2148522085, i64 2148522119, i64 2148522140}
!318 = !{i8 0, i8 2}
