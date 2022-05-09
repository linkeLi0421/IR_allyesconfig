; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_attr.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.aen = type { [8 x i32] }
%struct.ql4_aen_log = type { i32, [512 x %struct.aen] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla4_8xxx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipaddress_config = type { i16, i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, [11 x i8], i8, [11 x i8], i8, i16, i8, i8, i32, i32, i32, i8, i32, i16, i8, i16, i16, i16, i16, i16, [224 x i8] }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.about_fw_info = type { i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, [180 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ql4_boot_tgt_info = type { %struct.ql4_boot_session_info, %struct.ql4_boot_session_info }
%struct.ql4_boot_session_info = type { [224 x i8], [1 x %struct.ql4_conn_info] }
%struct.ql4_conn_info = type { i16, %struct.ip_address_format, %struct.ql4_chap_format }
%struct.ip_address_format = type { i8, [16 x i8] }
%struct.ql4_chap_format = type { [256 x i8], [100 x i8], [256 x i8], [100 x i8], i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qla4_83xx_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.qla4_83xx_idc_information = type { i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.174 = type { ptr }
%struct.isp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@qla4_8xxx_alloc_sysfs_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to create sysfs %s binary attribute (%d).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qla4_8xxx_alloc_sysfs_attr\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/qla4xxx/ql4_attr.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qla4_8xxx_alloc_sysfs_attr._entry_ptr = internal global ptr @qla4_8xxx_alloc_sysfs_attr._entry, section ".printk_index", align 4
@qla4xxx_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qla4xxx_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qla4xxx_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qla4xxx_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw_dump\00", [24 x i8] zeroinitializer }, align 32
@sysfs_fw_dump_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.5, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qla4_8xxx_sysfs_read_fw_dump, ptr @qla4_8xxx_sysfs_write_fw_dump, ptr null }, [52 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Invalid input. Return err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla4_8xxx_sysfs_write_fw_dump\00", [34 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry_ptr = internal global ptr @qla4_8xxx_sysfs_write_fw_dump._entry, section ".printk_index", align 4
@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@qla4_8xxx_sysfs_write_fw_dump._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 62, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware template reloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry_ptr.11 = internal global ptr @qla4_8xxx_sysfs_write_fw_dump._entry.8, section ".printk_index", align 4
@qla4_8xxx_sysfs_write_fw_dump._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 72, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Raw firmware dump ready for read on (%ld).\0A\00", [52 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry_ptr.14 = internal global ptr @qla4_8xxx_sysfs_write_fw_dump._entry.12, section ".printk_index", align 4
@qla4_8xxx_sysfs_write_fw_dump._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 81, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Setting Need reset\0A\00", [40 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry_ptr.17 = internal global ptr @qla4_8xxx_sysfs_write_fw_dump._entry.15, section ".printk_index", align 4
@qla4_8xxx_sysfs_write_fw_dump._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 90, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Reset owner is 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry_ptr.20 = internal global ptr @qla4_8xxx_sysfs_write_fw_dump._entry.18, section ".printk_index", align 4
@qla4_8xxx_sysfs_write_fw_dump._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.2, i32 95, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Reset not performed as device state is 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@qla4_8xxx_sysfs_write_fw_dump._entry_ptr.23 = internal global ptr @qla4_8xxx_sysfs_write_fw_dump._entry.21, section ".printk_index", align 4
@qla4xxx_host_attrs = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @dev_attr_fw_version, ptr @dev_attr_serial_num, ptr @dev_attr_iscsi_version, ptr @dev_attr_optrom_version, ptr @dev_attr_board_id, ptr @dev_attr_fw_state, ptr @dev_attr_phy_port_cnt, ptr @dev_attr_phy_port_num, ptr @dev_attr_iscsi_func_cnt, ptr @dev_attr_hba_model, ptr @dev_attr_fw_timestamp, ptr @dev_attr_fw_build_user, ptr @dev_attr_fw_ext_timestamp, ptr @dev_attr_fw_load_src, ptr @dev_attr_fw_uptime, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_serial_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iscsi_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_iscsi_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_optrom_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_optrom_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_board_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phy_port_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_phy_port_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_phy_port_num = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_phy_port_num_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iscsi_func_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_iscsi_func_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hba_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_hba_model_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_timestamp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_timestamp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_build_user = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_build_user_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_ext_timestamp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_ext_timestamp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_load_src = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_load_src_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_uptime = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qla4xxx_fw_uptime_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d.%02d.%02d (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d.%02d.%02d.%02d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial_num\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iscsi_version\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%02d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"optrom_version\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board_id\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_state\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%08X%8X\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_port_cnt\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04X\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_port_num\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iscsi_func_cnt\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hba_model\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_timestamp\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw_build_user\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fw_ext_timestamp\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_load_src\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flash Primary\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Flash Secondary\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Host Download\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fw_uptime\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u secs\0A\00", [20 x i8] zeroinitializer }, align 32
@switch.table.qla4xxx_fw_load_src_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 16, i64 32802, i64 32818, i64 32834]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 16, i64 16400, i64 16418, i64 16434]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 135, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"qla4xxx_host_attr_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 352, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"qla4xxx_host_groups\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 356, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 121, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"sysfs_fw_dump_attr\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 107, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 49, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 61, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 70, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 80, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 89, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 93, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"qla4xxx_host_attrs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 333, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"dev_attr_serial_num\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"dev_attr_iscsi_version\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [24 x i8] c"dev_attr_optrom_version\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"dev_attr_board_id\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"dev_attr_fw_state\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"dev_attr_phy_port_cnt\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"dev_attr_phy_port_num\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"dev_attr_iscsi_func_cnt\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"dev_attr_hba_model\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"dev_attr_fw_timestamp\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"dev_attr_fw_build_user\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"dev_attr_fw_ext_timestamp\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"dev_attr_fw_load_src\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"dev_attr_fw_uptime\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 316, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 159, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 163, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 317, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 173, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 318, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 181, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 319, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 320, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 200, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 321, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 210, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 322, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 223, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 323, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 324, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 325, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 326, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 264, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 327, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 328, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 330, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 293, i32 14 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 296, i32 14 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 299, i32 14 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 331, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [35 x i8] c"../drivers/scsi/qla4xxx/ql4_attr.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 312, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant [38 x i8] c"switch.table.qla4xxx_fw_load_src_show\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @qla4_8xxx_alloc_sysfs_attr._entry, ptr @qla4_8xxx_alloc_sysfs_attr._entry_ptr, ptr @qla4_8xxx_sysfs_write_fw_dump._entry, ptr @qla4_8xxx_sysfs_write_fw_dump._entry.12, ptr @qla4_8xxx_sysfs_write_fw_dump._entry.15, ptr @qla4_8xxx_sysfs_write_fw_dump._entry.18, ptr @qla4_8xxx_sysfs_write_fw_dump._entry.21, ptr @qla4_8xxx_sysfs_write_fw_dump._entry.8, ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr, ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.11, ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.14, ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.17, ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.20, ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @qla4xxx_host_attr_group, ptr @qla4xxx_host_groups, ptr @.str.5, ptr @sysfs_fw_dump_attr, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @qla4xxx_host_attrs, ptr @dev_attr_fw_version, ptr @dev_attr_serial_num, ptr @dev_attr_iscsi_version, ptr @dev_attr_optrom_version, ptr @dev_attr_board_id, ptr @dev_attr_fw_state, ptr @dev_attr_phy_port_cnt, ptr @dev_attr_phy_port_num, ptr @dev_attr_iscsi_func_cnt, ptr @dev_attr_hba_model, ptr @dev_attr_fw_timestamp, ptr @dev_attr_fw_build_user, ptr @dev_attr_fw_ext_timestamp, ptr @dev_attr_fw_load_src, ptr @dev_attr_fw_uptime, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.qla4xxx_fw_load_src_show], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_alloc_sysfs_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_fw_dump_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_sysfs_write_fw_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_sysfs_write_fw_dump._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_sysfs_write_fw_dump._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_sysfs_write_fw_dump._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_sysfs_write_fw_dump._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4_8xxx_sysfs_write_fw_dump._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla4xxx_host_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iscsi_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_optrom_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_port_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phy_port_num to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iscsi_func_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hba_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_timestamp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_build_user to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_ext_timestamp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_load_src to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_uptime to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qla4xxx_fw_load_src_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_alloc_sysfs_attr(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_gendev, ptr noundef nonnull @sysfs_fw_dump_attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %entry.for.inc_crit_edge, label %do.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla4_8xxx_free_sysfs_attr(ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_gendev, ptr noundef nonnull @sysfs_fw_dump_attr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4_8xxx_sysfs_read_fw_dump(ptr nocapture noundef readnone %filep, ptr noundef %kobj, ptr nocapture noundef readnone %ba, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %pdev.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %3 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end [
    i16 16434, label %dev_to_shost.exit.cleanup_crit_edge
    i16 16418, label %dev_to_shost.exit.cleanup_crit_edge19
    i16 16400, label %dev_to_shost.exit.cleanup_crit_edge20
  ]

dev_to_shost.exit.cleanup_crit_edge20:            ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dev_to_shost.exit.cleanup_crit_edge19:            ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %add.ptr.i11 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  %8 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr.i11, align 4
  %10 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fw_dump = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 15, i32 50, i32 10, i32 4
  %11 = ptrtoint ptr %fw_dump to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_dump, align 4
  %fw_dump_size = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 15, i32 50, i32 10, i32 5
  %13 = ptrtoint ptr %fw_dump_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_dump_size, align 128
  %call7 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %12, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge19, %dev_to_shost.exit.cleanup_crit_edge20
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ], [ -22, %dev_to_shost.exit.cleanup_crit_edge19 ], [ -22, %dev_to_shost.exit.cleanup_crit_edge20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4_8xxx_sysfs_write_fw_dump(ptr nocapture noundef readnone %filep, ptr noundef %kobj, ptr nocapture noundef readnone %ba, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %reading = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr.i118 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reading) #6
  %2 = ptrtoint ptr %reading to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reading, align 4, !annotation !124
  %pdev.i.i = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 6
  %3 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %6, label %if.end [
    i16 16434, label %dev_to_shost.exit.cleanup_crit_edge
    i16 16418, label %dev_to_shost.exit.cleanup_crit_edge139
    i16 16400, label %dev_to_shost.exit.cleanup_crit_edge140
  ]

dev_to_shost.exit.cleanup_crit_edge140:           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dev_to_shost.exit.cleanup_crit_edge139:           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %call.i119 = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reading) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool6.not = icmp eq i32 %call.i119, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call.i119) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %reading to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reading, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %12, label %if.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb46
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %call9 = call i32 @_test_and_clear_bit(i32 noundef 26, ptr noundef %add.ptr.i118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb.cleanup_crit_edge, label %if.then11

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %sw.bb
  call void @_clear_bit(i32 noundef 24, ptr noundef %add.ptr.i118) #6
  call void @qla4xxx_alloc_fw_dump(ptr noundef %add.ptr.i118) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %14 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp14 = icmp eq i32 %14, 2
  br i1 %cmp14, label %do.end18, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i.i, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev20, ptr noundef nonnull @.str.9) #9
  br label %cleanup

sw.bb25:                                          ; preds = %if.end8
  %17 = ptrtoint ptr %add.ptr.i118 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %add.ptr.i118, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %sw.bb25.cleanup_crit_edge, label %land.lhs.true

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb25
  %20 = ptrtoint ptr %add.ptr.i118 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %add.ptr.i118, align 4
  %22 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true
  call void @_set_bit(i32 noundef 26, ptr noundef %add.ptr.i118) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %23 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp35 = icmp eq i32 %23, 2
  br i1 %cmp35, label %do.end39, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i.i, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %host_no = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 9
  %26 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_no, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev41, ptr noundef nonnull @.str.13, i32 noundef %27) #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end8
  %isp_ops = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 15, i32 50, i32 9, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %isp_ops, align 4
  %idc_lock = getelementptr inbounds %struct.isp_operations, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %idc_lock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %idc_lock, align 4
  %call47 = call i32 %31(ptr noundef %add.ptr.i118) #6
  %32 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %isp_ops, align 4
  %rd_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %rd_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rd_reg_direct.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.scsi_qla_host, ptr %add.ptr.i118, i32 0, i32 143
  %36 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %37, i32 4
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %call.i120 = call i32 %35(ptr noundef %add.ptr.i118, i32 noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i120)
  %cmp49 = icmp eq i32 %call.i120, 3
  %40 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i.i, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  br i1 %cmp49, label %do.end53, label %do.end77

do.end53:                                         ; preds = %sw.bb46
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #9
  %42 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %isp_ops, align 4
  %wr_reg_direct.i = getelementptr inbounds %struct.isp_operations, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %wr_reg_direct.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr_reg_direct.i, align 4
  %46 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_tbl.i, align 8
  %arrayidx.i123 = getelementptr i32, ptr %47, i32 4
  %48 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i123, align 4
  call void %45(ptr noundef %add.ptr.i118, i32 noundef %49, i32 noundef 4) #6
  %50 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device.i, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %53, label %do.end53.if.end80_crit_edge [
    i16 -32734, label %do.end53.if.then66_crit_edge
    i16 -32718, label %do.end53.land.lhs.true63_crit_edge
    i16 -32702, label %do.end53.land.lhs.true63_crit_edge141
  ]

do.end53.land.lhs.true63_crit_edge141:            ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true63

do.end53.land.lhs.true63_crit_edge:               ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true63

do.end53.if.then66_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66

do.end53.if.end80_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

land.lhs.true63:                                  ; preds = %do.end53.land.lhs.true63_crit_edge, %do.end53.land.lhs.true63_crit_edge141
  %call64 = call i32 @qla4_83xx_can_perform_reset(ptr noundef %add.ptr.i118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.if.end80_crit_edge, label %land.lhs.true63.if.then66_crit_edge

land.lhs.true63.if.then66_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66

land.lhs.true63.if.end80_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then66:                                        ; preds = %land.lhs.true63.if.then66_crit_edge, %do.end53.if.then66_crit_edge
  call void @_set_bit(i32 noundef 25, ptr noundef %add.ptr.i118) #6
  call void @_set_bit(i32 noundef 19, ptr noundef %add.ptr.i118) #6
  %55 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i.i, align 8
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %func_num = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 15, i32 50, i32 9, i32 1, i32 4, i32 3
  %57 = ptrtoint ptr %func_num to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %func_num, align 8
  %conv = zext i16 %58 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev73, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7, i32 noundef %conv) #9
  br label %if.end80

do.end77:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev55, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7, i32 noundef %call.i120) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.then66, %land.lhs.true63.if.end80_crit_edge, %do.end53.if.end80_crit_edge
  %59 = ptrtoint ptr %isp_ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %isp_ops, align 4
  %idc_unlock = getelementptr inbounds %struct.isp_operations, ptr %60, i32 0, i32 21
  %61 = ptrtoint ptr %idc_unlock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %idc_unlock, align 4
  call void %62(ptr noundef %add.ptr.i118) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end39, %if.then32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %do.end18, %if.then11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge139, %dev_to_shost.exit.cleanup_crit_edge140
  %retval.0 = phi i32 [ %call.i119, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %count, %if.end8.cleanup_crit_edge ], [ %count, %sw.bb25.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %do.end39 ], [ %count, %if.then32.cleanup_crit_edge ], [ %count, %sw.bb.cleanup_crit_edge ], [ %count, %do.end18 ], [ %count, %if.then11.cleanup_crit_edge ], [ %count, %if.end80 ], [ -22, %dev_to_shost.exit.cleanup_crit_edge ], [ -22, %dev_to_shost.exit.cleanup_crit_edge139 ], [ -22, %dev_to_shost.exit.cleanup_crit_edge140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reading) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qla4xxx_alloc_fw_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4_83xx_can_perform_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %3, label %if.else [
    i16 -32734, label %entry.cleanup_crit_edge
    i16 -32718, label %entry.cleanup_crit_edge32
    i16 -32702, label %entry.cleanup_crit_edge33
  ]

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge32, %entry.cleanup_crit_edge33
  %.str.26.sink = phi ptr [ @.str.26, %if.else ], [ @.str.25, %entry.cleanup_crit_edge ], [ @.str.25, %entry.cleanup_crit_edge32 ], [ @.str.25, %entry.cleanup_crit_edge33 ]
  %fw_info9 = getelementptr i8, ptr %dev, i32 37536
  %5 = ptrtoint ptr %fw_info9 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_info9, align 4
  %conv11 = zext i16 %6 to i32
  %fw_minor13 = getelementptr i8, ptr %dev, i32 37538
  %7 = ptrtoint ptr %fw_minor13 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fw_minor13, align 2
  %conv14 = zext i16 %8 to i32
  %fw_patch16 = getelementptr i8, ptr %dev, i32 37540
  %9 = ptrtoint ptr %fw_patch16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_patch16, align 4
  %conv17 = zext i16 %10 to i32
  %fw_build19 = getelementptr i8, ptr %dev, i32 37542
  %11 = ptrtoint ptr %fw_build19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fw_build19, align 2
  %conv20 = zext i16 %12 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %.str.26.sink, i32 noundef %conv11, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %conv20)
  ret i32 %call21
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_serial_num_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_number = getelementptr i8, ptr %dev, i32 1657
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %serial_number)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_iscsi_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iscsi_major = getelementptr i8, ptr %dev, i32 37600
  %0 = ptrtoint ptr %iscsi_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %iscsi_major, align 4
  %conv = zext i16 %1 to i32
  %iscsi_minor = getelementptr i8, ptr %dev, i32 37602
  %2 = ptrtoint ptr %iscsi_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %iscsi_minor, align 2
  %conv2 = zext i16 %3 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv2)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_optrom_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bootload_major = getelementptr i8, ptr %dev, i32 37604
  %0 = ptrtoint ptr %bootload_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bootload_major, align 4
  %conv = zext i16 %1 to i32
  %bootload_minor = getelementptr i8, ptr %dev, i32 37606
  %2 = ptrtoint ptr %bootload_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bootload_minor, align 2
  %conv2 = zext i16 %3 to i32
  %bootload_patch = getelementptr i8, ptr %dev, i32 37608
  %4 = ptrtoint ptr %bootload_patch to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bootload_patch, align 4
  %conv4 = zext i16 %5 to i32
  %bootload_build = getelementptr i8, ptr %dev, i32 37610
  %6 = ptrtoint ptr %bootload_build to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bootload_build, align 2
  %conv6 = zext i16 %7 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6)
  ret i32 %call7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_board_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_id = getelementptr i8, ptr %dev, i32 1356
  %0 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board_id, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_state_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1076
  %call1 = tail call i32 @qla4xxx_get_firmware_state(ptr noundef %add.ptr.i) #6
  %firmware_state = getelementptr i8, ptr %dev, i32 1676
  %0 = ptrtoint ptr %firmware_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_state, align 8
  %addl_fw_state = getelementptr i8, ptr %dev, i32 1680
  %2 = ptrtoint ptr %addl_fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addl_fw_state, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_get_firmware_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_phy_port_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %3, label %if.end [
    i16 16434, label %entry.cleanup_crit_edge
    i16 16418, label %entry.cleanup_crit_edge5
    i16 16400, label %entry.cleanup_crit_edge6
  ]

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %phy_port_cnt = getelementptr i8, ptr %dev, i32 39910
  %5 = ptrtoint ptr %phy_port_cnt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_port_cnt, align 2
  %conv = zext i16 %6 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge5 ], [ -38, %entry.cleanup_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_phy_port_num_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %3, label %if.end [
    i16 16434, label %entry.cleanup_crit_edge
    i16 16418, label %entry.cleanup_crit_edge5
    i16 16400, label %entry.cleanup_crit_edge6
  ]

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %phy_port_num = getelementptr i8, ptr %dev, i32 39908
  %5 = ptrtoint ptr %phy_port_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %phy_port_num, align 16
  %conv = zext i16 %6 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge5 ], [ -38, %entry.cleanup_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_iscsi_func_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i.i = getelementptr i8, ptr %dev, i32 1100
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %3, label %if.end [
    i16 16434, label %entry.cleanup_crit_edge
    i16 16418, label %entry.cleanup_crit_edge5
    i16 16400, label %entry.cleanup_crit_edge6
  ]

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iscsi_pci_func_cnt = getelementptr i8, ptr %dev, i32 39912
  %5 = ptrtoint ptr %iscsi_pci_func_cnt to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %iscsi_pci_func_cnt, align 4
  %conv = zext i16 %6 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge5 ], [ -38, %entry.cleanup_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_hba_model_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model_name = getelementptr i8, ptr %dev, i32 39914
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %model_name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_timestamp_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_build_date = getelementptr i8, ptr %dev, i32 37544
  %fw_build_time = getelementptr i8, ptr %dev, i32 37560
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.42, ptr noundef %fw_build_date, ptr noundef %fw_build_time)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_build_user_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_build_user = getelementptr i8, ptr %dev, i32 37576
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %fw_build_user)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_ext_timestamp_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extended_timestamp = getelementptr i8, ptr %dev, i32 37612
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %extended_timestamp)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_load_src_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_load_source = getelementptr i8, ptr %dev, i32 37592
  %0 = ptrtoint ptr %fw_load_source to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fw_load_source, align 4
  %switch.tableidx = add i16 %1, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %2 = icmp ult i16 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.qla4xxx_fw_load_src_show, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %load_src.0 = phi ptr [ null, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %load_src.0)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla4xxx_fw_uptime_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1076
  %call1 = tail call i32 @qla4xxx_about_firmware(ptr noundef %add.ptr.i) #6
  %fw_uptime_secs = getelementptr i8, ptr %dev, i32 37792
  %0 = ptrtoint ptr %fw_uptime_secs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_uptime_secs, align 4
  %fw_uptime_msecs = getelementptr i8, ptr %dev, i32 37796
  %2 = ptrtoint ptr %fw_uptime_msecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_uptime_msecs, align 16
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.50, i32 noundef %1, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla4xxx_about_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58, !60, !61, !63, !65, !66, !68, !69, !71, !73, !74, !76, !78, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 135, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qla4_8xxx_alloc_sysfs_attr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qla4_8xxx_alloc_sysfs_attr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @qla4xxx_host_groups, !9, !"qla4xxx_host_groups", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 356, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 121, i32 4}
!12 = distinct !{null, !13, !"bin_file_entries", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 120, i32 3}
!14 = !{ptr @sysfs_fw_dump_attr, !15, !"sysfs_fw_dump_attr", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 107, i32 29}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 49, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 61, i32 4}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry.8, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 70, i32 4}
!28 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 80, i32 4}
!32 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 89, i32 5}
!36 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 93, i32 4}
!40 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qla4_8xxx_sysfs_write_fw_dump._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @qla4xxx_host_attr_group, !43, !"qla4xxx_host_attr_group", i1 false, i1 false}
!43 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 352, i32 37}
!44 = !{ptr @qla4xxx_host_attrs, !45, !"qla4xxx_host_attrs", i1 false, i1 false}
!45 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 333, i32 26}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 316, i32 8}
!48 = !{ptr @dev_attr_fw_version, !47, !"dev_attr_fw_version", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 159, i32 35}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 163, i32 35}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 317, i32 8}
!55 = !{ptr @dev_attr_serial_num, !54, !"dev_attr_serial_num", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 173, i32 34}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 318, i32 8}
!60 = !{ptr @dev_attr_iscsi_version, !59, !"dev_attr_iscsi_version", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 181, i32 34}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 319, i32 8}
!65 = !{ptr @dev_attr_optrom_version, !64, !"dev_attr_optrom_version", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 320, i32 8}
!68 = !{ptr @dev_attr_board_id, !67, !"dev_attr_board_id", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 200, i32 34}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 321, i32 8}
!73 = !{ptr @dev_attr_fw_state, !72, !"dev_attr_fw_state", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 210, i32 34}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 322, i32 8}
!78 = !{ptr @dev_attr_phy_port_cnt, !77, !"dev_attr_phy_port_cnt", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 223, i32 34}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 323, i32 8}
!83 = !{ptr @dev_attr_phy_port_num, !82, !"dev_attr_phy_port_num", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 324, i32 8}
!86 = !{ptr @dev_attr_iscsi_func_cnt, !85, !"dev_attr_iscsi_func_cnt", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 325, i32 8}
!89 = !{ptr @dev_attr_hba_model, !88, !"dev_attr_hba_model", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 326, i32 8}
!92 = !{ptr @dev_attr_fw_timestamp, !91, !"dev_attr_fw_timestamp", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 264, i32 34}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 327, i32 8}
!97 = !{ptr @dev_attr_fw_build_user, !96, !"dev_attr_fw_build_user", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 328, i32 8}
!100 = !{ptr @dev_attr_fw_ext_timestamp, !99, !"dev_attr_fw_ext_timestamp", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 330, i32 8}
!103 = !{ptr @dev_attr_fw_load_src, !102, !"dev_attr_fw_load_src", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 293, i32 14}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 296, i32 14}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 299, i32 14}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 331, i32 8}
!112 = !{ptr @dev_attr_fw_uptime, !111, !"dev_attr_fw_uptime", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/qla4xxx/ql4_attr.c", i32 312, i32 34}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
