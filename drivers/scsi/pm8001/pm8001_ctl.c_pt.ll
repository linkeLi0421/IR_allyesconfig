; ModuleID = '/llk/IR_all_yes/drivers/scsi/pm8001/pm8001_ctl.c_pt.bc'
source_filename = "../drivers/scsi/pm8001/pm8001_ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.error_fw = type { ptr, i32 }
%struct.flash_command = type { [8 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scsi_core = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pm8001_hba_info = type { [32 x i8], %struct.list_head, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, [6 x %struct.pm8001_hba_memspace], %struct.mpi_mem_req, %struct.encrypt, %struct.forensic_data, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.main_cfg_table, %union.general_status_table, [64 x %struct.inbound_queue_table], [64 x %struct.outbound_queue_table], %struct.sas_phy_attribute_table, [8 x i8], ptr, ptr, i32, ptr, ptr, i32, ptr, [16 x %struct.pm8001_phy], [16 x %struct.pm8001_port], i32, i32, i32, ptr, ptr, i32, i32, [64 x [37 x i8]], [64 x %struct.tasklet_struct], i32, i32, i32, i32, i8, ptr, [64 x %struct.isr_param], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pm8001_hba_memspace = type { ptr, i64, i32 }
%struct.mpi_mem_req = type { i32, [261 x %struct.mpi_mem] }
%struct.mpi_mem = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.encrypt = type { i32, i32, i32, i32 }
%struct.forensic_data = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, ptr }
%union.main_cfg_table = type { %struct.anon.95 }
%struct.anon.95 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.general_status_table = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, [2 x i32], [8 x i32] }
%struct.inbound_queue_table = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.spinlock }
%struct.outbound_queue_table = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.spinlock, i32 }
%struct.sas_phy_attribute_table = type { [16 x i32], [16 x i32] }
%struct.pm8001_phy = type { ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, i64, i32, ptr, i32, [32 x i8], i8, i8, i32, i32, ptr, i8, i8 }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.pm8001_port = type { %struct.asd_sas_port, i8, i16, i8, i8, %struct.list_head }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.isr_param = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.pm8001_fw_image_header = type { [8 x i8], i8, i8, i8, i8, [4 x i8], i32, i32, i32 }
%struct.pm8001_ioctl_payload = type { i32, i16, i16, i16, i16, i16, i32, i32, ptr }
%struct.pm8001_chip_info = type { i32, i32, ptr }
%struct.pm8001_dispatch = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pm8001_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pm8001_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8001_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pm8001_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pm8001_host_attrs = internal global { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @dev_attr_interface_rev, ptr @dev_attr_controller_fatal_error, ptr @dev_attr_fw_version, ptr @dev_attr_update_fw, ptr @dev_attr_aap_log, ptr @dev_attr_iop_log, ptr @dev_attr_fatal_log, ptr @dev_attr_non_fatal_log, ptr @dev_attr_non_fatal_count, ptr @dev_attr_gsm_log, ptr @dev_attr_max_out_io, ptr @dev_attr_max_devices, ptr @dev_attr_max_sg_list, ptr @dev_attr_sas_spec_support, ptr @dev_attr_logging_level, ptr @dev_attr_event_log_size, ptr @dev_attr_host_sas_address, ptr @dev_attr_bios_version, ptr @dev_attr_ib_log, ptr @dev_attr_ob_log, ptr @dev_attr_ila_version, ptr @dev_attr_inc_fw_ver, ptr @dev_attr_ctl_mpi_state, ptr @dev_attr_ctl_hmi_error, ptr @dev_attr_ctl_raae_count, ptr @dev_attr_ctl_iop0_count, ptr @dev_attr_ctl_iop1_count, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_interface_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_mpi_interface_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_controller_fatal_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @controller_fatal_error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_show_update_fw, ptr @pm8001_store_update_fw }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aap_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_aap_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iop_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_iop_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fatal_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_fatal_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_non_fatal_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @non_fatal_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_non_fatal_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @non_fatal_count_show, ptr @non_fatal_count_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gsm_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_gsm_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_out_io = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_max_out_io_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_devices = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_max_devices_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_sg_list = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_max_sg_list_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sas_spec_support = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_sas_spec_support_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_logging_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_logging_level_show, ptr @pm8001_ctl_logging_level_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_event_log_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @event_log_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_sas_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_host_sas_address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bios_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_bios_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ib_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_ib_queue_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ob_log = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_ob_queue_log_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ila_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_ila_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inc_fw_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm8001_ctl_inactive_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl_mpi_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_mpi_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl_hmi_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_hmi_error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl_raae_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_raae_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl_iop0_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_iop0_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ctl_iop1_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ctl_iop1_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interface_rev\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"controller_fatal_error\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%02x.%02x.%02x.%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@flash_error_table = internal constant { [13 x %struct.error_fw], [56 x i8] } { [13 x %struct.error_fw] [%struct.error_fw { ptr @.str.7, i32 256 }, %struct.error_fw { ptr @.str.8, i32 2 }, %struct.error_fw { ptr @.str.9, i32 3 }, %struct.error_fw { ptr @.str.10, i32 4 }, %struct.error_fw { ptr @.str.11, i32 5 }, %struct.error_fw { ptr @.str.12, i32 6 }, %struct.error_fw { ptr @.str.13, i32 16 }, %struct.error_fw { ptr @.str.14, i32 17 }, %struct.error_fw { ptr @.str.15, i32 4096 }, %struct.error_fw { ptr @.str.16, i32 2560 }, %struct.error_fw { ptr @.str.17, i32 2816 }, %struct.error_fw { ptr @.str.18, i32 3072 }, %struct.error_fw { ptr @.str.19, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"status=%x %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to open fw image file\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"image header mismatch\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"image offset mismatch\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"image CRC Error\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"image length Error.\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to program flash chip\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Flash chip not supported.\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash update disabled.\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Flash in progress\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Image file size Error\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input parameter error\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@flash_command_table = internal constant { [3 x %struct.flash_command], [60 x i8] } { [3 x %struct.flash_command] [%struct.flash_command { [8 x i8] c"set_nvmd", i32 2 }, %struct.flash_command { [8 x i8] c"update\00\00", i32 1 }, %struct.flash_command zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pm8001_store_update_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s:: %s  %d:Failed to load firmware image file %s, error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm8001_store_update_fw\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/pm8001/pm8001_ctl.c\00", [63 x i8] zeroinitializer }, align 32
@pm8001_store_update_fw._entry_ptr = internal global ptr @pm8001_store_update_fw._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aap_log\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x0x%08x 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iop_log\00", [24 x i8] zeroinitializer }, align 32
@pm8001_ctl_iop_log_show.start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pm8001_ctl_iop_log_show.end = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pm8001_ctl_iop_log_show.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fatal_log\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non_fatal_log\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"non_fatal_count\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08x\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gsm_log\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max_out_io\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_devices\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_sg_list\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sas_spec_support\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SAS1.1\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SAS2.0\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"logging_level\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08xh\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event_log_size\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host_sas_address\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bios_version\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ib_log\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ob_log\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ila_version\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inc_fw_ver\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctl_mpi_state\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mpiStateText = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MPI is not initialized\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MPI is successfully initialized\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MPI termination is in progress\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MPI initialization failed with error in [31:16]\00", [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctl_hmi_error\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctl_raae_count\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctl_iop0_count\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctl_iop1_count\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 16, i64 17, i64 256, i64 2560, i64 2816, i64 3072, i64 4096]
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"pm8001_host_attr_group\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1036, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"pm8001_host_groups\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1040, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"pm8001_host_attrs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1005, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"dev_attr_interface_rev\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"dev_attr_controller_fatal_error\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"dev_attr_aap_log\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"dev_attr_iop_log\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"dev_attr_fatal_log\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"dev_attr_non_fatal_log\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"dev_attr_non_fatal_count\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"dev_attr_gsm_log\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"dev_attr_max_out_io\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"dev_attr_max_devices\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"dev_attr_max_sg_list\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"dev_attr_sas_spec_support\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"dev_attr_logging_level\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"dev_attr_event_log_size\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"dev_attr_host_sas_address\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"dev_attr_bios_version\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"dev_attr_ib_log\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"dev_attr_ob_log\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"dev_attr_ila_version\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"dev_attr_inc_fw_ver\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"dev_attr_ctl_mpi_state\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"dev_attr_ctl_hmi_error\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [24 x i8] c"dev_attr_ctl_raae_count\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [24 x i8] c"dev_attr_ctl_iop0_count\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [24 x i8] c"dev_attr_ctl_iop1_count\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 72, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 64, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 92, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 123, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 110, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 889, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"flash_error_table\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 666, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 885, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 667, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 668, i32 7 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 669, i32 7 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 670, i32 7 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 671, i32 7 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 672, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 673, i32 7 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 674, i32 7 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 675, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 676, i32 7 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 677, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 678, i32 7 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 679, i32 7 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 822, i32 20 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"flash_command_table\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 655, i32 35 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 847, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 87, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 393, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 379, i32 23 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 560, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 541, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 541, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 541, i32 25 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 556, i32 23 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 580, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 598, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 625, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 607, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 644, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 201, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 227, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 218, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 254, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 299, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 266, i32 28 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 268, i32 29 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 268, i32 43 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 268, i32 50 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 268, i32 54 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 357, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 339, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 350, i32 18 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 523, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 321, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 318, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 504, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 429, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 419, i32 23 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 465, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 149, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 176, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 918, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 916, i32 25 }
@___asan_gen_.354 = private unnamed_addr constant [13 x i8] c"mpiStateText\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 892, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 893, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 894, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 895, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 896, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 939, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 960, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 981, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private constant [36 x i8] c"../drivers/scsi/pm8001/pm8001_ctl.c\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 1003, i32 8 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @pm8001_store_update_fw._entry, ptr @pm8001_store_update_fw._entry_ptr, ptr @pm8001_host_attr_group, ptr @pm8001_host_groups, ptr @pm8001_host_attrs, ptr @dev_attr_interface_rev, ptr @dev_attr_controller_fatal_error, ptr @dev_attr_fw_version, ptr @dev_attr_update_fw, ptr @dev_attr_aap_log, ptr @dev_attr_iop_log, ptr @dev_attr_fatal_log, ptr @dev_attr_non_fatal_log, ptr @dev_attr_non_fatal_count, ptr @dev_attr_gsm_log, ptr @dev_attr_max_out_io, ptr @dev_attr_max_devices, ptr @dev_attr_max_sg_list, ptr @dev_attr_sas_spec_support, ptr @dev_attr_logging_level, ptr @dev_attr_event_log_size, ptr @dev_attr_host_sas_address, ptr @dev_attr_bios_version, ptr @dev_attr_ib_log, ptr @dev_attr_ob_log, ptr @dev_attr_ila_version, ptr @dev_attr_inc_fw_ver, ptr @dev_attr_ctl_mpi_state, ptr @dev_attr_ctl_hmi_error, ptr @dev_attr_ctl_raae_count, ptr @dev_attr_ctl_iop0_count, ptr @dev_attr_ctl_iop1_count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @flash_error_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @flash_command_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pm8001_ctl_iop_log_show.start, ptr @pm8001_ctl_iop_log_show.end, ptr @pm8001_ctl_iop_log_show.count, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @mpiStateText, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_host_attrs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_controller_fatal_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aap_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iop_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fatal_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_non_fatal_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_non_fatal_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gsm_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_out_io to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_devices to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_sg_list to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sas_spec_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_logging_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_event_log_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_sas_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bios_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ib_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ob_log to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ila_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inc_fw_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl_mpi_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl_hmi_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl_raae_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl_iop0_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ctl_iop1_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_error_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_command_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_store_update_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_ctl_iop_log_show.start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_ctl_iop_log_show.end to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_ctl_iop_log_show.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpiStateText to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_mpi_interface_rev_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %interface_rev = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 1
  %4 = ptrtoint ptr %interface_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface_rev, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @controller_fatal_error_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %controller_fatal_error = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %controller_fatal_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %controller_fatal_error, align 4, !range !193
  %6 = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_fw_version_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %firmware_rev = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 2
  %4 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmware_rev, align 4
  %shr = lshr i32 %5, 24
  %shr4 = lshr i32 %5, 16
  %conv6 = and i32 %shr4, 255
  %shr9 = lshr i32 %5, 8
  %conv11 = and i32 %shr9, 255
  %conv15 = and i32 %5, 255
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %conv6, i32 noundef %conv11, i32 noundef %conv15)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_show_update_fw(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %fw_status = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.inc.11 [
    i32 256, label %entry.if.then6_crit_edge
    i32 2, label %if.then6.fold.split
    i32 3, label %entry.for.end_crit_edge
    i32 4, label %for.end.fold.split
    i32 5, label %for.end.fold.split29
    i32 6, label %for.end.fold.split30
    i32 16, label %for.end.fold.split31
    i32 17, label %for.end.fold.split32
    i32 4096, label %for.end.fold.split33
    i32 2560, label %for.end.fold.split34
    i32 2816, label %for.end.fold.split35
    i32 3072, label %for.end.fold.split36
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

for.inc.11:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split36, %for.end.fold.split35, %for.end.fold.split34, %for.end.fold.split33, %for.end.fold.split32, %for.end.fold.split31, %for.end.fold.split30, %for.end.fold.split29, %for.end.fold.split, %for.inc.11, %entry.for.end_crit_edge
  %i.0.lcssa.ph = phi i32 [ 12, %for.inc.11 ], [ 2, %entry.for.end_crit_edge ], [ 3, %for.end.fold.split ], [ 4, %for.end.fold.split29 ], [ 5, %for.end.fold.split30 ], [ 6, %for.end.fold.split31 ], [ 7, %for.end.fold.split32 ], [ 8, %for.end.fold.split33 ], [ 9, %for.end.fold.split34 ], [ 10, %for.end.fold.split35 ], [ 11, %for.end.fold.split36 ]
  %err_code.lcssa.ph = phi ptr [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 12, i32 1), %for.inc.11 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 2, i32 1), %entry.for.end_crit_edge ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 3, i32 1), %for.end.fold.split ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 4, i32 1), %for.end.fold.split29 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 5, i32 1), %for.end.fold.split30 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 6, i32 1), %for.end.fold.split31 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 7, i32 1), %for.end.fold.split32 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 8, i32 1), %for.end.fold.split33 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 9, i32 1), %for.end.fold.split34 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 10, i32 1), %for.end.fold.split35 ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 11, i32 1), %for.end.fold.split36 ]
  %7 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %fw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %.pr)
  %cmp5.not = icmp eq i32 %.pr, 4096
  br i1 %cmp5.not, label %for.end.if.end8_crit_edge, label %for.end.if.then6_crit_edge

for.end.if.then6_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %if.then6.fold.split, %for.end.if.then6_crit_edge, %entry.if.then6_crit_edge
  %err_code.lcssa27 = phi ptr [ %err_code.lcssa.ph, %for.end.if.then6_crit_edge ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 0, i32 1), %entry.if.then6_crit_edge ], [ getelementptr inbounds ([13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 1, i32 1), %if.then6.fold.split ]
  %i.0.lcssa25 = phi i32 [ %i.0.lcssa.ph, %for.end.if.then6_crit_edge ], [ 0, %entry.if.then6_crit_edge ], [ 1, %if.then6.fold.split ]
  %8 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fw_status, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end.if.end8_crit_edge
  %err_code.lcssa28 = phi ptr [ %err_code.lcssa27, %if.then6 ], [ %err_code.lcssa.ph, %for.end.if.end8_crit_edge ]
  %i.0.lcssa26 = phi i32 [ %i.0.lcssa25, %if.then6 ], [ %i.0.lcssa.ph, %for.end.if.end8_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.error_fw], ptr @flash_error_table, i32 0, i32 %i.0.lcssa26
  %9 = ptrtoint ptr %err_code.lcssa28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err_code.lcssa28, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %10, ptr noundef %12)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_store_update_fw(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_status = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %fw_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp = icmp eq i32 %5, 4096
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4096, ptr %fw_status, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 2) #11
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end2.if.then5_crit_edge, label %if.end7.i.i, !prof !194

if.end2.if.then5_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end7.i.i:                                      ; preds = %if.end2
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then5_crit_edge, label %if.end7

if.end7.i.i.if.then5_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %if.end7.i.i.if.then5_crit_edge, %if.end2.if.then5_crit_edge
  %10 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3072, ptr %fw_status, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  %add.ptr8 = getelementptr i8, ptr %call8.i.i, i32 %count
  %call9 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.20, ptr noundef nonnull %call8.i.i, ptr noundef %add.ptr8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 2
  br i1 %cmp10.not, label %for.cond.preheader, label %if.end7.out.thread_crit_edge

if.end7.out.thread_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

for.cond.preheader:                               ; preds = %if.end7
  %call17 = tail call i32 @strlen(ptr noundef nonnull %call8.i.i) #15
  %bcmp = tail call i32 @bcmp(ptr nonnull @flash_command_table, ptr nonnull %call8.i.i, i32 %call17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool19.not = icmp eq i32 %bcmp, 0
  br i1 %tobool19.not, label %for.cond.preheader.if.end27_crit_edge, label %for.inc

for.cond.preheader.if.end27_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.inc:                                          ; preds = %for.cond.preheader
  %bcmp.1 = tail call i32 @bcmp(ptr getelementptr inbounds ([3 x %struct.flash_command], ptr @flash_command_table, i32 0, i32 1), ptr nonnull %call8.i.i, i32 %call17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool19.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool19.not.1, label %for.inc.if.end27_crit_edge, label %for.inc.out.thread_crit_edge

for.inc.out.thread_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %for.cond.preheader.if.end27_crit_edge
  %fw_image = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 55
  %dev = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call28 = tail call i32 @request_firmware(ptr noundef %fw_image, ptr noundef %add.ptr8, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end43, label %do.body

do.body:                                          ; preds = %if.end27
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 50
  %13 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logging_level, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body.out.thread_crit_edge, label %do.end, !prof !195

do.body.out.thread_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef 849, ptr noundef %add.ptr8, i32 noundef %call28) #16
  br label %out.thread

if.end43:                                         ; preds = %if.end27
  br i1 %tobool19.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call fastcc i32 @pm8001_update_flash(ptr noundef %3)
  br label %out

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = tail call fastcc i32 @pm8001_set_nvmd(ptr noundef %3)
  br label %out

out.thread:                                       ; preds = %do.end, %do.body.out.thread_crit_edge, %for.inc.out.thread_crit_edge, %if.end7.out.thread_crit_edge
  %.sink = phi i32 [ 2816, %if.end7.out.thread_crit_edge ], [ 2816, %for.inc.out.thread_crit_edge ], [ 256, %do.end ], [ 256, %do.body.out.thread_crit_edge ]
  %ret.1.ph = phi i32 [ -22, %if.end7.out.thread_crit_edge ], [ -22, %for.inc.out.thread_crit_edge ], [ %call28, %do.end ], [ %call28, %do.body.out.thread_crit_edge ]
  %15 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %fw_status, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

out:                                              ; preds = %if.else, %if.then45
  %ret.0 = phi i32 [ %call46, %if.then45 ], [ %call47, %if.else ]
  %16 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_image, align 8
  tail call void @release_firmware(ptr noundef %17) #11
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool50.not = icmp eq i32 %ret.0, 0
  br i1 %tobool50.not, label %if.end52, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fw_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %out.cleanup_crit_edge, %out.thread, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end52 ], [ -12, %if.then5 ], [ -13, %entry.cleanup_crit_edge ], [ -115, %if.end.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.1.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_update_flash(ptr noundef %pm8001_ha) unnamed_addr #3 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #11
  %0 = getelementptr inbounds i8, ptr %completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #11
  %fw_image = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 55
  %3 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_image, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %6)
  %cmp = icmp ult i32 %6, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fw_status = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 52
  %7 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2560, ptr %fw_status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16411, i32 noundef 3520, i32 noundef 3) #14
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fw_status2 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 52
  %8 = ptrtoint ptr %fw_status2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3072, ptr %fw_status2, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_image, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7103.not = icmp eq i32 %12, 0
  br i1 %cmp7103.not, label %if.end3.out_crit_edge, label %while.body.lr.ph

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %if.end3
  %13 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_image, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %image_length = getelementptr inbounds %struct.pm8001_fw_image_header, ptr %16, i32 0, i32 6
  %wr_length = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 0, i32 6
  %id = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 0, i32 5
  %func_specific = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 0, i32 8
  %len = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 1, i32 6
  %size11 = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 1, i32 7
  %offset = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 1, i32 5
  %buffer = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call1.i.i.i, i32 2
  %nvmd_completion = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 36
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  br label %while.body

while.cond.loopexit:                              ; preds = %for.cond.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %sizeRead.1.lcssa = phi i32 [ %sizeRead.0104, %while.body.while.cond.loopexit_crit_edge ], [ %sizeRead.2, %for.cond.while.cond.loopexit_crit_edge ]
  %17 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_image, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %cmp7 = icmp ult i32 %sizeRead.1.lcssa, %20
  br i1 %cmp7, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.out_crit_edge

while.cond.loopexit.out_crit_edge:                ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %sizeRead.0104 = phi i32 [ 0, %while.body.lr.ph ], [ %sizeRead.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %image_length, i32 %sizeRead.0104
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 4
  %add = add i32 %22, 28
  %sub = add i32 %22, 4123
  %div96 = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp9100.not = icmp ult i32 %sub, 4096
  br i1 %cmp9100.not, label %while.body.while.cond.loopexit_crit_edge, label %for.body.lr.ph

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

for.body.lr.ph:                                   ; preds = %while.body
  %rem = and i32 %add, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool15.not = icmp eq i32 %rem, 0
  %umax = call i32 @llvm.umax.i32(i32 %div96, i32 1)
  br label %for.body

for.cond:                                         ; preds = %if.end39
  %inc = add nuw nsw i32 %loopNumber.0101, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.while.cond.loopexit_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.while.cond.loopexit_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %sizeRead.1102 = phi i32 [ %sizeRead.0104, %for.body.lr.ph ], [ %sizeRead.2, %for.cond.for.body_crit_edge ]
  %loopNumber.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %23 = ptrtoint ptr %wr_length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16384, ptr %wr_length, align 16
  %24 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %id, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4096, ptr %len, align 4
  %26 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %size11, align 16
  %27 = ptrtoint ptr %func_specific to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %func_specific, align 8
  %mul = shl i32 %loopNumber.0101, 12
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %offset, align 8
  %sub12 = sub nsw i32 %div96, %loopNumber.0101
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub12)
  %cmp13 = icmp ne i32 %sub12, 1
  %brmerge = select i1 %cmp13, i1 true, i1 %tobool15.not
  br i1 %brmerge, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rem, ptr %len, align 4
  %30 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw_image, align 8
  %data21 = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data21, align 4
  %add.ptr22 = getelementptr i8, ptr %33, i32 %sizeRead.1102
  %34 = call ptr @memcpy(ptr %buffer, ptr %add.ptr22, i32 %rem)
  br label %if.end34

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw_image, align 8
  %data31 = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data31, align 4
  %add.ptr32 = getelementptr i8, ptr %38, i32 %sizeRead.1102
  %39 = call ptr @memcpy(ptr %buffer, ptr %add.ptr32, i32 4096)
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then16
  %rem.pn = phi i32 [ %rem, %if.then16 ], [ 4096, %if.else ]
  %sizeRead.2 = add i32 %rem.pn, %sizeRead.1102
  %40 = ptrtoint ptr %nvmd_completion to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %completion, ptr %nvmd_completion, align 8
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dispatch, align 4
  %fw_flash_update_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %fw_flash_update_req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw_flash_update_req, align 4
  %call35 = call i32 %46(ptr noundef %pm8001_ha, ptr noundef nonnull %call1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %if.end34.out.sink.split_crit_edge

if.end34.out.sink.split_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

if.end39:                                         ; preds = %if.end34
  call void @wait_for_completion(ptr noundef nonnull %completion) #11
  %47 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %func_specific, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp41 = icmp ugt i32 %48, 1
  br i1 %cmp41, label %if.end39.out.sink.split_crit_edge, label %for.cond

if.end39.out.sink.split_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end39.out.sink.split_crit_edge, %if.end34.out.sink.split_crit_edge
  %.lcssa.sink = phi i32 [ 3072, %if.end34.out.sink.split_crit_edge ], [ %48, %if.end39.out.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %call35, %if.end34.out.sink.split_crit_edge ], [ -14, %if.end39.out.sink.split_crit_edge ]
  %fw_status44 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 52
  %49 = ptrtoint ptr %fw_status44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.lcssa.sink, ptr %fw_status44, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %while.cond.loopexit.out_crit_edge, %if.end3.out_crit_edge
  %ret.2 = phi i32 [ 0, %if.end3.out_crit_edge ], [ %ret.2.ph, %out.sink.split ], [ 0, %while.cond.loopexit.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then1, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ %ret.2, %out ], [ -12, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_set_nvmd(ptr noundef %pm8001_ha) unnamed_addr #3 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #11
  %0 = getelementptr inbounds i8, ptr %completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #11
  %fw_image = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 55
  %3 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_image, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %6)
  %cmp = icmp ugt i32 %6, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fw_status = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 52
  %7 = ptrtoint ptr %fw_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2560, ptr %fw_status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 5147) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fw_status2 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 52
  %9 = ptrtoint ptr %fw_status2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3072, ptr %fw_status2, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %func_specific = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %fw_image to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_image, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %16 = call ptr @memcpy(ptr %func_specific, ptr %13, i32 %15)
  %17 = load i32, ptr %11, align 4
  %wr_length = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %wr_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %wr_length, align 8
  %id = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %id, align 4
  %minor_function = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %minor_function to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %minor_function, align 2
  %nvmd_completion = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 36
  %21 = ptrtoint ptr %nvmd_completion to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %completion, ptr %nvmd_completion, align 8
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dispatch, align 4
  %set_nvmd_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %set_nvmd_req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_nvmd_req, align 4
  %call9 = call i32 %27(ptr noundef %pm8001_ha, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %fw_status12 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 52
  %28 = ptrtoint ptr %fw_status12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3072, ptr %fw_status12, align 4
  br label %out

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull %completion) #11
  br label %out

out:                                              ; preds = %if.end13, %if.then11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then1, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ %call9, %out ], [ -12, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_aap_log_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %region = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr1.i, align 4
  %add.ptr1.i33 = getelementptr i8, ptr %5, i32 8
  %10 = ptrtoint ptr %add.ptr1.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1.i33, align 4
  %add.ptr1.i36 = getelementptr i8, ptr %5, i32 12
  %12 = ptrtoint ptr %add.ptr1.i36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr1.i36, align 4
  %add.ptr1.i39 = getelementptr i8, ptr %5, i32 16
  %14 = ptrtoint ptr %add.ptr1.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr1.i39, align 4
  %add.ptr1.i42 = getelementptr i8, ptr %5, i32 20
  %16 = ptrtoint ptr %add.ptr1.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr1.i42, align 4
  %add.ptr1.i45 = getelementptr i8, ptr %5, i32 24
  %18 = ptrtoint ptr %add.ptr1.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr1.i45, align 4
  %add.ptr1.i48 = getelementptr i8, ptr %5, i32 28
  %20 = ptrtoint ptr %add.ptr1.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr1.i48, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21)
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %call8
  %add.ptr.i.1 = getelementptr i8, ptr %5, i32 32
  %22 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.1, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %5, i32 36
  %24 = ptrtoint ptr %add.ptr1.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr1.i.1, align 4
  %add.ptr1.i33.1 = getelementptr i8, ptr %5, i32 40
  %26 = ptrtoint ptr %add.ptr1.i33.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr1.i33.1, align 4
  %add.ptr1.i36.1 = getelementptr i8, ptr %5, i32 44
  %28 = ptrtoint ptr %add.ptr1.i36.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr1.i36.1, align 4
  %add.ptr1.i39.1 = getelementptr i8, ptr %5, i32 48
  %30 = ptrtoint ptr %add.ptr1.i39.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr1.i39.1, align 4
  %add.ptr1.i42.1 = getelementptr i8, ptr %5, i32 52
  %32 = ptrtoint ptr %add.ptr1.i42.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr1.i42.1, align 4
  %add.ptr1.i45.1 = getelementptr i8, ptr %5, i32 56
  %34 = ptrtoint ptr %add.ptr1.i45.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr1.i45.1, align 4
  %add.ptr1.i48.1 = getelementptr i8, ptr %5, i32 60
  %36 = ptrtoint ptr %add.ptr1.i48.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr1.i48.1, align 4
  %call8.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr9, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37)
  %add.ptr9.1 = getelementptr i8, ptr %add.ptr9, i32 %call8.1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr9.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_iop_log_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %event_log_size = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 15
  %4 = ptrtoint ptr %event_log_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_log_size, align 4
  %div13 = lshr i32 %5, 7
  %div214 = and i32 %div13, 33554424
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = load i32, ptr @pm8001_ctl_iop_log_show.count, align 4
  %rem = urem i32 %8, %div214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @pm8001_ctl_iop_log_show.start, align 4
  store i32 32, ptr @pm8001_ctl_iop_log_show.end, align 4
  store i32 0, ptr @pm8001_ctl_iop_log_show.count, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load i32, ptr @pm8001_ctl_iop_log_show.end, align 4
  store i32 %9, ptr @pm8001_ctl_iop_log_show.start, align 4
  %add = add i32 %9, 32
  store i32 %add, ptr @pm8001_ctl_iop_log_show.end, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, ptr @pm8001_ctl_iop_log_show.start, align 4
  %11 = load i32, ptr @pm8001_ctl_iop_log_show.end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp315 = icmp ult i32 %10, %11
  br i1 %cmp315, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %12 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %10, %if.end.for.body_crit_edge ]
  %str.016 = phi ptr [ %add.ptr5, %for.body.for.body_crit_edge ], [ %buf, %if.end.for.body_crit_edge ]
  %add.ptr4 = getelementptr i32, ptr %7, i32 %12
  %13 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr4, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.016, ptr noundef nonnull @.str.28, i32 noundef %14)
  %add.ptr5 = getelementptr i8, ptr %str.016, i32 %call
  %15 = load i32, ptr @pm8001_ctl_iop_log_show.start, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @pm8001_ctl_iop_log_show.start, align 4
  %16 = load i32, ptr @pm8001_ctl_iop_log_show.end, align 4
  %cmp3 = icmp ult i32 %inc, %16
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %str.0.lcssa = phi ptr [ %buf, %if.end.for.end_crit_edge ], [ %add.ptr5, %for.body.for.end_crit_edge ]
  %17 = load i32, ptr @pm8001_ctl_iop_log_show.count, align 4
  %inc6 = add i32 %17, 1
  store i32 %inc6, ptr @pm8001_ctl_iop_log_show.count, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %str.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_fatal_log_show(ptr noundef %cdev, ptr noundef %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm80xx_get_fatal_dump(ptr noundef %cdev, ptr noundef %attr, ptr noundef %buf) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm80xx_get_fatal_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @non_fatal_log_show(ptr noundef %cdev, ptr noundef %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm80xx_get_non_fatal_dump(ptr noundef %cdev, ptr noundef %attr, ptr noundef %buf) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm80xx_get_non_fatal_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @non_fatal_count_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %non_fatal_count = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %non_fatal_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %non_fatal_count, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @non_fatal_count_store(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %non_fatal_count = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 58
  %7 = ptrtoint ptr %non_fatal_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %non_fatal_count, align 8
  %call1 = call i32 @strlen(ptr noundef %buf) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_gsm_log_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm8001_get_gsm_dump(ptr noundef %cdev, i32 noundef 1024, ptr noundef %buf) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_get_gsm_dump(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_max_out_io_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %max_out_io = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 3
  %4 = ptrtoint ptr %max_out_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_out_io, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_max_devices_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %max_sgl = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 4
  %4 = ptrtoint ptr %max_sgl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_sgl, align 4
  %shr = lshr i32 %5, 16
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_max_sg_list_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %max_sgl = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 4
  %4 = ptrtoint ptr %max_sgl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_sgl, align 4
  %and = and i32 %5, 65535
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_sas_spec_support_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %ctrl_cap_flag = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 5
  %6 = ptrtoint ptr %ctrl_cap_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_cap_flag, align 4
  %and = and i32 %7, -33554432
  %mode.0.in = select i1 %cmp, i32 %and, i32 %7
  %8 = and i32 %mode.0.in, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.40, i32 7)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %len.0.i = phi i32 [ 6, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  %10 = and i32 %mode.0.in, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.end.i.show_sas_spec_support_status.exit_crit_edge, label %if.then3.i

if.end.i.show_sas_spec_support_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %show_sas_spec_support_status.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.0.i
  %cond.i = select i1 %tobool.not.i, ptr @.str.43, ptr @.str.42
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.44) #11
  %add.i = add i32 %call5.i, %len.0.i
  br label %show_sas_spec_support_status.exit

show_sas_spec_support_status.exit:                ; preds = %if.then3.i, %if.end.i.show_sas_spec_support_status.exit_crit_edge
  %len.1.i = phi i32 [ %add.i, %if.then3.i ], [ %len.0.i, %if.end.i.show_sas_spec_support_status.exit_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %len.1.i
  %11 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2560, ptr %add.ptr7.i, align 1
  %add9.i = add i32 %len.1.i, 1
  ret i32 %add9.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_logging_level_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logging_level, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_logging_level_store(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.48, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 50
  %7 = ptrtoint ptr %logging_level to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %logging_level, align 4
  %call1 = call i32 @strlen(ptr noundef %buf) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_log_size_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %event_log_size = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 15
  %4 = ptrtoint ptr %event_log_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event_log_size, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_host_sas_address_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %sas_addr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sas_addr, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.51, i64 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_bios_version_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  %payload = alloca %struct.pm8001_ioctl_payload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #11
  %4 = getelementptr inbounds i8, ptr %completion, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %payload) #11
  %7 = call ptr @memset(ptr %payload, i32 255, i32 20)
  %nvmd_completion = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 36
  %8 = ptrtoint ptr %nvmd_completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %completion, ptr %nvmd_completion, align 8
  %minor_function = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 2
  %9 = ptrtoint ptr %minor_function to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 7, ptr %minor_function, align 2
  %offset = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %offset, align 2
  %rd_length = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 7
  %11 = ptrtoint ptr %rd_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %rd_length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4096) #17
  %func_specific = getelementptr inbounds %struct.pm8001_ioctl_payload, ptr %payload, i32 0, i32 8
  %13 = ptrtoint ptr %func_specific to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %func_specific, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 35
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dispatch, align 4
  %get_nvmd_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %get_nvmd_req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_nvmd_req, align 4
  %call3 = call i32 %19(ptr noundef %3, ptr noundef nonnull %payload) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func_specific, align 4
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @wait_for_completion(ptr noundef nonnull %completion) #11
  %22 = ptrtoint ptr %func_specific to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func_specific, align 4
  %add.ptr9 = getelementptr i8, ptr %23, i32 56
  %24 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr9, align 1
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %buf, align 1
  %nul = getelementptr i8, ptr %buf, i32 1
  %27 = ptrtoint ptr %nul to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %nul, align 1
  %add.ptr9.1 = getelementptr i8, ptr %23, i32 57
  %28 = ptrtoint ptr %add.ptr9.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr9.1, align 1
  store i8 %29, ptr %nul, align 1
  %nul.1 = getelementptr i8, ptr %buf, i32 2
  %30 = ptrtoint ptr %nul.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %nul.1, align 1
  %add.ptr9.2 = getelementptr i8, ptr %23, i32 58
  %31 = ptrtoint ptr %add.ptr9.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr9.2, align 1
  store i8 %32, ptr %nul.1, align 1
  %nul.2 = getelementptr i8, ptr %buf, i32 3
  %33 = ptrtoint ptr %nul.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %nul.2, align 1
  %add.ptr9.3 = getelementptr i8, ptr %23, i32 59
  %34 = ptrtoint ptr %add.ptr9.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr9.3, align 1
  store i8 %35, ptr %nul.2, align 1
  %nul.3 = getelementptr i8, ptr %buf, i32 4
  %36 = ptrtoint ptr %nul.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %nul.3, align 1
  %add.ptr9.4 = getelementptr i8, ptr %23, i32 60
  %37 = ptrtoint ptr %add.ptr9.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr9.4, align 1
  store i8 %38, ptr %nul.3, align 1
  %nul.4 = getelementptr i8, ptr %buf, i32 5
  %39 = ptrtoint ptr %nul.4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %nul.4, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %if.then5
  %.sink = phi ptr [ %23, %if.end7 ], [ %21, %if.then5 ]
  %retval.0.ph = phi i32 [ 5, %if.end7 ], [ -12, %if.then5 ]
  call void @kfree(ptr noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %payload) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_ib_queue_log_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %ib_offset1 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %ib_offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ib_offset1, align 4
  %max_q_num = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 60
  %6 = ptrtoint ptr %max_q_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_q_num, align 8
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %5
  %evtlog_ib_offset = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %start.024 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %str.023 = phi ptr [ %buf, %entry ], [ %add.ptr5, %for.body.for.body_crit_edge ]
  %offset.022 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %evtlog_ib_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %evtlog_ib_offset, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 %11
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %start.024
  %12 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr4, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.023, ptr noundef nonnull @.str.55, i32 noundef %13)
  %add.ptr5 = getelementptr i8, ptr %str.023, i32 %call
  %add = add nuw nsw i32 %start.024, 4
  %inc = add nuw nsw i32 %offset.022, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mul2 = shl i32 %7, 17
  %14 = ptrtoint ptr %evtlog_ib_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evtlog_ib_offset, align 4
  %add7 = add i32 %15, 1024
  %rem = urem i32 %add7, %mul2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9 = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp9, i32 0, i32 %add7
  %16 = ptrtoint ptr %evtlog_ib_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %evtlog_ib_offset, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_ob_queue_log_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %ob_offset1 = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %ob_offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ob_offset1, align 8
  %max_q_num = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 60
  %6 = ptrtoint ptr %max_q_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_q_num, align 8
  %arrayidx = getelementptr %struct.pm8001_hba_info, ptr %3, i32 0, i32 8, i32 1, i32 %5
  %evtlog_ob_offset = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %start.024 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %str.023 = phi ptr [ %buf, %entry ], [ %add.ptr5, %for.body.for.body_crit_edge ]
  %offset.022 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %evtlog_ob_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %evtlog_ob_offset, align 8
  %add.ptr3 = getelementptr i8, ptr %9, i32 %11
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 %start.024
  %12 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr4, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.023, ptr noundef nonnull @.str.55, i32 noundef %13)
  %add.ptr5 = getelementptr i8, ptr %str.023, i32 %call
  %add = add nuw nsw i32 %start.024, 4
  %inc = add nuw nsw i32 %offset.022, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mul2 = shl i32 %7, 17
  %14 = ptrtoint ptr %evtlog_ob_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evtlog_ob_offset, align 8
  %add7 = add i32 %15, 1024
  %rem = urem i32 %add7, %mul2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp9 = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp9, i32 0, i32 %add7
  %16 = ptrtoint ptr %evtlog_ob_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %evtlog_ob_offset, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_ila_version_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ila_version = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 33
  %6 = ptrtoint ptr %ila_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ila_version, align 4
  %shr = lshr i32 %7, 24
  %shr4 = lshr i32 %7, 16
  %conv6 = and i32 %shr4, 255
  %shr9 = lshr i32 %7, 8
  %conv11 = and i32 %shr9, 255
  %conv15 = and i32 %7, 255
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %conv6, i32 noundef %conv11, i32 noundef %conv15)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8001_ctl_inactive_fw_version_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %inc_fw_version = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 26, i32 0, i32 34
  %6 = ptrtoint ptr %inc_fw_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inc_fw_version, align 4
  %shr = lshr i32 %7, 24
  %shr4 = lshr i32 %7, 16
  %conv6 = and i32 %shr4, 255
  %shr9 = lshr i32 %7, 8
  %conv11 = and i32 %shr9, 255
  %conv15 = and i32 %7, 255
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %shr, i32 noundef %conv6, i32 noundef %conv11, i32 noundef %conv15)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_mpi_state_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %general_stat_tbl_addr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %general_stat_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %general_stat_tbl_addr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !196
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %and = and i32 %7, 3
  %arrayidx = getelementptr [4 x ptr], ptr @mpiStateText, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.60, ptr noundef %9) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_hmi_error_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %general_stat_tbl_addr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %general_stat_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %general_stat_tbl_addr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !196
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %shr = lshr i32 %7, 16
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %shr) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_raae_count_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %general_stat_tbl_addr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %general_stat_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %general_stat_tbl_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !196
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %7) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_iop0_count_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %general_stat_tbl_addr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %general_stat_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %general_stat_tbl_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !196
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %7) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctl_iop1_count_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %cdev, i32 936
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %general_stat_tbl_addr = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %general_stat_tbl_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %general_stat_tbl_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !196
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %7) #11
  ret i32 %call1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !64, !65, !67, !68, !70, !72, !73, !75, !77, !79, !81, !83, !84, !86, !87, !89, !90, !92, !94, !95, !97, !98, !100, !101, !103, !105, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130, !132, !133, !135, !136, !138, !140, !141, !143, !145, !146, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !175, !177, !178, !180, !181, !183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @pm8001_host_groups, !1, !"pm8001_host_groups", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 1040, i32 31}
!2 = !{ptr @pm8001_host_attr_group, !3, !"pm8001_host_attr_group", i1 false, i1 false}
!3 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 1036, i32 37}
!4 = !{ptr @pm8001_host_attrs, !5, !"pm8001_host_attrs", i1 false, i1 false}
!5 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 1005, i32 26}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 72, i32 1}
!8 = !{ptr @dev_attr_interface_rev, !7, !"dev_attr_interface_rev", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 64, i32 35}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 92, i32 8}
!13 = !{ptr @dev_attr_controller_fatal_error, !12, !"dev_attr_controller_fatal_error", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 123, i32 8}
!16 = !{ptr @dev_attr_fw_version, !15, !"dev_attr_fw_version", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 110, i32 35}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 889, i32 8}
!21 = !{ptr @dev_attr_update_fw, !20, !"dev_attr_update_fw", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 885, i32 34}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 667, i32 7}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 668, i32 7}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 669, i32 7}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 670, i32 7}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 671, i32 7}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 672, i32 7}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 673, i32 7}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 674, i32 7}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 675, i32 7}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 676, i32 7}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 677, i32 7}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 678, i32 7}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 679, i32 7}
!50 = !{ptr @flash_error_table, !51, !"flash_error_table", i1 false, i1 false}
!51 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 666, i32 30}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 822, i32 20}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 847, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pm8001_store_update_fw._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @pm8001_store_update_fw._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @flash_command_table, !61, !"flash_command_table", i1 false, i1 false}
!61 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 655, i32 35}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 393, i32 8}
!67 = !{ptr @dev_attr_aap_log, !66, !"dev_attr_aap_log", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 379, i32 23}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 560, i32 8}
!72 = !{ptr @dev_attr_iop_log, !71, !"dev_attr_iop_log", i1 false, i1 false}
!73 = !{ptr @pm8001_ctl_iop_log_show.start, !74, !"start", i1 false, i1 false}
!74 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 541, i32 13}
!75 = !{ptr @pm8001_ctl_iop_log_show.end, !76, !"end", i1 false, i1 false}
!76 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 541, i32 20}
!77 = !{ptr @pm8001_ctl_iop_log_show.count, !78, !"count", i1 false, i1 false}
!78 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 541, i32 25}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 556, i32 23}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 580, i32 8}
!83 = !{ptr @dev_attr_fatal_log, !82, !"dev_attr_fatal_log", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 598, i32 8}
!86 = !{ptr @dev_attr_non_fatal_log, !85, !"dev_attr_non_fatal_log", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 625, i32 8}
!89 = !{ptr @dev_attr_non_fatal_count, !88, !"dev_attr_non_fatal_count", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 607, i32 34}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 644, i32 8}
!94 = !{ptr @dev_attr_gsm_log, !93, !"dev_attr_gsm_log", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 201, i32 8}
!97 = !{ptr @dev_attr_max_out_io, !96, !"dev_attr_max_out_io", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 227, i32 8}
!100 = !{ptr @dev_attr_max_devices, !99, !"dev_attr_max_devices", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 218, i32 35}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 254, i32 8}
!105 = !{ptr @dev_attr_max_sg_list, !104, !"dev_attr_max_sg_list", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 299, i32 8}
!108 = !{ptr @dev_attr_sas_spec_support, !107, !"dev_attr_sas_spec_support", i1 false, i1 false}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 266, i32 22}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 266, i32 28}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 268, i32 29}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 268, i32 43}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 268, i32 50}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 268, i32 54}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 269, i32 28}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 357, i32 8}
!125 = !{ptr @dev_attr_logging_level, !124, !"dev_attr_logging_level", i1 false, i1 false}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 339, i32 34}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 350, i32 18}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 523, i32 8}
!132 = !{ptr @dev_attr_event_log_size, !131, !"dev_attr_event_log_size", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 321, i32 8}
!135 = !{ptr @dev_attr_host_sas_address, !134, !"dev_attr_host_sas_address", i1 false, i1 false}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 318, i32 34}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 504, i32 8}
!140 = !{ptr @dev_attr_bios_version, !139, !"dev_attr_bios_version", i1 false, i1 false}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 499, i32 23}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 429, i32 8}
!145 = !{ptr @dev_attr_ib_log, !144, !"dev_attr_ib_log", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 419, i32 23}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 465, i32 8}
!150 = !{ptr @dev_attr_ob_log, !149, !"dev_attr_ob_log", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 149, i32 8}
!153 = !{ptr @dev_attr_ila_version, !152, !"dev_attr_ila_version", i1 false, i1 false}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 176, i32 1}
!156 = !{ptr @dev_attr_inc_fw_ver, !155, !"dev_attr_inc_fw_ver", i1 false, i1 false}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 918, i32 8}
!159 = !{ptr @dev_attr_ctl_mpi_state, !158, !"dev_attr_ctl_mpi_state", i1 false, i1 false}
!160 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 916, i32 25}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 893, i32 2}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 894, i32 2}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 895, i32 2}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 896, i32 2}
!170 = !{ptr @mpiStateText, !171, !"mpiStateText", i1 false, i1 false}
!171 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 892, i32 26}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 939, i32 8}
!174 = !{ptr @dev_attr_ctl_hmi_error, !173, !"dev_attr_ctl_hmi_error", i1 false, i1 false}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 960, i32 8}
!177 = !{ptr @dev_attr_ctl_raae_count, !176, !"dev_attr_ctl_raae_count", i1 false, i1 false}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 981, i32 8}
!180 = !{ptr @dev_attr_ctl_iop0_count, !179, !"dev_attr_ctl_iop0_count", i1 false, i1 false}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/pm8001/pm8001_ctl.c", i32 1003, i32 8}
!183 = !{ptr @dev_attr_ctl_iop1_count, !182, !"dev_attr_ctl_iop1_count", i1 false, i1 false}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
!194 = !{!"branch_weights", i32 1, i32 2000}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i64 6327260}
!197 = !{i64 2155861608}
