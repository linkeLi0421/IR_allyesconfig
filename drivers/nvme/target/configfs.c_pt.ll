; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/configfs.c_pt.bc'
source_filename = "../drivers/nvme/target/configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvmet_type_name_map = type { i8, ptr }
%struct.nvmet_subsys = type { i32, %struct.mutex, %struct.kref, %struct.xarray, i32, i32, i16, i16, %struct.list_head, %struct.list_head, i8, i16, i64, [20 x i8], i8, ptr, i8, %struct.config_group, %struct.config_group, %struct.config_group, ptr, ptr, ptr, %struct.config_group, i32, i32, i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvmet_ns = type { %struct.percpu_ref, ptr, ptr, i8, i32, i32, i64, [16 x i8], %struct.uuid_t, i32, i8, i8, ptr, ptr, %struct.config_group, %struct.config_group, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i8 }
%struct.percpu_ref = type { i32, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvmet_host_link = type { %struct.list_head, ptr }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvmet_subsys_link = type { %struct.list_head, ptr }

@nvmet_ports_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmet_ports_list, ptr @nvmet_ports_list }, [24 x i8] zeroinitializer }, align 32
@nvmet_ports = dso_local global { ptr, [28 x i8] } { ptr @nvmet_ports_list, [28 x i8] zeroinitializer }, align 32
@nvmet_configfs_subsystem = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"nvmet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @nvmet_root_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@nvmet_init_configfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&nvmet_configfs_subsystem.su_mutex\00", [61 x i8] zeroinitializer }, align 32
@nvmet_subsystems_group = internal global { %struct.config_group, [48 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"subsystems\00", [21 x i8] zeroinitializer }, align 32
@nvmet_subsystems_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nvmet_subsystems_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_ports_group = internal global { %struct.config_group, [48 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@nvmet_ports_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nvmet_ports_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_hosts_group = internal global { %struct.config_group, [48 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hosts\00", [26 x i8] zeroinitializer }, align 32
@nvmet_hosts_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nvmet_hosts_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_init_configfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nvmet: configfs_register_subsystem: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvmet_init_configfs\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/nvme/target/configfs.c\00", [33 x i8] zeroinitializer }, align 32
@nvmet_init_configfs._entry_ptr = internal global ptr @nvmet_init_configfs._entry, section ".printk_index", align 4
@nvmet_root_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@nvmet_subsystems_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @nvmet_subsys_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nqn.2014-08.org.nvmexpress.discovery\00", [59 x i8] zeroinitializer }, align 32
@nvmet_subsys_make._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.6, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013nvmet: can't create discovery subsystem through configfs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvmet_subsys_make\00", [46 x i8] zeroinitializer }, align 32
@nvmet_subsys_make._entry_ptr = internal global ptr @nvmet_subsys_make._entry, section ".printk_index", align 4
@nvmet_subsys_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_subsys_item_ops, ptr null, ptr @nvmet_subsys_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"namespaces\00", [21 x i8] zeroinitializer }, align 32
@nvmet_namespaces_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nvmet_namespaces_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"allowed_hosts\00", [18 x i8] zeroinitializer }, align 32
@nvmet_allowed_hosts_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_allowed_hosts_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nvmet_subsys_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nvmet_subsys_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @nvmet_subsys_attr_attr_allow_any_host, ptr @nvmet_subsys_attr_attr_version, ptr @nvmet_subsys_attr_attr_serial, ptr @nvmet_subsys_attr_attr_cntlid_min, ptr @nvmet_subsys_attr_attr_cntlid_max, ptr @nvmet_subsys_attr_attr_model, ptr @nvmet_subsys_attr_attr_pi_enable, ptr null], [32 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_allow_any_host = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @nvmet_subsys_attr_allow_any_host_show, ptr @nvmet_subsys_attr_allow_any_host_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @nvmet_subsys_attr_version_show, ptr @nvmet_subsys_attr_version_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_serial = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @nvmet_subsys_attr_serial_show, ptr @nvmet_subsys_attr_serial_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_cntlid_min = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.36, ptr null, i16 420, ptr @nvmet_subsys_attr_cntlid_min_show, ptr @nvmet_subsys_attr_cntlid_min_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_cntlid_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.39, ptr null, i16 420, ptr @nvmet_subsys_attr_cntlid_max_show, ptr @nvmet_subsys_attr_cntlid_max_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_model = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.40, ptr null, i16 420, ptr @nvmet_subsys_attr_model_show, ptr @nvmet_subsys_attr_model_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_attr_pi_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @nvmet_subsys_attr_pi_enable_show, ptr @nvmet_subsys_attr_pi_enable_store }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"attr_allow_any_host\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@nvmet_config_sem = external dso_local global %struct.rw_semaphore, align 4
@nvmet_subsys_attr_allow_any_host_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013nvmet: Can't set allow_any_host when explicit hosts are set!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nvmet_subsys_attr_allow_any_host_store\00", [57 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_allow_any_host_store._entry_ptr = internal global ptr @nvmet_subsys_attr_allow_any_host_store._entry, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attr_version\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llu.%llu.%llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llu.%llu\0A\00", [21 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_version_store_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013nvmet: Can't set version number. %llu.%llu.%llu is already assigned\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nvmet_subsys_attr_version_store_locked\00", [57 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_version_store_locked._entry_ptr = internal global ptr @nvmet_subsys_attr_version_store_locked._entry, section ".printk_index", align 4
@nvmet_subsys_attr_version_store_locked._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.6, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013nvmet: Can't set version number. %llu.%llu is already assigned\0A\00", [62 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_version_store_locked._entry_ptr.23 = internal global ptr @nvmet_subsys_attr_version_store_locked._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d.%d.%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"attr_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_serial_store_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 1082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013nvmet: Can't set serial number. %s is already assigned\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nvmet_subsys_attr_serial_store_locked\00", [58 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_serial_store_locked._entry_ptr = internal global ptr @nvmet_subsys_attr_serial_store_locked._entry, section ".printk_index", align 4
@nvmet_subsys_attr_serial_store_locked._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.6, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013nvmet: Serial Number can not be empty or exceed %d Bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_serial_store_locked._entry_ptr.32 = internal global ptr @nvmet_subsys_attr_serial_store_locked._entry.30, section ".printk_index", align 4
@nvmet_subsys_attr_serial_store_locked._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.6, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013nvmet: Serial Number must contain only ASCII strings\0A\00", [40 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_serial_store_locked._entry_ptr.35 = internal global ptr @nvmet_subsys_attr_serial_store_locked._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"attr_cntlid_min\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"attr_cntlid_max\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"attr_model\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_model_store_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013nvmet: Can't set model number. %s is already assigned\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nvmet_subsys_attr_model_store_locked\00", [59 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_model_store_locked._entry_ptr = internal global ptr @nvmet_subsys_attr_model_store_locked._entry, section ".printk_index", align 4
@nvmet_subsys_attr_model_store_locked._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvmet: Model number size can not exceed %d Bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@nvmet_subsys_attr_model_store_locked._entry_ptr.46 = internal global ptr @nvmet_subsys_attr_model_store_locked._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"attr_pi_enable\00", [17 x i8] zeroinitializer }, align 32
@nvmet_namespaces_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @nvmet_ns_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_make._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013nvmet: invalid nsid %#x\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvmet_ns_make\00", [18 x i8] zeroinitializer }, align 32
@nvmet_ns_make._entry_ptr = internal global ptr @nvmet_ns_make._entry, section ".printk_index", align 4
@nvmet_ns_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_ns_item_ops, ptr null, ptr @nvmet_ns_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_make._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.6, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016nvmet: adding nsid %d to subsystem %s\0A\00", [55 x i8] zeroinitializer }, align 32
@nvmet_ns_make._entry_ptr.52 = internal global ptr @nvmet_ns_make._entry.50, section ".printk_index", align 4
@nvmet_ns_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nvmet_ns_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nvmet_ns_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @nvmet_ns_attr_device_path, ptr @nvmet_ns_attr_device_nguid, ptr @nvmet_ns_attr_device_uuid, ptr @nvmet_ns_attr_ana_grpid, ptr @nvmet_ns_attr_enable, ptr @nvmet_ns_attr_buffered_io, ptr @nvmet_ns_attr_revalidate_size, ptr null], [32 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_device_path = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 420, ptr @nvmet_ns_device_path_show, ptr @nvmet_ns_device_path_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_device_nguid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 420, ptr @nvmet_ns_device_nguid_show, ptr @nvmet_ns_device_nguid_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_device_uuid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.56, ptr null, i16 420, ptr @nvmet_ns_device_uuid_show, ptr @nvmet_ns_device_uuid_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_ana_grpid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.57, ptr null, i16 420, ptr @nvmet_ns_ana_grpid_show, ptr @nvmet_ns_ana_grpid_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.58, ptr null, i16 420, ptr @nvmet_ns_enable_show, ptr @nvmet_ns_enable_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_buffered_io = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.59, ptr null, i16 420, ptr @nvmet_ns_buffered_io_show, ptr @nvmet_ns_buffered_io_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_ns_attr_revalidate_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.62, ptr null, i16 128, ptr null, ptr @nvmet_ns_revalidate_size_store }, [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_path\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_nguid\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pUb\0A\00", [26 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_uuid\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ana_grpid\00", [22 x i8] zeroinitializer }, align 32
@nvmet_ana_sem = external dso_local global %struct.rw_semaphore, align 4
@nvmet_ana_group_enabled = external dso_local local_unnamed_addr global [129 x i32], align 4
@nvmet_ana_chgcnt = external dso_local local_unnamed_addr global i64, align 8
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buffered_io\00", [20 x i8] zeroinitializer }, align 32
@nvmet_ns_buffered_io_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013nvmet: disable ns before setting buffered_io value.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_ns_buffered_io_store\00", [37 x i8] zeroinitializer }, align 32
@nvmet_ns_buffered_io_store._entry_ptr = internal global ptr @nvmet_ns_buffered_io_store._entry, section ".printk_index", align 4
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"revalidate_size\00", [16 x i8] zeroinitializer }, align 32
@nvmet_ns_revalidate_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013nvmet: enable ns before revalidate.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvmet_ns_revalidate_size_store\00", [33 x i8] zeroinitializer }, align 32
@nvmet_ns_revalidate_size_store._entry_ptr = internal global ptr @nvmet_ns_revalidate_size_store._entry, section ".printk_index", align 4
@nvmet_allowed_hosts_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr null, ptr @nvmet_allowed_hosts_allow_link, ptr @nvmet_allowed_hosts_drop_link }, [20 x i8] zeroinitializer }, align 32
@nvmet_host_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_host_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_allowed_hosts_allow_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013nvmet: can only link hosts into the allowed_hosts directory!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvmet_allowed_hosts_allow_link\00", [33 x i8] zeroinitializer }, align 32
@nvmet_allowed_hosts_allow_link._entry_ptr = internal global ptr @nvmet_allowed_hosts_allow_link._entry, section ".printk_index", align 4
@nvmet_allowed_hosts_allow_link._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.6, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nvmet: can't add hosts when allow_any_host is set!\0A\00", [42 x i8] zeroinitializer }, align 32
@nvmet_allowed_hosts_allow_link._entry_ptr.69 = internal global ptr @nvmet_allowed_hosts_allow_link._entry.67, section ".printk_index", align 4
@nvmet_host_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nvmet_host_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"passthru\00", [23 x i8] zeroinitializer }, align 32
@nvmet_passthru_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @nvmet_passthru_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_passthru_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @nvmet_passthru_attr_device_path, ptr @nvmet_passthru_attr_enable, ptr @nvmet_passthru_attr_admin_timeout, ptr @nvmet_passthru_attr_io_timeout, ptr null], [44 x i8] zeroinitializer }, align 32
@nvmet_passthru_attr_device_path = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 420, ptr @nvmet_passthru_device_path_show, ptr @nvmet_passthru_device_path_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_passthru_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.58, ptr null, i16 420, ptr @nvmet_passthru_enable_show, ptr @nvmet_passthru_enable_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_passthru_attr_admin_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.71, ptr null, i16 420, ptr @nvmet_passthru_admin_timeout_show, ptr @nvmet_passthru_admin_timeout_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_passthru_attr_io_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.72, ptr null, i16 420, ptr @nvmet_passthru_io_timeout_show, ptr @nvmet_passthru_io_timeout_store }, [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"admin_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"io_timeout\00", [21 x i8] zeroinitializer }, align 32
@nvmet_ports_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @nvmet_ports_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_port_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_port_item_ops, ptr null, ptr @nvmet_port_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_port_subsys_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_port_subsys_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"referrals\00", [22 x i8] zeroinitializer }, align 32
@nvmet_referrals_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nvmet_referral_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ana_groups\00", [21 x i8] zeroinitializer }, align 32
@nvmet_ana_groups_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nvmet_ana_groups_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@nvmet_ana_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_ana_group_item_ops, ptr null, ptr @nvmet_ana_group_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_port_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nvmet_port_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nvmet_port_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @nvmet_attr_addr_adrfam, ptr @nvmet_attr_addr_treq, ptr @nvmet_attr_addr_traddr, ptr @nvmet_attr_addr_trsvcid, ptr @nvmet_attr_addr_trtype, ptr @nvmet_attr_param_inline_data_size, ptr @nvmet_attr_param_pi_enable, ptr null], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_attr_addr_adrfam = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.76, ptr null, i16 420, ptr @nvmet_addr_adrfam_show, ptr @nvmet_addr_adrfam_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_attr_addr_treq = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.86, ptr null, i16 420, ptr @nvmet_addr_treq_show, ptr @nvmet_addr_treq_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_attr_addr_traddr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.91, ptr null, i16 420, ptr @nvmet_addr_traddr_show, ptr @nvmet_addr_traddr_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_attr_addr_trsvcid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.94, ptr null, i16 420, ptr @nvmet_addr_trsvcid_show, ptr @nvmet_addr_trsvcid_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_attr_addr_trtype = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.97, ptr null, i16 420, ptr @nvmet_addr_trtype_show, ptr @nvmet_addr_trtype_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_attr_param_inline_data_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.101, ptr null, i16 420, ptr @nvmet_param_inline_data_size_show, ptr @nvmet_param_inline_data_size_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_attr_param_pi_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.103, ptr null, i16 420, ptr @nvmet_param_pi_enable_show, ptr @nvmet_param_pi_enable_store }, [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addr_adrfam\00", [20 x i8] zeroinitializer }, align 32
@nvmet_addr_family = internal constant { [6 x %struct.nvmet_type_name_map], [48 x i8] } { [6 x %struct.nvmet_type_name_map] [%struct.nvmet_type_name_map { i8 0, ptr @.str.77 }, %struct.nvmet_type_name_map { i8 1, ptr @.str.78 }, %struct.nvmet_type_name_map { i8 2, ptr @.str.79 }, %struct.nvmet_type_name_map { i8 3, ptr @.str.80 }, %struct.nvmet_type_name_map { i8 4, ptr @.str.81 }, %struct.nvmet_type_name_map { i8 -2, ptr @.str.82 }], [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv4\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ib\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fc\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"loop\00", [27 x i8] zeroinitializer }, align 32
@__func__.nvmet_addr_adrfam_store = private unnamed_addr constant [24 x i8] c"nvmet_addr_adrfam_store\00", align 1
@nvmet_addr_adrfam_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.nvmet_addr_adrfam_store, ptr @.str.6, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet: Invalid value '%s' for adrfam\0A\00", [56 x i8] zeroinitializer }, align 32
@nvmet_addr_adrfam_store._entry_ptr = internal global ptr @nvmet_addr_adrfam_store._entry, section ".printk_index", align 4
@nvmet_is_port_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.6, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013nvmet: Disable port '%u' before changing attribute in %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_is_port_enabled\00", [42 x i8] zeroinitializer }, align 32
@nvmet_is_port_enabled._entry_ptr = internal global ptr @nvmet_is_port_enabled._entry, section ".printk_index", align 4
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"addr_treq\00", [22 x i8] zeroinitializer }, align 32
@nvmet_addr_treq = internal constant { [3 x %struct.nvmet_type_name_map], [40 x i8] } { [3 x %struct.nvmet_type_name_map] [%struct.nvmet_type_name_map { i8 0, ptr @.str.87 }, %struct.nvmet_type_name_map { i8 1, ptr @.str.88 }, %struct.nvmet_type_name_map { i8 2, ptr @.str.89 }], [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not specified\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"required\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not required\00", [19 x i8] zeroinitializer }, align 32
@__func__.nvmet_addr_treq_store = private unnamed_addr constant [22 x i8] c"nvmet_addr_treq_store\00", align 1
@nvmet_addr_treq_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.nvmet_addr_treq_store, ptr @.str.6, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013nvmet: Invalid value '%s' for treq\0A\00", [58 x i8] zeroinitializer }, align 32
@nvmet_addr_treq_store._entry_ptr = internal global ptr @nvmet_addr_treq_store._entry, section ".printk_index", align 4
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addr_traddr\00", [20 x i8] zeroinitializer }, align 32
@nvmet_addr_traddr_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.6, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet: Invalid value '%s' for traddr\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvmet_addr_traddr_store\00", [40 x i8] zeroinitializer }, align 32
@nvmet_addr_traddr_store._entry_ptr = internal global ptr @nvmet_addr_traddr_store._entry, section ".printk_index", align 4
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"addr_trsvcid\00", [19 x i8] zeroinitializer }, align 32
@nvmet_addr_trsvcid_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.6, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013nvmet: Invalid value '%s' for trsvcid\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmet_addr_trsvcid_store\00", [39 x i8] zeroinitializer }, align 32
@nvmet_addr_trsvcid_store._entry_ptr = internal global ptr @nvmet_addr_trsvcid_store._entry, section ".printk_index", align 4
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addr_trtype\00", [20 x i8] zeroinitializer }, align 32
@nvmet_transport = internal constant { [4 x %struct.nvmet_type_name_map], [32 x i8] } { [4 x %struct.nvmet_type_name_map] [%struct.nvmet_type_name_map { i8 1, ptr @.str.98 }, %struct.nvmet_type_name_map { i8 2, ptr @.str.81 }, %struct.nvmet_type_name_map { i8 3, ptr @.str.99 }, %struct.nvmet_type_name_map { i8 -2, ptr @.str.82 }], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@__func__.nvmet_addr_trtype_store = private unnamed_addr constant [24 x i8] c"nvmet_addr_trtype_store\00", align 1
@nvmet_addr_trtype_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @__func__.nvmet_addr_trtype_store, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet: Invalid value '%s' for trtype\0A\00", [56 x i8] zeroinitializer }, align 32
@nvmet_addr_trtype_store._entry_ptr = internal global ptr @nvmet_addr_trtype_store._entry, section ".printk_index", align 4
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"param_inline_data_size\00", [41 x i8] zeroinitializer }, align 32
@__func__.nvmet_param_inline_data_size_store = private unnamed_addr constant [35 x i8] c"nvmet_param_inline_data_size_store\00", align 1
@nvmet_param_inline_data_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @__func__.nvmet_param_inline_data_size_store, ptr @.str.6, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nvmet: Invalid value '%s' for inline_data_size\0A\00", [46 x i8] zeroinitializer }, align 32
@nvmet_param_inline_data_size_store._entry_ptr = internal global ptr @nvmet_param_inline_data_size_store._entry, section ".printk_index", align 4
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"param_pi_enable\00", [16 x i8] zeroinitializer }, align 32
@__func__.nvmet_param_pi_enable_store = private unnamed_addr constant [28 x i8] c"nvmet_param_pi_enable_store\00", align 1
@nvmet_port_subsys_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr null, ptr @nvmet_port_subsys_allow_link, ptr @nvmet_port_subsys_drop_link }, [20 x i8] zeroinitializer }, align 32
@nvmet_port_subsys_allow_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.6, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013nvmet: can only link subsystems into the subsystems dir.!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_port_subsys_allow_link\00", [35 x i8] zeroinitializer }, align 32
@nvmet_port_subsys_allow_link._entry_ptr = internal global ptr @nvmet_port_subsys_allow_link._entry, section ".printk_index", align 4
@nvmet_referral_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @nvmet_referral_make, ptr null, ptr @nvmet_referral_notify, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_referral_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @nvmet_referral_item_ops, ptr null, ptr @nvmet_referral_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_referral_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nvmet_referral_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nvmet_referral_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @nvmet_attr_addr_adrfam, ptr @nvmet_attr_addr_portid, ptr @nvmet_attr_addr_treq, ptr @nvmet_attr_addr_traddr, ptr @nvmet_attr_addr_trsvcid, ptr @nvmet_attr_addr_trtype, ptr @nvmet_referral_attr_enable, ptr null], [32 x i8] zeroinitializer }, align 32
@nvmet_attr_addr_portid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.106, ptr null, i16 420, ptr @nvmet_addr_portid_show, ptr @nvmet_addr_portid_store }, [44 x i8] zeroinitializer }, align 32
@nvmet_referral_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.58, ptr null, i16 420, ptr @nvmet_referral_enable_show, ptr @nvmet_referral_enable_store }, [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"addr_portid\00", [20 x i8] zeroinitializer }, align 32
@nvmet_addr_portid_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.6, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet: Invalid value '%s' for portid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvmet_addr_portid_store\00", [40 x i8] zeroinitializer }, align 32
@nvmet_addr_portid_store._entry_ptr = internal global ptr @nvmet_addr_portid_store._entry, section ".printk_index", align 4
@nvmet_referral_enable_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.6, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet: Invalid value '%s' for enable\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvmet_referral_enable_store\00", [36 x i8] zeroinitializer }, align 32
@nvmet_referral_enable_store._entry_ptr = internal global ptr @nvmet_referral_enable_store._entry, section ".printk_index", align 4
@nvmet_ana_groups_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @nvmet_ana_groups_make_group, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvmet_ana_group_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @nvmet_ana_group_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nvmet_ana_group_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nvmet_ana_group_attr_ana_state, ptr null], [24 x i8] zeroinitializer }, align 32
@nvmet_ana_group_attr_ana_state = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.111, ptr null, i16 420, ptr @nvmet_ana_group_ana_state_show, ptr @nvmet_ana_group_ana_state_store }, [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ana_state\00", [22 x i8] zeroinitializer }, align 32
@nvmet_ana_state = internal constant { [5 x %struct.nvmet_type_name_map], [56 x i8] } { [5 x %struct.nvmet_type_name_map] [%struct.nvmet_type_name_map { i8 1, ptr @.str.112 }, %struct.nvmet_type_name_map { i8 2, ptr @.str.113 }, %struct.nvmet_type_name_map { i8 3, ptr @.str.114 }, %struct.nvmet_type_name_map { i8 4, ptr @.str.115 }, %struct.nvmet_type_name_map { i8 15, ptr @.str.116 }], [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"optimized\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-optimized\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inaccessible\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"persistent-loss\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"change\00", [25 x i8] zeroinitializer }, align 32
@nvmet_ana_group_ana_state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.6, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet: Invalid value '%s' for ana_state\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvmet_ana_group_ana_state_store\00", [32 x i8] zeroinitializer }, align 32
@nvmet_ana_group_ana_state_store._entry_ptr = internal global ptr @nvmet_ana_group_ana_state_store._entry, section ".printk_index", align 4
@nvmet_hosts_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @nvmet_hosts_make_group, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@switch.table.nvmet_addr_adrfam_show = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 5, i32 1, i32 1, i32 1, i32 2, i32 3, i32 4], [36 x i8] zeroinitializer }, align 32
@switch.table.nvmet_addr_trtype_show = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 0, i32 0, i32 0, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 45, i64 58]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 15]
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"nvmet_ports_list\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 20, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"nvmet_ports\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 21, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"nvmet_configfs_subsystem\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1707, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1721, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"nvmet_subsystems_group\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1659, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1724, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"nvmet_subsystems_type\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1326, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"nvmet_ports_group\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1660, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1729, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"nvmet_ports_type\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1654, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"nvmet_hosts_group\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1701, i32 28 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1734, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"nvmet_hosts_type\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1696, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1740, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"nvmet_root_type\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1703, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"nvmet_subsystems_group_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1322, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1297, i32 24 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1298, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"nvmet_subsys_type\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1286, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1309, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"nvmet_namespaces_type\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 662, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1313, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [25 x i8] c"nvmet_allowed_hosts_type\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 953, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant [22 x i8] c"nvmet_subsys_item_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1282, i32 40 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"nvmet_subsys_attrs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1258, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant [38 x i8] c"nvmet_subsys_attr_attr_allow_any_host\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"nvmet_subsys_attr_attr_version\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [30 x i8] c"nvmet_subsys_attr_attr_serial\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [34 x i8] c"nvmet_subsys_attr_attr_cntlid_min\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [34 x i8] c"nvmet_subsys_attr_attr_cntlid_max\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [29 x i8] c"nvmet_subsys_attr_attr_model\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [33 x i8] c"nvmet_subsys_attr_attr_pi_enable\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 992, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 961, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 977, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1057, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1000, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1005, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1019, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1024, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1034, i32 21 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1118, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1070, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1078, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1081, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1087, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1094, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1148, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1123, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1131, i32 19 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1178, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1234, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1185, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1194, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1204, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1255, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [27 x i8] c"nvmet_namespaces_group_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 658, i32 41 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 641, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [14 x i8] c"nvmet_ns_type\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 621, i32 38 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 651, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [18 x i8] c"nvmet_ns_item_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 617, i32 40 }
@___asan_gen_.368 = private unnamed_addr constant [15 x i8] c"nvmet_ns_attrs\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 596, i32 35 }
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"nvmet_ns_attr_device_path\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [27 x i8] c"nvmet_ns_attr_device_nguid\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [26 x i8] c"nvmet_ns_attr_device_uuid\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [24 x i8] c"nvmet_ns_attr_ana_grpid\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [21 x i8] c"nvmet_ns_attr_enable\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [26 x i8] c"nvmet_ns_attr_buffered_io\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [30 x i8] c"nvmet_ns_attr_revalidate_size\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 367, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 483, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 441, i32 23 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 437, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 516, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 541, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 569, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 559, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 594, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 585, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [29 x i8] c"nvmet_allowed_hosts_item_ops\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 948, i32 40 }
@___asan_gen_.437 = private unnamed_addr constant [16 x i8] c"nvmet_host_type\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1673, i32 38 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 892, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 905, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c"nvmet_host_item_ops\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1669, i32 40 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 791, i32 9 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c"nvmet_passthru_type\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 783, i32 38 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c"nvmet_passthru_attrs\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 775, i32 35 }
@___asan_gen_.467 = private unnamed_addr constant [32 x i8] c"nvmet_passthru_attr_device_path\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 708, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant [27 x i8] c"nvmet_passthru_attr_enable\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 735, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant [34 x i8] c"nvmet_passthru_attr_admin_timeout\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [31 x i8] c"nvmet_passthru_attr_io_timeout\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 754, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 773, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [22 x i8] c"nvmet_ports_group_ops\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1650, i32 41 }
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"nvmet_port_type\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1581, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant [23 x i8] c"nvmet_port_subsys_type\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 878, i32 38 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1632, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant [21 x i8] c"nvmet_referrals_type\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1420, i32 38 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1636, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant [22 x i8] c"nvmet_ana_groups_type\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1544, i32 38 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1642, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant [21 x i8] c"nvmet_ana_group_type\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1499, i32 38 }
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c"nvmet_port_item_ops\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1577, i32 40 }
@___asan_gen_.515 = private unnamed_addr constant [17 x i8] c"nvmet_port_attrs\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1564, i32 35 }
@___asan_gen_.518 = private unnamed_addr constant [23 x i8] c"nvmet_attr_addr_adrfam\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c"nvmet_attr_addr_treq\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [23 x i8] c"nvmet_attr_addr_traddr\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [24 x i8] c"nvmet_attr_addr_trsvcid\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [23 x i8] c"nvmet_attr_addr_trtype\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [34 x i8] c"nvmet_attr_param_inline_data_size\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [27 x i8] c"nvmet_attr_param_pi_enable\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 91, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant [18 x i8] c"nvmet_addr_family\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 35, i32 41 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 36, i32 27 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 37, i32 27 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 38, i32 27 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 39, i32 26 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 40, i32 26 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 41, i32 27 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 83, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 47, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 195, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant [16 x i8] c"nvmet_addr_treq\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 151, i32 41 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 152, i32 29 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 153, i32 25 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 154, i32 28 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 186, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 149, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 137, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 223, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 212, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 325, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant [16 x i8] c"nvmet_transport\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 28, i32 35 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 29, i32 22 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 31, i32 21 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 314, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 249, i32 1 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 243, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 276, i32 1 }
@___asan_gen_.653 = private unnamed_addr constant [27 x i8] c"nvmet_port_subsys_item_ops\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 873, i32 40 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 813, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant [25 x i8] c"nvmet_referral_group_ops\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1415, i32 41 }
@___asan_gen_.668 = private unnamed_addr constant [20 x i8] c"nvmet_referral_type\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1394, i32 38 }
@___asan_gen_.671 = private unnamed_addr constant [24 x i8] c"nvmet_referral_item_ops\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1390, i32 40 }
@___asan_gen_.674 = private unnamed_addr constant [21 x i8] c"nvmet_referral_attrs\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1363, i32 35 }
@___asan_gen_.677 = private unnamed_addr constant [23 x i8] c"nvmet_attr_addr_portid\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [27 x i8] c"nvmet_referral_attr_enable\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1358, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 120, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 109, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1354, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [27 x i8] c"nvmet_ana_groups_group_ops\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1540, i32 41 }
@___asan_gen_.707 = private unnamed_addr constant [25 x i8] c"nvmet_ana_group_item_ops\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1495, i32 40 }
@___asan_gen_.710 = private unnamed_addr constant [22 x i8] c"nvmet_ana_group_attrs\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1474, i32 35 }
@___asan_gen_.713 = private unnamed_addr constant [31 x i8] c"nvmet_ana_group_attr_ana_state\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1472, i32 1 }
@___asan_gen_.719 = private unnamed_addr constant [16 x i8] c"nvmet_ana_state\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1425, i32 35 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1426, i32 25 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1427, i32 27 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1428, i32 27 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1429, i32 30 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1430, i32 22 }
@___asan_gen_.737 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.743 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1460, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [22 x i8] c"nvmet_hosts_group_ops\00", align 1
@___asan_gen_.747 = private constant [34 x i8] c"../drivers/nvme/target/configfs.c\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 1692, i32 41 }
@___asan_gen_.749 = private unnamed_addr constant [36 x i8] c"switch.table.nvmet_addr_adrfam_show\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [36 x i8] c"switch.table.nvmet_addr_trtype_show\00", align 1
@llvm.compiler.used = appending global [239 x ptr] [ptr @nvmet_addr_adrfam_store._entry, ptr @nvmet_addr_adrfam_store._entry_ptr, ptr @nvmet_addr_portid_store._entry, ptr @nvmet_addr_portid_store._entry_ptr, ptr @nvmet_addr_traddr_store._entry, ptr @nvmet_addr_traddr_store._entry_ptr, ptr @nvmet_addr_treq_store._entry, ptr @nvmet_addr_treq_store._entry_ptr, ptr @nvmet_addr_trsvcid_store._entry, ptr @nvmet_addr_trsvcid_store._entry_ptr, ptr @nvmet_addr_trtype_store._entry, ptr @nvmet_addr_trtype_store._entry_ptr, ptr @nvmet_allowed_hosts_allow_link._entry, ptr @nvmet_allowed_hosts_allow_link._entry.67, ptr @nvmet_allowed_hosts_allow_link._entry_ptr, ptr @nvmet_allowed_hosts_allow_link._entry_ptr.69, ptr @nvmet_ana_group_ana_state_store._entry, ptr @nvmet_ana_group_ana_state_store._entry_ptr, ptr @nvmet_exit_configfs, ptr @nvmet_init_configfs._entry, ptr @nvmet_init_configfs._entry_ptr, ptr @nvmet_is_port_enabled._entry, ptr @nvmet_is_port_enabled._entry_ptr, ptr @nvmet_ns_buffered_io_store._entry, ptr @nvmet_ns_buffered_io_store._entry_ptr, ptr @nvmet_ns_make._entry, ptr @nvmet_ns_make._entry.50, ptr @nvmet_ns_make._entry_ptr, ptr @nvmet_ns_make._entry_ptr.52, ptr @nvmet_ns_revalidate_size_store._entry, ptr @nvmet_ns_revalidate_size_store._entry_ptr, ptr @nvmet_param_inline_data_size_store._entry, ptr @nvmet_param_inline_data_size_store._entry_ptr, ptr @nvmet_port_subsys_allow_link._entry, ptr @nvmet_port_subsys_allow_link._entry_ptr, ptr @nvmet_referral_enable_store._entry, ptr @nvmet_referral_enable_store._entry_ptr, ptr @nvmet_subsys_attr_allow_any_host_store._entry, ptr @nvmet_subsys_attr_allow_any_host_store._entry_ptr, ptr @nvmet_subsys_attr_model_store_locked._entry, ptr @nvmet_subsys_attr_model_store_locked._entry.44, ptr @nvmet_subsys_attr_model_store_locked._entry_ptr, ptr @nvmet_subsys_attr_model_store_locked._entry_ptr.46, ptr @nvmet_subsys_attr_serial_store_locked._entry, ptr @nvmet_subsys_attr_serial_store_locked._entry.30, ptr @nvmet_subsys_attr_serial_store_locked._entry.33, ptr @nvmet_subsys_attr_serial_store_locked._entry_ptr, ptr @nvmet_subsys_attr_serial_store_locked._entry_ptr.32, ptr @nvmet_subsys_attr_serial_store_locked._entry_ptr.35, ptr @nvmet_subsys_attr_version_store_locked._entry, ptr @nvmet_subsys_attr_version_store_locked._entry.21, ptr @nvmet_subsys_attr_version_store_locked._entry_ptr, ptr @nvmet_subsys_attr_version_store_locked._entry_ptr.23, ptr @nvmet_subsys_make._entry, ptr @nvmet_subsys_make._entry_ptr, ptr @nvmet_ports_list, ptr @nvmet_ports, ptr @nvmet_configfs_subsystem, ptr @nvmet_init_configfs.__key, ptr @.str, ptr @nvmet_subsystems_group, ptr @.str.1, ptr @nvmet_subsystems_type, ptr @nvmet_ports_group, ptr @.str.2, ptr @nvmet_ports_type, ptr @nvmet_hosts_group, ptr @.str.3, ptr @nvmet_hosts_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nvmet_root_type, ptr @nvmet_subsystems_group_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nvmet_subsys_type, ptr @.str.10, ptr @nvmet_namespaces_type, ptr @.str.11, ptr @nvmet_allowed_hosts_type, ptr @nvmet_subsys_item_ops, ptr @nvmet_subsys_attrs, ptr @nvmet_subsys_attr_attr_allow_any_host, ptr @nvmet_subsys_attr_attr_version, ptr @nvmet_subsys_attr_attr_serial, ptr @nvmet_subsys_attr_attr_cntlid_min, ptr @nvmet_subsys_attr_attr_cntlid_max, ptr @nvmet_subsys_attr_attr_model, ptr @nvmet_subsys_attr_attr_pi_enable, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @nvmet_namespaces_group_ops, ptr @.str.48, ptr @.str.49, ptr @nvmet_ns_type, ptr @.str.51, ptr @nvmet_ns_item_ops, ptr @nvmet_ns_attrs, ptr @nvmet_ns_attr_device_path, ptr @nvmet_ns_attr_device_nguid, ptr @nvmet_ns_attr_device_uuid, ptr @nvmet_ns_attr_ana_grpid, ptr @nvmet_ns_attr_enable, ptr @nvmet_ns_attr_buffered_io, ptr @nvmet_ns_attr_revalidate_size, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @nvmet_allowed_hosts_item_ops, ptr @nvmet_host_type, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @nvmet_host_item_ops, ptr @.str.70, ptr @nvmet_passthru_type, ptr @nvmet_passthru_attrs, ptr @nvmet_passthru_attr_device_path, ptr @nvmet_passthru_attr_enable, ptr @nvmet_passthru_attr_admin_timeout, ptr @nvmet_passthru_attr_io_timeout, ptr @.str.71, ptr @.str.72, ptr @nvmet_ports_group_ops, ptr @nvmet_port_type, ptr @nvmet_port_subsys_type, ptr @.str.73, ptr @nvmet_referrals_type, ptr @.str.74, ptr @nvmet_ana_groups_type, ptr @.str.75, ptr @nvmet_ana_group_type, ptr @nvmet_port_item_ops, ptr @nvmet_port_attrs, ptr @nvmet_attr_addr_adrfam, ptr @nvmet_attr_addr_treq, ptr @nvmet_attr_addr_traddr, ptr @nvmet_attr_addr_trsvcid, ptr @nvmet_attr_addr_trtype, ptr @nvmet_attr_param_inline_data_size, ptr @nvmet_attr_param_pi_enable, ptr @.str.76, ptr @nvmet_addr_family, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @nvmet_addr_treq, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @nvmet_transport, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @nvmet_port_subsys_item_ops, ptr @.str.104, ptr @.str.105, ptr @nvmet_referral_group_ops, ptr @nvmet_referral_type, ptr @nvmet_referral_item_ops, ptr @nvmet_referral_attrs, ptr @nvmet_attr_addr_portid, ptr @nvmet_referral_attr_enable, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @nvmet_ana_groups_group_ops, ptr @nvmet_ana_group_item_ops, ptr @nvmet_ana_group_attrs, ptr @nvmet_ana_group_attr_ana_state, ptr @.str.111, ptr @nvmet_ana_state, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @nvmet_hosts_group_ops, ptr @switch.table.nvmet_addr_adrfam_show, ptr @switch.table.nvmet_addr_trtype_show], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ports_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_configfs_subsystem to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_init_configfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsystems_group to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsystems_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ports_group to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ports_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_hosts_group to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_hosts_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_init_configfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_root_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsystems_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_make._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_namespaces_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_allowed_hosts_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_allow_any_host to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_serial to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_cntlid_min to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_cntlid_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_model to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_attr_pi_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_allow_any_host_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_version_store_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_version_store_locked._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_serial_store_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_serial_store_locked._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_serial_store_locked._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_model_store_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_subsys_attr_model_store_locked._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_namespaces_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_make._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_make._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_device_path to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_device_nguid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_device_uuid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_ana_grpid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_buffered_io to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_attr_revalidate_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_buffered_io_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ns_revalidate_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_allowed_hosts_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_host_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_allowed_hosts_allow_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_allowed_hosts_allow_link._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_host_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_attr_device_path to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_attr_admin_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_passthru_attr_io_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ports_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_port_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_port_subsys_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referrals_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_groups_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_port_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_port_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_addr_adrfam to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_addr_treq to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_addr_traddr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_addr_trsvcid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_addr_trtype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_param_inline_data_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_param_pi_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_family to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_adrfam_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_is_port_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_treq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_treq_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_traddr_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_trsvcid_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_transport to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_trtype_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_param_inline_data_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_port_subsys_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_port_subsys_allow_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referral_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referral_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referral_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referral_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_attr_addr_portid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referral_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_addr_portid_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_referral_enable_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_groups_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_group_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_group_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_group_attr_ana_state to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_ana_group_ana_state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_hosts_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvmet_addr_adrfam_show to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvmet_addr_trtype_show to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_init_configfs() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @nvmet_configfs_subsystem) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @nvmet_init_configfs.__key) #10
  tail call void @config_group_init_type_name(ptr noundef nonnull @nvmet_subsystems_group, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvmet_subsystems_type) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.config_group, ptr @nvmet_subsystems_group, i32 0, i32 4), ptr noundef %0, ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3)) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.configfs_add_default_group.exit_crit_edge

entry.configfs_add_default_group.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_subsystems_group, i32 0, i32 4), ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3), ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_subsystems_group, i32 0, i32 4), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_subsystems_group, i32 0, i32 4, i32 1), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_subsystems_group, i32 0, i32 4), ptr %0, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %entry.configfs_add_default_group.exit_crit_edge
  tail call void @config_group_init_type_name(ptr noundef nonnull @nvmet_ports_group, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvmet_ports_type) #10
  %2 = load ptr, ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3, i32 1), align 4
  %call.i.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.config_group, ptr @nvmet_ports_group, i32 0, i32 4), ptr noundef %2, ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3)) #10
  br i1 %call.i.i.i7, label %if.end.i.i.i8, label %configfs_add_default_group.exit.configfs_add_default_group.exit9_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit9_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit9

if.end.i.i.i8:                                    ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_ports_group, i32 0, i32 4), ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3), ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_ports_group, i32 0, i32 4), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_ports_group, i32 0, i32 4, i32 1), align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_ports_group, i32 0, i32 4), ptr %2, align 4
  br label %configfs_add_default_group.exit9

configfs_add_default_group.exit9:                 ; preds = %if.end.i.i.i8, %configfs_add_default_group.exit.configfs_add_default_group.exit9_crit_edge
  tail call void @config_group_init_type_name(ptr noundef nonnull @nvmet_hosts_group, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvmet_hosts_type) #10
  %4 = load ptr, ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3, i32 1), align 4
  %call.i.i.i10 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds (%struct.config_group, ptr @nvmet_hosts_group, i32 0, i32 4), ptr noundef %4, ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3)) #10
  br i1 %call.i.i.i10, label %if.end.i.i.i11, label %configfs_add_default_group.exit9.configfs_add_default_group.exit12_crit_edge

configfs_add_default_group.exit9.configfs_add_default_group.exit12_crit_edge: ; preds = %configfs_add_default_group.exit9
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit12

if.end.i.i.i11:                                   ; preds = %configfs_add_default_group.exit9
  call void @__sanitizer_cov_trace_pc() #12
  store ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_hosts_group, i32 0, i32 4), ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.configfs_subsystem, ptr @nvmet_configfs_subsystem, i32 0, i32 0, i32 3), ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_hosts_group, i32 0, i32 4), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_hosts_group, i32 0, i32 4, i32 1), align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr getelementptr inbounds (%struct.config_group, ptr @nvmet_hosts_group, i32 0, i32 4), ptr %4, align 4
  br label %configfs_add_default_group.exit12

configfs_add_default_group.exit12:                ; preds = %if.end.i.i.i11, %configfs_add_default_group.exit9.configfs_add_default_group.exit12_crit_edge
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @nvmet_configfs_subsystem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %configfs_add_default_group.exit12.cleanup_crit_edge, label %do.end3

configfs_add_default_group.exit12.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end3:                                          ; preds = %configfs_add_default_group.exit12
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %configfs_add_default_group.exit12.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_exit_configfs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @nvmet_configfs_subsystem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvmet_subsys_make(ptr nocapture noundef readnone %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %name, ptr noundef nonnull @.str.7) #10
  br i1 %call, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @nvmet_subsys_alloc(ptr noundef %name, i32 noundef 2) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %group8 = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 17
  tail call void @config_group_init_type_name(ptr noundef %group8, ptr noundef %name, ptr noundef nonnull @nvmet_subsys_type) #10
  %namespaces_group = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 18
  tail call void @config_group_init_type_name(ptr noundef %namespaces_group, ptr noundef nonnull @.str.10, ptr noundef nonnull @nvmet_namespaces_type) #10
  %group_entry.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 18, i32 4
  %default_groups.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 17, i32 3
  %prev.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 17, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %1, ptr noundef %default_groups.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.configfs_add_default_group.exit_crit_edge

if.end7.configfs_add_default_group.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 18, i32 4, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %group_entry.i, ptr %1, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end7.configfs_add_default_group.exit_crit_edge
  %allowed_hosts_group = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 19
  tail call void @config_group_init_type_name(ptr noundef %allowed_hosts_group, ptr noundef nonnull @.str.11, ptr noundef nonnull @nvmet_allowed_hosts_type) #10
  %group_entry.i26 = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 19, i32 4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i26, ptr noundef %7, ptr noundef %default_groups.i) #10
  br i1 %call.i.i.i29, label %if.end.i.i.i31, label %configfs_add_default_group.exit.configfs_add_default_group.exit32_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit32_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit32

if.end.i.i.i31:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i26, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i26, align 4
  %prev3.i.i.i30 = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 19, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i30, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i26, ptr %7, align 4
  br label %configfs_add_default_group.exit32

configfs_add_default_group.exit32:                ; preds = %if.end.i.i.i31, %configfs_add_default_group.exit.configfs_add_default_group.exit32_crit_edge
  %passthru_group.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 23
  tail call void @config_group_init_type_name(ptr noundef %passthru_group.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @nvmet_passthru_type) #10
  %group_entry.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 23, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.i, ptr noundef %13, ptr noundef %default_groups.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %configfs_add_default_group.exit32.cleanup_crit_edge

configfs_add_default_group.exit32.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %configfs_add_default_group.exit32
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.nvmet_subsys, ptr %call3, i32 0, i32 23, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i.i, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %configfs_add_default_group.exit32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call3, %if.end.cleanup_crit_edge ], [ %group8, %configfs_add_default_group.exit32.cleanup_crit_edge ], [ %group8, %if.end.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmet_subsys_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_subsys_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -224
  tail call void @nvmet_subsys_del_ctrls(ptr noundef %add.ptr.i) #10
  tail call void @nvmet_subsys_put(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_subsys_del_ctrls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_subsys_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_allow_any_host_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %allow_any_host = getelementptr i8, ptr %item, i32 -44
  %0 = ptrtoint ptr %allow_any_host to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %allow_any_host, align 4, !range !393
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_allow_any_host_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %allow_any_host = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -224
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %allow_any_host) #10
  %0 = ptrtoint ptr %allow_any_host to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %allow_any_host, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %allow_any_host) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %1 = ptrtoint ptr %allow_any_host to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %allow_any_host, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %hosts = getelementptr i8, ptr %item, i32 -52
  %3 = ptrtoint ptr %hosts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hosts, align 4
  %cmp.i.not = icmp eq ptr %4, %hosts
  br i1 %cmp.i.not, label %land.lhs.true.if.end7_crit_edge, label %out_unlock

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %allow_any_host8 = getelementptr i8, ptr %item, i32 -44
  %5 = ptrtoint ptr %allow_any_host8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %allow_any_host8, align 4, !range !393
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %2)
  %cmp.not = icmp eq i8 %6, %2
  br i1 %cmp.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.then13

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %allow_any_host8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %2, ptr %allow_any_host8, align 4
  call void @nvmet_subsys_disc_changed(ptr noundef %add.ptr.i, ptr noundef null) #10
  br label %cleanup.sink.split

out_unlock:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_unlock, %if.then13, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %out_unlock ], [ %count, %if.end7.cleanup.sink.split_crit_edge ], [ %count, %if.then13 ]
  call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %allow_any_host) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_subsys_disc_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_version_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ver = getelementptr i8, ptr %item, i32 -40
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ver, align 8
  %and = and i64 %1, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %shr9 = lshr i64 %1, 16
  %shr11 = lshr i64 %1, 8
  %and12 = and i64 %shr11, 255
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.17, i64 noundef %shr9, i64 noundef %and12, i64 noundef %and)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.18, i64 noundef %shr9, i64 noundef %and12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call7, %if.then ], [ %call13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_version_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %count) #4 align 64 {
entry:
  %major.i = alloca i32, align 4
  %minor.i = alloca i32, align 4
  %tertiary.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %lock = getelementptr i8, ptr %item, i32 -220
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major.i) #10
  %0 = ptrtoint ptr %major.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %major.i, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor.i) #10
  %1 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %minor.i, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tertiary.i) #10
  %2 = ptrtoint ptr %tertiary.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tertiary.i, align 4
  %subsys_discovered.i = getelementptr i8, ptr %item, i32 -12
  %3 = ptrtoint ptr %subsys_discovered.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %subsys_discovered.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end19.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %ver.i = getelementptr i8, ptr %item, i32 -40
  %5 = ptrtoint ptr %ver.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ver.i, align 8
  %and.i = and i64 %6, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i = icmp eq i64 %and.i, 0
  %shr14.i = lshr i64 %6, 16
  %shr16.i = lshr i64 %6, 8
  %and17.i = and i64 %shr16.i, 255
  br i1 %tobool1.not.i, label %do.end11.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i64 noundef %shr14.i, i64 noundef %and17.i, i64 noundef %and.i) #13
  br label %nvmet_subsys_attr_version_store_locked.exit

do.end11.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i64 noundef %shr14.i, i64 noundef %and17.i) #13
  br label %nvmet_subsys_attr_version_store_locked.exit

if.end19.i:                                       ; preds = %entry
  %passthru_ctrl.i.i = getelementptr i8, ptr %item, i32 244
  %7 = ptrtoint ptr %passthru_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %passthru_ctrl.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.i.not.i, label %if.end22.i, label %if.end19.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge

if.end19.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_subsys_attr_version_store_locked.exit

if.end22.i:                                       ; preds = %if.end19.i
  %call23.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.24, ptr noundef nonnull %major.i, ptr noundef nonnull %minor.i, ptr noundef nonnull %tertiary.i) #10
  %9 = and i32 %call23.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.i = icmp eq i32 %9, 2
  br i1 %switch.i, label %if.end26.i, label %if.end22.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge

if.end22.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_subsys_attr_version_store_locked.exit

if.end26.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %major.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %major.i, align 4
  %shl.i = shl i32 %11, 16
  %12 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %minor.i, align 4
  %shl27.i = shl i32 %13, 8
  %or.i = or i32 %shl27.i, %shl.i
  %14 = ptrtoint ptr %tertiary.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tertiary.i, align 4
  %or28.i = or i32 %or.i, %15
  %conv.i = sext i32 %or28.i to i64
  %ver29.i = getelementptr i8, ptr %item, i32 -40
  %16 = ptrtoint ptr %ver29.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %ver29.i, align 8
  br label %nvmet_subsys_attr_version_store_locked.exit

nvmet_subsys_attr_version_store_locked.exit:      ; preds = %if.end26.i, %if.end22.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge, %if.end19.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge, %do.end11.i, %do.end.i
  %retval.0.i = phi i32 [ %count, %if.end26.i ], [ -22, %do.end11.i ], [ -22, %do.end.i ], [ -22, %if.end19.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge ], [ -22, %if.end22.i.nvmet_subsys_attr_version_store_locked.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tertiary.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major.i) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_serial_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %serial = getelementptr i8, ptr %item, i32 -32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef 20, ptr noundef %serial)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_serial_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %lock = getelementptr i8, ptr %item, i32 -220
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call.i = tail call i32 @strcspn(ptr noundef %page, ptr noundef nonnull @.str.27) #10
  %subsys_discovered.i = getelementptr i8, ptr %item, i32 -12
  %0 = ptrtoint ptr %subsys_discovered.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subsys_discovered.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %serial.i = getelementptr i8, ptr %item, i32 -32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %serial.i) #13
  br label %nvmet_subsys_attr_serial_store_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 20
  %or.cond.i = or i1 %tobool2.not.i, %cmp.i
  br i1 %or.cond.i, label %do.end6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1031.i = icmp sgt i32 %call.i, 0
  br i1 %cmp1031.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 20) #13
  br label %nvmet_subsys_attr_serial_store_locked.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %pos.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pos.032.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %page, i32 %pos.032.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = add i8 %3, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %4)
  %5 = icmp ult i8 %4, 95
  br i1 %5, label %for.cond.i, label %do.end15.i

do.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %nvmet_subsys_attr_serial_store_locked.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %serial19.i = getelementptr i8, ptr %item, i32 -32
  tail call void @memcpy_and_pad(ptr noundef %serial19.i, i32 noundef 20, ptr noundef %page, i32 noundef %call.i, i32 noundef 32) #10
  br label %nvmet_subsys_attr_serial_store_locked.exit

nvmet_subsys_attr_serial_store_locked.exit:       ; preds = %for.end.i, %do.end15.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end6.i ], [ -22, %do.end15.i ], [ %count, %for.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @memcpy_and_pad(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_cntlid_min_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cntlid_min = getelementptr i8, ptr %item, i32 -64
  %0 = ptrtoint ptr %cntlid_min to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cntlid_min, align 8
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_cntlid_min_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %cnt) #4 align 64 {
entry:
  %cntlid_min = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cntlid_min) #10
  %0 = ptrtoint ptr %cntlid_min to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cntlid_min, align 2, !annotation !394
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.38, ptr noundef nonnull %cntlid_min)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %cntlid_min to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cntlid_min, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp1 = icmp eq i16 %2, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %3 = ptrtoint ptr %cntlid_min to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cntlid_min, align 2
  %cntlid_max = getelementptr i8, ptr %item, i32 -62
  %5 = ptrtoint ptr %cntlid_max to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cntlid_max, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp8.not = icmp ult i16 %4, %6
  br i1 %cmp8.not, label %if.end11, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %cntlid_min13 = getelementptr i8, ptr %item, i32 -64
  %7 = ptrtoint ptr %cntlid_min13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %cntlid_min13, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %cnt, %if.end11 ], [ -22, %if.end4.cleanup.sink.split_crit_edge ]
  call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cntlid_min) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_cntlid_max_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cntlid_max = getelementptr i8, ptr %item, i32 -62
  %0 = ptrtoint ptr %cntlid_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cntlid_max, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_cntlid_max_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %cnt) #4 align 64 {
entry:
  %cntlid_max = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cntlid_max) #10
  %0 = ptrtoint ptr %cntlid_max to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cntlid_max, align 2, !annotation !394
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.38, ptr noundef nonnull %cntlid_max)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %cntlid_max to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cntlid_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp1 = icmp eq i16 %2, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %3 = ptrtoint ptr %cntlid_max to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cntlid_max, align 2
  %cntlid_min = getelementptr i8, ptr %item, i32 -64
  %5 = ptrtoint ptr %cntlid_min to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cntlid_min, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp8.not = icmp ugt i16 %4, %6
  br i1 %cmp8.not, label %if.end11, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %cntlid_max13 = getelementptr i8, ptr %item, i32 -62
  %7 = ptrtoint ptr %cntlid_max13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %cntlid_max13, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %cnt, %if.end11 ], [ -22, %if.end4.cleanup.sink.split_crit_edge ]
  call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cntlid_max) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_model_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %model_number = getelementptr i8, ptr %item, i32 240
  %0 = ptrtoint ptr %model_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_number, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_model_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %lock = getelementptr i8, ptr %item, i32 -220
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %subsys_discovered.i = getelementptr i8, ptr %item, i32 -12
  %0 = ptrtoint ptr %subsys_discovered.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subsys_discovered.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %model_number.i = getelementptr i8, ptr %item, i32 240
  %2 = ptrtoint ptr %model_number.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_number.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %3) #13
  br label %nvmet_subsys_attr_model_store_locked.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @strcspn(ptr noundef %page, ptr noundef nonnull @.str.27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge, label %if.end4.i

if.end.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_subsys_attr_model_store_locked.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, 40
  br i1 %cmp.i, label %do.end8.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp1233.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp1233.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 40) #13
  br label %nvmet_subsys_attr_model_store_locked.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %pos.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call1.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pos.034.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %page, i32 %pos.034.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = add i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %6)
  %7 = icmp ult i8 %6, 95
  br i1 %7, label %for.cond.i, label %for.body.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge

for.body.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvmet_subsys_attr_model_store_locked.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call16.i = tail call ptr @kmemdup_nul(ptr noundef %page, i32 noundef %call1.i, i32 noundef 3264) #10
  %model_number17.i = getelementptr i8, ptr %item, i32 240
  %8 = ptrtoint ptr %model_number17.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16.i, ptr %model_number17.i, align 8
  %tobool19.not.i = icmp eq ptr %call16.i, null
  %.count.i = select i1 %tobool19.not.i, i32 -12, i32 %count
  br label %nvmet_subsys_attr_model_store_locked.exit

nvmet_subsys_attr_model_store_locked.exit:        ; preds = %for.end.i, %for.body.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge, %do.end8.i, %if.end.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end8.i ], [ -22, %if.end.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge ], [ %.count.i, %for.end.i ], [ -22, %for.body.i.nvmet_subsys_attr_model_store_locked.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_pi_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_support = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pi_support, align 4, !range !393
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_subsys_attr_pi_enable_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %pi_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pi_enable) #10
  %0 = ptrtoint ptr %pi_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pi_enable, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %pi_enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %pi_enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pi_enable, align 1, !range !393
  %pi_support = getelementptr i8, ptr %item, i32 -4
  %3 = ptrtoint ptr %pi_support to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %pi_support, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pi_enable) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvmet_ns_make(ptr noundef %group, ptr noundef %name) #4 align 64 {
entry:
  %nsid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %group, i32 -304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsid) #10
  %0 = ptrtoint ptr %nsid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nsid, align 4, !annotation !394
  %call.i = call i32 @kstrtouint(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %nsid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nsid, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end5 [
    i32 0, label %if.end.do.end_crit_edge
    i32 -1, label %if.end.do.end_crit_edge26
  ]

if.end.do.end_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge26
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %2) #13
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @nvmet_ns_alloc(ptr noundef %add.ptr.i, i32 noundef %2) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %group10 = getelementptr inbounds %struct.nvmet_ns, ptr %call6, i32 0, i32 15
  call void @config_group_init_type_name(ptr noundef %group10, ptr noundef %name, ptr noundef nonnull @nvmet_ns_type) #10
  %4 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsid, align 4
  %subsysnqn = getelementptr i8, ptr %group, i32 -88
  %6 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subsysnqn, align 8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %5, ptr noundef %7) #13
  br label %cleanup

out:                                              ; preds = %if.end5.out_crit_edge, %do.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ -22, %do.end ], [ -12, %if.end5.out_crit_edge ]
  %8 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9
  %retval.0 = phi ptr [ %8, %out ], [ %group10, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsid) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmet_ns_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_ns_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -168
  tail call void @nvmet_ns_free(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ns_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_device_path_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_path = getelementptr i8, ptr %item, i32 -84
  %0 = ptrtoint ptr %device_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_path, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_device_path_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subsys1 = getelementptr i8, ptr %item, i32 -88
  %0 = ptrtoint ptr %subsys1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys1, align 8
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %enabled = getelementptr i8, ptr %item, i32 -91
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcspn(ptr noundef %page, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.out_unlock_crit_edge, label %if.end5

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end5:                                          ; preds = %if.end
  %device_path = getelementptr i8, ptr %item, i32 -84
  %4 = ptrtoint ptr %device_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_path, align 4
  tail call void @kfree(ptr noundef %5) #10
  %call6 = tail call ptr @kmemdup_nul(ptr noundef %page, i32 noundef %call2, i32 noundef 3264) #10
  %6 = ptrtoint ptr %device_path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %device_path, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.end5.out_unlock_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end5.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ -16, %entry.out_unlock_crit_edge ], [ -12, %if.end5.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ %count, %if.end5.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_device_nguid_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nguid = getelementptr i8, ptr %item, i32 -128
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.55, ptr noundef %nguid)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_device_nguid_store(ptr nocapture noundef %item, ptr noundef readonly %page, i32 noundef %count) #4 align 64 {
entry:
  %nguid = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subsys1 = getelementptr i8, ptr %item, i32 -88
  %0 = ptrtoint ptr %subsys1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nguid) #10
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %nguid, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %enabled = getelementptr i8, ptr %item, i32 -91
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_unlock.thread_crit_edge

entry.out_unlock.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread

for.cond.preheader:                               ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %page, i32 %count
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.057 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %p.056 = phi ptr [ %page, %for.cond.preheader ], [ %p.1, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.056, i32 2
  %cmp3 = icmp ugt ptr %add.ptr, %add.ptr2
  br i1 %cmp3, label %for.body.out_unlock.thread_crit_edge, label %if.end5

for.body.out_unlock.thread_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread

if.end5:                                          ; preds = %for.body
  %5 = ptrtoint ptr %p.056 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p.056, align 1
  %conv = zext i8 %6 to i32
  %arrayidx6 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %9 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.not = icmp eq i8 %9, 0
  br i1 %cmp8.not, label %if.end5.out_unlock.thread_crit_edge, label %lor.lhs.false

if.end5.out_unlock.thread_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread

lor.lhs.false:                                    ; preds = %if.end5
  %arrayidx10 = getelementptr i8, ptr %p.056, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %arrayidx12 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %14 = and i8 %13, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp15.not = icmp eq i8 %14, 0
  br i1 %cmp15.not, label %lor.lhs.false.out_unlock.thread_crit_edge, label %if.end18

lor.lhs.false.out_unlock.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread

if.end18:                                         ; preds = %lor.lhs.false
  %call20 = tail call i32 @hex_to_bin(i8 noundef zeroext %6) #10
  %shl = shl i32 %call20, 4
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %call22 = tail call i32 @hex_to_bin(i8 noundef zeroext %16) #10
  %or = or i32 %call22, %shl
  %conv23 = trunc i32 %or to i8
  %arrayidx24 = getelementptr [16 x i8], ptr %nguid, i32 0, i32 %i.057
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv23, ptr %arrayidx24, align 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %19, label %if.end18.for.inc_crit_edge [
    i8 45, label %if.end18.if.then33_crit_edge
    i8 58, label %if.end18.if.then33_crit_edge58
  ]

if.end18.if.then33_crit_edge58:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end18.if.then33_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then33:                                        ; preds = %if.end18.if.then33_crit_edge, %if.end18.if.then33_crit_edge58
  %incdec.ptr = getelementptr i8, ptr %p.056, i32 3
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end18.for.inc_crit_edge
  %p.1 = phi ptr [ %incdec.ptr, %if.then33 ], [ %add.ptr, %if.end18.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %21, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

21:                                               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %nguid35 = getelementptr i8, ptr %item, i32 -128
  %22 = call ptr @memcpy(ptr %nguid35, ptr %nguid, i32 16)
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %21, %lor.lhs.false.out_unlock.thread_crit_edge, %if.end5.out_unlock.thread_crit_edge, %for.body.out_unlock.thread_crit_edge, %entry.out_unlock.thread_crit_edge
  %23 = phi i32 [ %count, %21 ], [ -16, %entry.out_unlock.thread_crit_edge ], [ -22, %for.body.out_unlock.thread_crit_edge ], [ -22, %lor.lhs.false.out_unlock.thread_crit_edge ], [ -22, %if.end5.out_unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nguid) #10
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_device_uuid_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uuid = getelementptr i8, ptr %item, i32 -112
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.55, ptr noundef %uuid)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_device_uuid_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subsys1 = getelementptr i8, ptr %item, i32 -88
  %0 = ptrtoint ptr %subsys1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys1, align 8
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %enabled = getelementptr i8, ptr %item, i32 -91
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %out_unlock, label %out_unlock.thread

out_unlock.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %4

out_unlock:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %uuid = getelementptr i8, ptr %item, i32 -112
  %call2 = tail call i32 @uuid_parse(ptr noundef %page, ptr noundef %uuid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %spec.select = select i1 %tobool3.not, i32 %count, i32 -22
  br label %4

4:                                                ; preds = %out_unlock, %out_unlock.thread
  %5 = phi i32 [ -16, %out_unlock.thread ], [ %spec.select, %out_unlock ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_ana_grpid_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %anagrpid = getelementptr i8, ptr %item, i32 -96
  %0 = ptrtoint ptr %anagrpid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %anagrpid, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.37, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_ana_grpid_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %newgrpid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newgrpid) #10
  %0 = ptrtoint ptr %newgrpid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %newgrpid, align 4, !annotation !394
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %newgrpid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %newgrpid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %newgrpid, align 4
  %3 = add i32 %2, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %3)
  %4 = icmp ult i32 %3, -128
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @down_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %anagrpid = getelementptr i8, ptr %item, i32 -96
  %5 = ptrtoint ptr %anagrpid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %anagrpid, align 8
  %7 = ptrtoint ptr %newgrpid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %newgrpid, align 4
  %arrayidx = getelementptr [129 x i32], ptr @nvmet_ana_group_enabled, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %arrayidx, align 4
  store i32 %8, ptr %anagrpid, align 8
  %arrayidx6 = getelementptr [129 x i32], ptr @nvmet_ana_group_enabled, i32 0, i32 %6
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %arrayidx6, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @nvmet_ana_chgcnt to i32))
  %13 = load i64, ptr @nvmet_ana_chgcnt, align 8
  %inc7 = add i64 %13, 1
  store i64 %inc7, ptr @nvmet_ana_chgcnt, align 8
  call void @up_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %subsys = getelementptr i8, ptr %item, i32 -88
  %14 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subsys, align 8
  call void @nvmet_send_ana_event(ptr noundef %15, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newgrpid) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_send_ana_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %item, i32 -91
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !393
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_enable_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #10
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %enable, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ns_disable(ptr noundef %add.ptr.i) #10
  br label %3

if.end5:                                          ; preds = %if.end
  %call4 = call i32 @nvmet_ns_enable(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end5._crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5._crit_edge:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %3

3:                                                ; preds = %if.end5._crit_edge, %if.end5.thread
  br label %cleanup

cleanup:                                          ; preds = %3, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %3 ], [ %call4, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_ns_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ns_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_buffered_io_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffered_io = getelementptr i8, ptr %item, i32 -92
  %0 = ptrtoint ptr %buffered_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffered_io, align 4, !range !393
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_buffered_io_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %subsys = getelementptr i8, ptr %item, i32 -88
  %1 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subsys, align 8
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %2, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %enabled = getelementptr i8, ptr %item, i32 -91
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1, !range !393
  %buffered_io = getelementptr i8, ptr %item, i32 -92
  %7 = ptrtoint ptr %buffered_io to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %buffered_io, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %do.end
  %retval.0.ph = phi i32 [ %count, %if.end7 ], [ -22, %do.end ]
  %8 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subsys, align 8
  %lock10 = getelementptr inbounds %struct.nvmet_subsys, ptr %9, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %lock10) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ns_revalidate_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -168
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %subsys = getelementptr i8, ptr %item, i32 -88
  %3 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subsys, align 8
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %enabled = getelementptr i8, ptr %item, i32 -91
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #13
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_ns_revalidate(ptr noundef %add.ptr.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %do.end
  %retval.0.ph = phi i32 [ -22, %do.end ], [ %count, %if.end10 ]
  %7 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subsys, align 8
  %lock12 = getelementptr inbounds %struct.nvmet_subsys, ptr %8, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %lock12) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ns_revalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_allowed_hosts_allow_link(ptr nocapture noundef readonly %parent, ptr noundef %target) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %parent, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -224
  %ci_type = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 6
  %2 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_type, align 4
  %cmp.not = icmp eq ptr %3, @nvmet_host_type
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %host6 = getelementptr inbounds %struct.nvmet_host_link, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %host6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %target, ptr %host6, align 8
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %allow_any_host = getelementptr i8, ptr %1, i32 -44
  %6 = ptrtoint ptr %allow_any_host to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %allow_any_host, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #13
  br label %out_free_link

if.end14:                                         ; preds = %if.end5
  %hosts = getelementptr i8, ptr %1, i32 -52
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end14
  %p.0.in = phi ptr [ %hosts, %if.end14 ], [ %p.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp18.not = icmp eq ptr %p.0, %hosts
  br i1 %cmp18.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %host19 = getelementptr inbounds %struct.nvmet_host_link, ptr %p.0, i32 0, i32 1
  %9 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host19, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target, align 4
  %call22 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %14) #15
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.body.out_free_link_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.out_free_link_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_link

for.end:                                          ; preds = %for.cond
  %prev.i = getelementptr i8, ptr %1, i32 -48
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %16, ptr noundef %hosts) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %prev.i, align 4
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hosts, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  tail call void @nvmet_subsys_disc_changed(ptr noundef %add.ptr.i, ptr noundef %target) #10
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

out_free_link:                                    ; preds = %for.body.out_free_link_crit_edge, %do.end11
  %ret.0 = phi i32 [ -22, %do.end11 ], [ -17, %for.body.out_free_link_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_link, %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out_free_link ], [ 0, %list_add_tail.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_allowed_hosts_drop_link(ptr nocapture noundef readonly %parent, ptr noundef %target) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %parent, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -224
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %hosts = getelementptr i8, ptr %1, i32 -52
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %p.0.in = phi ptr [ %hosts, %entry ], [ %p.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.not = icmp eq ptr %p.0, %hosts
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %host4 = getelementptr inbounds %struct.nvmet_host_link, ptr %p.0, i32 0, i32 1
  %3 = ptrtoint ptr %host4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host4, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %target, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %8) #15
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

found:                                            ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %found.list_del.exit_crit_edge

found.list_del.exit_crit_edge:                    ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %found.list_del.exit_crit_edge
  %15 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @nvmet_subsys_disc_changed(ptr noundef %add.ptr.i, ptr noundef %target) #10
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  tail call void @kfree(ptr noundef %p.0) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_host_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %item) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_device_path_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %passthru_ctrl_path = getelementptr i8, ptr %1, i32 248
  %2 = ptrtoint ptr %passthru_ctrl_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %passthru_ctrl_path, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_device_path_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %lock = getelementptr i8, ptr %1, i32 -220
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %passthru_ctrl = getelementptr i8, ptr %1, i32 244
  %2 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %passthru_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcspn(ptr noundef %page, ptr noundef nonnull @.str.27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %passthru_ctrl_path = getelementptr i8, ptr %1, i32 248
  %4 = ptrtoint ptr %passthru_ctrl_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %passthru_ctrl_path, align 8
  tail call void @kfree(ptr noundef %5) #10
  %call5 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %call1, i32 noundef 3264) #10
  %6 = ptrtoint ptr %passthru_ctrl_path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %passthru_ctrl_path, align 8
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.end4.out_unlock_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ -16, %entry.out_unlock_crit_edge ], [ -12, %if.end4.out_unlock_crit_edge ], [ -22, %if.end.out_unlock_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ %count, %if.end4.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %passthru_ctrl = getelementptr i8, ptr %1, i32 244
  %2 = ptrtoint ptr %passthru_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %passthru_ctrl, align 4
  %tobool.not = icmp ne ptr %3, null
  %cond = zext i1 %tobool.not to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.13, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_enable_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -224
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #10
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_passthru_ctrl_disable(ptr noundef %add.ptr.i) #10
  br label %5

if.end5:                                          ; preds = %if.end
  %call4 = call i32 @nvmet_passthru_ctrl_enable(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end5._crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5._crit_edge:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %5

5:                                                ; preds = %if.end5._crit_edge, %if.end5.thread
  br label %cleanup

cleanup:                                          ; preds = %5, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %5 ], [ %call4, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_passthru_ctrl_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_passthru_ctrl_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_admin_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %admin_timeout = getelementptr i8, ptr %1, i32 332
  %2 = ptrtoint ptr %admin_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %admin_timeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_admin_timeout_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #10
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %timeout, align 4, !annotation !394
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %admin_timeout = getelementptr i8, ptr %1, i32 332
  %5 = ptrtoint ptr %admin_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %admin_timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_io_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %io_timeout = getelementptr i8, ptr %1, i32 336
  %2 = ptrtoint ptr %io_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_timeout, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_passthru_io_timeout_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeout) #10
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %timeout, align 4, !annotation !394
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %io_timeout = getelementptr i8, ptr %1, i32 336
  %5 = ptrtoint ptr %io_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %io_timeout, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeout) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvmet_ports_make(ptr nocapture noundef readnone %group, ptr noundef %name) #4 align 64 {
entry:
  %portid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %portid) #10
  %0 = ptrtoint ptr %portid to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %portid, align 2, !annotation !394
  %call = call i32 @kstrtou16(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %portid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1488) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 516) #14
  %ana_state = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %ana_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %ana_state, align 8
  %tobool9.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not, label %if.then10, label %for.body.peel.next

for.body.peel.next:                               ; preds = %if.end6
  %4 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ana_state, align 8
  %arrayidx.peel = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx.peel, align 4
  br label %for.inc

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.body.peel.next
  %i.097 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 2, %for.body.peel.next ]
  %7 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ana_state, align 8
  %arrayidx17 = getelementptr i32, ptr %8, i32 %i.097
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %arrayidx17, align 4
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 129
  br i1 %exitcond.not, label %for.end, label %for.inc.for.inc_crit_edge, !llvm.loop !395

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.end:                                          ; preds = %for.inc
  %global_entry = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 7
  %10 = load ptr, ptr @nvmet_ports_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %global_entry, ptr noundef nonnull @nvmet_ports_list, ptr noundef %10) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %global_entry, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %global_entry to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %global_entry, align 8
  %prev3.i.i = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nvmet_ports_list, ptr %prev3.i.i, align 4
  store volatile ptr %global_entry, ptr @nvmet_ports_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %subsystems = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %subsystems to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %subsystems, ptr %subsystems, align 8
  %prev.i74 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %subsystems, ptr %prev.i74, align 4
  %referrals = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %referrals to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %referrals, ptr %referrals, align 8
  %prev.i75 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %referrals, ptr %prev.i75, align 4
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %inline_data_size, align 4
  %21 = ptrtoint ptr %portid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %portid, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %portid20 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %portid20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %portid20, align 4
  %adrfam = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %adrfam to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %adrfam, align 1
  %treq = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %treq to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %treq, align 1
  %group23 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 2
  call void @config_group_init_type_name(ptr noundef %group23, ptr noundef %name, ptr noundef nonnull @nvmet_port_type) #10
  %subsys_group = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 3
  call void @config_group_init_type_name(ptr noundef %subsys_group, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvmet_port_subsys_type) #10
  %group_entry.i = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 3, i32 4
  %default_groups.i = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 2, i32 3
  %prev.i.i = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %28, ptr noundef %default_groups.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add.exit.configfs_add_default_group.exit_crit_edge

list_add.exit.configfs_add_default_group.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 3, i32 4, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %group_entry.i, ptr %28, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %list_add.exit.configfs_add_default_group.exit_crit_edge
  %referrals_group = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 5
  call void @config_group_init_type_name(ptr noundef %referrals_group, ptr noundef nonnull @.str.73, ptr noundef nonnull @nvmet_referrals_type) #10
  %group_entry.i76 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i79 = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i76, ptr noundef %34, ptr noundef %default_groups.i) #10
  br i1 %call.i.i.i79, label %if.end.i.i.i81, label %configfs_add_default_group.exit.configfs_add_default_group.exit82_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit82_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit82

if.end.i.i.i81:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %group_entry.i76, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %group_entry.i76 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %default_groups.i, ptr %group_entry.i76, align 8
  %prev3.i.i.i80 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 5, i32 4, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i80, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %group_entry.i76, ptr %34, align 4
  br label %configfs_add_default_group.exit82

configfs_add_default_group.exit82:                ; preds = %if.end.i.i.i81, %configfs_add_default_group.exit.configfs_add_default_group.exit82_crit_edge
  %ana_groups_group = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 8
  call void @config_group_init_type_name(ptr noundef %ana_groups_group, ptr noundef nonnull @.str.74, ptr noundef nonnull @nvmet_ana_groups_type) #10
  %group_entry.i83 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 8, i32 4
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i86 = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i83, ptr noundef %40, ptr noundef %default_groups.i) #10
  br i1 %call.i.i.i86, label %if.end.i.i.i88, label %configfs_add_default_group.exit82.configfs_add_default_group.exit89_crit_edge

configfs_add_default_group.exit82.configfs_add_default_group.exit89_crit_edge: ; preds = %configfs_add_default_group.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %configfs_add_default_group.exit89

if.end.i.i.i88:                                   ; preds = %configfs_add_default_group.exit82
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %group_entry.i83, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %group_entry.i83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %default_groups.i, ptr %group_entry.i83, align 8
  %prev3.i.i.i87 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 8, i32 4, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i87, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %group_entry.i83, ptr %40, align 4
  br label %configfs_add_default_group.exit89

configfs_add_default_group.exit89:                ; preds = %if.end.i.i.i88, %configfs_add_default_group.exit82.configfs_add_default_group.exit89_crit_edge
  %ana_default_group = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 9
  %port30 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %port30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %port30, align 8
  %grpid = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 9, i32 2
  %46 = ptrtoint ptr %grpid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %grpid, align 4
  call void @config_group_init_type_name(ptr noundef %ana_default_group, ptr noundef nonnull @.str.75, ptr noundef nonnull @nvmet_ana_group_type) #10
  %group_entry.i90 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 4
  %default_groups.i91 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 8, i32 3
  %prev.i.i92 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 8, i32 3, i32 1
  %47 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i92, align 4
  %call.i.i.i93 = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i90, ptr noundef %48, ptr noundef %default_groups.i91) #10
  br i1 %call.i.i.i93, label %if.end.i.i.i95, label %configfs_add_default_group.exit89.cleanup_crit_edge

configfs_add_default_group.exit89.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i95:                                   ; preds = %configfs_add_default_group.exit89
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i.i92 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %group_entry.i90, ptr %prev.i.i92, align 4
  %50 = ptrtoint ptr %group_entry.i90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %default_groups.i91, ptr %group_entry.i90, align 8
  %prev3.i.i.i94 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i94, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %group_entry.i90, ptr %48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i95, %configfs_add_default_group.exit89.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then10 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %group23, %configfs_add_default_group.exit89.cleanup_crit_edge ], [ %group23, %if.end.i.i.i95 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %portid) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_port_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #10
  %global_entry = getelementptr i8, ptr %item, i32 256
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %global_entry) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %item, i32 260
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %global_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %global_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %item, i32 -1032
  %7 = ptrtoint ptr %global_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %global_entry, align 4
  %prev.i = getelementptr i8, ptr %item, i32 260
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ana_state = getelementptr i8, ptr %item, i32 432
  %9 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ana_state, align 4
  tail call void @kfree(ptr noundef %10) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_adrfam_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adrfam1 = getelementptr i8, ptr %item, i32 -1023
  %0 = ptrtoint ptr %adrfam1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adrfam1, align 1
  %switch.tableidx = add i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 7
  br i1 %2, label %switch.hole_check, label %entry.for.inc.4_crit_edge

entry.for.inc.4_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 121, %switch.tableidx
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.4_crit_edge, label %switch.lookup

switch.hole_check.for.inc.4_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %4 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.nvmet_addr_adrfam_show, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name = getelementptr [6 x %struct.nvmet_type_name_map], ptr @nvmet_addr_family, i32 0, i32 %switch.load, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %7)
  br label %cleanup

for.inc.4:                                        ; preds = %switch.hole_check.for.inc.4_crit_edge, %entry.for.inc.4_crit_edge
  %8 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %page, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %switch.lookup
  %retval.0 = phi i32 [ %call6, %switch.lookup ], [ 1, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_adrfam_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.for.cond.preheader_crit_edge, label %do.end.i

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

do.end.i:                                         ; preds = %entry
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %2 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portid.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @__func__.nvmet_addr_adrfam_store) #13
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br i1 %phi.cmp, label %do.end.i.for.cond.preheader_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i.for.cond.preheader_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.78) #10
  br i1 %call2, label %for.cond.preheader.found_crit_edge, label %for.inc

for.cond.preheader.found_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %for.cond.preheader
  %call2.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.79) #10
  br i1 %call2.1, label %for.inc.found_crit_edge, label %for.inc.1

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.1:                                        ; preds = %for.inc
  %call2.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.80) #10
  br i1 %call2.2, label %for.inc.1.found_crit_edge, label %for.inc.2

for.inc.1.found_crit_edge:                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.2:                                        ; preds = %for.inc.1
  %call2.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.81) #10
  br i1 %call2.3, label %for.inc.2.found_crit_edge, label %for.inc.3

for.inc.2.found_crit_edge:                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.3:                                        ; preds = %for.inc.2
  %call2.4 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.82) #10
  br i1 %call2.4, label %for.inc.3.found_crit_edge, label %for.inc.4

for.inc.3.found_crit_edge:                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %page) #13
  br label %cleanup

found:                                            ; preds = %for.inc.3.found_crit_edge, %for.inc.2.found_crit_edge, %for.inc.1.found_crit_edge, %for.inc.found_crit_edge, %for.cond.preheader.found_crit_edge
  %i.014.lcssa = phi i32 [ 1, %for.cond.preheader.found_crit_edge ], [ 2, %for.inc.found_crit_edge ], [ 3, %for.inc.1.found_crit_edge ], [ 4, %for.inc.2.found_crit_edge ], [ 5, %for.inc.3.found_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.nvmet_type_name_map], ptr @nvmet_addr_family, i32 0, i32 %i.014.lcssa
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %adrfam = getelementptr i8, ptr %item, i32 -1023
  %8 = ptrtoint ptr %adrfam to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %adrfam, align 1
  br label %cleanup

cleanup:                                          ; preds = %found, %for.inc.4, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %found ], [ -22, %for.inc.4 ], [ -13, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_treq_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %treq1 = getelementptr i8, ptr %item, i32 -1021
  %0 = ptrtoint ptr %treq1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %treq1, align 1
  %trunc = trunc i8 %1 to i2
  %2 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i2 %trunc, label %for.inc.2 [
    i2 0, label %entry.if.then_crit_edge
    i2 1, label %if.then.fold.split
    i2 -2, label %if.then.fold.split19
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split19, %if.then.fold.split, %entry.if.then_crit_edge
  %i.017.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split19 ]
  %name = getelementptr [3 x %struct.nvmet_type_name_map], ptr @nvmet_addr_treq, i32 0, i32 %i.017.lcssa, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %4)
  br label %cleanup

for.inc.2:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 2560, ptr %page, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ 1, %for.inc.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_treq_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %treq1 = getelementptr i8, ptr %item, i32 -1021
  %0 = ptrtoint ptr %treq1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %treq1, align 1
  %2 = and i8 %1, -4
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.for.cond.preheader_crit_edge, label %do.end.i

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

do.end.i:                                         ; preds = %entry
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %5 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %portid.i, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #10
  %conv.i = zext i16 %7 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @__func__.nvmet_addr_treq_store) #13
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br i1 %phi.cmp, label %do.end.i.for.cond.preheader_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i.for.cond.preheader_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %call5 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.87) #10
  br i1 %call5, label %for.cond.preheader.found_crit_edge, label %for.inc

for.cond.preheader.found_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %for.cond.preheader
  %call5.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.88) #10
  br i1 %call5.1, label %for.inc.found_crit_edge, label %for.inc.1

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.1:                                        ; preds = %for.inc
  %call5.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.89) #10
  br i1 %call5.2, label %for.inc.1.found_crit_edge, label %for.inc.2

for.inc.1.found_crit_edge:                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %page) #13
  br label %cleanup

found:                                            ; preds = %for.inc.1.found_crit_edge, %for.inc.found_crit_edge, %for.cond.preheader.found_crit_edge
  %i.026.lcssa = phi i32 [ 0, %for.cond.preheader.found_crit_edge ], [ 1, %for.inc.found_crit_edge ], [ 2, %for.inc.1.found_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.nvmet_type_name_map], ptr @nvmet_addr_treq, i32 0, i32 %i.026.lcssa
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4
  %or24 = or i8 %10, %2
  %11 = ptrtoint ptr %treq1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or24, ptr %treq1, align 1
  br label %cleanup

cleanup:                                          ; preds = %found, %for.inc.2, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %found ], [ -22, %for.inc.2 ], [ -13, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_traddr_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %traddr = getelementptr i8, ptr %item, i32 -512
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef %traddr)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_traddr_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %count)
  %cmp = icmp ugt i32 %count, 256
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %page) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %nvmet_is_port_enabled.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

nvmet_is_port_enabled.exit:                       ; preds = %if.end
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %2 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portid.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @.str.93) #13
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.i.not, label %nvmet_is_port_enabled.exit.if.end4_crit_edge, label %nvmet_is_port_enabled.exit.cleanup_crit_edge

nvmet_is_port_enabled.exit.cleanup_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvmet_is_port_enabled.exit.if.end4_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %nvmet_is_port_enabled.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %traddr = getelementptr i8, ptr %item, i32 -512
  %call5 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %traddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  %count. = select i1 %cmp6.not, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nvmet_is_port_enabled.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -13, %nvmet_is_port_enabled.exit.cleanup_crit_edge ], [ %count., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_trsvcid_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trsvcid = getelementptr i8, ptr %item, i32 -992
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.41, ptr noundef %trsvcid)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_trsvcid_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp = icmp ugt i32 %count, 32
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %page) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %nvmet_is_port_enabled.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

nvmet_is_port_enabled.exit:                       ; preds = %if.end
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %2 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portid.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @.str.96) #13
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.i.not, label %nvmet_is_port_enabled.exit.if.end4_crit_edge, label %nvmet_is_port_enabled.exit.cleanup_crit_edge

nvmet_is_port_enabled.exit.cleanup_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvmet_is_port_enabled.exit.if.end4_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %nvmet_is_port_enabled.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %trsvcid = getelementptr i8, ptr %item, i32 -992
  %call5 = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %trsvcid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  %count. = select i1 %cmp6.not, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nvmet_is_port_enabled.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -13, %nvmet_is_port_enabled.exit.cleanup_crit_edge ], [ %count., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_trtype_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_addr = getelementptr i8, ptr %item, i32 -1024
  %0 = ptrtoint ptr %disc_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disc_addr, align 4
  %switch.tableidx = add i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 6
  br i1 %2, label %switch.hole_check, label %entry.for.inc.3_crit_edge

entry.for.inc.3_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 57, %switch.tableidx
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.3_crit_edge, label %switch.lookup

switch.hole_check.for.inc.3_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %4 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.nvmet_addr_trtype_show, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %name = getelementptr [4 x %struct.nvmet_type_name_map], ptr @nvmet_transport, i32 0, i32 %switch.load, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %7)
  br label %cleanup

for.inc.3:                                        ; preds = %switch.hole_check.for.inc.3_crit_edge, %entry.for.inc.3_crit_edge
  %8 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %page, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %switch.lookup
  %retval.0 = phi i32 [ %call5, %switch.lookup ], [ 1, %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_trtype_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.for.cond.preheader_crit_edge, label %do.end.i

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

do.end.i:                                         ; preds = %entry
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %2 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portid.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @__func__.nvmet_addr_trtype_store) #13
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br i1 %phi.cmp, label %do.end.i.for.cond.preheader_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i.for.cond.preheader_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end.i.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.98) #10
  br i1 %call2, label %for.cond.preheader.found_crit_edge, label %for.inc

for.cond.preheader.found_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %for.cond.preheader
  %call2.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.81) #10
  br i1 %call2.1, label %for.inc.found_crit_edge, label %for.inc.1

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.1:                                        ; preds = %for.inc
  %call2.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.99) #10
  br i1 %call2.2, label %for.inc.1.found_crit_edge, label %for.inc.2

for.inc.1.found_crit_edge:                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.2:                                        ; preds = %for.inc.1
  %call2.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.82) #10
  br i1 %call2.3, label %for.inc.2.found_crit_edge, label %for.inc.3

for.inc.2.found_crit_edge:                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %page) #13
  br label %cleanup

found:                                            ; preds = %for.inc.2.found_crit_edge, %for.inc.1.found_crit_edge, %for.inc.found_crit_edge, %for.cond.preheader.found_crit_edge
  %i.024.lcssa = phi i32 [ 0, %for.cond.preheader.found_crit_edge ], [ 1, %for.inc.found_crit_edge ], [ 2, %for.inc.1.found_crit_edge ], [ 3, %for.inc.2.found_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.nvmet_type_name_map], ptr @nvmet_transport, i32 0, i32 %i.024.lcssa
  %disc_addr = getelementptr i8, ptr %item, i32 -1024
  %tsas = getelementptr i8, ptr %item, i32 -256
  %6 = call ptr @memset(ptr %tsas, i32 0, i32 256)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %disc_addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %disc_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp10 = icmp eq i8 %8, 1
  br i1 %cmp10, label %if.then12, label %found.cleanup_crit_edge

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tsas to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tsas, align 4
  %prtype.i = getelementptr i8, ptr %item, i32 -255
  %11 = ptrtoint ptr %prtype.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %prtype.i, align 1
  %cms.i = getelementptr i8, ptr %item, i32 -254
  %12 = ptrtoint ptr %cms.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cms.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %found.cleanup_crit_edge, %for.inc.3, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.3 ], [ -13, %do.end.i.cleanup_crit_edge ], [ %count, %if.then12 ], [ %count, %found.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_param_inline_data_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %inline_data_size = getelementptr i8, ptr %item, i32 444
  %0 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inline_data_size, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_param_inline_data_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %nvmet_is_port_enabled.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

nvmet_is_port_enabled.exit:                       ; preds = %entry
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %2 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portid.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv.i = zext i16 %4 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @__func__.nvmet_param_inline_data_size_store) #13
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.i.not, label %nvmet_is_port_enabled.exit.if.end_crit_edge, label %nvmet_is_port_enabled.exit.cleanup_crit_edge

nvmet_is_port_enabled.exit.cleanup_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvmet_is_port_enabled.exit.if.end_crit_edge:      ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %nvmet_is_port_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %inline_data_size = getelementptr i8, ptr %item, i32 444
  %call2 = tail call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef %inline_data_size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %page) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %nvmet_is_port_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -13, %nvmet_is_port_enabled.exit.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_param_pi_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_enable = getelementptr i8, ptr %item, i32 452
  %0 = ptrtoint ptr %pi_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pi_enable, align 4, !range !393
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_param_pi_enable_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %1 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %nvmet_is_port_enabled.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

nvmet_is_port_enabled.exit:                       ; preds = %if.end
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %3 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %portid.i, align 4
  %5 = call i16 @llvm.bswap.i16(i16 %4) #10
  %conv.i = zext i16 %5 to i32
  %call.i8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @__func__.nvmet_param_pi_enable_store) #13
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.i.not, label %nvmet_is_port_enabled.exit.if.end4_crit_edge, label %nvmet_is_port_enabled.exit.cleanup_crit_edge

nvmet_is_port_enabled.exit.cleanup_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvmet_is_port_enabled.exit.if.end4_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %nvmet_is_port_enabled.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1, !range !393
  %pi_enable = getelementptr i8, ptr %item, i32 452
  %9 = ptrtoint ptr %pi_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %pi_enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nvmet_is_port_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -13, %nvmet_is_port_enabled.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_port_subsys_allow_link(ptr nocapture noundef readonly %parent, ptr noundef %target) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %parent, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1032
  %ci_type = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 6
  %2 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_type, align 4
  %cmp.not = icmp eq ptr %3, @nvmet_subsys_type
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i49 = getelementptr i8, ptr %target, i32 -224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %subsys6 = getelementptr inbounds %struct.nvmet_subsys_link, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %subsys6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i49, ptr %subsys6, align 8
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %subsystems = getelementptr i8, ptr %1, i32 160
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %p.0.in = phi ptr [ %subsystems, %if.end5 ], [ %p.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp10.not = icmp eq ptr %p.0, %subsystems
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %subsys11 = getelementptr inbounds %struct.nvmet_subsys_link, ptr %p.0, i32 0, i32 1
  %7 = ptrtoint ptr %subsys11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subsys11, align 4
  %cmp12 = icmp eq ptr %8, %add.ptr.i49
  br i1 %cmp12, label %for.body.out_free_link_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.out_free_link_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_link

for.end:                                          ; preds = %for.cond
  %9 = ptrtoint ptr %subsystems to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %subsystems, align 4
  %cmp.i.not = icmp eq ptr %10, %subsystems
  br i1 %cmp.i.not, label %if.then23, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then23:                                        ; preds = %for.end
  %call24 = tail call i32 @nvmet_enable_port(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then23.out_free_link_crit_edge

if.then23.out_free_link_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_link

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %for.end.if.end28_crit_edge
  %prev.i = getelementptr i8, ptr %1, i32 164
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %12, ptr noundef %subsystems) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add_tail.exit_crit_edge

if.end28.list_add_tail.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %prev.i, align 4
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %subsystems, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end28.list_add_tail.exit_crit_edge
  tail call void @nvmet_port_disc_changed(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i49) #10
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

out_free_link:                                    ; preds = %if.then23.out_free_link_crit_edge, %for.body.out_free_link_crit_edge
  %ret.0 = phi i32 [ %call24, %if.then23.out_free_link_crit_edge ], [ -17, %for.body.out_free_link_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_link, %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out_free_link ], [ 0, %list_add_tail.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_port_subsys_drop_link(ptr nocapture noundef readonly %parent, ptr noundef %target) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %parent, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1032
  %add.ptr.i29 = getelementptr i8, ptr %target, i32 -224
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #10
  %subsystems = getelementptr i8, ptr %1, i32 160
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %p.0.in = phi ptr [ %subsystems, %entry ], [ %p.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.not = icmp eq ptr %p.0, %subsystems
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %subsys4 = getelementptr inbounds %struct.nvmet_subsys_link, ptr %p.0, i32 0, i32 1
  %3 = ptrtoint ptr %subsys4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subsys4, align 4
  %cmp5 = icmp eq ptr %4, %add.ptr.i29
  br i1 %cmp5, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  br label %cleanup

found:                                            ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %found.list_del.exit_crit_edge

found.list_del.exit_crit_edge:                    ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %found.list_del.exit_crit_edge
  %11 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @nvmet_port_del_ctrls(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i29) #10
  tail call void @nvmet_port_disc_changed(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i29) #10
  %13 = ptrtoint ptr %subsystems to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %subsystems, align 4
  %cmp.i.not = icmp eq ptr %14, %subsystems
  br i1 %cmp.i.not, label %if.then14, label %list_del.exit.if.end15_crit_edge

list_del.exit.if.end15_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nvmet_disable_port(ptr noundef %add.ptr.i) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %list_del.exit.if.end15_crit_edge
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #10
  tail call void @kfree(ptr noundef %p.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_enable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_port_disc_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_port_del_ctrls(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_disable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvmet_referral_make(ptr nocapture noundef readnone %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1488) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %group3 = getelementptr inbounds %struct.nvmet_port, ptr %call7.i.i, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %group3, ptr noundef %name, ptr noundef nonnull @nvmet_referral_type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %group3, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_referral_notify(ptr nocapture noundef readnone %group, ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %ci_parent1 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1032
  %add.ptr.i4 = getelementptr i8, ptr %item, i32 -1032
  tail call void @nvmet_referral_disable(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_referral_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -1032
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_portid_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %portid = getelementptr i8, ptr %item, i32 -1020
  %0 = ptrtoint ptr %portid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %portid, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_addr_portid_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %portid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %portid) #10
  %0 = ptrtoint ptr %portid to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %portid, align 2
  %call1 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %portid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %page) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled.i = getelementptr i8, ptr %item, i32 440
  %1 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %nvmet_is_port_enabled.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

nvmet_is_port_enabled.exit:                       ; preds = %if.end
  %portid.i = getelementptr i8, ptr %item, i32 -1020
  %3 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %portid.i, align 4
  %5 = call i16 @llvm.bswap.i16(i16 %4) #10
  %conv.i = zext i16 %5 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv.i, ptr noundef nonnull @.str.108) #13
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.i.not, label %nvmet_is_port_enabled.exit.if.end5_crit_edge, label %nvmet_is_port_enabled.exit.cleanup_crit_edge

nvmet_is_port_enabled.exit.cleanup_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nvmet_is_port_enabled.exit.if.end5_crit_edge:     ; preds = %nvmet_is_port_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %nvmet_is_port_enabled.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %7 = ptrtoint ptr %portid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %portid, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %portid6 = getelementptr i8, ptr %item, i32 -1020
  %10 = ptrtoint ptr %portid6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %portid6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %nvmet_is_port_enabled.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end5 ], [ -13, %nvmet_is_port_enabled.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %portid) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_referral_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !393
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_referral_enable_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %ci_parent1 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1032
  %add.ptr.i14 = getelementptr i8, ptr %item, i32 -1032
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #10
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %enable, align 1, !annotation !394
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_referral_enable(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i14) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @nvmet_referral_disable(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i14) #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %page) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %if.then5
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.else ], [ %count, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_referral_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_referral_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvmet_ana_groups_make_group(ptr noundef %group, ptr noundef %name) #4 align 64 {
entry:
  %grpid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %group, i32 -1296
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %grpid) #10
  %0 = ptrtoint ptr %grpid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %grpid, align 4, !annotation !394
  %call.i = call i32 @kstrtouint(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %grpid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %grpid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %grpid, align 4
  %3 = add i32 %2, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %3)
  %4 = icmp ult i32 %3, -127
  br i1 %4, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %port9 = getelementptr inbounds %struct.nvmet_ana_group, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %port9, align 8
  %7 = ptrtoint ptr %grpid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %grpid, align 4
  %grpid10 = getelementptr inbounds %struct.nvmet_ana_group, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %grpid10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %grpid10, align 4
  call void @down_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %10 = ptrtoint ptr %grpid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %grpid, align 4
  %arrayidx = getelementptr [129 x i32], ptr @nvmet_ana_group_enabled, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @up_write(ptr noundef nonnull @nvmet_ana_sem) #10
  call void @nvmet_port_send_ana_event(ptr noundef %add.ptr.i) #10
  call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @nvmet_ana_group_type) #10
  br label %cleanup

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -12, %if.end4.out_crit_edge ]
  %14 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8
  %retval.0 = phi ptr [ %14, %out ], [ %call7.i.i, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %grpid) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_port_send_ana_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_ana_group_release(ptr noundef %item) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.nvmet_ana_group, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ana_default_group = getelementptr inbounds %struct.nvmet_port, ptr %1, i32 0, i32 9
  %cmp = icmp eq ptr %ana_default_group, %item
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %ana_state = getelementptr inbounds %struct.nvmet_port, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ana_state, align 4
  %grpid = getelementptr inbounds %struct.nvmet_ana_group, ptr %item, i32 0, i32 2
  %6 = ptrtoint ptr %grpid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grpid, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %arrayidx, align 4
  %9 = load i32, ptr %grpid, align 4
  %arrayidx3 = getelementptr [129 x i32], ptr @nvmet_ana_group_enabled, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %arrayidx3, align 4
  tail call void @up_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  tail call void @nvmet_port_send_ana_event(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %item) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ana_group_ana_state_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.nvmet_ana_group, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ana_state = getelementptr inbounds %struct.nvmet_port, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ana_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ana_state, align 4
  %grpid = getelementptr inbounds %struct.nvmet_ana_group, ptr %item, i32 0, i32 2
  %4 = ptrtoint ptr %grpid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grpid, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %7, label %for.inc.4 [
    i32 1, label %entry.if.then_crit_edge
    i32 2, label %if.then.fold.split
    i32 3, label %if.then.fold.split17
    i32 4, label %if.then.fold.split18
    i32 15, label %if.then.fold.split19
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split, %entry.if.then_crit_edge
  %i.015.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split17 ], [ 3, %if.then.fold.split18 ], [ 4, %if.then.fold.split19 ]
  %name = getelementptr [5 x %struct.nvmet_type_name_map], ptr @nvmet_ana_state, i32 0, i32 %i.015.lcssa, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.41, ptr noundef %10)
  br label %cleanup

for.inc.4:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 2560, ptr %page, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ 1, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_ana_group_ana_state_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.nvmet_ana_group, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ana_state1 = getelementptr inbounds %struct.nvmet_port, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ana_state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ana_state1, align 4
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.112) #10
  br i1 %call2, label %entry.found_crit_edge, label %for.inc

entry.found_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %entry
  %call2.1 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.113) #10
  br i1 %call2.1, label %for.inc.found_crit_edge, label %for.inc.1

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.1:                                        ; preds = %for.inc
  %call2.2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.114) #10
  br i1 %call2.2, label %for.inc.1.found_crit_edge, label %for.inc.2

for.inc.1.found_crit_edge:                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.2:                                        ; preds = %for.inc.1
  %call2.3 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.115) #10
  br i1 %call2.3, label %for.inc.2.found_crit_edge, label %for.inc.3

for.inc.2.found_crit_edge:                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.3:                                        ; preds = %for.inc.2
  %call2.4 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.116) #10
  br i1 %call2.4, label %for.inc.3.found_crit_edge, label %for.inc.4

for.inc.3.found_crit_edge:                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %page) #13
  br label %cleanup

found:                                            ; preds = %for.inc.3.found_crit_edge, %for.inc.2.found_crit_edge, %for.inc.1.found_crit_edge, %for.inc.found_crit_edge, %entry.found_crit_edge
  %i.017.lcssa = phi i32 [ 0, %entry.found_crit_edge ], [ 1, %for.inc.found_crit_edge ], [ 2, %for.inc.1.found_crit_edge ], [ 3, %for.inc.2.found_crit_edge ], [ 4, %for.inc.3.found_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.nvmet_type_name_map], ptr @nvmet_ana_state, i32 0, i32 %i.017.lcssa
  tail call void @down_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %5 to i32
  %grpid = getelementptr inbounds %struct.nvmet_ana_group, ptr %item, i32 0, i32 2
  %6 = ptrtoint ptr %grpid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grpid, align 4
  %arrayidx5 = getelementptr i32, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx5, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @nvmet_ana_chgcnt to i32))
  %9 = load i64, ptr @nvmet_ana_chgcnt, align 8
  %inc6 = add i64 %9, 1
  store i64 %inc6, ptr @nvmet_ana_chgcnt, align 8
  tail call void @up_write(ptr noundef nonnull @nvmet_ana_sem) #10
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  tail call void @nvmet_port_send_ana_event(ptr noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %found, %for.inc.4
  %retval.0 = phi i32 [ %count, %found ], [ -22, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvmet_hosts_make_group(ptr nocapture noundef readnone %group, ptr noundef %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @nvmet_host_type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !58, !59, !60, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !108, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !144, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207, !209, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !251, !252, !253, !254, !256, !257, !259, !261, !263, !265, !267, !269, !270, !271, !273, !274, !276, !277, !278, !279, !281, !282, !284, !285, !286, !287, !289, !290, !292, !294, !296, !298, !300, !301, !302, !304, !305, !307, !309, !310, !311, !313, !314, !316, !318, !320, !322, !323, !324, !325, !327, !329, !331, !333, !335, !337, !338, !340, !341, !342, !343, !345, !347, !348, !349, !350, !352, !354, !356, !358, !360, !362, !363, !365, !367, !369, !371, !373, !375, !377, !378, !379, !380, !382}
!llvm.module.flags = !{!384, !385, !386, !387, !388, !389, !390, !391}
!llvm.ident = !{!392}

!0 = !{ptr @nvmet_ports, !1, !"nvmet_ports", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/configfs.c", i32 21, i32 19}
!2 = !{ptr @nvmet_init_configfs.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/nvme/target/configfs.c", i32 1721, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/nvme/target/configfs.c", i32 1724, i32 4}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/configfs.c", i32 1729, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/nvme/target/configfs.c", i32 1734, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/nvme/target/configfs.c", i32 1740, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvmet_init_configfs._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvmet_init_configfs._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nvmet_subsystems_group, !18, !"nvmet_subsystems_group", i1 false, i1 false}
!18 = !{!"../drivers/nvme/target/configfs.c", i32 1659, i32 28}
!19 = !{ptr @nvmet_ports_group, !20, !"nvmet_ports_group", i1 false, i1 false}
!20 = !{!"../drivers/nvme/target/configfs.c", i32 1660, i32 28}
!21 = !{ptr @nvmet_hosts_group, !22, !"nvmet_hosts_group", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/configfs.c", i32 1701, i32 28}
!23 = !{ptr @nvmet_ports_list, !24, !"nvmet_ports_list", i1 false, i1 false}
!24 = !{!"../drivers/nvme/target/configfs.c", i32 20, i32 8}
!25 = !{ptr @nvmet_configfs_subsystem, !26, !"nvmet_configfs_subsystem", i1 false, i1 false}
!26 = !{!"../drivers/nvme/target/configfs.c", i32 1707, i32 34}
!27 = !{ptr @nvmet_root_type, !28, !"nvmet_root_type", i1 false, i1 false}
!28 = !{!"../drivers/nvme/target/configfs.c", i32 1703, i32 38}
!29 = !{ptr @nvmet_subsystems_type, !30, !"nvmet_subsystems_type", i1 false, i1 false}
!30 = !{!"../drivers/nvme/target/configfs.c", i32 1326, i32 38}
!31 = !{ptr @nvmet_subsystems_group_ops, !32, !"nvmet_subsystems_group_ops", i1 false, i1 false}
!32 = !{!"../drivers/nvme/target/configfs.c", i32 1322, i32 41}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nvme/target/configfs.c", i32 1297, i32 24}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nvme/target/configfs.c", i32 1298, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nvmet_subsys_make._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @nvmet_subsys_make._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nvme/target/configfs.c", i32 1309, i32 4}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nvme/target/configfs.c", i32 1313, i32 4}
!44 = !{ptr @nvmet_subsys_type, !45, !"nvmet_subsys_type", i1 false, i1 false}
!45 = !{!"../drivers/nvme/target/configfs.c", i32 1286, i32 38}
!46 = !{ptr @nvmet_subsys_item_ops, !47, !"nvmet_subsys_item_ops", i1 false, i1 false}
!47 = !{!"../drivers/nvme/target/configfs.c", i32 1282, i32 40}
!48 = !{ptr @nvmet_subsys_attrs, !49, !"nvmet_subsys_attrs", i1 false, i1 false}
!49 = !{!"../drivers/nvme/target/configfs.c", i32 1258, i32 35}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nvme/target/configfs.c", i32 992, i32 1}
!52 = !{ptr @nvmet_subsys_attr_attr_allow_any_host, !51, !"nvmet_subsys_attr_attr_allow_any_host", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nvme/target/configfs.c", i32 961, i32 35}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nvme/target/configfs.c", i32 977, i32 3}
!57 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nvmet_subsys_attr_allow_any_host_store._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @nvmet_subsys_attr_allow_any_host_store._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/nvme/target/configfs.c", i32 1057, i32 1}
!62 = !{ptr @nvmet_subsys_attr_attr_version, !61, !"nvmet_subsys_attr_attr_version", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/nvme/target/configfs.c", i32 1000, i32 36}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/nvme/target/configfs.c", i32 1005, i32 35}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/nvme/target/configfs.c", i32 1019, i32 4}
!69 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nvmet_subsys_attr_version_store_locked._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nvmet_subsys_attr_version_store_locked._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/nvme/target/configfs.c", i32 1024, i32 4}
!74 = !{ptr @nvmet_subsys_attr_version_store_locked._entry.21, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nvmet_subsys_attr_version_store_locked._entry_ptr.23, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/nvme/target/configfs.c", i32 1034, i32 21}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nvme/target/configfs.c", i32 1118, i32 1}
!80 = !{ptr @nvmet_subsys_attr_attr_serial, !79, !"nvmet_subsys_attr_attr_serial", i1 false, i1 false}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/nvme/target/configfs.c", i32 1070, i32 35}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nvme/target/configfs.c", i32 1078, i32 31}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nvme/target/configfs.c", i32 1081, i32 3}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nvmet_subsys_attr_serial_store_locked._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @nvmet_subsys_attr_serial_store_locked._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/nvme/target/configfs.c", i32 1087, i32 3}
!92 = !{ptr @nvmet_subsys_attr_serial_store_locked._entry.30, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nvmet_subsys_attr_serial_store_locked._entry_ptr.32, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/nvme/target/configfs.c", i32 1094, i32 4}
!96 = !{ptr @nvmet_subsys_attr_serial_store_locked._entry.33, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nvmet_subsys_attr_serial_store_locked._entry_ptr.35, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/nvme/target/configfs.c", i32 1148, i32 1}
!100 = !{ptr @nvmet_subsys_attr_attr_cntlid_min, !99, !"nvmet_subsys_attr_attr_cntlid_min", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/nvme/target/configfs.c", i32 1123, i32 35}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/nvme/target/configfs.c", i32 1131, i32 19}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/nvme/target/configfs.c", i32 1178, i32 1}
!107 = !{ptr @nvmet_subsys_attr_attr_cntlid_max, !106, !"nvmet_subsys_attr_attr_cntlid_max", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nvme/target/configfs.c", i32 1234, i32 1}
!110 = !{ptr @nvmet_subsys_attr_attr_model, !109, !"nvmet_subsys_attr_attr_model", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/nvme/target/configfs.c", i32 1185, i32 35}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/nvme/target/configfs.c", i32 1194, i32 3}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nvmet_subsys_attr_model_store_locked._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @nvmet_subsys_attr_model_store_locked._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nvme/target/configfs.c", i32 1204, i32 3}
!120 = !{ptr @nvmet_subsys_attr_model_store_locked._entry.44, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nvmet_subsys_attr_model_store_locked._entry_ptr.46, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/nvme/target/configfs.c", i32 1255, i32 1}
!124 = !{ptr @nvmet_subsys_attr_attr_pi_enable, !123, !"nvmet_subsys_attr_attr_pi_enable", i1 false, i1 false}
!125 = !{ptr @nvmet_namespaces_type, !126, !"nvmet_namespaces_type", i1 false, i1 false}
!126 = !{!"../drivers/nvme/target/configfs.c", i32 662, i32 38}
!127 = !{ptr @nvmet_namespaces_group_ops, !128, !"nvmet_namespaces_group_ops", i1 false, i1 false}
!128 = !{!"../drivers/nvme/target/configfs.c", i32 658, i32 41}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/nvme/target/configfs.c", i32 641, i32 3}
!131 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @nvmet_ns_make._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @nvmet_ns_make._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/nvme/target/configfs.c", i32 651, i32 2}
!136 = !{ptr @nvmet_ns_make._entry.50, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nvmet_ns_make._entry_ptr.52, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @nvmet_ns_type, !139, !"nvmet_ns_type", i1 false, i1 false}
!139 = !{!"../drivers/nvme/target/configfs.c", i32 621, i32 38}
!140 = !{ptr @nvmet_ns_item_ops, !141, !"nvmet_ns_item_ops", i1 false, i1 false}
!141 = !{!"../drivers/nvme/target/configfs.c", i32 617, i32 40}
!142 = !{ptr @nvmet_ns_attrs, !143, !"nvmet_ns_attrs", i1 false, i1 false}
!143 = !{!"../drivers/nvme/target/configfs.c", i32 596, i32 35}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/nvme/target/configfs.c", i32 367, i32 1}
!146 = !{ptr @nvmet_ns_attr_device_path, !145, !"nvmet_ns_attr_device_path", i1 false, i1 false}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/nvme/target/configfs.c", i32 483, i32 1}
!149 = !{ptr @nvmet_ns_attr_device_nguid, !148, !"nvmet_ns_attr_device_nguid", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/nvme/target/configfs.c", i32 441, i32 23}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/target/configfs.c", i32 437, i32 1}
!154 = !{ptr @nvmet_ns_attr_device_uuid, !153, !"nvmet_ns_attr_device_uuid", i1 false, i1 false}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/nvme/target/configfs.c", i32 516, i32 1}
!157 = !{ptr @nvmet_ns_attr_ana_grpid, !156, !"nvmet_ns_attr_ana_grpid", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/nvme/target/configfs.c", i32 541, i32 1}
!160 = !{ptr @nvmet_ns_attr_enable, !159, !"nvmet_ns_attr_enable", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/nvme/target/configfs.c", i32 569, i32 1}
!163 = !{ptr @nvmet_ns_attr_buffered_io, !162, !"nvmet_ns_attr_buffered_io", i1 false, i1 false}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/nvme/target/configfs.c", i32 559, i32 3}
!166 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @nvmet_ns_buffered_io_store._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @nvmet_ns_buffered_io_store._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/nvme/target/configfs.c", i32 594, i32 1}
!171 = !{ptr @nvmet_ns_attr_revalidate_size, !170, !"nvmet_ns_attr_revalidate_size", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/nvme/target/configfs.c", i32 585, i32 3}
!174 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @nvmet_ns_revalidate_size_store._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @nvmet_ns_revalidate_size_store._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @nvmet_allowed_hosts_type, !178, !"nvmet_allowed_hosts_type", i1 false, i1 false}
!178 = !{!"../drivers/nvme/target/configfs.c", i32 953, i32 38}
!179 = !{ptr @nvmet_allowed_hosts_item_ops, !180, !"nvmet_allowed_hosts_item_ops", i1 false, i1 false}
!180 = !{!"../drivers/nvme/target/configfs.c", i32 948, i32 40}
!181 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/nvme/target/configfs.c", i32 892, i32 3}
!183 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @nvmet_allowed_hosts_allow_link._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @nvmet_allowed_hosts_allow_link._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/nvme/target/configfs.c", i32 905, i32 3}
!188 = !{ptr @nvmet_allowed_hosts_allow_link._entry.67, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @nvmet_allowed_hosts_allow_link._entry_ptr.69, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @nvmet_host_type, !191, !"nvmet_host_type", i1 false, i1 false}
!191 = !{!"../drivers/nvme/target/configfs.c", i32 1673, i32 38}
!192 = !{ptr @nvmet_host_item_ops, !193, !"nvmet_host_item_ops", i1 false, i1 false}
!193 = !{!"../drivers/nvme/target/configfs.c", i32 1669, i32 40}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/nvme/target/configfs.c", i32 791, i32 9}
!196 = !{ptr @nvmet_passthru_type, !197, !"nvmet_passthru_type", i1 false, i1 false}
!197 = !{!"../drivers/nvme/target/configfs.c", i32 783, i32 38}
!198 = !{ptr @nvmet_passthru_attrs, !199, !"nvmet_passthru_attrs", i1 false, i1 false}
!199 = !{!"../drivers/nvme/target/configfs.c", i32 775, i32 35}
!200 = !{ptr @nvmet_passthru_attr_device_path, !201, !"nvmet_passthru_attr_device_path", i1 false, i1 false}
!201 = !{!"../drivers/nvme/target/configfs.c", i32 708, i32 1}
!202 = !{ptr @nvmet_passthru_attr_enable, !203, !"nvmet_passthru_attr_enable", i1 false, i1 false}
!203 = !{!"../drivers/nvme/target/configfs.c", i32 735, i32 1}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/nvme/target/configfs.c", i32 754, i32 1}
!206 = !{ptr @nvmet_passthru_attr_admin_timeout, !205, !"nvmet_passthru_attr_admin_timeout", i1 false, i1 false}
!207 = !{ptr @.str.72, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/nvme/target/configfs.c", i32 773, i32 1}
!209 = !{ptr @nvmet_passthru_attr_io_timeout, !208, !"nvmet_passthru_attr_io_timeout", i1 false, i1 false}
!210 = !{ptr @nvmet_ports_type, !211, !"nvmet_ports_type", i1 false, i1 false}
!211 = !{!"../drivers/nvme/target/configfs.c", i32 1654, i32 38}
!212 = !{ptr @nvmet_ports_group_ops, !213, !"nvmet_ports_group_ops", i1 false, i1 false}
!213 = !{!"../drivers/nvme/target/configfs.c", i32 1650, i32 41}
!214 = !{ptr @.str.73, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/nvme/target/configfs.c", i32 1632, i32 4}
!216 = !{ptr @.str.74, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/nvme/target/configfs.c", i32 1636, i32 4}
!218 = !{ptr @.str.75, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/nvme/target/configfs.c", i32 1642, i32 4}
!220 = !{ptr @nvmet_port_type, !221, !"nvmet_port_type", i1 false, i1 false}
!221 = !{!"../drivers/nvme/target/configfs.c", i32 1581, i32 38}
!222 = !{ptr @nvmet_port_item_ops, !223, !"nvmet_port_item_ops", i1 false, i1 false}
!223 = !{!"../drivers/nvme/target/configfs.c", i32 1577, i32 40}
!224 = !{ptr @nvmet_port_attrs, !225, !"nvmet_port_attrs", i1 false, i1 false}
!225 = !{!"../drivers/nvme/target/configfs.c", i32 1564, i32 35}
!226 = !{ptr @.str.76, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/nvme/target/configfs.c", i32 91, i32 1}
!228 = !{ptr @nvmet_attr_addr_adrfam, !227, !"nvmet_attr_addr_adrfam", i1 false, i1 false}
!229 = !{ptr @.str.77, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/nvme/target/configfs.c", i32 36, i32 27}
!231 = !{ptr @.str.78, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/nvme/target/configfs.c", i32 37, i32 27}
!233 = !{ptr @.str.79, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/nvme/target/configfs.c", i32 38, i32 27}
!235 = !{ptr @.str.80, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/nvme/target/configfs.c", i32 39, i32 26}
!237 = !{ptr @.str.81, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/nvme/target/configfs.c", i32 40, i32 26}
!239 = !{ptr @.str.82, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/nvme/target/configfs.c", i32 41, i32 27}
!241 = !{ptr @nvmet_addr_family, !242, !"nvmet_addr_family", i1 false, i1 false}
!242 = !{!"../drivers/nvme/target/configfs.c", i32 35, i32 41}
!243 = !{ptr @__func__.nvmet_addr_adrfam_store, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/nvme/target/configfs.c", i32 75, i32 34}
!245 = !{ptr @.str.83, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/nvme/target/configfs.c", i32 83, i32 2}
!247 = !{ptr @nvmet_addr_adrfam_store._entry, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @nvmet_addr_adrfam_store._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.84, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/nvme/target/configfs.c", i32 47, i32 3}
!251 = !{ptr @.str.85, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @nvmet_is_port_enabled._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @nvmet_is_port_enabled._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.86, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/nvme/target/configfs.c", i32 195, i32 1}
!256 = !{ptr @nvmet_attr_addr_treq, !255, !"nvmet_attr_addr_treq", i1 false, i1 false}
!257 = !{ptr @.str.87, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/nvme/target/configfs.c", i32 152, i32 29}
!259 = !{ptr @.str.88, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/nvme/target/configfs.c", i32 153, i32 25}
!261 = !{ptr @.str.89, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/nvme/target/configfs.c", i32 154, i32 28}
!263 = !{ptr @nvmet_addr_treq, !264, !"nvmet_addr_treq", i1 false, i1 false}
!264 = !{!"../drivers/nvme/target/configfs.c", i32 151, i32 41}
!265 = !{ptr @__func__.nvmet_addr_treq_store, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/nvme/target/configfs.c", i32 178, i32 34}
!267 = !{ptr @.str.90, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/nvme/target/configfs.c", i32 186, i32 2}
!269 = !{ptr @nvmet_addr_treq_store._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @nvmet_addr_treq_store._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.91, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/nvme/target/configfs.c", i32 149, i32 1}
!273 = !{ptr @nvmet_attr_addr_traddr, !272, !"nvmet_attr_addr_traddr", i1 false, i1 false}
!274 = !{ptr @.str.92, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/nvme/target/configfs.c", i32 137, i32 3}
!276 = !{ptr @.str.93, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @nvmet_addr_traddr_store._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @nvmet_addr_traddr_store._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.94, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/nvme/target/configfs.c", i32 223, i32 1}
!281 = !{ptr @nvmet_attr_addr_trsvcid, !280, !"nvmet_attr_addr_trsvcid", i1 false, i1 false}
!282 = !{ptr @.str.95, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/nvme/target/configfs.c", i32 212, i32 3}
!284 = !{ptr @.str.96, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @nvmet_addr_trsvcid_store._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @nvmet_addr_trsvcid_store._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.97, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/nvme/target/configfs.c", i32 325, i32 1}
!289 = !{ptr @nvmet_attr_addr_trtype, !288, !"nvmet_attr_addr_trtype", i1 false, i1 false}
!290 = !{ptr @.str.98, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/nvme/target/configfs.c", i32 29, i32 22}
!292 = !{ptr @.str.99, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/nvme/target/configfs.c", i32 31, i32 21}
!294 = !{ptr @nvmet_transport, !295, !"nvmet_transport", i1 false, i1 false}
!295 = !{!"../drivers/nvme/target/configfs.c", i32 28, i32 35}
!296 = !{ptr @__func__.nvmet_addr_trtype_store, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/nvme/target/configfs.c", i32 306, i32 34}
!298 = !{ptr @.str.100, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/nvme/target/configfs.c", i32 314, i32 2}
!300 = !{ptr @nvmet_addr_trtype_store._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @nvmet_addr_trtype_store._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.101, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/nvme/target/configfs.c", i32 249, i32 1}
!304 = !{ptr @nvmet_attr_param_inline_data_size, !303, !"nvmet_attr_param_inline_data_size", i1 false, i1 false}
!305 = !{ptr @__func__.nvmet_param_inline_data_size_store, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/nvme/target/configfs.c", i32 239, i32 34}
!307 = !{ptr @.str.102, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/nvme/target/configfs.c", i32 243, i32 3}
!309 = !{ptr @nvmet_param_inline_data_size_store._entry, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @nvmet_param_inline_data_size_store._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.103, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/nvme/target/configfs.c", i32 276, i32 1}
!313 = !{ptr @nvmet_attr_param_pi_enable, !312, !"nvmet_attr_param_pi_enable", i1 false, i1 false}
!314 = !{ptr @__func__.nvmet_param_pi_enable_store, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/nvme/target/configfs.c", i32 269, i32 34}
!316 = !{ptr @nvmet_port_subsys_type, !317, !"nvmet_port_subsys_type", i1 false, i1 false}
!317 = !{!"../drivers/nvme/target/configfs.c", i32 878, i32 38}
!318 = !{ptr @nvmet_port_subsys_item_ops, !319, !"nvmet_port_subsys_item_ops", i1 false, i1 false}
!319 = !{!"../drivers/nvme/target/configfs.c", i32 873, i32 40}
!320 = !{ptr @.str.104, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/nvme/target/configfs.c", i32 813, i32 3}
!322 = !{ptr @.str.105, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @nvmet_port_subsys_allow_link._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @nvmet_port_subsys_allow_link._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @nvmet_referrals_type, !326, !"nvmet_referrals_type", i1 false, i1 false}
!326 = !{!"../drivers/nvme/target/configfs.c", i32 1420, i32 38}
!327 = !{ptr @nvmet_referral_group_ops, !328, !"nvmet_referral_group_ops", i1 false, i1 false}
!328 = !{!"../drivers/nvme/target/configfs.c", i32 1415, i32 41}
!329 = !{ptr @nvmet_referral_type, !330, !"nvmet_referral_type", i1 false, i1 false}
!330 = !{!"../drivers/nvme/target/configfs.c", i32 1394, i32 38}
!331 = !{ptr @nvmet_referral_item_ops, !332, !"nvmet_referral_item_ops", i1 false, i1 false}
!332 = !{!"../drivers/nvme/target/configfs.c", i32 1390, i32 40}
!333 = !{ptr @nvmet_referral_attrs, !334, !"nvmet_referral_attrs", i1 false, i1 false}
!334 = !{!"../drivers/nvme/target/configfs.c", i32 1363, i32 35}
!335 = !{ptr @.str.106, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/nvme/target/configfs.c", i32 120, i32 1}
!337 = !{ptr @nvmet_attr_addr_portid, !336, !"nvmet_attr_addr_portid", i1 false, i1 false}
!338 = !{ptr @.str.107, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/nvme/target/configfs.c", i32 109, i32 3}
!340 = !{ptr @.str.108, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @nvmet_addr_portid_store._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @nvmet_addr_portid_store._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @nvmet_referral_attr_enable, !344, !"nvmet_referral_attr_enable", i1 false, i1 false}
!344 = !{!"../drivers/nvme/target/configfs.c", i32 1358, i32 1}
!345 = !{ptr @.str.109, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/nvme/target/configfs.c", i32 1354, i32 2}
!347 = !{ptr @.str.110, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @nvmet_referral_enable_store._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @nvmet_referral_enable_store._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @nvmet_ana_groups_type, !351, !"nvmet_ana_groups_type", i1 false, i1 false}
!351 = !{!"../drivers/nvme/target/configfs.c", i32 1544, i32 38}
!352 = !{ptr @nvmet_ana_groups_group_ops, !353, !"nvmet_ana_groups_group_ops", i1 false, i1 false}
!353 = !{!"../drivers/nvme/target/configfs.c", i32 1540, i32 41}
!354 = !{ptr @nvmet_ana_group_type, !355, !"nvmet_ana_group_type", i1 false, i1 false}
!355 = !{!"../drivers/nvme/target/configfs.c", i32 1499, i32 38}
!356 = !{ptr @nvmet_ana_group_item_ops, !357, !"nvmet_ana_group_item_ops", i1 false, i1 false}
!357 = !{!"../drivers/nvme/target/configfs.c", i32 1495, i32 40}
!358 = !{ptr @nvmet_ana_group_attrs, !359, !"nvmet_ana_group_attrs", i1 false, i1 false}
!359 = !{!"../drivers/nvme/target/configfs.c", i32 1474, i32 35}
!360 = !{ptr @.str.111, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/nvme/target/configfs.c", i32 1472, i32 1}
!362 = !{ptr @nvmet_ana_group_attr_ana_state, !361, !"nvmet_ana_group_attr_ana_state", i1 false, i1 false}
!363 = !{ptr @.str.112, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/nvme/target/configfs.c", i32 1426, i32 25}
!365 = !{ptr @.str.113, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/nvme/target/configfs.c", i32 1427, i32 27}
!367 = !{ptr @.str.114, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/nvme/target/configfs.c", i32 1428, i32 27}
!369 = !{ptr @.str.115, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/nvme/target/configfs.c", i32 1429, i32 30}
!371 = !{ptr @.str.116, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/nvme/target/configfs.c", i32 1430, i32 22}
!373 = !{ptr @nvmet_ana_state, !374, !"nvmet_ana_state", i1 false, i1 false}
!374 = !{!"../drivers/nvme/target/configfs.c", i32 1425, i32 35}
!375 = !{ptr @.str.117, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/nvme/target/configfs.c", i32 1460, i32 2}
!377 = !{ptr @.str.118, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @nvmet_ana_group_ana_state_store._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @nvmet_ana_group_ana_state_store._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @nvmet_hosts_type, !381, !"nvmet_hosts_type", i1 false, i1 false}
!381 = !{!"../drivers/nvme/target/configfs.c", i32 1696, i32 38}
!382 = !{ptr @nvmet_hosts_group_ops, !383, !"nvmet_hosts_group_ops", i1 false, i1 false}
!383 = !{!"../drivers/nvme/target/configfs.c", i32 1692, i32 41}
!384 = !{i32 1, !"wchar_size", i32 2}
!385 = !{i32 1, !"min_enum_size", i32 4}
!386 = !{i32 8, !"branch-target-enforcement", i32 0}
!387 = !{i32 8, !"sign-return-address", i32 0}
!388 = !{i32 8, !"sign-return-address-all", i32 0}
!389 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!390 = !{i32 7, !"uwtable", i32 1}
!391 = !{i32 7, !"frame-pointer", i32 2}
!392 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!393 = !{i8 0, i8 2}
!394 = !{!"auto-init"}
!395 = distinct !{!395, !396}
!396 = !{!"llvm.loop.peeled.count", i32 1}
