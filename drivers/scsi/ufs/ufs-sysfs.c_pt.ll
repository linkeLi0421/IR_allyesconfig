; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-sysfs.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ufs_pm_lvl_states = type { i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unit_descriptor\00", [16 x i8] zeroinitializer }, align 32
@ufs_sysfs_unit_descriptor = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @dev_attr_lu_enable, ptr @dev_attr_boot_lun_id, ptr @dev_attr_lun_write_protect, ptr @dev_attr_lun_queue_depth, ptr @dev_attr_psa_sensitive, ptr @dev_attr_lun_memory_type, ptr @dev_attr_data_reliability, ptr @dev_attr_logical_block_size, ptr @dev_attr_logical_block_count, ptr @dev_attr_erase_block_size, ptr @dev_attr_provisioning_type, ptr @dev_attr_physical_memory_resourse_count, ptr @dev_attr_context_capabilities, ptr @dev_attr_large_unit_granularity, ptr @dev_attr_hpb_lu_max_active_regions, ptr @dev_attr_hpb_pinned_region_start_offset, ptr @dev_attr_hpb_number_pinned_regions, ptr @dev_attr_wb_buf_alloc_units, ptr null], [52 x i8] zeroinitializer }, align 32
@ufs_sysfs_unit_descriptor_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @ufs_sysfs_unit_descriptor, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_lun_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_dyn_cap_needed_attribute, ptr null], [24 x i8] zeroinitializer }, align 32
@ufs_sysfs_lun_attributes_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ufs_sysfs_lun_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_groups = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @ufs_sysfs_default_group, ptr @ufs_sysfs_monitor_group, ptr @ufs_sysfs_device_descriptor_group, ptr @ufs_sysfs_interconnect_descriptor_group, ptr @ufs_sysfs_geometry_descriptor_group, ptr @ufs_sysfs_health_descriptor_group, ptr @ufs_sysfs_power_descriptor_group, ptr @ufs_sysfs_string_descriptors_group, ptr @ufs_sysfs_flags_group, ptr @ufs_sysfs_attributes_group, ptr null], [52 x i8] zeroinitializer }, align 32
@ufs_sysfs_add_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: sysfs groups creation failed (err = %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_sysfs_add_nodes\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/ufs/ufs-sysfs.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_sysfs_add_nodes._entry_ptr = internal global ptr @ufs_sysfs_add_nodes._entry, section ".printk_index", align 4
@dev_attr_lu_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lu_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_boot_lun_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @boot_lun_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lun_write_protect = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lun_write_protect_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lun_queue_depth = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lun_queue_depth_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_psa_sensitive = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psa_sensitive_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lun_memory_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lun_memory_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_data_reliability = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @data_reliability_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_logical_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @logical_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_logical_block_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @logical_block_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_erase_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @erase_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_provisioning_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @provisioning_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_physical_memory_resourse_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @physical_memory_resourse_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_context_capabilities = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @context_capabilities_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_large_unit_granularity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @large_unit_granularity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_lu_max_active_regions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_lu_max_active_regions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_pinned_region_start_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_pinned_region_start_offset_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_number_pinned_regions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_number_pinned_regions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_buf_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_buf_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lu_enable\00", [22 x i8] zeroinitializer }, align 32
@ufs_is_valid_unit_desc_lun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Max General LU supported by UFS isn't initialized\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufs_is_valid_unit_desc_lun\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/ufs/ufs.h\00", [41 x i8] zeroinitializer }, align 32
@ufs_is_valid_unit_desc_lun._entry_ptr = internal global ptr @ufs_is_valid_unit_desc_lun._entry, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llX\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boot_lun_id\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lun_write_protect\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lun_queue_depth\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psa_sensitive\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lun_memory_type\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"data_reliability\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"logical_block_size\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"logical_block_count\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"erase_block_size\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"provisioning_type\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"physical_memory_resourse_count\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"context_capabilities\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"large_unit_granularity\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hpb_lu_max_active_regions\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hpb_pinned_region_start_offset\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hpb_number_pinned_regions\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wb_buf_alloc_units\00", [45 x i8] zeroinitializer }, align 32
@dev_attr_dyn_cap_needed_attribute = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dyn_cap_needed_attribute_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dyn_cap_needed_attribute\00", [39 x i8] zeroinitializer }, align 32
@ufs_sysfs_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ufs_sysfs_ufshcd_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_monitor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.53, ptr null, ptr null, ptr @ufs_sysfs_monitor_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_device_descriptor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.72, ptr null, ptr null, ptr @ufs_sysfs_device_descriptor, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_interconnect_descriptor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.105, ptr null, ptr null, ptr @ufs_sysfs_interconnect_descriptor, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_geometry_descriptor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.108, ptr null, ptr null, ptr @ufs_sysfs_geometry_descriptor, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_health_descriptor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.147, ptr null, ptr null, ptr @ufs_sysfs_health_descriptor, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_power_descriptor_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.151, ptr null, ptr null, ptr @ufs_sysfs_power_descriptor, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_string_descriptors_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.200, ptr null, ptr null, ptr @ufs_sysfs_string_descriptors, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_flags_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.206, ptr null, ptr null, ptr @ufs_sysfs_device_flags, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_attributes_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.221, ptr null, ptr null, ptr @ufs_sysfs_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_ufshcd_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_rpm_lvl, ptr @dev_attr_rpm_target_dev_state, ptr @dev_attr_rpm_target_link_state, ptr @dev_attr_spm_lvl, ptr @dev_attr_spm_target_dev_state, ptr @dev_attr_spm_target_link_state, ptr @dev_attr_auto_hibern8, ptr @dev_attr_wb_on, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_rpm_lvl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_lvl_show, ptr @rpm_lvl_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rpm_target_dev_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_target_dev_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rpm_target_link_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpm_target_link_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spm_lvl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spm_lvl_show, ptr @spm_lvl_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spm_target_dev_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spm_target_dev_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_spm_target_link_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spm_target_link_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_auto_hibern8 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_hibern8_show, ptr @auto_hibern8_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_on = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_on_show, ptr @wb_on_store }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rpm_lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ufs_pm_lvl_states = external dso_local local_unnamed_addr global [0 x %struct.ufs_pm_lvl_states], align 4
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rpm_target_dev_state\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLEEP\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POWERDOWN\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEEPSLEEP\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpm_target_link_state\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HIBERN8\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BROKEN\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spm_lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spm_target_dev_state\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spm_target_link_state\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"auto_hibern8\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wb_on\00", [26 x i8] zeroinitializer }, align 32
@wb_on_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 232, ptr @.str.52, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"To control WB through wb_on is not allowed!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wb_on_store\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wb_on_store._entry_ptr = internal global ptr @wb_on_store._entry, section ".printk_index", align 4
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"monitor\00", [24 x i8] zeroinitializer }, align 32
@ufs_sysfs_monitor_attrs = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @dev_attr_monitor_enable, ptr @dev_attr_monitor_chunk_size, ptr @dev_attr_read_total_sectors, ptr @dev_attr_read_total_busy, ptr @dev_attr_read_nr_requests, ptr @dev_attr_read_req_latency_avg, ptr @dev_attr_read_req_latency_max, ptr @dev_attr_read_req_latency_min, ptr @dev_attr_read_req_latency_sum, ptr @dev_attr_write_total_sectors, ptr @dev_attr_write_total_busy, ptr @dev_attr_write_nr_requests, ptr @dev_attr_write_req_latency_avg, ptr @dev_attr_write_req_latency_max, ptr @dev_attr_write_req_latency_min, ptr @dev_attr_write_req_latency_sum, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_monitor_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @monitor_enable_show, ptr @monitor_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_monitor_chunk_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @monitor_chunk_size_show, ptr @monitor_chunk_size_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_total_sectors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_total_sectors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_total_busy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_total_busy_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_nr_requests = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_nr_requests_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_req_latency_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_req_latency_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_req_latency_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_req_latency_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_req_latency_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_req_latency_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_req_latency_sum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_req_latency_sum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_total_sectors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_total_sectors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_total_busy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_total_busy_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_nr_requests = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_nr_requests_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_req_latency_avg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_req_latency_avg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_req_latency_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_req_latency_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_req_latency_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_req_latency_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_req_latency_sum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_req_latency_sum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"monitor_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"monitor_chunk_size\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_total_sectors\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_total_busy\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_nr_requests\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_req_latency_avg\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_req_latency_max\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_req_latency_min\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_req_latency_sum\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_total_sectors\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_total_busy\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write_nr_requests\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write_req_latency_avg\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write_req_latency_max\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write_req_latency_min\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write_req_latency_sum\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_descriptor\00", [46 x i8] zeroinitializer }, align 32
@ufs_sysfs_device_descriptor = internal global { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @dev_attr_device_type, ptr @dev_attr_device_class, ptr @dev_attr_device_sub_class, ptr @dev_attr_protocol, ptr @dev_attr_number_of_luns, ptr @dev_attr_number_of_wluns, ptr @dev_attr_boot_enable, ptr @dev_attr_descriptor_access_enable, ptr @dev_attr_initial_power_mode, ptr @dev_attr_high_priority_lun, ptr @dev_attr_secure_removal_type, ptr @dev_attr_support_security_lun, ptr @dev_attr_bkops_termination_latency, ptr @dev_attr_initial_active_icc_level, ptr @dev_attr_specification_version, ptr @dev_attr_manufacturing_date, ptr @dev_attr_manufacturer_id, ptr @dev_attr_rtt_capability, ptr @dev_attr_rtc_update, ptr @dev_attr_ufs_features, ptr @dev_attr_ffu_timeout, ptr @dev_attr_queue_depth, ptr @dev_attr_device_version, ptr @dev_attr_number_of_secure_wpa, ptr @dev_attr_psa_max_data_size, ptr @dev_attr_psa_state_timeout, ptr @dev_attr_hpb_version, ptr @dev_attr_hpb_control, ptr @dev_attr_ext_feature_sup, ptr @dev_attr_wb_presv_us_en, ptr @dev_attr_wb_type, ptr @dev_attr_wb_shared_alloc_units, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_device_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_sub_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_sub_class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protocol = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protocol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_luns = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @number_of_luns_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_wluns = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @number_of_wluns_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_boot_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @boot_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_descriptor_access_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @descriptor_access_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_initial_power_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @initial_power_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_high_priority_lun = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @high_priority_lun_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_secure_removal_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @secure_removal_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_support_security_lun = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @support_security_lun_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bkops_termination_latency = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bkops_termination_latency_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_initial_active_icc_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @initial_active_icc_level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_specification_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @specification_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manufacturing_date = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manufacturing_date_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manufacturer_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manufacturer_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rtt_capability = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtt_capability_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rtc_update = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtc_update_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ufs_features = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ufs_features_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffu_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ffu_timeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_queue_depth = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queue_depth_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_number_of_secure_wpa = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @number_of_secure_wpa_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_psa_max_data_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psa_max_data_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_psa_state_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psa_state_timeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_control = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_control_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ext_feature_sup = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ext_feature_sup_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_presv_us_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_presv_us_en_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_shared_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_shared_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_class\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device_sub_class\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"number_of_luns\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"number_of_wluns\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boot_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"descriptor_access_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"initial_power_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"high_priority_lun\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"secure_removal_type\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"support_security_lun\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bkops_termination_latency\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"initial_active_icc_level\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"specification_version\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"manufacturing_date\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"manufacturer_id\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtt_capability\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_update\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufs_features\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ffu_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue_depth\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_version\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"number_of_secure_wpa\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psa_max_data_size\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"psa_state_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpb_version\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpb_control\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ext_feature_sup\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wb_presv_us_en\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wb_type\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wb_shared_alloc_units\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interconnect_descriptor\00", [40 x i8] zeroinitializer }, align 32
@ufs_sysfs_interconnect_descriptor = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_unipro_version, ptr @dev_attr_mphy_version, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_unipro_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @unipro_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mphy_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mphy_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unipro_version\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mphy_version\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"geometry_descriptor\00", [44 x i8] zeroinitializer }, align 32
@ufs_sysfs_geometry_descriptor = internal global { [39 x ptr], [36 x i8] } { [39 x ptr] [ptr @dev_attr_raw_device_capacity, ptr @dev_attr_max_number_of_luns, ptr @dev_attr_segment_size, ptr @dev_attr_allocation_unit_size, ptr @dev_attr_min_addressable_block_size, ptr @dev_attr_optimal_read_block_size, ptr @dev_attr_optimal_write_block_size, ptr @dev_attr_max_in_buffer_size, ptr @dev_attr_max_out_buffer_size, ptr @dev_attr_rpmb_rw_size, ptr @dev_attr_dyn_capacity_resource_policy, ptr @dev_attr_data_ordering, ptr @dev_attr_max_number_of_contexts, ptr @dev_attr_sys_data_tag_unit_size, ptr @dev_attr_sys_data_tag_resource_size, ptr @dev_attr_secure_removal_types, ptr @dev_attr_memory_types, ptr @dev_attr_sys_code_memory_max_alloc_units, ptr @dev_attr_sys_code_memory_capacity_adjustment_factor, ptr @dev_attr_non_persist_memory_max_alloc_units, ptr @dev_attr_non_persist_memory_capacity_adjustment_factor, ptr @dev_attr_enh1_memory_max_alloc_units, ptr @dev_attr_enh1_memory_capacity_adjustment_factor, ptr @dev_attr_enh2_memory_max_alloc_units, ptr @dev_attr_enh2_memory_capacity_adjustment_factor, ptr @dev_attr_enh3_memory_max_alloc_units, ptr @dev_attr_enh3_memory_capacity_adjustment_factor, ptr @dev_attr_enh4_memory_max_alloc_units, ptr @dev_attr_enh4_memory_capacity_adjustment_factor, ptr @dev_attr_hpb_region_size, ptr @dev_attr_hpb_number_lu, ptr @dev_attr_hpb_subregion_size, ptr @dev_attr_hpb_max_active_regions, ptr @dev_attr_wb_max_alloc_units, ptr @dev_attr_wb_max_wb_luns, ptr @dev_attr_wb_buff_cap_adj, ptr @dev_attr_wb_sup_red_type, ptr @dev_attr_wb_sup_wb_type, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_raw_device_capacity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @raw_device_capacity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_number_of_luns = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_number_of_luns_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_segment_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @segment_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_allocation_unit_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @allocation_unit_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min_addressable_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_addressable_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optimal_read_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @optimal_read_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optimal_write_block_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @optimal_write_block_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_in_buffer_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_in_buffer_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_out_buffer_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_out_buffer_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rpmb_rw_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpmb_rw_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dyn_capacity_resource_policy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dyn_capacity_resource_policy_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_data_ordering = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @data_ordering_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_number_of_contexts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_number_of_contexts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sys_data_tag_unit_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sys_data_tag_unit_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sys_data_tag_resource_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sys_data_tag_resource_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_secure_removal_types = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @secure_removal_types_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_memory_types = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @memory_types_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sys_code_memory_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sys_code_memory_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sys_code_memory_capacity_adjustment_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sys_code_memory_capacity_adjustment_factor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_non_persist_memory_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @non_persist_memory_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_non_persist_memory_capacity_adjustment_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @non_persist_memory_capacity_adjustment_factor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh1_memory_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh1_memory_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh1_memory_capacity_adjustment_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh1_memory_capacity_adjustment_factor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh2_memory_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh2_memory_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh2_memory_capacity_adjustment_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh2_memory_capacity_adjustment_factor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh3_memory_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh3_memory_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh3_memory_capacity_adjustment_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh3_memory_capacity_adjustment_factor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh4_memory_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh4_memory_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enh4_memory_capacity_adjustment_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enh4_memory_capacity_adjustment_factor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_region_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_region_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_number_lu = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_number_lu_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_subregion_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_subregion_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_max_active_regions = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_max_active_regions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_max_alloc_units = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_max_alloc_units_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_max_wb_luns = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_max_wb_luns_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_buff_cap_adj = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_buff_cap_adj_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_sup_red_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_sup_red_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_sup_wb_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_sup_wb_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raw_device_capacity\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_number_of_luns\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"segment_size\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"allocation_unit_size\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"min_addressable_block_size\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"optimal_read_block_size\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"optimal_write_block_size\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_in_buffer_size\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_out_buffer_size\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmb_rw_size\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dyn_capacity_resource_policy\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"data_ordering\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max_number_of_contexts\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_data_tag_unit_size\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_data_tag_resource_size\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"secure_removal_types\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memory_types\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sys_code_memory_max_alloc_units\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sys_code_memory_capacity_adjustment_factor\00", [53 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"non_persist_memory_max_alloc_units\00", [61 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"non_persist_memory_capacity_adjustment_factor\00", [50 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enh1_memory_max_alloc_units\00", [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"enh1_memory_capacity_adjustment_factor\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enh2_memory_max_alloc_units\00", [36 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"enh2_memory_capacity_adjustment_factor\00", [57 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enh3_memory_max_alloc_units\00", [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"enh3_memory_capacity_adjustment_factor\00", [57 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enh4_memory_max_alloc_units\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"enh4_memory_capacity_adjustment_factor\00", [57 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpb_region_size\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hpb_number_lu\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hpb_subregion_size\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hpb_max_active_regions\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wb_max_alloc_units\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wb_max_wb_luns\00", [17 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wb_buff_cap_adj\00", [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wb_sup_red_type\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wb_sup_wb_type\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"health_descriptor\00", [46 x i8] zeroinitializer }, align 32
@ufs_sysfs_health_descriptor = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_eol_info, ptr @dev_attr_life_time_estimation_a, ptr @dev_attr_life_time_estimation_b, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_eol_info = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @eol_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_life_time_estimation_a = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @life_time_estimation_a_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_life_time_estimation_b = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @life_time_estimation_b_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eol_info\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"life_time_estimation_a\00", [41 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"life_time_estimation_b\00", [41 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power_descriptor\00", [47 x i8] zeroinitializer }, align 32
@ufs_sysfs_power_descriptor = internal global { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @dev_attr_active_icc_levels_vcc0, ptr @dev_attr_active_icc_levels_vcc1, ptr @dev_attr_active_icc_levels_vcc2, ptr @dev_attr_active_icc_levels_vcc3, ptr @dev_attr_active_icc_levels_vcc4, ptr @dev_attr_active_icc_levels_vcc5, ptr @dev_attr_active_icc_levels_vcc6, ptr @dev_attr_active_icc_levels_vcc7, ptr @dev_attr_active_icc_levels_vcc8, ptr @dev_attr_active_icc_levels_vcc9, ptr @dev_attr_active_icc_levels_vcc10, ptr @dev_attr_active_icc_levels_vcc11, ptr @dev_attr_active_icc_levels_vcc12, ptr @dev_attr_active_icc_levels_vcc13, ptr @dev_attr_active_icc_levels_vcc14, ptr @dev_attr_active_icc_levels_vcc15, ptr @dev_attr_active_icc_levels_vccq0, ptr @dev_attr_active_icc_levels_vccq1, ptr @dev_attr_active_icc_levels_vccq2, ptr @dev_attr_active_icc_levels_vccq3, ptr @dev_attr_active_icc_levels_vccq4, ptr @dev_attr_active_icc_levels_vccq5, ptr @dev_attr_active_icc_levels_vccq6, ptr @dev_attr_active_icc_levels_vccq7, ptr @dev_attr_active_icc_levels_vccq8, ptr @dev_attr_active_icc_levels_vccq9, ptr @dev_attr_active_icc_levels_vccq10, ptr @dev_attr_active_icc_levels_vccq11, ptr @dev_attr_active_icc_levels_vccq12, ptr @dev_attr_active_icc_levels_vccq13, ptr @dev_attr_active_icc_levels_vccq14, ptr @dev_attr_active_icc_levels_vccq15, ptr @dev_attr_active_icc_levels_vccq20, ptr @dev_attr_active_icc_levels_vccq21, ptr @dev_attr_active_icc_levels_vccq22, ptr @dev_attr_active_icc_levels_vccq23, ptr @dev_attr_active_icc_levels_vccq24, ptr @dev_attr_active_icc_levels_vccq25, ptr @dev_attr_active_icc_levels_vccq26, ptr @dev_attr_active_icc_levels_vccq27, ptr @dev_attr_active_icc_levels_vccq28, ptr @dev_attr_active_icc_levels_vccq29, ptr @dev_attr_active_icc_levels_vccq210, ptr @dev_attr_active_icc_levels_vccq211, ptr @dev_attr_active_icc_levels_vccq212, ptr @dev_attr_active_icc_levels_vccq213, ptr @dev_attr_active_icc_levels_vccq214, ptr @dev_attr_active_icc_levels_vccq215, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc5_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc6 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc6_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc7 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc7_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc8 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc8_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc9 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc9_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc10 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc10_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc11 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc11_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc12 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc12_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc13 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc13_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc14 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc14_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vcc15 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vcc15_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq5_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq6 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq6_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq7 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq7_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq8 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq8_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq9 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq9_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq10 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq10_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq11 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq11_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq12 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq12_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq13 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq13_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq14 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq14_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq15 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq15_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq20 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq20_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq21 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq21_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq22 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq22_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq23 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq23_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq24 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq24_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq25 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq25_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq26 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq26_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq27 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq27_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq28 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq28_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq29 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq29_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq210 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq210_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq211 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq211_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq212 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq212_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq213 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.197, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq213_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq214 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.198, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq214_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_levels_vccq215 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_levels_vccq215_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc0\00", [41 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc1\00", [41 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc2\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc3\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc4\00", [41 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc5\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc6\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc7\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc8\00", [41 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_icc_levels_vcc9\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vcc10\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vcc11\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vcc12\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vcc13\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vcc14\00", [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vcc15\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq0\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq1\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq2\00", [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq3\00", [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq4\00", [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq5\00", [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq6\00", [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq7\00", [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq8\00", [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_icc_levels_vccq9\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq10\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq11\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq12\00", [39 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq13\00", [39 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq14\00", [39 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq15\00", [39 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq20\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq21\00", [39 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq22\00", [39 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq23\00", [39 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq24\00", [39 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq25\00", [39 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq26\00", [39 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq27\00", [39 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq28\00", [39 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"active_icc_levels_vccq29\00", [39 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active_icc_levels_vccq210\00", [38 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active_icc_levels_vccq211\00", [38 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active_icc_levels_vccq212\00", [38 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active_icc_levels_vccq213\00", [38 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active_icc_levels_vccq214\00", [38 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"active_icc_levels_vccq215\00", [38 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"string_descriptors\00", [45 x i8] zeroinitializer }, align 32
@ufs_sysfs_string_descriptors = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_manufacturer_name, ptr @dev_attr_product_name, ptr @dev_attr_oem_id, ptr @dev_attr_serial_number, ptr @dev_attr_product_revision, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_manufacturer_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manufacturer_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_oem_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @oem_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"manufacturer_name\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.202 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"product_name\00", [19 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oem_id\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"product_revision\00", [47 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@ufs_sysfs_device_flags = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_device_init, ptr @dev_attr_permanent_wpe, ptr @dev_attr_power_on_wpe, ptr @dev_attr_bkops_enable, ptr @dev_attr_life_span_mode_enable, ptr @dev_attr_phy_resource_removal, ptr @dev_attr_busy_rtc, ptr @dev_attr_disable_fw_update, ptr @dev_attr_wb_enable, ptr @dev_attr_wb_flush_en, ptr @dev_attr_wb_flush_during_h8, ptr @dev_attr_hpb_enable, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_device_init = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_init_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_permanent_wpe = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.210, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @permanent_wpe_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_on_wpe = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.211, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_on_wpe_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bkops_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bkops_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_life_span_mode_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @life_span_mode_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phy_resource_removal = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.214, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phy_resource_removal_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_busy_rtc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.215, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @busy_rtc_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disable_fw_update = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.216, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disable_fw_update_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_flush_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_flush_en_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_flush_during_h8 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_flush_during_h8_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hpb_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hpb_enable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_init\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"permanent_wpe\00", [18 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_on_wpe\00", [19 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bkops_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"life_span_mode_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_resource_removal\00", [43 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"busy_rtc\00", [23 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disable_fw_update\00", [46 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wb_enable\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wb_flush_en\00", [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wb_flush_during_h8\00", [45 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hpb_enable\00", [21 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"attributes\00", [21 x i8] zeroinitializer }, align 32
@ufs_sysfs_attributes = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @dev_attr_boot_lun_enabled, ptr @dev_attr_max_data_size_hpb_single_cmd, ptr @dev_attr_current_power_mode, ptr @dev_attr_active_icc_level, ptr @dev_attr_ooo_data_enabled, ptr @dev_attr_bkops_status, ptr @dev_attr_purge_status, ptr @dev_attr_max_data_in_size, ptr @dev_attr_max_data_out_size, ptr @dev_attr_reference_clock_frequency, ptr @dev_attr_configuration_descriptor_lock, ptr @dev_attr_max_number_of_rtt, ptr @dev_attr_exception_event_control, ptr @dev_attr_exception_event_status, ptr @dev_attr_ffu_status, ptr @dev_attr_psa_state, ptr @dev_attr_psa_data_size, ptr @dev_attr_wb_flush_status, ptr @dev_attr_wb_avail_buf, ptr @dev_attr_wb_life_time_est, ptr @dev_attr_wb_cur_buf, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_boot_lun_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.222, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @boot_lun_enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_data_size_hpb_single_cmd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.223, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_data_size_hpb_single_cmd_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_power_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.224, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_power_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_icc_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.225, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_icc_level_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ooo_data_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.226, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ooo_data_enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bkops_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.227, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bkops_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_purge_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.228, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @purge_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_data_in_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.229, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_data_in_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_data_out_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.230, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_data_out_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reference_clock_frequency = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.231, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reference_clock_frequency_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_configuration_descriptor_lock = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.232, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @configuration_descriptor_lock_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_number_of_rtt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.233, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_number_of_rtt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_exception_event_control = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.234, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @exception_event_control_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_exception_event_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.235, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @exception_event_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ffu_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ffu_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_psa_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psa_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_psa_data_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.238, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @psa_data_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_flush_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.239, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_flush_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_avail_buf = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.240, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_avail_buf_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_life_time_est = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.241, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_life_time_est_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_wb_cur_buf = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.242, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wb_cur_buf_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boot_lun_enabled\00", [47 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max_data_size_hpb_single_cmd\00", [35 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"current_power_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"active_icc_level\00", [47 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ooo_data_enabled\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bkops_status\00", [19 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"purge_status\00", [19 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_data_in_size\00", [47 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_data_out_size\00", [46 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reference_clock_frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"configuration_descriptor_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_number_of_rtt\00", [46 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exception_event_control\00", [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exception_event_status\00", [41 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ffu_status\00", [21 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"psa_state\00", [22 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"psa_data_size\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wb_flush_status\00", [16 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wb_avail_buf\00", [19 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wb_life_time_est\00", [47 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wb_cur_buf\00", [21 x i8] zeroinitializer }, align 32
@switch.table.rpm_target_dev_state_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@switch.table.rpm_target_link_state_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.36, ptr @.str.43, ptr @.str.44], [16 x i8] zeroinitializer }, align 32
@switch.table.spm_target_dev_state_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@switch.table.spm_target_link_state_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.36, ptr @.str.43, ptr @.str.44], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1208, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant [26 x i8] c"ufs_sysfs_unit_descriptor\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1185, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant [32 x i8] c"ufs_sysfs_unit_descriptor_group\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1207, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"ufs_sysfs_lun_attributes\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1244, i32 26 }
@___asan_gen_.255 = private unnamed_addr constant [31 x i8] c"ufs_sysfs_lun_attributes_group\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1249, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"ufs_sysfs_groups\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1134, i32 38 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1259, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"dev_attr_lu_enable\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [21 x i8] c"dev_attr_boot_lun_id\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"dev_attr_lun_write_protect\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [25 x i8] c"dev_attr_lun_queue_depth\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [23 x i8] c"dev_attr_psa_sensitive\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [25 x i8] c"dev_attr_lun_memory_type\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [26 x i8] c"dev_attr_data_reliability\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [28 x i8] c"dev_attr_logical_block_size\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [29 x i8] c"dev_attr_logical_block_count\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"dev_attr_erase_block_size\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"dev_attr_provisioning_type\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [40 x i8] c"dev_attr_physical_memory_resourse_count\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [30 x i8] c"dev_attr_context_capabilities\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [32 x i8] c"dev_attr_large_unit_granularity\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [35 x i8] c"dev_attr_hpb_lu_max_active_regions\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [40 x i8] c"dev_attr_hpb_pinned_region_start_offset\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [35 x i8] c"dev_attr_hpb_number_pinned_regions\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [28 x i8] c"dev_attr_wb_buf_alloc_units\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1166, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [26 x i8] c"../drivers/scsi/ufs/ufs.h\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 643, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 547, i32 31 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 550, i32 31 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 554, i32 31 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 558, i32 31 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1167, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1168, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1169, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1170, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1171, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1172, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1173, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1174, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1175, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1176, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1177, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1178, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1179, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1180, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1181, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1182, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1183, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant [34 x i8] c"dev_attr_dyn_cap_needed_attribute\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1242, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant [24 x i8] c"ufs_sysfs_default_group\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 277, i32 37 }
@___asan_gen_.420 = private unnamed_addr constant [24 x i8] c"ufs_sysfs_monitor_group\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 512, i32 37 }
@___asan_gen_.423 = private unnamed_addr constant [34 x i8] c"ufs_sysfs_device_descriptor_group\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 650, i32 37 }
@___asan_gen_.426 = private unnamed_addr constant [40 x i8] c"ufs_sysfs_interconnect_descriptor_group\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 667, i32 37 }
@___asan_gen_.429 = private unnamed_addr constant [36 x i8] c"ufs_sysfs_geometry_descriptor_group\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 769, i32 37 }
@___asan_gen_.432 = private unnamed_addr constant [34 x i8] c"ufs_sysfs_health_descriptor_group\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 788, i32 37 }
@___asan_gen_.435 = private unnamed_addr constant [33 x i8] c"ufs_sysfs_power_descriptor_group\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 904, i32 37 }
@___asan_gen_.438 = private unnamed_addr constant [35 x i8] c"ufs_sysfs_string_descriptors_group\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 968, i32 37 }
@___asan_gen_.441 = private unnamed_addr constant [22 x i8] c"ufs_sysfs_flags_group\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1039, i32 37 }
@___asan_gen_.444 = private unnamed_addr constant [27 x i8] c"ufs_sysfs_attributes_group\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1129, i32 37 }
@___asan_gen_.447 = private unnamed_addr constant [23 x i8] c"ufs_sysfs_ufshcd_attrs\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 265, i32 26 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"dev_attr_rpm_lvl\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [30 x i8] c"dev_attr_rpm_target_dev_state\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [31 x i8] c"dev_attr_rpm_target_link_state\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"dev_attr_spm_lvl\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [30 x i8] c"dev_attr_spm_target_dev_state\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [31 x i8] c"dev_attr_spm_target_link_state\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [22 x i8] c"dev_attr_auto_hibern8\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [15 x i8] c"dev_attr_wb_on\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 256, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 70, i32 25 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 257, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 84, i32 25 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 28, i32 35 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 29, i32 34 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 30, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 31, i32 38 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 32, i32 20 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 258, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 16, i32 34 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 18, i32 38 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 19, i32 37 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 259, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 260, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 261, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 262, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 263, i32 8 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 232, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 513, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant [24 x i8] c"ufs_sysfs_monitor_attrs\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 492, i32 26 }
@___asan_gen_.546 = private unnamed_addr constant [24 x i8] c"dev_attr_monitor_enable\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [28 x i8] c"dev_attr_monitor_chunk_size\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [28 x i8] c"dev_attr_read_total_sectors\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [25 x i8] c"dev_attr_read_total_busy\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [26 x i8] c"dev_attr_read_nr_requests\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [30 x i8] c"dev_attr_read_req_latency_avg\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [30 x i8] c"dev_attr_read_req_latency_max\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [30 x i8] c"dev_attr_read_req_latency_min\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [30 x i8] c"dev_attr_read_req_latency_sum\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [29 x i8] c"dev_attr_write_total_sectors\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [26 x i8] c"dev_attr_write_total_busy\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [27 x i8] c"dev_attr_write_nr_requests\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [31 x i8] c"dev_attr_write_req_latency_avg\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [31 x i8] c"dev_attr_write_req_latency_max\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [31 x i8] c"dev_attr_write_req_latency_min\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [31 x i8] c"dev_attr_write_req_latency_sum\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 475, i32 8 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 476, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 321, i32 25 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 477, i32 8 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 478, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 355, i32 25 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 479, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 480, i32 8 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 481, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 482, i32 8 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 483, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 484, i32 8 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 485, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 486, i32 8 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 487, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 488, i32 8 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 489, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 490, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 651, i32 10 }
@___asan_gen_.651 = private unnamed_addr constant [28 x i8] c"ufs_sysfs_device_descriptor\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 614, i32 26 }
@___asan_gen_.654 = private unnamed_addr constant [21 x i8] c"dev_attr_device_type\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [22 x i8] c"dev_attr_device_class\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [26 x i8] c"dev_attr_device_sub_class\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [18 x i8] c"dev_attr_protocol\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [24 x i8] c"dev_attr_number_of_luns\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [25 x i8] c"dev_attr_number_of_wluns\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c"dev_attr_boot_enable\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [34 x i8] c"dev_attr_descriptor_access_enable\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [28 x i8] c"dev_attr_initial_power_mode\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [27 x i8] c"dev_attr_high_priority_lun\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [29 x i8] c"dev_attr_secure_removal_type\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [30 x i8] c"dev_attr_support_security_lun\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [35 x i8] c"dev_attr_bkops_termination_latency\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [34 x i8] c"dev_attr_initial_active_icc_level\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [31 x i8] c"dev_attr_specification_version\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [28 x i8] c"dev_attr_manufacturing_date\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [25 x i8] c"dev_attr_manufacturer_id\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [24 x i8] c"dev_attr_rtt_capability\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [20 x i8] c"dev_attr_rtc_update\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [22 x i8] c"dev_attr_ufs_features\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"dev_attr_ffu_timeout\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [21 x i8] c"dev_attr_queue_depth\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [24 x i8] c"dev_attr_device_version\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [30 x i8] c"dev_attr_number_of_secure_wpa\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [27 x i8] c"dev_attr_psa_max_data_size\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [27 x i8] c"dev_attr_psa_state_timeout\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c"dev_attr_hpb_version\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c"dev_attr_hpb_control\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [25 x i8] c"dev_attr_ext_feature_sup\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [24 x i8] c"dev_attr_wb_presv_us_en\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [17 x i8] c"dev_attr_wb_type\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [31 x i8] c"dev_attr_wb_shared_alloc_units\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 581, i32 1 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 582, i32 1 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 583, i32 1 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 584, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 585, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 586, i32 1 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 587, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 588, i32 1 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 589, i32 1 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 590, i32 1 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 591, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 592, i32 1 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 593, i32 1 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 594, i32 1 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 595, i32 1 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 596, i32 1 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 597, i32 1 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 598, i32 1 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 599, i32 1 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 600, i32 1 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 601, i32 1 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 602, i32 1 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 603, i32 1 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 604, i32 1 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 605, i32 1 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 606, i32 1 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 607, i32 1 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 608, i32 1 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 609, i32 1 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 610, i32 1 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 611, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 612, i32 1 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 668, i32 10 }
@___asan_gen_.849 = private unnamed_addr constant [34 x i8] c"ufs_sysfs_interconnect_descriptor\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 661, i32 26 }
@___asan_gen_.852 = private unnamed_addr constant [24 x i8] c"dev_attr_unipro_version\00", align 1
@___asan_gen_.855 = private unnamed_addr constant [22 x i8] c"dev_attr_mphy_version\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 658, i32 1 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 659, i32 1 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 770, i32 10 }
@___asan_gen_.867 = private unnamed_addr constant [30 x i8] c"ufs_sysfs_geometry_descriptor\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 727, i32 26 }
@___asan_gen_.870 = private unnamed_addr constant [29 x i8] c"dev_attr_raw_device_capacity\00", align 1
@___asan_gen_.873 = private unnamed_addr constant [28 x i8] c"dev_attr_max_number_of_luns\00", align 1
@___asan_gen_.876 = private unnamed_addr constant [22 x i8] c"dev_attr_segment_size\00", align 1
@___asan_gen_.879 = private unnamed_addr constant [30 x i8] c"dev_attr_allocation_unit_size\00", align 1
@___asan_gen_.882 = private unnamed_addr constant [36 x i8] c"dev_attr_min_addressable_block_size\00", align 1
@___asan_gen_.885 = private unnamed_addr constant [33 x i8] c"dev_attr_optimal_read_block_size\00", align 1
@___asan_gen_.888 = private unnamed_addr constant [34 x i8] c"dev_attr_optimal_write_block_size\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [28 x i8] c"dev_attr_max_in_buffer_size\00", align 1
@___asan_gen_.894 = private unnamed_addr constant [29 x i8] c"dev_attr_max_out_buffer_size\00", align 1
@___asan_gen_.897 = private unnamed_addr constant [22 x i8] c"dev_attr_rpmb_rw_size\00", align 1
@___asan_gen_.900 = private unnamed_addr constant [38 x i8] c"dev_attr_dyn_capacity_resource_policy\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [23 x i8] c"dev_attr_data_ordering\00", align 1
@___asan_gen_.906 = private unnamed_addr constant [32 x i8] c"dev_attr_max_number_of_contexts\00", align 1
@___asan_gen_.909 = private unnamed_addr constant [32 x i8] c"dev_attr_sys_data_tag_unit_size\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [36 x i8] c"dev_attr_sys_data_tag_resource_size\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [30 x i8] c"dev_attr_secure_removal_types\00", align 1
@___asan_gen_.918 = private unnamed_addr constant [22 x i8] c"dev_attr_memory_types\00", align 1
@___asan_gen_.921 = private unnamed_addr constant [41 x i8] c"dev_attr_sys_code_memory_max_alloc_units\00", align 1
@___asan_gen_.924 = private unnamed_addr constant [52 x i8] c"dev_attr_sys_code_memory_capacity_adjustment_factor\00", align 1
@___asan_gen_.927 = private unnamed_addr constant [44 x i8] c"dev_attr_non_persist_memory_max_alloc_units\00", align 1
@___asan_gen_.930 = private unnamed_addr constant [55 x i8] c"dev_attr_non_persist_memory_capacity_adjustment_factor\00", align 1
@___asan_gen_.933 = private unnamed_addr constant [37 x i8] c"dev_attr_enh1_memory_max_alloc_units\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [48 x i8] c"dev_attr_enh1_memory_capacity_adjustment_factor\00", align 1
@___asan_gen_.939 = private unnamed_addr constant [37 x i8] c"dev_attr_enh2_memory_max_alloc_units\00", align 1
@___asan_gen_.942 = private unnamed_addr constant [48 x i8] c"dev_attr_enh2_memory_capacity_adjustment_factor\00", align 1
@___asan_gen_.945 = private unnamed_addr constant [37 x i8] c"dev_attr_enh3_memory_max_alloc_units\00", align 1
@___asan_gen_.948 = private unnamed_addr constant [48 x i8] c"dev_attr_enh3_memory_capacity_adjustment_factor\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [37 x i8] c"dev_attr_enh4_memory_max_alloc_units\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [48 x i8] c"dev_attr_enh4_memory_capacity_adjustment_factor\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [25 x i8] c"dev_attr_hpb_region_size\00", align 1
@___asan_gen_.960 = private unnamed_addr constant [23 x i8] c"dev_attr_hpb_number_lu\00", align 1
@___asan_gen_.963 = private unnamed_addr constant [28 x i8] c"dev_attr_hpb_subregion_size\00", align 1
@___asan_gen_.966 = private unnamed_addr constant [32 x i8] c"dev_attr_hpb_max_active_regions\00", align 1
@___asan_gen_.969 = private unnamed_addr constant [28 x i8] c"dev_attr_wb_max_alloc_units\00", align 1
@___asan_gen_.972 = private unnamed_addr constant [24 x i8] c"dev_attr_wb_max_wb_luns\00", align 1
@___asan_gen_.975 = private unnamed_addr constant [25 x i8] c"dev_attr_wb_buff_cap_adj\00", align 1
@___asan_gen_.978 = private unnamed_addr constant [25 x i8] c"dev_attr_wb_sup_red_type\00", align 1
@___asan_gen_.981 = private unnamed_addr constant [24 x i8] c"dev_attr_wb_sup_wb_type\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 675, i32 1 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 676, i32 1 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 677, i32 1 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 678, i32 1 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 679, i32 1 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 680, i32 1 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 681, i32 1 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 682, i32 1 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 683, i32 1 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 684, i32 1 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 685, i32 1 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 686, i32 1 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 687, i32 1 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 688, i32 1 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 689, i32 1 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 690, i32 1 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 691, i32 1 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 692, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 694, i32 1 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 696, i32 1 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 698, i32 1 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 700, i32 1 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 702, i32 1 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 704, i32 1 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 706, i32 1 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 708, i32 1 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 710, i32 1 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 712, i32 1 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 714, i32 1 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 716, i32 1 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 717, i32 1 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 718, i32 1 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 719, i32 1 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 720, i32 1 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 721, i32 1 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 722, i32 1 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 723, i32 1 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 724, i32 1 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 789, i32 10 }
@___asan_gen_.1101 = private unnamed_addr constant [28 x i8] c"ufs_sysfs_health_descriptor\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 781, i32 26 }
@___asan_gen_.1104 = private unnamed_addr constant [18 x i8] c"dev_attr_eol_info\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant [32 x i8] c"dev_attr_life_time_estimation_a\00", align 1
@___asan_gen_.1110 = private unnamed_addr constant [32 x i8] c"dev_attr_life_time_estimation_b\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 777, i32 1 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 778, i32 1 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 779, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 905, i32 10 }
@___asan_gen_.1125 = private unnamed_addr constant [27 x i8] c"ufs_sysfs_power_descriptor\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 852, i32 26 }
@___asan_gen_.1128 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc0\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc1\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc2\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc3\00", align 1
@___asan_gen_.1140 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc4\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc5\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc6\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc7\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc8\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant [32 x i8] c"dev_attr_active_icc_levels_vcc9\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vcc10\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vcc11\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vcc12\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vcc13\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vcc14\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vcc15\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq0\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq1\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq2\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq3\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq4\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq5\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq6\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq7\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq8\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant [33 x i8] c"dev_attr_active_icc_levels_vccq9\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq10\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq11\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq12\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq13\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq14\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq15\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq20\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq21\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq22\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq23\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq24\00", align 1
@___asan_gen_.1239 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq25\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq26\00", align 1
@___asan_gen_.1245 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq27\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq28\00", align 1
@___asan_gen_.1251 = private unnamed_addr constant [34 x i8] c"dev_attr_active_icc_levels_vccq29\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant [35 x i8] c"dev_attr_active_icc_levels_vccq210\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant [35 x i8] c"dev_attr_active_icc_levels_vccq211\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant [35 x i8] c"dev_attr_active_icc_levels_vccq212\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant [35 x i8] c"dev_attr_active_icc_levels_vccq213\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant [35 x i8] c"dev_attr_active_icc_levels_vccq214\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant [35 x i8] c"dev_attr_active_icc_levels_vccq215\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 803, i32 1 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 804, i32 1 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 805, i32 1 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 806, i32 1 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 807, i32 1 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 808, i32 1 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 809, i32 1 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 810, i32 1 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 811, i32 1 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 812, i32 1 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 813, i32 1 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 814, i32 1 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 815, i32 1 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 816, i32 1 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 817, i32 1 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 818, i32 1 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 819, i32 1 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 820, i32 1 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 821, i32 1 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 822, i32 1 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 823, i32 1 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 824, i32 1 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 825, i32 1 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 826, i32 1 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 827, i32 1 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 828, i32 1 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 829, i32 1 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 830, i32 1 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 831, i32 1 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 832, i32 1 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 833, i32 1 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 834, i32 1 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 835, i32 1 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 836, i32 1 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 837, i32 1 }
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 838, i32 1 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 839, i32 1 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 840, i32 1 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 841, i32 1 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 842, i32 1 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 843, i32 1 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 844, i32 1 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 845, i32 1 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 846, i32 1 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 847, i32 1 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 848, i32 1 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 849, i32 1 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 850, i32 1 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 969, i32 10 }
@___asan_gen_.1419 = private unnamed_addr constant [29 x i8] c"ufs_sysfs_string_descriptors\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 959, i32 26 }
@___asan_gen_.1422 = private unnamed_addr constant [27 x i8] c"dev_attr_manufacturer_name\00", align 1
@___asan_gen_.1425 = private unnamed_addr constant [22 x i8] c"dev_attr_product_name\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant [16 x i8] c"dev_attr_oem_id\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant [23 x i8] c"dev_attr_serial_number\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant [26 x i8] c"dev_attr_product_revision\00", align 1
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 953, i32 1 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 954, i32 1 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 955, i32 1 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 956, i32 1 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 957, i32 1 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1040, i32 10 }
@___asan_gen_.1455 = private unnamed_addr constant [23 x i8] c"ufs_sysfs_device_flags\00", align 1
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1023, i32 26 }
@___asan_gen_.1458 = private unnamed_addr constant [21 x i8] c"dev_attr_device_init\00", align 1
@___asan_gen_.1461 = private unnamed_addr constant [23 x i8] c"dev_attr_permanent_wpe\00", align 1
@___asan_gen_.1464 = private unnamed_addr constant [22 x i8] c"dev_attr_power_on_wpe\00", align 1
@___asan_gen_.1467 = private unnamed_addr constant [22 x i8] c"dev_attr_bkops_enable\00", align 1
@___asan_gen_.1470 = private unnamed_addr constant [31 x i8] c"dev_attr_life_span_mode_enable\00", align 1
@___asan_gen_.1473 = private unnamed_addr constant [30 x i8] c"dev_attr_phy_resource_removal\00", align 1
@___asan_gen_.1476 = private unnamed_addr constant [18 x i8] c"dev_attr_busy_rtc\00", align 1
@___asan_gen_.1479 = private unnamed_addr constant [27 x i8] c"dev_attr_disable_fw_update\00", align 1
@___asan_gen_.1482 = private unnamed_addr constant [19 x i8] c"dev_attr_wb_enable\00", align 1
@___asan_gen_.1485 = private unnamed_addr constant [21 x i8] c"dev_attr_wb_flush_en\00", align 1
@___asan_gen_.1488 = private unnamed_addr constant [28 x i8] c"dev_attr_wb_flush_during_h8\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant [20 x i8] c"dev_attr_hpb_enable\00", align 1
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1010, i32 1 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1011, i32 1 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1012, i32 1 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1013, i32 1 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1014, i32 1 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1015, i32 1 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1016, i32 1 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1017, i32 1 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1018, i32 1 }
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1019, i32 1 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1020, i32 1 }
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1021, i32 1 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1130, i32 10 }
@___asan_gen_.1539 = private unnamed_addr constant [21 x i8] c"ufs_sysfs_attributes\00", align 1
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1104, i32 26 }
@___asan_gen_.1542 = private unnamed_addr constant [26 x i8] c"dev_attr_boot_lun_enabled\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant [38 x i8] c"dev_attr_max_data_size_hpb_single_cmd\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant [28 x i8] c"dev_attr_current_power_mode\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant [26 x i8] c"dev_attr_active_icc_level\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant [26 x i8] c"dev_attr_ooo_data_enabled\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant [22 x i8] c"dev_attr_bkops_status\00", align 1
@___asan_gen_.1560 = private unnamed_addr constant [22 x i8] c"dev_attr_purge_status\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant [26 x i8] c"dev_attr_max_data_in_size\00", align 1
@___asan_gen_.1566 = private unnamed_addr constant [27 x i8] c"dev_attr_max_data_out_size\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant [35 x i8] c"dev_attr_reference_clock_frequency\00", align 1
@___asan_gen_.1572 = private unnamed_addr constant [39 x i8] c"dev_attr_configuration_descriptor_lock\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant [27 x i8] c"dev_attr_max_number_of_rtt\00", align 1
@___asan_gen_.1578 = private unnamed_addr constant [33 x i8] c"dev_attr_exception_event_control\00", align 1
@___asan_gen_.1581 = private unnamed_addr constant [32 x i8] c"dev_attr_exception_event_status\00", align 1
@___asan_gen_.1584 = private unnamed_addr constant [20 x i8] c"dev_attr_ffu_status\00", align 1
@___asan_gen_.1587 = private unnamed_addr constant [19 x i8] c"dev_attr_psa_state\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant [23 x i8] c"dev_attr_psa_data_size\00", align 1
@___asan_gen_.1593 = private unnamed_addr constant [25 x i8] c"dev_attr_wb_flush_status\00", align 1
@___asan_gen_.1596 = private unnamed_addr constant [22 x i8] c"dev_attr_wb_avail_buf\00", align 1
@___asan_gen_.1599 = private unnamed_addr constant [26 x i8] c"dev_attr_wb_life_time_est\00", align 1
@___asan_gen_.1602 = private unnamed_addr constant [20 x i8] c"dev_attr_wb_cur_buf\00", align 1
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1081, i32 1 }
@___asan_gen_.1610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1082, i32 1 }
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1083, i32 1 }
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1084, i32 1 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1085, i32 1 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1086, i32 1 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1087, i32 1 }
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1088, i32 1 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1089, i32 1 }
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1090, i32 1 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1091, i32 1 }
@___asan_gen_.1640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1092, i32 1 }
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1093, i32 1 }
@___asan_gen_.1646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1094, i32 1 }
@___asan_gen_.1649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1095, i32 1 }
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1096, i32 1 }
@___asan_gen_.1655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1097, i32 1 }
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1098, i32 1 }
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1099, i32 1 }
@___asan_gen_.1664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1100, i32 1 }
@___asan_gen_.1665 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1666 = private constant [32 x i8] c"../drivers/scsi/ufs/ufs-sysfs.c\00", align 1
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1666, i32 1101, i32 1 }
@___asan_gen_.1668 = private unnamed_addr constant [39 x i8] c"switch.table.rpm_target_dev_state_show\00", align 1
@___asan_gen_.1669 = private unnamed_addr constant [40 x i8] c"switch.table.rpm_target_link_state_show\00", align 1
@___asan_gen_.1670 = private unnamed_addr constant [39 x i8] c"switch.table.spm_target_dev_state_show\00", align 1
@___asan_gen_.1671 = private unnamed_addr constant [40 x i8] c"switch.table.spm_target_link_state_show\00", align 1
@llvm.compiler.used = appending global [482 x ptr] [ptr @ufs_is_valid_unit_desc_lun._entry, ptr @ufs_is_valid_unit_desc_lun._entry_ptr, ptr @ufs_sysfs_add_nodes._entry, ptr @ufs_sysfs_add_nodes._entry_ptr, ptr @wb_on_store._entry, ptr @wb_on_store._entry_ptr, ptr @.str, ptr @ufs_sysfs_unit_descriptor, ptr @ufs_sysfs_unit_descriptor_group, ptr @ufs_sysfs_lun_attributes, ptr @ufs_sysfs_lun_attributes_group, ptr @ufs_sysfs_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dev_attr_lu_enable, ptr @dev_attr_boot_lun_id, ptr @dev_attr_lun_write_protect, ptr @dev_attr_lun_queue_depth, ptr @dev_attr_psa_sensitive, ptr @dev_attr_lun_memory_type, ptr @dev_attr_data_reliability, ptr @dev_attr_logical_block_size, ptr @dev_attr_logical_block_count, ptr @dev_attr_erase_block_size, ptr @dev_attr_provisioning_type, ptr @dev_attr_physical_memory_resourse_count, ptr @dev_attr_context_capabilities, ptr @dev_attr_large_unit_granularity, ptr @dev_attr_hpb_lu_max_active_regions, ptr @dev_attr_hpb_pinned_region_start_offset, ptr @dev_attr_hpb_number_pinned_regions, ptr @dev_attr_wb_buf_alloc_units, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @dev_attr_dyn_cap_needed_attribute, ptr @.str.31, ptr @ufs_sysfs_default_group, ptr @ufs_sysfs_monitor_group, ptr @ufs_sysfs_device_descriptor_group, ptr @ufs_sysfs_interconnect_descriptor_group, ptr @ufs_sysfs_geometry_descriptor_group, ptr @ufs_sysfs_health_descriptor_group, ptr @ufs_sysfs_power_descriptor_group, ptr @ufs_sysfs_string_descriptors_group, ptr @ufs_sysfs_flags_group, ptr @ufs_sysfs_attributes_group, ptr @ufs_sysfs_ufshcd_attrs, ptr @dev_attr_rpm_lvl, ptr @dev_attr_rpm_target_dev_state, ptr @dev_attr_rpm_target_link_state, ptr @dev_attr_spm_lvl, ptr @dev_attr_spm_target_dev_state, ptr @dev_attr_spm_target_link_state, ptr @dev_attr_auto_hibern8, ptr @dev_attr_wb_on, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @ufs_sysfs_monitor_attrs, ptr @dev_attr_monitor_enable, ptr @dev_attr_monitor_chunk_size, ptr @dev_attr_read_total_sectors, ptr @dev_attr_read_total_busy, ptr @dev_attr_read_nr_requests, ptr @dev_attr_read_req_latency_avg, ptr @dev_attr_read_req_latency_max, ptr @dev_attr_read_req_latency_min, ptr @dev_attr_read_req_latency_sum, ptr @dev_attr_write_total_sectors, ptr @dev_attr_write_total_busy, ptr @dev_attr_write_nr_requests, ptr @dev_attr_write_req_latency_avg, ptr @dev_attr_write_req_latency_max, ptr @dev_attr_write_req_latency_min, ptr @dev_attr_write_req_latency_sum, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @ufs_sysfs_device_descriptor, ptr @dev_attr_device_type, ptr @dev_attr_device_class, ptr @dev_attr_device_sub_class, ptr @dev_attr_protocol, ptr @dev_attr_number_of_luns, ptr @dev_attr_number_of_wluns, ptr @dev_attr_boot_enable, ptr @dev_attr_descriptor_access_enable, ptr @dev_attr_initial_power_mode, ptr @dev_attr_high_priority_lun, ptr @dev_attr_secure_removal_type, ptr @dev_attr_support_security_lun, ptr @dev_attr_bkops_termination_latency, ptr @dev_attr_initial_active_icc_level, ptr @dev_attr_specification_version, ptr @dev_attr_manufacturing_date, ptr @dev_attr_manufacturer_id, ptr @dev_attr_rtt_capability, ptr @dev_attr_rtc_update, ptr @dev_attr_ufs_features, ptr @dev_attr_ffu_timeout, ptr @dev_attr_queue_depth, ptr @dev_attr_device_version, ptr @dev_attr_number_of_secure_wpa, ptr @dev_attr_psa_max_data_size, ptr @dev_attr_psa_state_timeout, ptr @dev_attr_hpb_version, ptr @dev_attr_hpb_control, ptr @dev_attr_ext_feature_sup, ptr @dev_attr_wb_presv_us_en, ptr @dev_attr_wb_type, ptr @dev_attr_wb_shared_alloc_units, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @ufs_sysfs_interconnect_descriptor, ptr @dev_attr_unipro_version, ptr @dev_attr_mphy_version, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @ufs_sysfs_geometry_descriptor, ptr @dev_attr_raw_device_capacity, ptr @dev_attr_max_number_of_luns, ptr @dev_attr_segment_size, ptr @dev_attr_allocation_unit_size, ptr @dev_attr_min_addressable_block_size, ptr @dev_attr_optimal_read_block_size, ptr @dev_attr_optimal_write_block_size, ptr @dev_attr_max_in_buffer_size, ptr @dev_attr_max_out_buffer_size, ptr @dev_attr_rpmb_rw_size, ptr @dev_attr_dyn_capacity_resource_policy, ptr @dev_attr_data_ordering, ptr @dev_attr_max_number_of_contexts, ptr @dev_attr_sys_data_tag_unit_size, ptr @dev_attr_sys_data_tag_resource_size, ptr @dev_attr_secure_removal_types, ptr @dev_attr_memory_types, ptr @dev_attr_sys_code_memory_max_alloc_units, ptr @dev_attr_sys_code_memory_capacity_adjustment_factor, ptr @dev_attr_non_persist_memory_max_alloc_units, ptr @dev_attr_non_persist_memory_capacity_adjustment_factor, ptr @dev_attr_enh1_memory_max_alloc_units, ptr @dev_attr_enh1_memory_capacity_adjustment_factor, ptr @dev_attr_enh2_memory_max_alloc_units, ptr @dev_attr_enh2_memory_capacity_adjustment_factor, ptr @dev_attr_enh3_memory_max_alloc_units, ptr @dev_attr_enh3_memory_capacity_adjustment_factor, ptr @dev_attr_enh4_memory_max_alloc_units, ptr @dev_attr_enh4_memory_capacity_adjustment_factor, ptr @dev_attr_hpb_region_size, ptr @dev_attr_hpb_number_lu, ptr @dev_attr_hpb_subregion_size, ptr @dev_attr_hpb_max_active_regions, ptr @dev_attr_wb_max_alloc_units, ptr @dev_attr_wb_max_wb_luns, ptr @dev_attr_wb_buff_cap_adj, ptr @dev_attr_wb_sup_red_type, ptr @dev_attr_wb_sup_wb_type, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @ufs_sysfs_health_descriptor, ptr @dev_attr_eol_info, ptr @dev_attr_life_time_estimation_a, ptr @dev_attr_life_time_estimation_b, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @ufs_sysfs_power_descriptor, ptr @dev_attr_active_icc_levels_vcc0, ptr @dev_attr_active_icc_levels_vcc1, ptr @dev_attr_active_icc_levels_vcc2, ptr @dev_attr_active_icc_levels_vcc3, ptr @dev_attr_active_icc_levels_vcc4, ptr @dev_attr_active_icc_levels_vcc5, ptr @dev_attr_active_icc_levels_vcc6, ptr @dev_attr_active_icc_levels_vcc7, ptr @dev_attr_active_icc_levels_vcc8, ptr @dev_attr_active_icc_levels_vcc9, ptr @dev_attr_active_icc_levels_vcc10, ptr @dev_attr_active_icc_levels_vcc11, ptr @dev_attr_active_icc_levels_vcc12, ptr @dev_attr_active_icc_levels_vcc13, ptr @dev_attr_active_icc_levels_vcc14, ptr @dev_attr_active_icc_levels_vcc15, ptr @dev_attr_active_icc_levels_vccq0, ptr @dev_attr_active_icc_levels_vccq1, ptr @dev_attr_active_icc_levels_vccq2, ptr @dev_attr_active_icc_levels_vccq3, ptr @dev_attr_active_icc_levels_vccq4, ptr @dev_attr_active_icc_levels_vccq5, ptr @dev_attr_active_icc_levels_vccq6, ptr @dev_attr_active_icc_levels_vccq7, ptr @dev_attr_active_icc_levels_vccq8, ptr @dev_attr_active_icc_levels_vccq9, ptr @dev_attr_active_icc_levels_vccq10, ptr @dev_attr_active_icc_levels_vccq11, ptr @dev_attr_active_icc_levels_vccq12, ptr @dev_attr_active_icc_levels_vccq13, ptr @dev_attr_active_icc_levels_vccq14, ptr @dev_attr_active_icc_levels_vccq15, ptr @dev_attr_active_icc_levels_vccq20, ptr @dev_attr_active_icc_levels_vccq21, ptr @dev_attr_active_icc_levels_vccq22, ptr @dev_attr_active_icc_levels_vccq23, ptr @dev_attr_active_icc_levels_vccq24, ptr @dev_attr_active_icc_levels_vccq25, ptr @dev_attr_active_icc_levels_vccq26, ptr @dev_attr_active_icc_levels_vccq27, ptr @dev_attr_active_icc_levels_vccq28, ptr @dev_attr_active_icc_levels_vccq29, ptr @dev_attr_active_icc_levels_vccq210, ptr @dev_attr_active_icc_levels_vccq211, ptr @dev_attr_active_icc_levels_vccq212, ptr @dev_attr_active_icc_levels_vccq213, ptr @dev_attr_active_icc_levels_vccq214, ptr @dev_attr_active_icc_levels_vccq215, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @ufs_sysfs_string_descriptors, ptr @dev_attr_manufacturer_name, ptr @dev_attr_product_name, ptr @dev_attr_oem_id, ptr @dev_attr_serial_number, ptr @dev_attr_product_revision, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @ufs_sysfs_device_flags, ptr @dev_attr_device_init, ptr @dev_attr_permanent_wpe, ptr @dev_attr_power_on_wpe, ptr @dev_attr_bkops_enable, ptr @dev_attr_life_span_mode_enable, ptr @dev_attr_phy_resource_removal, ptr @dev_attr_busy_rtc, ptr @dev_attr_disable_fw_update, ptr @dev_attr_wb_enable, ptr @dev_attr_wb_flush_en, ptr @dev_attr_wb_flush_during_h8, ptr @dev_attr_hpb_enable, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @ufs_sysfs_attributes, ptr @dev_attr_boot_lun_enabled, ptr @dev_attr_max_data_size_hpb_single_cmd, ptr @dev_attr_current_power_mode, ptr @dev_attr_active_icc_level, ptr @dev_attr_ooo_data_enabled, ptr @dev_attr_bkops_status, ptr @dev_attr_purge_status, ptr @dev_attr_max_data_in_size, ptr @dev_attr_max_data_out_size, ptr @dev_attr_reference_clock_frequency, ptr @dev_attr_configuration_descriptor_lock, ptr @dev_attr_max_number_of_rtt, ptr @dev_attr_exception_event_control, ptr @dev_attr_exception_event_status, ptr @dev_attr_ffu_status, ptr @dev_attr_psa_state, ptr @dev_attr_psa_data_size, ptr @dev_attr_wb_flush_status, ptr @dev_attr_wb_avail_buf, ptr @dev_attr_wb_life_time_est, ptr @dev_attr_wb_cur_buf, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @switch.table.rpm_target_dev_state_show, ptr @switch.table.rpm_target_link_state_show, ptr @switch.table.spm_target_dev_state_show, ptr @switch.table.spm_target_link_state_show], section "llvm.metadata"
@0 = internal global [479 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_unit_descriptor to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_unit_descriptor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_lun_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_lun_attributes_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_groups to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_add_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lu_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boot_lun_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lun_write_protect to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lun_queue_depth to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_psa_sensitive to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lun_memory_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_data_reliability to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_logical_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_logical_block_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_erase_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_provisioning_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_physical_memory_resourse_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_context_capabilities to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_large_unit_granularity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_lu_max_active_regions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_pinned_region_start_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_number_pinned_regions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_buf_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_is_valid_unit_desc_lun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dyn_cap_needed_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_monitor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_device_descriptor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_interconnect_descriptor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_geometry_descriptor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_health_descriptor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_power_descriptor_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_string_descriptors_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_flags_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_attributes_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_ufshcd_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rpm_lvl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rpm_target_dev_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rpm_target_link_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spm_lvl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spm_target_dev_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_spm_target_link_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_auto_hibern8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_on to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wb_on_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_monitor_attrs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_monitor_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_monitor_chunk_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_total_sectors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_total_busy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_nr_requests to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_req_latency_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_req_latency_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_req_latency_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_req_latency_sum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_total_sectors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_total_busy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_nr_requests to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_req_latency_avg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_req_latency_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_req_latency_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_req_latency_sum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_device_descriptor to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_sub_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_luns to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_wluns to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boot_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_descriptor_access_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_initial_power_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_high_priority_lun to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_secure_removal_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_support_security_lun to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bkops_termination_latency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_initial_active_icc_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_specification_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manufacturing_date to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manufacturer_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rtt_capability to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rtc_update to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ufs_features to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffu_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queue_depth to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_number_of_secure_wpa to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_psa_max_data_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_psa_state_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ext_feature_sup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_presv_us_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_shared_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_interconnect_descriptor to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_unipro_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mphy_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_geometry_descriptor to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_raw_device_capacity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_number_of_luns to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_segment_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_allocation_unit_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min_addressable_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optimal_read_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optimal_write_block_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_in_buffer_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_out_buffer_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rpmb_rw_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dyn_capacity_resource_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_data_ordering to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_number_of_contexts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sys_data_tag_unit_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sys_data_tag_resource_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_secure_removal_types to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_memory_types to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sys_code_memory_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sys_code_memory_capacity_adjustment_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_non_persist_memory_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_non_persist_memory_capacity_adjustment_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh1_memory_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh1_memory_capacity_adjustment_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh2_memory_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh2_memory_capacity_adjustment_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh3_memory_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh3_memory_capacity_adjustment_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh4_memory_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enh4_memory_capacity_adjustment_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_region_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_number_lu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_subregion_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_max_active_regions to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_max_alloc_units to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_max_wb_luns to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_buff_cap_adj to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_sup_red_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_sup_wb_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_health_descriptor to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eol_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_life_time_estimation_a to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_life_time_estimation_b to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_power_descriptor to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vcc15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq213 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_levels_vccq215 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_string_descriptors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manufacturer_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_oem_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_device_flags to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_permanent_wpe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_on_wpe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bkops_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_life_span_mode_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_resource_removal to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_busy_rtc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable_fw_update to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_flush_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_flush_during_h8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hpb_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_attributes to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boot_lun_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_data_size_hpb_single_cmd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_power_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_icc_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ooo_data_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bkops_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_purge_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_data_in_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_data_out_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reference_clock_frequency to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_configuration_descriptor_lock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_number_of_rtt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_exception_event_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_exception_event_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ffu_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_psa_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_psa_data_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_flush_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_avail_buf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_life_time_est to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wb_cur_buf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rpm_target_dev_state_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rpm_target_link_state_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spm_target_dev_state_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spm_target_link_state_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_sysfs_add_nodes(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sysfs_create_groups(ptr noundef %dev, ptr noundef nonnull @ufs_sysfs_groups) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_sysfs_remove_nodes(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_remove_groups(ptr noundef %dev, ptr noundef nonnull @ufs_sysfs_groups) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lu_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 3, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hba, i32 noundef %desc_id, i8 noundef zeroext %desc_index, i8 noundef zeroext %param_offset, ptr noundef %sysfs_buf, i8 noundef zeroext %param_size) unnamed_addr #0 align 64 {
entry:
  %desc_buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc_buf) #6
  %0 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %desc_buf, align 8
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 50
  %1 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end3, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 9
  %3 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %conv5 = zext i8 %desc_index to i32
  %call6 = call i32 @ufshcd_read_desc_param(ptr noundef %hba, i32 noundef %desc_id, i32 noundef %conv5, i8 noundef zeroext %param_offset, ptr noundef nonnull %desc_buf, i8 noundef zeroext %param_size) #6
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i41 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i42 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i41, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end9, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %if.end3
  %7 = zext i8 %param_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %param_size, label %if.end9.out_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb14
    i8 4, label %sw.bb19
    i8 8, label %sw.bb23
  ]

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %desc_buf, align 8
  %conv12 = zext i8 %9 to i32
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %sysfs_buf, ptr noundef nonnull @.str.10, i32 noundef %conv12) #6
  br label %out

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %desc_buf, align 8
  %conv17 = zext i16 %11 to i32
  %call18 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %sysfs_buf, ptr noundef nonnull @.str.11, i32 noundef %conv17) #6
  br label %out

sw.bb19:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc_buf, align 8
  %call22 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %sysfs_buf, ptr noundef nonnull @.str.12, i32 noundef %13) #6
  br label %out

sw.bb23:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %desc_buf, align 8
  %call26 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %sysfs_buf, ptr noundef nonnull @.str.13, i64 noundef %15) #6
  br label %out

out:                                              ; preds = %sw.bb23, %sw.bb19, %sw.bb14, %sw.bb, %if.end9.out_crit_edge, %if.end3.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end9.out_crit_edge ], [ %call26, %sw.bb23 ], [ %call22, %sw.bb19 ], [ %call18, %sw.bb14 ], [ %call13, %sw.bb ], [ -16, %entry.out_crit_edge ], [ -22, %if.end3.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc_buf) #6
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_read_desc_param(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_lun_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 4, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lun_write_protect_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 5, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lun_queue_depth_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 6, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psa_sensitive_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 7, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lun_memory_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 8, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_reliability_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 9, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logical_block_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 10, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logical_block_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 11, ptr noundef %buf, i8 noundef zeroext 8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erase_block_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 19, ptr noundef %buf, i8 noundef zeroext 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @provisioning_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 23, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @physical_memory_resourse_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 24, ptr noundef %buf, i8 noundef zeroext 8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @context_capabilities_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 32, ptr noundef %buf, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @large_unit_granularity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 34, ptr noundef %buf, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_lu_max_active_regions_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 35, ptr noundef %buf, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_pinned_region_start_offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 37, ptr noundef %buf, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_number_pinned_regions_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %retval.0.i)
  %cmp9.i = icmp eq i8 %retval.0.i, -60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %retval.0.i)
  %cmp14.i = icmp ugt i8 %7, %retval.0.i
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %cmp14.i
  br i1 %spec.select.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 39, ptr noundef %buf, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_buf_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %2 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun1, align 8
  %4 = and i64 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %4)
  %cmp.i.not.i = icmp eq i64 %4, 49408
  %5 = trunc i64 %3 to i8
  %conv3.i = and i8 %5, 127
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %dev_info = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 12
  %tobool.not.i = icmp eq ptr %dev_info, null
  br i1 %tobool.not.i, label %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %lor.lhs.false.i

entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %max_lu_supported.i = getelementptr inbounds %struct.ufs_dev_info, ptr %dev_info, i32 0, i32 2
  %6 = ptrtoint ptr %max_lu_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lu_supported.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, label %ufs_is_valid_unit_desc_lun.exit

lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_is_valid_unit_desc_lun.exit.thread

ufs_is_valid_unit_desc_lun.exit.thread:           ; preds = %lor.lhs.false.i.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge, %entry.ufs_is_valid_unit_desc_lun.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

ufs_is_valid_unit_desc_lun.exit:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retval.0.i)
  %cmp5.i = icmp ult i8 %retval.0.i, 8
  br i1 %cmp5.i, label %if.end, label %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge

ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge: ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufs_is_valid_unit_desc_lun.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %hostdata.i, i32 noundef 2, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 41, ptr noundef %buf, i8 noundef zeroext 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge, %ufs_is_valid_unit_desc_lun.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %ufs_is_valid_unit_desc_lun.exit.cleanup_crit_edge ], [ -22, %ufs_is_valid_unit_desc_lun.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dyn_cap_needed_attribute_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !746
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %lun1 = getelementptr i8, ptr %dev, i32 -272
  %3 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %lun1, align 8
  %host_sem = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 49, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %hostdata.i, i32 0, i32 50
  %5 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %7 = and i64 %4, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %7)
  %cmp.i.not.i = icmp eq i64 %7, 49408
  %masksel.i = select i1 %cmp.i.not.i, i8 -128, i8 0
  %8 = trunc i64 %4 to i8
  %conv3.i = and i8 %8, 127
  %retval.0.i = or i8 %masksel.i, %conv3.i
  %sdev_ufs_device.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 3, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call5 = call i32 @ufshcd_query_attr(ptr noundef %hostdata.i, i32 noundef 3, i32 noundef 9, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i19 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i20 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i19, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call9 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %14) #6
  br label %out

out:                                              ; preds = %if.end8, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8 ], [ -16, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_attr(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_lvl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rpm_lvl = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rpm_lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpm_lvl, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_lvl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !746
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ufs_sysfs_pm_lvl_store.exit_crit_edge

entry.ufs_sysfs_pm_lvl_store.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp ugt i32 %4, 6
  br i1 %cmp.i, label %if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, label %if.end4.i

if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr [0 x %struct.ufs_pm_lvl_states], ptr @ufs_pm_lvl_states, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp5.i = icmp eq i32 %6, 4
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end4.i.do.body11.i_crit_edge

if.end4.i.do.body11.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 75
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %wspecversion.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 5
  %9 = ptrtoint ptr %wspecversion.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wspecversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 783, i16 %10)
  %cmp7.i = icmp ugt i16 %10, 783
  br i1 %cmp7.i, label %lor.lhs.false.i.do.body11.i_crit_edge, label %lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge

lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

lor.lhs.false.i.do.body11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

do.body11.i:                                      ; preds = %lor.lhs.false.i.do.body11.i_crit_edge, %if.end4.i.do.body11.i_crit_edge
  %host.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host.i, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock.i, align 4
  %call15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #6
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  %rpm_lvl.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %rpm_lvl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rpm_lvl.i, align 4
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %host_lock22.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %host_lock22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock22.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call15.i) #6
  br label %ufs_sysfs_pm_lvl_store.exit

ufs_sysfs_pm_lvl_store.exit:                      ; preds = %do.body11.i, %lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, %land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, %if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, %entry.ufs_sysfs_pm_lvl_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %do.body11.i ], [ -22, %entry.ufs_sysfs_pm_lvl_store.exit_crit_edge ], [ -22, %if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge ], [ -22, %lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge ], [ -22, %land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_target_dev_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rpm_lvl = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rpm_lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpm_lvl, align 4
  %arrayidx = getelementptr [0 x %struct.ufs_pm_lvl_states], ptr @ufs_pm_lvl_states, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge

entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ufs_dev_pwr_mode_to_string.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rpm_target_dev_state_show, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ufshcd_ufs_dev_pwr_mode_to_string.exit

ufshcd_ufs_dev_pwr_mode_to_string.exit:           ; preds = %switch.lookup, %entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %retval.0.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_target_link_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rpm_lvl = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rpm_lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpm_lvl, align 4
  %link_state = getelementptr [0 x %struct.ufs_pm_lvl_states], ptr @ufs_pm_lvl_states, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %entry.ufshcd_uic_link_state_to_string.exit_crit_edge

entry.ufshcd_uic_link_state_to_string.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_uic_link_state_to_string.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rpm_target_link_state_show, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ufshcd_uic_link_state_to_string.exit

ufshcd_uic_link_state_to_string.exit:             ; preds = %switch.lookup, %entry.ufshcd_uic_link_state_to_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %entry.ufshcd_uic_link_state_to_string.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %retval.0.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spm_lvl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spm_lvl = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %spm_lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spm_lvl, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spm_lvl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !746
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ufs_sysfs_pm_lvl_store.exit_crit_edge

entry.ufs_sysfs_pm_lvl_store.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp ugt i32 %4, 6
  br i1 %cmp.i, label %if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, label %if.end4.i

if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr [0 x %struct.ufs_pm_lvl_states], ptr @ufs_pm_lvl_states, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp5.i = icmp eq i32 %6, 4
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end4.i.do.body11.i_crit_edge

if.end4.i.do.body11.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 75
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %wspecversion.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 5
  %9 = ptrtoint ptr %wspecversion.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wspecversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 783, i16 %10)
  %cmp7.i = icmp ugt i16 %10, 783
  br i1 %cmp7.i, label %lor.lhs.false.i.do.body11.i_crit_edge, label %lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge

lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_sysfs_pm_lvl_store.exit

lor.lhs.false.i.do.body11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

do.body11.i:                                      ; preds = %lor.lhs.false.i.do.body11.i_crit_edge, %if.end4.i.do.body11.i_crit_edge
  %host.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host.i, align 4
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock.i, align 4
  %call15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #6
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  %spm_lvl.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %spm_lvl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %spm_lvl.i, align 8
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %host_lock22.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %host_lock22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock22.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call15.i) #6
  br label %ufs_sysfs_pm_lvl_store.exit

ufs_sysfs_pm_lvl_store.exit:                      ; preds = %do.body11.i, %lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, %land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, %if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge, %entry.ufs_sysfs_pm_lvl_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %do.body11.i ], [ -22, %entry.ufs_sysfs_pm_lvl_store.exit_crit_edge ], [ -22, %if.end.i.ufs_sysfs_pm_lvl_store.exit_crit_edge ], [ -22, %lor.lhs.false.i.ufs_sysfs_pm_lvl_store.exit_crit_edge ], [ -22, %land.lhs.true.i.ufs_sysfs_pm_lvl_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spm_target_dev_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spm_lvl = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %spm_lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spm_lvl, align 8
  %arrayidx = getelementptr [0 x %struct.ufs_pm_lvl_states], ptr @ufs_pm_lvl_states, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge

entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ufs_dev_pwr_mode_to_string.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.spm_target_dev_state_show, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ufshcd_ufs_dev_pwr_mode_to_string.exit

ufshcd_ufs_dev_pwr_mode_to_string.exit:           ; preds = %switch.lookup, %entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %entry.ufshcd_ufs_dev_pwr_mode_to_string.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %retval.0.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spm_target_link_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spm_lvl = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %spm_lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spm_lvl, align 8
  %link_state = getelementptr [0 x %struct.ufs_pm_lvl_states], ptr @ufs_pm_lvl_states, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %entry.ufshcd_uic_link_state_to_string.exit_crit_edge

entry.ufshcd_uic_link_state_to_string.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_uic_link_state_to_string.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.spm_target_link_state_show, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ufshcd_uic_link_state_to_string.exit

ufshcd_uic_link_state_to_string.exit:             ; preds = %switch.lookup, %entry.ufshcd_uic_link_state_to_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %entry.ufshcd_uic_link_state_to_string.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %retval.0.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_hibern8_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %capabilities.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ufshcd_is_auto_hibern8_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ufshcd_is_auto_hibern8_supported.exit:            ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 8
  %and1.i = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge

ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge: ; preds = %ufshcd_is_auto_hibern8_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufshcd_is_auto_hibern8_supported.exit
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %6 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i25 = icmp eq i8 %7, 0
  br i1 %tobool.not.i25, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #6
  %call7 = tail call i32 @ufshcd_hold(ptr noundef %1, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !747
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !748
  tail call void @ufshcd_release(ptr noundef %1) #6
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5, align 8
  %call.i26 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #6
  %and.i27 = and i32 %13, 1023
  %and29.i = lshr i32 %13, 10
  %shr30.i = and i32 %and29.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr30.i)
  %cmp34.not.i = icmp eq i32 %shr30.i, 0
  br i1 %cmp34.not.i, label %if.end4.ufshcd_ahit_to_us.exit_crit_edge, label %for.body.i

if.end4.ufshcd_ahit_to_us.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ahit_to_us.exit

for.body.i:                                       ; preds = %if.end4
  %mul.i = mul nuw nsw i32 %and.i27, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr30.i)
  %cmp.i = icmp ugt i32 %shr30.i, 1
  br i1 %cmp.i, label %for.body.i.1, label %for.body.i.ufshcd_ahit_to_us.exit_crit_edge

for.body.i.ufshcd_ahit_to_us.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ahit_to_us.exit

for.body.i.1:                                     ; preds = %for.body.i
  %mul.i.1 = mul nuw nsw i32 %and.i27, 100
  %16 = add nsw i32 %shr30.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %16)
  %cmp.i.1 = icmp ult i32 %16, -2
  br i1 %cmp.i.1, label %for.body.i.2, label %for.body.i.1.ufshcd_ahit_to_us.exit_crit_edge

for.body.i.1.ufshcd_ahit_to_us.exit_crit_edge:    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ahit_to_us.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %mul.i.2 = mul nuw nsw i32 %and.i27, 1000
  %17 = and i32 %13, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %17)
  %cmp.i.2.not = icmp eq i32 %17, 2048
  br i1 %cmp.i.2.not, label %for.body.i.2.ufshcd_ahit_to_us.exit_crit_edge, label %for.body.i.3

for.body.i.2.ufshcd_ahit_to_us.exit_crit_edge:    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ahit_to_us.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %mul.i.3 = mul nuw nsw i32 %and.i27, 10000
  %18 = add nsw i32 %shr30.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %18)
  %cmp.i.3 = icmp ult i32 %18, -2
  br i1 %cmp.i.3, label %for.body.i.4, label %for.body.i.3.ufshcd_ahit_to_us.exit_crit_edge

for.body.i.3.ufshcd_ahit_to_us.exit_crit_edge:    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ahit_to_us.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %mul.i.4 = mul nuw nsw i32 %and.i27, 100000
  %19 = and i32 %13, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp.i.4.not = icmp eq i32 %19, 4096
  br i1 %cmp.i.4.not, label %for.body.i.4.ufshcd_ahit_to_us.exit_crit_edge, label %for.body.i.5

for.body.i.4.ufshcd_ahit_to_us.exit_crit_edge:    ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_ahit_to_us.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.5 = mul nuw nsw i32 %and.i27, 1000000
  %20 = add nsw i32 %shr30.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %20)
  %cmp.i.5 = icmp ult i32 %20, -2
  %mul.i.6 = mul i32 %and.i27, 10000000
  %spec.select = select i1 %cmp.i.5, i32 %mul.i.6, i32 %mul.i.5
  br label %ufshcd_ahit_to_us.exit

ufshcd_ahit_to_us.exit:                           ; preds = %for.body.i.5, %for.body.i.4.ufshcd_ahit_to_us.exit_crit_edge, %for.body.i.3.ufshcd_ahit_to_us.exit_crit_edge, %for.body.i.2.ufshcd_ahit_to_us.exit_crit_edge, %for.body.i.1.ufshcd_ahit_to_us.exit_crit_edge, %for.body.i.ufshcd_ahit_to_us.exit_crit_edge, %if.end4.ufshcd_ahit_to_us.exit_crit_edge
  %timer.0.lcssa.i = phi i32 [ %and.i27, %if.end4.ufshcd_ahit_to_us.exit_crit_edge ], [ %mul.i, %for.body.i.ufshcd_ahit_to_us.exit_crit_edge ], [ %mul.i.1, %for.body.i.1.ufshcd_ahit_to_us.exit_crit_edge ], [ %mul.i.2, %for.body.i.2.ufshcd_ahit_to_us.exit_crit_edge ], [ %mul.i.3, %for.body.i.3.ufshcd_ahit_to_us.exit_crit_edge ], [ %mul.i.4, %for.body.i.4.ufshcd_ahit_to_us.exit_crit_edge ], [ %spec.select, %for.body.i.5 ]
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %timer.0.lcssa.i) #6
  br label %out

out:                                              ; preds = %ufshcd_ahit_to_us.exit, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call13, %ufshcd_ahit_to_us.exit ], [ -16, %if.end.out_crit_edge ]
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_hibern8_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %timer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer) #6
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %timer, align 4, !annotation !746
  %capabilities.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ufshcd_is_auto_hibern8_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ufshcd_is_auto_hibern8_supported.exit:            ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks.i, align 8
  %and1.i = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge

ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge: ; preds = %ufshcd_is_auto_hibern8_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ufshcd_is_auto_hibern8_supported.exit
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102300000, i32 %8)
  %cmp = icmp ugt i32 %8, 102300000
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %9 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i20 = icmp eq i8 %10, 0
  br i1 %tobool.not.i20, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %if.end6
  %11 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %12)
  %cmp47.i = icmp ugt i32 %12, 1023
  br i1 %cmp47.i, label %if.end9.for.body.i_crit_edge, label %if.end9.ufshcd_us_to_ahit.exit_crit_edge

if.end9.ufshcd_us_to_ahit.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufshcd_us_to_ahit.exit

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %timer.addr.049.i = phi i32 [ %div.i, %for.body.i.for.body.i_crit_edge ], [ %12, %if.end9.for.body.i_crit_edge ]
  %scale.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %div.i = udiv i32 %timer.addr.049.i, 10
  %inc.i = add i32 %scale.048.i, 1
  %cmp.i = icmp ugt i32 %timer.addr.049.i, 10239
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %do.end12.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end12.i.loopexit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = shl i32 %inc.i, 10
  %phi.bo21 = and i32 %phi.bo, 7168
  br label %ufshcd_us_to_ahit.exit

ufshcd_us_to_ahit.exit:                           ; preds = %do.end12.i.loopexit, %if.end9.ufshcd_us_to_ahit.exit_crit_edge
  %scale.0.lcssa.i = phi i32 [ 0, %if.end9.ufshcd_us_to_ahit.exit_crit_edge ], [ %phi.bo21, %do.end12.i.loopexit ]
  %timer.addr.0.lcssa.i = phi i32 [ %12, %if.end9.ufshcd_us_to_ahit.exit_crit_edge ], [ %div.i, %do.end12.i.loopexit ]
  %or.i = or i32 %scale.0.lcssa.i, %timer.addr.0.lcssa.i
  call void @ufshcd_auto_hibern8_update(ptr noundef %1, i32 noundef %or.i) #6
  br label %out

out:                                              ; preds = %ufshcd_us_to_ahit.exit, %if.end6.out_crit_edge
  %count.ret.0 = phi i32 [ -16, %if.end6.out_crit_edge ], [ %count, %ufshcd_us_to_ahit.exit ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.ret.0, %out ], [ -95, %ufshcd_is_auto_hibern8_supported.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_hold(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_auto_hibern8_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_on_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wb_enabled = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 8
  %2 = ptrtoint ptr %wb_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wb_enabled, align 1, !range !745
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %4) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_on_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %wb_enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wb_enable) #6
  %2 = ptrtoint ptr %wb_enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wb_enable, align 4, !annotation !746
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 75
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps.i, align 8
  %5 = and i32 %4, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %6 = icmp eq i32 %5, 128
  br i1 %6, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %wb_enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %wb_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wb_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch = icmp ult i32 %8, 2
  br i1 %switch, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %9 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %out, label %out.thread

out.thread:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @up(ptr noundef %host_sem) #6
  br label %17

out:                                              ; preds = %if.end9
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %13 = ptrtoint ptr %wb_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wb_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14 = icmp ne i32 %14, 0
  %call15 = call i32 @ufshcd_wb_toggle(ptr noundef %1, i1 noundef zeroext %tobool14) #6
  %15 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 55
  %call.i.i34 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  call void @up(ptr noundef %host_sem) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp18 = icmp slt i32 %call15, 0
  br i1 %cmp18, label %out._crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %17

17:                                               ; preds = %out._crit_edge, %out.thread
  %res.037 = phi i32 [ -16, %out.thread ], [ %call15, %out._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %17, %out.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %res.037, %17 ], [ %count, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wb_enable) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_wb_toggle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 10
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !745
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %4) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool2 to i32
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext, ptr %value, align 4
  %host = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %monitor = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88
  %enabled = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 10
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 8, !range !745
  %14 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp11 = icmp eq i32 %11, %14
  br i1 %cmp11, label %if.end.out_unlock_crit_edge, label %if.end14

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call ptr @memset(ptr %monitor, i32 0, i32 128)
  br label %out_unlock

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enabled, align 8
  %call20 = call i64 @ktime_get() #6
  %enabled_ts = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 9
  %17 = ptrtoint ptr %enabled_ts to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call20, ptr %enabled_ts, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.else, %if.then16, %if.end.out_unlock_crit_edge
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %host_lock24 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %host_lock24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock24, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_chunk_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %monitor = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88
  %2 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %monitor, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monitor_chunk_size_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %host = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_lock, align 4
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #6
  %enabled = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 10
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 8, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then8, label %do.body2.if.end10_crit_edge

do.body2.if.end10_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %monitor = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %11 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %monitor, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body2.if.end10_crit_edge
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %host_lock12 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %host_lock12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_lock12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_total_sectors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_sec_rw = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 1
  %2 = ptrtoint ptr %nr_sec_rw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_sec_rw, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_total_busy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %total_busy = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 2
  %2 = ptrtoint ptr %total_busy to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_busy, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_nr_requests_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_req = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 3
  %2 = ptrtoint ptr %nr_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_req, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_req_latency_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lat_sum = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 4
  %2 = ptrtoint ptr %lat_sum to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lat_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %nr_req = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 3
  %7 = ptrtoint ptr %nr_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_req, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %cond213.i.i)
  %cmp164.i.i = icmp ult i64 %cond213.i.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !751

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %cond213.i.i to i32
  %div172.i.i = udiv i32 %conv169.i.i, %8
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %cond213.i.i) #10, !srcloc !752
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %dividend.addr.0.i.i) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_req_latency_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lat_max = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 5
  %2 = ptrtoint ptr %lat_max to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lat_max, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_req_latency_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lat_min = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 6
  %2 = ptrtoint ptr %lat_min to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lat_min, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_req_latency_sum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lat_sum = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 4
  %2 = ptrtoint ptr %lat_sum to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lat_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_total_sectors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_total_busy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_nr_requests_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_req_latency_avg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %arrayidx2 = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %cond213.i.i)
  %cmp164.i.i = icmp ult i64 %cond213.i.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !751

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %cond213.i.i to i32
  %div172.i.i = udiv i32 %conv169.i.i, %8
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %cond213.i.i) #10, !srcloc !752
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %dividend.addr.0.i.i) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_req_latency_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_req_latency_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_req_latency_sum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ufs_hba, ptr %1, i32 0, i32 88, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8.i.i = icmp slt i64 %3, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #6
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #10, !srcloc !749
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !750
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59, i64 noundef %cond213.i.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_sub_class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 4, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protocol_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 5, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @number_of_luns_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 6, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @number_of_wluns_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @descriptor_access_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 9, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @initial_power_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 10, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @high_priority_lun_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secure_removal_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 12, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @support_security_lun_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 13, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bkops_termination_latency_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 14, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @initial_active_icc_level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 15, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @specification_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manufacturing_date_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 18, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manufacturer_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 24, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtt_capability_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 28, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_update_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 29, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_features_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 31, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffu_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_depth_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 33, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 34, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @number_of_secure_wpa_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 36, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psa_max_data_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 37, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psa_state_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 41, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 64, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_control_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 66, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext_feature_sup_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 79, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_presv_us_en_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 83, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 84, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_shared_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 85, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unipro_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 4, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mphy_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 4, i8 noundef zeroext 0, i8 noundef zeroext 4, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_device_capacity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 4, ptr noundef %buf, i8 noundef zeroext 8)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_number_of_luns_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 12, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @segment_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 13, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allocation_unit_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_addressable_block_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 18, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optimal_read_block_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 19, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optimal_write_block_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 20, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_in_buffer_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 21, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_out_buffer_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 22, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmb_rw_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 23, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dyn_capacity_resource_policy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 24, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_ordering_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 25, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_number_of_contexts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 26, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_data_tag_unit_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 27, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_data_tag_resource_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 28, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secure_removal_types_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 29, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memory_types_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 30, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_code_memory_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_code_memory_capacity_adjustment_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 36, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @non_persist_memory_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 38, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @non_persist_memory_capacity_adjustment_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 42, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh1_memory_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 44, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh1_memory_capacity_adjustment_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 48, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh2_memory_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 50, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh2_memory_capacity_adjustment_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 54, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh3_memory_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 56, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh3_memory_capacity_adjustment_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 60, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh4_memory_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 62, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enh4_memory_capacity_adjustment_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 66, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_region_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 72, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_number_lu_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 73, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_subregion_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 74, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_max_active_regions_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 75, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_max_alloc_units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 79, ptr noundef %buf, i8 noundef zeroext 4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_max_wb_luns_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 83, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_buff_cap_adj_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 84, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_sup_red_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 85, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_sup_wb_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 86, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eol_info_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 9, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @life_time_estimation_a_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 9, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @life_time_estimation_b_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 9, i8 noundef zeroext 0, i8 noundef zeroext 4, ptr noundef %buf, i8 noundef zeroext 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 4, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 6, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 10, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc5_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 12, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc6_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 14, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc7_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc8_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 18, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc9_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 20, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc10_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 22, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc11_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 24, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc12_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 26, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc13_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 28, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc14_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 30, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vcc15_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 34, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 36, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 38, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 40, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 42, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq5_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 44, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq6_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 46, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq7_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 48, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq8_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 50, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq9_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 52, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq10_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 54, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq11_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 56, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq12_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 58, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq13_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 60, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq14_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 62, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq15_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 64, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq20_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 66, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq21_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 68, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq22_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 70, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq23_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 72, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq24_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 74, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq25_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 76, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq26_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 78, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq27_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 80, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq28_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 82, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq29_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 84, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq210_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 86, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq211_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 88, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq212_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 90, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq213_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 92, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq214_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 94, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_levels_vccq215_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @ufs_sysfs_read_desc_param(ptr noundef %1, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 96, ptr noundef %buf, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manufacturer_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %desc_len = alloca i32, align 4
  %desc_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_len) #6
  %2 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %desc_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_buf) #6
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 255) #11
  %6 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %desc_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_buf, align 4
  %call8 = call i32 @ufshcd_query_descriptor_retry(ptr noundef %1, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull %desc_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 20
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @kfree(ptr noundef %12) #6
  %15 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc_buf, align 4
  %call12 = call i32 @ufshcd_read_string_desc(ptr noundef %1, i8 noundef zeroext %14, ptr noundef nonnull %desc_buf, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_buf, align 4
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %17) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_crit_edge ], [ %call15, %if.end14 ], [ -22, %if.end6.out_crit_edge ]
  %18 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 55
  %call.i.i34 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 4
  call void @kfree(ptr noundef %21) #6
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.then4 ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_descriptor_retry(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_read_string_desc(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %desc_len = alloca i32, align 4
  %desc_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_len) #6
  %2 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %desc_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_buf) #6
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 255) #11
  %6 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %desc_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_buf, align 4
  %call8 = call i32 @ufshcd_query_descriptor_retry(ptr noundef %1, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull %desc_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 21
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @kfree(ptr noundef %12) #6
  %15 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc_buf, align 4
  %call12 = call i32 @ufshcd_read_string_desc(ptr noundef %1, i8 noundef zeroext %14, ptr noundef nonnull %desc_buf, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_buf, align 4
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %17) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_crit_edge ], [ %call15, %if.end14 ], [ -22, %if.end6.out_crit_edge ]
  %18 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 55
  %call.i.i34 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 4
  call void @kfree(ptr noundef %21) #6
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.then4 ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oem_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %desc_len = alloca i32, align 4
  %desc_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_len) #6
  %2 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %desc_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_buf) #6
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 255) #11
  %6 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %desc_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_buf, align 4
  %call8 = call i32 @ufshcd_query_descriptor_retry(ptr noundef %1, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull %desc_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 23
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @kfree(ptr noundef %12) #6
  %15 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc_buf, align 4
  %call12 = call i32 @ufshcd_read_string_desc(ptr noundef %1, i8 noundef zeroext %14, ptr noundef nonnull %desc_buf, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_buf, align 4
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %17) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_crit_edge ], [ %call15, %if.end14 ], [ -22, %if.end6.out_crit_edge ]
  %18 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 55
  %call.i.i34 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 4
  call void @kfree(ptr noundef %21) #6
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.then4 ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %desc_len = alloca i32, align 4
  %desc_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_len) #6
  %2 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %desc_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_buf) #6
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 255) #11
  %6 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %desc_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_buf, align 4
  %call8 = call i32 @ufshcd_query_descriptor_retry(ptr noundef %1, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull %desc_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 22
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @kfree(ptr noundef %12) #6
  %15 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc_buf, align 4
  %call12 = call i32 @ufshcd_read_string_desc(ptr noundef %1, i8 noundef zeroext %14, ptr noundef nonnull %desc_buf, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_buf, align 4
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %17) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_crit_edge ], [ %call15, %if.end14 ], [ -22, %if.end6.out_crit_edge ]
  %18 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 55
  %call.i.i34 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 4
  call void @kfree(ptr noundef %21) #6
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.then4 ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %desc_len = alloca i32, align 4
  %desc_buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_len) #6
  %2 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %desc_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_buf) #6
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 255) #11
  %6 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %desc_buf, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_buf, align 4
  %call8 = call i32 @ufshcd_query_descriptor_retry(ptr noundef %1, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull %desc_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 42
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @kfree(ptr noundef %12) #6
  %15 = ptrtoint ptr %desc_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %desc_buf, align 4
  %call12 = call i32 @ufshcd_read_string_desc(ptr noundef %1, i8 noundef zeroext %14, ptr noundef nonnull %desc_buf, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.out_crit_edge, label %if.end14

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_buf, align 4
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef %17) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.out_crit_edge ], [ %call15, %if.end14 ], [ -22, %if.end6.out_crit_edge ]
  %18 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 55
  %call.i.i34 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  %20 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_buf, align 4
  call void @kfree(ptr noundef %21) #6
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then4, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.then4 ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_init_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_flag(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @permanent_wpe_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 2, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_on_wpe_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 3, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bkops_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 4, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @life_span_mode_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 5, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_resource_removal_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @busy_rtc_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 9, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_fw_update_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 11, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 14, i8 noundef zeroext %retval.0.i, ptr noundef nonnull %flag) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_flush_en_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 15, i8 noundef zeroext %retval.0.i, ptr noundef nonnull %flag) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_flush_during_h8_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 16, i8 noundef zeroext %retval.0.i, ptr noundef nonnull %flag) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpb_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %flag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag) #6
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %flag, align 1, !annotation !746
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_flag(ptr noundef %2, i32 noundef 5, i32 noundef 18, i8 noundef zeroext 0, ptr noundef nonnull %flag) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i27 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i28 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i27, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool12.not, ptr @.str.209, ptr @.str.208
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_lun_enabled_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_data_size_hpb_single_cmd_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_power_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_icc_level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ooo_data_enabled_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bkops_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 5, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @purge_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 6, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_data_in_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_data_out_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 8, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reference_clock_frequency_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 10, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configuration_descriptor_lock_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_number_of_rtt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 12, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exception_event_control_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 13, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exception_event_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 14, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffu_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 20, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psa_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 21, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psa_data_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 22, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_flush_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 28, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %14) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_avail_buf_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 29, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %14) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_life_time_est_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 30, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %14) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wb_cur_buf_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !746
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 50
  %3 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shutting_down.i, align 1, !range !745
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.then4:                                         ; preds = %entry
  %wb_buffer_type.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 11
  %5 = ptrtoint ptr %wb_buffer_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wb_buffer_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %wb_dedicated_lu.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 66, i32 10
  %7 = ptrtoint ptr %wb_dedicated_lu.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wb_dedicated_lu.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %8, %if.then.i ], [ 0, %if.then4.if.end6_crit_edge ]
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %call8 = call i32 @ufshcd_query_attr(ptr noundef %1, i32 noundef 3, i32 noundef 31, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 0, ptr noundef nonnull %value) #6
  %11 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i26 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  %call.i.i27 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %call12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %14) #6
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end6.out_crit_edge ]
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -16, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 479)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 479)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !91, !93, !95, !97, !98, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !144, !145, !147, !149, !151, !153, !154, !156, !157, !159, !161, !162, !164, !165, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !207, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !309, !311, !313, !314, !316, !317, !319, !321, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !347, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !371, !373, !374, !376, !377, !379, !380, !382, !383, !385, !386, !388, !389, !391, !392, !394, !395, !397, !398, !400, !401, !403, !404, !406, !407, !409, !410, !412, !413, !415, !416, !418, !419, !421, !422, !424, !425, !427, !428, !430, !431, !433, !434, !436, !437, !439, !441, !443, !445, !446, !448, !449, !451, !452, !454, !456, !458, !460, !461, !463, !464, !466, !467, !469, !470, !472, !473, !475, !476, !478, !479, !481, !482, !484, !485, !487, !488, !490, !491, !493, !494, !496, !497, !499, !500, !502, !503, !505, !506, !508, !509, !511, !512, !514, !515, !517, !518, !520, !521, !523, !524, !526, !527, !529, !530, !532, !533, !535, !536, !538, !539, !541, !542, !544, !545, !547, !548, !550, !551, !553, !554, !556, !557, !559, !560, !562, !563, !565, !566, !568, !569, !571, !572, !574, !575, !577, !578, !580, !581, !583, !584, !586, !587, !589, !590, !592, !593, !595, !596, !598, !599, !601, !602, !604, !606, !608, !610, !611, !613, !614, !616, !617, !619, !620, !622, !623, !625, !627, !629, !631, !632, !633, !634, !636, !637, !639, !640, !642, !643, !645, !646, !648, !649, !651, !652, !654, !655, !657, !658, !660, !661, !663, !664, !666, !667, !669, !671, !673, !675, !676, !678, !679, !681, !682, !684, !685, !687, !688, !690, !691, !693, !694, !696, !697, !699, !700, !702, !703, !705, !706, !708, !709, !711, !712, !714, !715, !717, !718, !720, !721, !723, !724, !726, !727, !729, !730, !732, !733, !735}
!llvm.module.flags = !{!736, !737, !738, !739, !740, !741, !742, !743}
!llvm.ident = !{!744}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1208, i32 10}
!2 = !{ptr @ufs_sysfs_unit_descriptor_group, !3, !"ufs_sysfs_unit_descriptor_group", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1207, i32 30}
!4 = !{ptr @ufs_sysfs_lun_attributes_group, !5, !"ufs_sysfs_lun_attributes_group", i1 false, i1 false}
!5 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1249, i32 30}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1259, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ufs_sysfs_add_nodes._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ufs_sysfs_add_nodes._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ufs_sysfs_unit_descriptor, !15, !"ufs_sysfs_unit_descriptor", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1185, i32 26}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1166, i32 1}
!18 = !{ptr @dev_attr_lu_enable, !17, !"dev_attr_lu_enable", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/ufs/ufs.h", i32 643, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ufs_is_valid_unit_desc_lun._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @ufs_is_valid_unit_desc_lun._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 547, i32 31}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 550, i32 31}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 554, i32 31}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 558, i32 31}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1167, i32 1}
!35 = !{ptr @dev_attr_boot_lun_id, !34, !"dev_attr_boot_lun_id", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1168, i32 1}
!38 = !{ptr @dev_attr_lun_write_protect, !37, !"dev_attr_lun_write_protect", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1169, i32 1}
!41 = !{ptr @dev_attr_lun_queue_depth, !40, !"dev_attr_lun_queue_depth", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1170, i32 1}
!44 = !{ptr @dev_attr_psa_sensitive, !43, !"dev_attr_psa_sensitive", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1171, i32 1}
!47 = !{ptr @dev_attr_lun_memory_type, !46, !"dev_attr_lun_memory_type", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1172, i32 1}
!50 = !{ptr @dev_attr_data_reliability, !49, !"dev_attr_data_reliability", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1173, i32 1}
!53 = !{ptr @dev_attr_logical_block_size, !52, !"dev_attr_logical_block_size", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1174, i32 1}
!56 = !{ptr @dev_attr_logical_block_count, !55, !"dev_attr_logical_block_count", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1175, i32 1}
!59 = !{ptr @dev_attr_erase_block_size, !58, !"dev_attr_erase_block_size", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1176, i32 1}
!62 = !{ptr @dev_attr_provisioning_type, !61, !"dev_attr_provisioning_type", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1177, i32 1}
!65 = !{ptr @dev_attr_physical_memory_resourse_count, !64, !"dev_attr_physical_memory_resourse_count", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1178, i32 1}
!68 = !{ptr @dev_attr_context_capabilities, !67, !"dev_attr_context_capabilities", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1179, i32 1}
!71 = !{ptr @dev_attr_large_unit_granularity, !70, !"dev_attr_large_unit_granularity", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1180, i32 1}
!74 = !{ptr @dev_attr_hpb_lu_max_active_regions, !73, !"dev_attr_hpb_lu_max_active_regions", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1181, i32 1}
!77 = !{ptr @dev_attr_hpb_pinned_region_start_offset, !76, !"dev_attr_hpb_pinned_region_start_offset", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1182, i32 1}
!80 = !{ptr @dev_attr_hpb_number_pinned_regions, !79, !"dev_attr_hpb_number_pinned_regions", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1183, i32 1}
!83 = !{ptr @dev_attr_wb_buf_alloc_units, !82, !"dev_attr_wb_buf_alloc_units", i1 false, i1 false}
!84 = !{ptr @ufs_sysfs_lun_attributes, !85, !"ufs_sysfs_lun_attributes", i1 false, i1 false}
!85 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1244, i32 26}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1242, i32 8}
!88 = !{ptr @dev_attr_dyn_cap_needed_attribute, !87, !"dev_attr_dyn_cap_needed_attribute", i1 false, i1 false}
!89 = !{ptr @ufs_sysfs_groups, !90, !"ufs_sysfs_groups", i1 false, i1 false}
!90 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1134, i32 38}
!91 = !{ptr @ufs_sysfs_default_group, !92, !"ufs_sysfs_default_group", i1 false, i1 false}
!92 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 277, i32 37}
!93 = !{ptr @ufs_sysfs_ufshcd_attrs, !94, !"ufs_sysfs_ufshcd_attrs", i1 false, i1 false}
!94 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 265, i32 26}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 256, i32 8}
!97 = !{ptr @dev_attr_rpm_lvl, !96, !"dev_attr_rpm_lvl", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 70, i32 25}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 257, i32 8}
!102 = !{ptr @dev_attr_rpm_target_dev_state, !101, !"dev_attr_rpm_target_dev_state", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 84, i32 25}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 28, i32 35}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 29, i32 34}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 30, i32 38}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 31, i32 38}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 32, i32 20}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 258, i32 8}
!117 = !{ptr @dev_attr_rpm_target_link_state, !116, !"dev_attr_rpm_target_link_state", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 16, i32 34}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 18, i32 38}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 19, i32 37}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 259, i32 8}
!126 = !{ptr @dev_attr_spm_lvl, !125, !"dev_attr_spm_lvl", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 260, i32 8}
!129 = !{ptr @dev_attr_spm_target_dev_state, !128, !"dev_attr_spm_target_dev_state", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 261, i32 8}
!132 = !{ptr @dev_attr_spm_target_link_state, !131, !"dev_attr_spm_target_link_state", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 262, i32 8}
!135 = !{ptr @dev_attr_auto_hibern8, !134, !"dev_attr_auto_hibern8", i1 false, i1 false}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 263, i32 8}
!138 = !{ptr @dev_attr_wb_on, !137, !"dev_attr_wb_on", i1 false, i1 false}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 232, i32 3}
!141 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wb_on_store._entry, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @wb_on_store._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 513, i32 10}
!147 = !{ptr @ufs_sysfs_monitor_group, !148, !"ufs_sysfs_monitor_group", i1 false, i1 false}
!148 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 512, i32 37}
!149 = !{ptr @ufs_sysfs_monitor_attrs, !150, !"ufs_sysfs_monitor_attrs", i1 false, i1 false}
!150 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 492, i32 26}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 475, i32 8}
!153 = !{ptr @dev_attr_monitor_enable, !152, !"dev_attr_monitor_enable", i1 false, i1 false}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 476, i32 8}
!156 = !{ptr @dev_attr_monitor_chunk_size, !155, !"dev_attr_monitor_chunk_size", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 321, i32 25}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 477, i32 8}
!161 = !{ptr @dev_attr_read_total_sectors, !160, !"dev_attr_read_total_sectors", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 478, i32 8}
!164 = !{ptr @dev_attr_read_total_busy, !163, !"dev_attr_read_total_busy", i1 false, i1 false}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 355, i32 25}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 479, i32 8}
!169 = !{ptr @dev_attr_read_nr_requests, !168, !"dev_attr_read_nr_requests", i1 false, i1 false}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 480, i32 8}
!172 = !{ptr @dev_attr_read_req_latency_avg, !171, !"dev_attr_read_req_latency_avg", i1 false, i1 false}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 481, i32 8}
!175 = !{ptr @dev_attr_read_req_latency_max, !174, !"dev_attr_read_req_latency_max", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 482, i32 8}
!178 = !{ptr @dev_attr_read_req_latency_min, !177, !"dev_attr_read_req_latency_min", i1 false, i1 false}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 483, i32 8}
!181 = !{ptr @dev_attr_read_req_latency_sum, !180, !"dev_attr_read_req_latency_sum", i1 false, i1 false}
!182 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 484, i32 8}
!184 = !{ptr @dev_attr_write_total_sectors, !183, !"dev_attr_write_total_sectors", i1 false, i1 false}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 485, i32 8}
!187 = !{ptr @dev_attr_write_total_busy, !186, !"dev_attr_write_total_busy", i1 false, i1 false}
!188 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 486, i32 8}
!190 = !{ptr @dev_attr_write_nr_requests, !189, !"dev_attr_write_nr_requests", i1 false, i1 false}
!191 = !{ptr @.str.68, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 487, i32 8}
!193 = !{ptr @dev_attr_write_req_latency_avg, !192, !"dev_attr_write_req_latency_avg", i1 false, i1 false}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 488, i32 8}
!196 = !{ptr @dev_attr_write_req_latency_max, !195, !"dev_attr_write_req_latency_max", i1 false, i1 false}
!197 = !{ptr @.str.70, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 489, i32 8}
!199 = !{ptr @dev_attr_write_req_latency_min, !198, !"dev_attr_write_req_latency_min", i1 false, i1 false}
!200 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 490, i32 8}
!202 = !{ptr @dev_attr_write_req_latency_sum, !201, !"dev_attr_write_req_latency_sum", i1 false, i1 false}
!203 = !{ptr @.str.72, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 651, i32 10}
!205 = !{ptr @ufs_sysfs_device_descriptor_group, !206, !"ufs_sysfs_device_descriptor_group", i1 false, i1 false}
!206 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 650, i32 37}
!207 = !{ptr @ufs_sysfs_device_descriptor, !208, !"ufs_sysfs_device_descriptor", i1 false, i1 false}
!208 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 614, i32 26}
!209 = !{ptr @.str.73, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 581, i32 1}
!211 = !{ptr @dev_attr_device_type, !210, !"dev_attr_device_type", i1 false, i1 false}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 582, i32 1}
!214 = !{ptr @dev_attr_device_class, !213, !"dev_attr_device_class", i1 false, i1 false}
!215 = !{ptr @.str.75, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 583, i32 1}
!217 = !{ptr @dev_attr_device_sub_class, !216, !"dev_attr_device_sub_class", i1 false, i1 false}
!218 = !{ptr @.str.76, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 584, i32 1}
!220 = !{ptr @dev_attr_protocol, !219, !"dev_attr_protocol", i1 false, i1 false}
!221 = !{ptr @.str.77, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 585, i32 1}
!223 = !{ptr @dev_attr_number_of_luns, !222, !"dev_attr_number_of_luns", i1 false, i1 false}
!224 = !{ptr @.str.78, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 586, i32 1}
!226 = !{ptr @dev_attr_number_of_wluns, !225, !"dev_attr_number_of_wluns", i1 false, i1 false}
!227 = !{ptr @.str.79, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 587, i32 1}
!229 = !{ptr @dev_attr_boot_enable, !228, !"dev_attr_boot_enable", i1 false, i1 false}
!230 = !{ptr @.str.80, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 588, i32 1}
!232 = !{ptr @dev_attr_descriptor_access_enable, !231, !"dev_attr_descriptor_access_enable", i1 false, i1 false}
!233 = !{ptr @.str.81, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 589, i32 1}
!235 = !{ptr @dev_attr_initial_power_mode, !234, !"dev_attr_initial_power_mode", i1 false, i1 false}
!236 = !{ptr @.str.82, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 590, i32 1}
!238 = !{ptr @dev_attr_high_priority_lun, !237, !"dev_attr_high_priority_lun", i1 false, i1 false}
!239 = !{ptr @.str.83, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 591, i32 1}
!241 = !{ptr @dev_attr_secure_removal_type, !240, !"dev_attr_secure_removal_type", i1 false, i1 false}
!242 = !{ptr @.str.84, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 592, i32 1}
!244 = !{ptr @dev_attr_support_security_lun, !243, !"dev_attr_support_security_lun", i1 false, i1 false}
!245 = !{ptr @.str.85, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 593, i32 1}
!247 = !{ptr @dev_attr_bkops_termination_latency, !246, !"dev_attr_bkops_termination_latency", i1 false, i1 false}
!248 = !{ptr @.str.86, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 594, i32 1}
!250 = !{ptr @dev_attr_initial_active_icc_level, !249, !"dev_attr_initial_active_icc_level", i1 false, i1 false}
!251 = !{ptr @.str.87, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 595, i32 1}
!253 = !{ptr @dev_attr_specification_version, !252, !"dev_attr_specification_version", i1 false, i1 false}
!254 = !{ptr @.str.88, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 596, i32 1}
!256 = !{ptr @dev_attr_manufacturing_date, !255, !"dev_attr_manufacturing_date", i1 false, i1 false}
!257 = !{ptr @.str.89, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 597, i32 1}
!259 = !{ptr @dev_attr_manufacturer_id, !258, !"dev_attr_manufacturer_id", i1 false, i1 false}
!260 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 598, i32 1}
!262 = !{ptr @dev_attr_rtt_capability, !261, !"dev_attr_rtt_capability", i1 false, i1 false}
!263 = !{ptr @.str.91, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 599, i32 1}
!265 = !{ptr @dev_attr_rtc_update, !264, !"dev_attr_rtc_update", i1 false, i1 false}
!266 = !{ptr @.str.92, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 600, i32 1}
!268 = !{ptr @dev_attr_ufs_features, !267, !"dev_attr_ufs_features", i1 false, i1 false}
!269 = !{ptr @.str.93, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 601, i32 1}
!271 = !{ptr @dev_attr_ffu_timeout, !270, !"dev_attr_ffu_timeout", i1 false, i1 false}
!272 = !{ptr @.str.94, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 602, i32 1}
!274 = !{ptr @dev_attr_queue_depth, !273, !"dev_attr_queue_depth", i1 false, i1 false}
!275 = !{ptr @.str.95, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 603, i32 1}
!277 = !{ptr @dev_attr_device_version, !276, !"dev_attr_device_version", i1 false, i1 false}
!278 = !{ptr @.str.96, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 604, i32 1}
!280 = !{ptr @dev_attr_number_of_secure_wpa, !279, !"dev_attr_number_of_secure_wpa", i1 false, i1 false}
!281 = !{ptr @.str.97, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 605, i32 1}
!283 = !{ptr @dev_attr_psa_max_data_size, !282, !"dev_attr_psa_max_data_size", i1 false, i1 false}
!284 = !{ptr @.str.98, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 606, i32 1}
!286 = !{ptr @dev_attr_psa_state_timeout, !285, !"dev_attr_psa_state_timeout", i1 false, i1 false}
!287 = !{ptr @.str.99, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 607, i32 1}
!289 = !{ptr @dev_attr_hpb_version, !288, !"dev_attr_hpb_version", i1 false, i1 false}
!290 = !{ptr @.str.100, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 608, i32 1}
!292 = !{ptr @dev_attr_hpb_control, !291, !"dev_attr_hpb_control", i1 false, i1 false}
!293 = !{ptr @.str.101, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 609, i32 1}
!295 = !{ptr @dev_attr_ext_feature_sup, !294, !"dev_attr_ext_feature_sup", i1 false, i1 false}
!296 = !{ptr @.str.102, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 610, i32 1}
!298 = !{ptr @dev_attr_wb_presv_us_en, !297, !"dev_attr_wb_presv_us_en", i1 false, i1 false}
!299 = !{ptr @.str.103, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 611, i32 1}
!301 = !{ptr @dev_attr_wb_type, !300, !"dev_attr_wb_type", i1 false, i1 false}
!302 = !{ptr @.str.104, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 612, i32 1}
!304 = !{ptr @dev_attr_wb_shared_alloc_units, !303, !"dev_attr_wb_shared_alloc_units", i1 false, i1 false}
!305 = !{ptr @.str.105, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 668, i32 10}
!307 = !{ptr @ufs_sysfs_interconnect_descriptor_group, !308, !"ufs_sysfs_interconnect_descriptor_group", i1 false, i1 false}
!308 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 667, i32 37}
!309 = !{ptr @ufs_sysfs_interconnect_descriptor, !310, !"ufs_sysfs_interconnect_descriptor", i1 false, i1 false}
!310 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 661, i32 26}
!311 = !{ptr @.str.106, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 658, i32 1}
!313 = !{ptr @dev_attr_unipro_version, !312, !"dev_attr_unipro_version", i1 false, i1 false}
!314 = !{ptr @.str.107, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 659, i32 1}
!316 = !{ptr @dev_attr_mphy_version, !315, !"dev_attr_mphy_version", i1 false, i1 false}
!317 = !{ptr @.str.108, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 770, i32 10}
!319 = !{ptr @ufs_sysfs_geometry_descriptor_group, !320, !"ufs_sysfs_geometry_descriptor_group", i1 false, i1 false}
!320 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 769, i32 37}
!321 = !{ptr @ufs_sysfs_geometry_descriptor, !322, !"ufs_sysfs_geometry_descriptor", i1 false, i1 false}
!322 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 727, i32 26}
!323 = !{ptr @.str.109, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 675, i32 1}
!325 = !{ptr @dev_attr_raw_device_capacity, !324, !"dev_attr_raw_device_capacity", i1 false, i1 false}
!326 = !{ptr @.str.110, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 676, i32 1}
!328 = !{ptr @dev_attr_max_number_of_luns, !327, !"dev_attr_max_number_of_luns", i1 false, i1 false}
!329 = !{ptr @.str.111, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 677, i32 1}
!331 = !{ptr @dev_attr_segment_size, !330, !"dev_attr_segment_size", i1 false, i1 false}
!332 = !{ptr @.str.112, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 678, i32 1}
!334 = !{ptr @dev_attr_allocation_unit_size, !333, !"dev_attr_allocation_unit_size", i1 false, i1 false}
!335 = !{ptr @.str.113, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 679, i32 1}
!337 = !{ptr @dev_attr_min_addressable_block_size, !336, !"dev_attr_min_addressable_block_size", i1 false, i1 false}
!338 = !{ptr @.str.114, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 680, i32 1}
!340 = !{ptr @dev_attr_optimal_read_block_size, !339, !"dev_attr_optimal_read_block_size", i1 false, i1 false}
!341 = !{ptr @.str.115, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 681, i32 1}
!343 = !{ptr @dev_attr_optimal_write_block_size, !342, !"dev_attr_optimal_write_block_size", i1 false, i1 false}
!344 = !{ptr @.str.116, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 682, i32 1}
!346 = !{ptr @dev_attr_max_in_buffer_size, !345, !"dev_attr_max_in_buffer_size", i1 false, i1 false}
!347 = !{ptr @.str.117, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 683, i32 1}
!349 = !{ptr @dev_attr_max_out_buffer_size, !348, !"dev_attr_max_out_buffer_size", i1 false, i1 false}
!350 = !{ptr @.str.118, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 684, i32 1}
!352 = !{ptr @dev_attr_rpmb_rw_size, !351, !"dev_attr_rpmb_rw_size", i1 false, i1 false}
!353 = !{ptr @.str.119, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 685, i32 1}
!355 = !{ptr @dev_attr_dyn_capacity_resource_policy, !354, !"dev_attr_dyn_capacity_resource_policy", i1 false, i1 false}
!356 = !{ptr @.str.120, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 686, i32 1}
!358 = !{ptr @dev_attr_data_ordering, !357, !"dev_attr_data_ordering", i1 false, i1 false}
!359 = !{ptr @.str.121, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 687, i32 1}
!361 = !{ptr @dev_attr_max_number_of_contexts, !360, !"dev_attr_max_number_of_contexts", i1 false, i1 false}
!362 = !{ptr @.str.122, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 688, i32 1}
!364 = !{ptr @dev_attr_sys_data_tag_unit_size, !363, !"dev_attr_sys_data_tag_unit_size", i1 false, i1 false}
!365 = !{ptr @.str.123, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 689, i32 1}
!367 = !{ptr @dev_attr_sys_data_tag_resource_size, !366, !"dev_attr_sys_data_tag_resource_size", i1 false, i1 false}
!368 = !{ptr @.str.124, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 690, i32 1}
!370 = !{ptr @dev_attr_secure_removal_types, !369, !"dev_attr_secure_removal_types", i1 false, i1 false}
!371 = !{ptr @.str.125, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 691, i32 1}
!373 = !{ptr @dev_attr_memory_types, !372, !"dev_attr_memory_types", i1 false, i1 false}
!374 = !{ptr @.str.126, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 692, i32 1}
!376 = !{ptr @dev_attr_sys_code_memory_max_alloc_units, !375, !"dev_attr_sys_code_memory_max_alloc_units", i1 false, i1 false}
!377 = !{ptr @.str.127, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 694, i32 1}
!379 = !{ptr @dev_attr_sys_code_memory_capacity_adjustment_factor, !378, !"dev_attr_sys_code_memory_capacity_adjustment_factor", i1 false, i1 false}
!380 = !{ptr @.str.128, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 696, i32 1}
!382 = !{ptr @dev_attr_non_persist_memory_max_alloc_units, !381, !"dev_attr_non_persist_memory_max_alloc_units", i1 false, i1 false}
!383 = !{ptr @.str.129, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 698, i32 1}
!385 = !{ptr @dev_attr_non_persist_memory_capacity_adjustment_factor, !384, !"dev_attr_non_persist_memory_capacity_adjustment_factor", i1 false, i1 false}
!386 = !{ptr @.str.130, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 700, i32 1}
!388 = !{ptr @dev_attr_enh1_memory_max_alloc_units, !387, !"dev_attr_enh1_memory_max_alloc_units", i1 false, i1 false}
!389 = !{ptr @.str.131, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 702, i32 1}
!391 = !{ptr @dev_attr_enh1_memory_capacity_adjustment_factor, !390, !"dev_attr_enh1_memory_capacity_adjustment_factor", i1 false, i1 false}
!392 = !{ptr @.str.132, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 704, i32 1}
!394 = !{ptr @dev_attr_enh2_memory_max_alloc_units, !393, !"dev_attr_enh2_memory_max_alloc_units", i1 false, i1 false}
!395 = !{ptr @.str.133, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 706, i32 1}
!397 = !{ptr @dev_attr_enh2_memory_capacity_adjustment_factor, !396, !"dev_attr_enh2_memory_capacity_adjustment_factor", i1 false, i1 false}
!398 = !{ptr @.str.134, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 708, i32 1}
!400 = !{ptr @dev_attr_enh3_memory_max_alloc_units, !399, !"dev_attr_enh3_memory_max_alloc_units", i1 false, i1 false}
!401 = !{ptr @.str.135, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 710, i32 1}
!403 = !{ptr @dev_attr_enh3_memory_capacity_adjustment_factor, !402, !"dev_attr_enh3_memory_capacity_adjustment_factor", i1 false, i1 false}
!404 = !{ptr @.str.136, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 712, i32 1}
!406 = !{ptr @dev_attr_enh4_memory_max_alloc_units, !405, !"dev_attr_enh4_memory_max_alloc_units", i1 false, i1 false}
!407 = !{ptr @.str.137, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 714, i32 1}
!409 = !{ptr @dev_attr_enh4_memory_capacity_adjustment_factor, !408, !"dev_attr_enh4_memory_capacity_adjustment_factor", i1 false, i1 false}
!410 = !{ptr @.str.138, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 716, i32 1}
!412 = !{ptr @dev_attr_hpb_region_size, !411, !"dev_attr_hpb_region_size", i1 false, i1 false}
!413 = !{ptr @.str.139, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 717, i32 1}
!415 = !{ptr @dev_attr_hpb_number_lu, !414, !"dev_attr_hpb_number_lu", i1 false, i1 false}
!416 = !{ptr @.str.140, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 718, i32 1}
!418 = !{ptr @dev_attr_hpb_subregion_size, !417, !"dev_attr_hpb_subregion_size", i1 false, i1 false}
!419 = !{ptr @.str.141, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 719, i32 1}
!421 = !{ptr @dev_attr_hpb_max_active_regions, !420, !"dev_attr_hpb_max_active_regions", i1 false, i1 false}
!422 = !{ptr @.str.142, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 720, i32 1}
!424 = !{ptr @dev_attr_wb_max_alloc_units, !423, !"dev_attr_wb_max_alloc_units", i1 false, i1 false}
!425 = !{ptr @.str.143, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 721, i32 1}
!427 = !{ptr @dev_attr_wb_max_wb_luns, !426, !"dev_attr_wb_max_wb_luns", i1 false, i1 false}
!428 = !{ptr @.str.144, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 722, i32 1}
!430 = !{ptr @dev_attr_wb_buff_cap_adj, !429, !"dev_attr_wb_buff_cap_adj", i1 false, i1 false}
!431 = !{ptr @.str.145, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 723, i32 1}
!433 = !{ptr @dev_attr_wb_sup_red_type, !432, !"dev_attr_wb_sup_red_type", i1 false, i1 false}
!434 = !{ptr @.str.146, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 724, i32 1}
!436 = !{ptr @dev_attr_wb_sup_wb_type, !435, !"dev_attr_wb_sup_wb_type", i1 false, i1 false}
!437 = !{ptr @.str.147, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 789, i32 10}
!439 = !{ptr @ufs_sysfs_health_descriptor_group, !440, !"ufs_sysfs_health_descriptor_group", i1 false, i1 false}
!440 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 788, i32 37}
!441 = !{ptr @ufs_sysfs_health_descriptor, !442, !"ufs_sysfs_health_descriptor", i1 false, i1 false}
!442 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 781, i32 26}
!443 = !{ptr @.str.148, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 777, i32 1}
!445 = !{ptr @dev_attr_eol_info, !444, !"dev_attr_eol_info", i1 false, i1 false}
!446 = !{ptr @.str.149, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 778, i32 1}
!448 = !{ptr @dev_attr_life_time_estimation_a, !447, !"dev_attr_life_time_estimation_a", i1 false, i1 false}
!449 = !{ptr @.str.150, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 779, i32 1}
!451 = !{ptr @dev_attr_life_time_estimation_b, !450, !"dev_attr_life_time_estimation_b", i1 false, i1 false}
!452 = !{ptr @.str.151, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 905, i32 10}
!454 = !{ptr @ufs_sysfs_power_descriptor_group, !455, !"ufs_sysfs_power_descriptor_group", i1 false, i1 false}
!455 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 904, i32 37}
!456 = !{ptr @ufs_sysfs_power_descriptor, !457, !"ufs_sysfs_power_descriptor", i1 false, i1 false}
!457 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 852, i32 26}
!458 = !{ptr @.str.152, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 803, i32 1}
!460 = !{ptr @dev_attr_active_icc_levels_vcc0, !459, !"dev_attr_active_icc_levels_vcc0", i1 false, i1 false}
!461 = !{ptr @.str.153, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 804, i32 1}
!463 = !{ptr @dev_attr_active_icc_levels_vcc1, !462, !"dev_attr_active_icc_levels_vcc1", i1 false, i1 false}
!464 = !{ptr @.str.154, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 805, i32 1}
!466 = !{ptr @dev_attr_active_icc_levels_vcc2, !465, !"dev_attr_active_icc_levels_vcc2", i1 false, i1 false}
!467 = !{ptr @.str.155, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 806, i32 1}
!469 = !{ptr @dev_attr_active_icc_levels_vcc3, !468, !"dev_attr_active_icc_levels_vcc3", i1 false, i1 false}
!470 = !{ptr @.str.156, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 807, i32 1}
!472 = !{ptr @dev_attr_active_icc_levels_vcc4, !471, !"dev_attr_active_icc_levels_vcc4", i1 false, i1 false}
!473 = !{ptr @.str.157, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 808, i32 1}
!475 = !{ptr @dev_attr_active_icc_levels_vcc5, !474, !"dev_attr_active_icc_levels_vcc5", i1 false, i1 false}
!476 = !{ptr @.str.158, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 809, i32 1}
!478 = !{ptr @dev_attr_active_icc_levels_vcc6, !477, !"dev_attr_active_icc_levels_vcc6", i1 false, i1 false}
!479 = !{ptr @.str.159, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 810, i32 1}
!481 = !{ptr @dev_attr_active_icc_levels_vcc7, !480, !"dev_attr_active_icc_levels_vcc7", i1 false, i1 false}
!482 = !{ptr @.str.160, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 811, i32 1}
!484 = !{ptr @dev_attr_active_icc_levels_vcc8, !483, !"dev_attr_active_icc_levels_vcc8", i1 false, i1 false}
!485 = !{ptr @.str.161, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 812, i32 1}
!487 = !{ptr @dev_attr_active_icc_levels_vcc9, !486, !"dev_attr_active_icc_levels_vcc9", i1 false, i1 false}
!488 = !{ptr @.str.162, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 813, i32 1}
!490 = !{ptr @dev_attr_active_icc_levels_vcc10, !489, !"dev_attr_active_icc_levels_vcc10", i1 false, i1 false}
!491 = !{ptr @.str.163, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 814, i32 1}
!493 = !{ptr @dev_attr_active_icc_levels_vcc11, !492, !"dev_attr_active_icc_levels_vcc11", i1 false, i1 false}
!494 = !{ptr @.str.164, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 815, i32 1}
!496 = !{ptr @dev_attr_active_icc_levels_vcc12, !495, !"dev_attr_active_icc_levels_vcc12", i1 false, i1 false}
!497 = !{ptr @.str.165, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 816, i32 1}
!499 = !{ptr @dev_attr_active_icc_levels_vcc13, !498, !"dev_attr_active_icc_levels_vcc13", i1 false, i1 false}
!500 = !{ptr @.str.166, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 817, i32 1}
!502 = !{ptr @dev_attr_active_icc_levels_vcc14, !501, !"dev_attr_active_icc_levels_vcc14", i1 false, i1 false}
!503 = !{ptr @.str.167, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 818, i32 1}
!505 = !{ptr @dev_attr_active_icc_levels_vcc15, !504, !"dev_attr_active_icc_levels_vcc15", i1 false, i1 false}
!506 = !{ptr @.str.168, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 819, i32 1}
!508 = !{ptr @dev_attr_active_icc_levels_vccq0, !507, !"dev_attr_active_icc_levels_vccq0", i1 false, i1 false}
!509 = !{ptr @.str.169, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 820, i32 1}
!511 = !{ptr @dev_attr_active_icc_levels_vccq1, !510, !"dev_attr_active_icc_levels_vccq1", i1 false, i1 false}
!512 = !{ptr @.str.170, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 821, i32 1}
!514 = !{ptr @dev_attr_active_icc_levels_vccq2, !513, !"dev_attr_active_icc_levels_vccq2", i1 false, i1 false}
!515 = !{ptr @.str.171, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 822, i32 1}
!517 = !{ptr @dev_attr_active_icc_levels_vccq3, !516, !"dev_attr_active_icc_levels_vccq3", i1 false, i1 false}
!518 = !{ptr @.str.172, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 823, i32 1}
!520 = !{ptr @dev_attr_active_icc_levels_vccq4, !519, !"dev_attr_active_icc_levels_vccq4", i1 false, i1 false}
!521 = !{ptr @.str.173, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 824, i32 1}
!523 = !{ptr @dev_attr_active_icc_levels_vccq5, !522, !"dev_attr_active_icc_levels_vccq5", i1 false, i1 false}
!524 = !{ptr @.str.174, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 825, i32 1}
!526 = !{ptr @dev_attr_active_icc_levels_vccq6, !525, !"dev_attr_active_icc_levels_vccq6", i1 false, i1 false}
!527 = !{ptr @.str.175, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 826, i32 1}
!529 = !{ptr @dev_attr_active_icc_levels_vccq7, !528, !"dev_attr_active_icc_levels_vccq7", i1 false, i1 false}
!530 = !{ptr @.str.176, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 827, i32 1}
!532 = !{ptr @dev_attr_active_icc_levels_vccq8, !531, !"dev_attr_active_icc_levels_vccq8", i1 false, i1 false}
!533 = !{ptr @.str.177, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 828, i32 1}
!535 = !{ptr @dev_attr_active_icc_levels_vccq9, !534, !"dev_attr_active_icc_levels_vccq9", i1 false, i1 false}
!536 = !{ptr @.str.178, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 829, i32 1}
!538 = !{ptr @dev_attr_active_icc_levels_vccq10, !537, !"dev_attr_active_icc_levels_vccq10", i1 false, i1 false}
!539 = !{ptr @.str.179, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 830, i32 1}
!541 = !{ptr @dev_attr_active_icc_levels_vccq11, !540, !"dev_attr_active_icc_levels_vccq11", i1 false, i1 false}
!542 = !{ptr @.str.180, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 831, i32 1}
!544 = !{ptr @dev_attr_active_icc_levels_vccq12, !543, !"dev_attr_active_icc_levels_vccq12", i1 false, i1 false}
!545 = !{ptr @.str.181, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 832, i32 1}
!547 = !{ptr @dev_attr_active_icc_levels_vccq13, !546, !"dev_attr_active_icc_levels_vccq13", i1 false, i1 false}
!548 = !{ptr @.str.182, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 833, i32 1}
!550 = !{ptr @dev_attr_active_icc_levels_vccq14, !549, !"dev_attr_active_icc_levels_vccq14", i1 false, i1 false}
!551 = !{ptr @.str.183, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 834, i32 1}
!553 = !{ptr @dev_attr_active_icc_levels_vccq15, !552, !"dev_attr_active_icc_levels_vccq15", i1 false, i1 false}
!554 = !{ptr @.str.184, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 835, i32 1}
!556 = !{ptr @dev_attr_active_icc_levels_vccq20, !555, !"dev_attr_active_icc_levels_vccq20", i1 false, i1 false}
!557 = !{ptr @.str.185, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 836, i32 1}
!559 = !{ptr @dev_attr_active_icc_levels_vccq21, !558, !"dev_attr_active_icc_levels_vccq21", i1 false, i1 false}
!560 = !{ptr @.str.186, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 837, i32 1}
!562 = !{ptr @dev_attr_active_icc_levels_vccq22, !561, !"dev_attr_active_icc_levels_vccq22", i1 false, i1 false}
!563 = !{ptr @.str.187, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 838, i32 1}
!565 = !{ptr @dev_attr_active_icc_levels_vccq23, !564, !"dev_attr_active_icc_levels_vccq23", i1 false, i1 false}
!566 = !{ptr @.str.188, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 839, i32 1}
!568 = !{ptr @dev_attr_active_icc_levels_vccq24, !567, !"dev_attr_active_icc_levels_vccq24", i1 false, i1 false}
!569 = !{ptr @.str.189, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 840, i32 1}
!571 = !{ptr @dev_attr_active_icc_levels_vccq25, !570, !"dev_attr_active_icc_levels_vccq25", i1 false, i1 false}
!572 = !{ptr @.str.190, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 841, i32 1}
!574 = !{ptr @dev_attr_active_icc_levels_vccq26, !573, !"dev_attr_active_icc_levels_vccq26", i1 false, i1 false}
!575 = !{ptr @.str.191, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 842, i32 1}
!577 = !{ptr @dev_attr_active_icc_levels_vccq27, !576, !"dev_attr_active_icc_levels_vccq27", i1 false, i1 false}
!578 = !{ptr @.str.192, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 843, i32 1}
!580 = !{ptr @dev_attr_active_icc_levels_vccq28, !579, !"dev_attr_active_icc_levels_vccq28", i1 false, i1 false}
!581 = !{ptr @.str.193, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 844, i32 1}
!583 = !{ptr @dev_attr_active_icc_levels_vccq29, !582, !"dev_attr_active_icc_levels_vccq29", i1 false, i1 false}
!584 = !{ptr @.str.194, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 845, i32 1}
!586 = !{ptr @dev_attr_active_icc_levels_vccq210, !585, !"dev_attr_active_icc_levels_vccq210", i1 false, i1 false}
!587 = !{ptr @.str.195, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 846, i32 1}
!589 = !{ptr @dev_attr_active_icc_levels_vccq211, !588, !"dev_attr_active_icc_levels_vccq211", i1 false, i1 false}
!590 = !{ptr @.str.196, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 847, i32 1}
!592 = !{ptr @dev_attr_active_icc_levels_vccq212, !591, !"dev_attr_active_icc_levels_vccq212", i1 false, i1 false}
!593 = !{ptr @.str.197, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 848, i32 1}
!595 = !{ptr @dev_attr_active_icc_levels_vccq213, !594, !"dev_attr_active_icc_levels_vccq213", i1 false, i1 false}
!596 = !{ptr @.str.198, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 849, i32 1}
!598 = !{ptr @dev_attr_active_icc_levels_vccq214, !597, !"dev_attr_active_icc_levels_vccq214", i1 false, i1 false}
!599 = !{ptr @.str.199, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 850, i32 1}
!601 = !{ptr @dev_attr_active_icc_levels_vccq215, !600, !"dev_attr_active_icc_levels_vccq215", i1 false, i1 false}
!602 = !{ptr @.str.200, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 969, i32 10}
!604 = !{ptr @ufs_sysfs_string_descriptors_group, !605, !"ufs_sysfs_string_descriptors_group", i1 false, i1 false}
!605 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 968, i32 37}
!606 = !{ptr @ufs_sysfs_string_descriptors, !607, !"ufs_sysfs_string_descriptors", i1 false, i1 false}
!607 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 959, i32 26}
!608 = !{ptr @.str.201, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 953, i32 1}
!610 = !{ptr @dev_attr_manufacturer_name, !609, !"dev_attr_manufacturer_name", i1 false, i1 false}
!611 = !{ptr @.str.202, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 954, i32 1}
!613 = !{ptr @dev_attr_product_name, !612, !"dev_attr_product_name", i1 false, i1 false}
!614 = !{ptr @.str.203, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 955, i32 1}
!616 = !{ptr @dev_attr_oem_id, !615, !"dev_attr_oem_id", i1 false, i1 false}
!617 = !{ptr @.str.204, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 956, i32 1}
!619 = !{ptr @dev_attr_serial_number, !618, !"dev_attr_serial_number", i1 false, i1 false}
!620 = !{ptr @.str.205, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 957, i32 1}
!622 = !{ptr @dev_attr_product_revision, !621, !"dev_attr_product_revision", i1 false, i1 false}
!623 = !{ptr @.str.206, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1040, i32 10}
!625 = !{ptr @ufs_sysfs_flags_group, !626, !"ufs_sysfs_flags_group", i1 false, i1 false}
!626 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1039, i32 37}
!627 = !{ptr @ufs_sysfs_device_flags, !628, !"ufs_sysfs_device_flags", i1 false, i1 false}
!628 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1023, i32 26}
!629 = !{ptr @.str.207, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1010, i32 1}
!631 = !{ptr @dev_attr_device_init, !630, !"dev_attr_device_init", i1 false, i1 false}
!632 = !{ptr @.str.208, !630, !"<string literal>", i1 false, i1 false}
!633 = !{ptr @.str.209, !630, !"<string literal>", i1 false, i1 false}
!634 = !{ptr @.str.210, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1011, i32 1}
!636 = !{ptr @dev_attr_permanent_wpe, !635, !"dev_attr_permanent_wpe", i1 false, i1 false}
!637 = !{ptr @.str.211, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1012, i32 1}
!639 = !{ptr @dev_attr_power_on_wpe, !638, !"dev_attr_power_on_wpe", i1 false, i1 false}
!640 = !{ptr @.str.212, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1013, i32 1}
!642 = !{ptr @dev_attr_bkops_enable, !641, !"dev_attr_bkops_enable", i1 false, i1 false}
!643 = !{ptr @.str.213, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1014, i32 1}
!645 = !{ptr @dev_attr_life_span_mode_enable, !644, !"dev_attr_life_span_mode_enable", i1 false, i1 false}
!646 = !{ptr @.str.214, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1015, i32 1}
!648 = !{ptr @dev_attr_phy_resource_removal, !647, !"dev_attr_phy_resource_removal", i1 false, i1 false}
!649 = !{ptr @.str.215, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1016, i32 1}
!651 = !{ptr @dev_attr_busy_rtc, !650, !"dev_attr_busy_rtc", i1 false, i1 false}
!652 = !{ptr @.str.216, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1017, i32 1}
!654 = !{ptr @dev_attr_disable_fw_update, !653, !"dev_attr_disable_fw_update", i1 false, i1 false}
!655 = !{ptr @.str.217, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1018, i32 1}
!657 = !{ptr @dev_attr_wb_enable, !656, !"dev_attr_wb_enable", i1 false, i1 false}
!658 = !{ptr @.str.218, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1019, i32 1}
!660 = !{ptr @dev_attr_wb_flush_en, !659, !"dev_attr_wb_flush_en", i1 false, i1 false}
!661 = !{ptr @.str.219, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1020, i32 1}
!663 = !{ptr @dev_attr_wb_flush_during_h8, !662, !"dev_attr_wb_flush_during_h8", i1 false, i1 false}
!664 = !{ptr @.str.220, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1021, i32 1}
!666 = !{ptr @dev_attr_hpb_enable, !665, !"dev_attr_hpb_enable", i1 false, i1 false}
!667 = !{ptr @.str.221, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1130, i32 10}
!669 = !{ptr @ufs_sysfs_attributes_group, !670, !"ufs_sysfs_attributes_group", i1 false, i1 false}
!670 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1129, i32 37}
!671 = !{ptr @ufs_sysfs_attributes, !672, !"ufs_sysfs_attributes", i1 false, i1 false}
!672 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1104, i32 26}
!673 = !{ptr @.str.222, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1081, i32 1}
!675 = !{ptr @dev_attr_boot_lun_enabled, !674, !"dev_attr_boot_lun_enabled", i1 false, i1 false}
!676 = !{ptr @.str.223, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1082, i32 1}
!678 = !{ptr @dev_attr_max_data_size_hpb_single_cmd, !677, !"dev_attr_max_data_size_hpb_single_cmd", i1 false, i1 false}
!679 = !{ptr @.str.224, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1083, i32 1}
!681 = !{ptr @dev_attr_current_power_mode, !680, !"dev_attr_current_power_mode", i1 false, i1 false}
!682 = !{ptr @.str.225, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1084, i32 1}
!684 = !{ptr @dev_attr_active_icc_level, !683, !"dev_attr_active_icc_level", i1 false, i1 false}
!685 = !{ptr @.str.226, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1085, i32 1}
!687 = !{ptr @dev_attr_ooo_data_enabled, !686, !"dev_attr_ooo_data_enabled", i1 false, i1 false}
!688 = !{ptr @.str.227, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1086, i32 1}
!690 = !{ptr @dev_attr_bkops_status, !689, !"dev_attr_bkops_status", i1 false, i1 false}
!691 = !{ptr @.str.228, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1087, i32 1}
!693 = !{ptr @dev_attr_purge_status, !692, !"dev_attr_purge_status", i1 false, i1 false}
!694 = !{ptr @.str.229, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1088, i32 1}
!696 = !{ptr @dev_attr_max_data_in_size, !695, !"dev_attr_max_data_in_size", i1 false, i1 false}
!697 = !{ptr @.str.230, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1089, i32 1}
!699 = !{ptr @dev_attr_max_data_out_size, !698, !"dev_attr_max_data_out_size", i1 false, i1 false}
!700 = !{ptr @.str.231, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1090, i32 1}
!702 = !{ptr @dev_attr_reference_clock_frequency, !701, !"dev_attr_reference_clock_frequency", i1 false, i1 false}
!703 = !{ptr @.str.232, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1091, i32 1}
!705 = !{ptr @dev_attr_configuration_descriptor_lock, !704, !"dev_attr_configuration_descriptor_lock", i1 false, i1 false}
!706 = !{ptr @.str.233, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1092, i32 1}
!708 = !{ptr @dev_attr_max_number_of_rtt, !707, !"dev_attr_max_number_of_rtt", i1 false, i1 false}
!709 = !{ptr @.str.234, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1093, i32 1}
!711 = !{ptr @dev_attr_exception_event_control, !710, !"dev_attr_exception_event_control", i1 false, i1 false}
!712 = !{ptr @.str.235, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1094, i32 1}
!714 = !{ptr @dev_attr_exception_event_status, !713, !"dev_attr_exception_event_status", i1 false, i1 false}
!715 = !{ptr @.str.236, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1095, i32 1}
!717 = !{ptr @dev_attr_ffu_status, !716, !"dev_attr_ffu_status", i1 false, i1 false}
!718 = !{ptr @.str.237, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1096, i32 1}
!720 = !{ptr @dev_attr_psa_state, !719, !"dev_attr_psa_state", i1 false, i1 false}
!721 = !{ptr @.str.238, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1097, i32 1}
!723 = !{ptr @dev_attr_psa_data_size, !722, !"dev_attr_psa_data_size", i1 false, i1 false}
!724 = !{ptr @.str.239, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1098, i32 1}
!726 = !{ptr @dev_attr_wb_flush_status, !725, !"dev_attr_wb_flush_status", i1 false, i1 false}
!727 = !{ptr @.str.240, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1099, i32 1}
!729 = !{ptr @dev_attr_wb_avail_buf, !728, !"dev_attr_wb_avail_buf", i1 false, i1 false}
!730 = !{ptr @.str.241, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1100, i32 1}
!732 = !{ptr @dev_attr_wb_life_time_est, !731, !"dev_attr_wb_life_time_est", i1 false, i1 false}
!733 = !{ptr @.str.242, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/scsi/ufs/ufs-sysfs.c", i32 1101, i32 1}
!735 = !{ptr @dev_attr_wb_cur_buf, !734, !"dev_attr_wb_cur_buf", i1 false, i1 false}
!736 = !{i32 1, !"wchar_size", i32 2}
!737 = !{i32 1, !"min_enum_size", i32 4}
!738 = !{i32 8, !"branch-target-enforcement", i32 0}
!739 = !{i32 8, !"sign-return-address", i32 0}
!740 = !{i32 8, !"sign-return-address-all", i32 0}
!741 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!742 = !{i32 7, !"uwtable", i32 1}
!743 = !{i32 7, !"frame-pointer", i32 2}
!744 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!745 = !{i8 0, i8 2}
!746 = !{!"auto-init"}
!747 = !{i64 4769054}
!748 = !{i64 2155739080}
!749 = !{i64 847312, i64 847339, i64 847361, i64 847389}
!750 = !{i64 847720, i64 847747, i64 847780, i64 847801, i64 847828, i64 847854}
!751 = !{!"branch_weights", i32 2000, i32 1}
!752 = !{i64 2148332856, i64 2148333136, i64 2148333470, i64 2148333804}
