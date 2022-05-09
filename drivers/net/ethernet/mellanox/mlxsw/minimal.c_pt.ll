; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/minimal.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/minimal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_driver = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, i8, i8 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.mlxsw_config_profile = type { i16, i8, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i8, i16, i16, i16, i8, i16, i8, i32, i8, i8, i8, [8 x %struct.mlxsw_swid_config] }
%struct.mlxsw_swid_config = type { i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_m = type { ptr, ptr, ptr, ptr, [6 x i8], i8 }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.111, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.111 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.131 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@mlxsw_m_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mlxsw_m_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mlxsw_m_driver = internal global { %struct.mlxsw_driver, [32 x i8] } { %struct.mlxsw_driver { %struct.list_head zeroinitializer, ptr @mlxsw_m_driver_name, i32 24, ptr null, ptr null, ptr @mlxsw_m_init, ptr @mlxsw_m_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @mlxsw_m_config_profile, i8 1, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_mlxsw_minimal__374_503_mlxsw_m_module_init6 = internal global ptr @mlxsw_m_module_init, section ".initcall6.init", align 4
@__exitcall_mlxsw_m_module_exit = internal global ptr @mlxsw_m_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file375 = internal constant [69 x i8] c"mlxsw_minimal.file=drivers/net/ethernet/mellanox/mlxsw/mlxsw_minimal\00", section ".modinfo", align 1
@__UNIQUE_ID_license376 = internal constant [35 x i8] c"mlxsw_minimal.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author377 = internal constant [59 x i8] c"mlxsw_minimal.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description378 = internal constant [50 x i8] c"mlxsw_minimal.description=Mellanox minimal driver\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlxsw_minimal\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_m_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mlxsw_minimal\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mlxsw_m_driver_name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlxsw_minimal\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_m_config_profile = internal constant { %struct.mlxsw_config_profile, [60 x i8] } zeroinitializer, align 32
@mlxsw_m_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get base mac\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlxsw_m_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/mellanox/mlxsw/minimal.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_m_init._entry_ptr = internal global ptr @mlxsw_m_init._entry, section ".printk_index", align 4
@mlxsw_m_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to create ports\0A\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_m_init._entry_ptr.8 = internal global ptr @mlxsw_m_init._entry.6, section ".printk_index", align 4
@mlxsw_m_fw_rev = internal constant { %struct.mlxsw_fw_rev, [24 x i8] } { %struct.mlxsw_fw_rev { i16 0, i16 2000, i16 1886, i16 0 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_m_fw_rev_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"The firmware version %d.%d.%d is incompatible with the driver (required >= %d.%d.%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlxsw_m_fw_rev_validate\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_m_fw_rev_validate._entry_ptr = internal global ptr @mlxsw_m_fw_rev_validate._entry, section ".printk_index", align 4
@mlxsw_reg_spad = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8194, i16 16, ptr @.str.11 }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spad\00", [27 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 35, ptr null, ptr null }, align 1
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@mlxsw_m_port_module_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_reg_pmlp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20482, i16 64, ptr @.str.20 }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pmlp_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pmlp_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmlp\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_pmlp_module\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_pmlp_width\00", [17 x i8] zeroinitializer }, align 32
@mlxsw_m_port_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Port %d: Failed to init core port\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlxsw_m_port_create\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_m_port_create._entry_ptr = internal global ptr @mlxsw_m_port_create._entry, section ".printk_index", align 4
@mlxsw_m_port_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mlxsw_m_port_open, ptr @mlxsw_m_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_m_port_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mlxsw_m_port_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @mlxsw_m_module_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_m_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_m_get_module_info, ptr @mlxsw_m_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_m_get_module_eeprom_by_page, ptr null, ptr null, ptr null, ptr null, ptr @mlxsw_m_get_module_power_mode, ptr @mlxsw_m_set_module_power_mode }, [68 x i8] zeroinitializer }, align 32
@mlxsw_m_port_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Port %d: Unable to get port mac address\0A\00", [55 x i8] zeroinitializer }, align 32
@mlxsw_m_port_create._entry_ptr.29 = internal global ptr @mlxsw_m_port_create._entry.27, section ".printk_index", align 4
@mlxsw_m_port_create._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Port %d: Failed to register netdev\0A\00", [60 x i8] zeroinitializer }, align 32
@mlxsw_m_port_create._entry_ptr.32 = internal global ptr @mlxsw_m_port_create._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@mlxsw_reg_ppad = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 20485, i16 16, ptr @.str.40 }, [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ppad_single_base_mac\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_ppad_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_ppad_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppad\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"mlxsw_m_i2c_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 471, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"mlxsw_m_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 457, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 472, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"mlxsw_m_i2c_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 466, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"mlxsw_m_driver_name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 17, i32 19 }
@___asan_gen_.57 = private unnamed_addr constant [23 x i8] c"mlxsw_m_config_profile\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 455, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 435, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 441, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"mlxsw_m_fw_rev\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 22, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 412, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_spad\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 62, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 33, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pmlp\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4310, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4297, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4326, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4320, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 228, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"mlxsw_m_port_netdev_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 84, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"mlxsw_m_port_ethtool_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 172, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 252, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 261, i32 3 }
@___asan_gen_.157 = private constant [49 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/minimal.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 99, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ppad\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4676, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4682, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 4668, i32 1 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author377, ptr @__UNIQUE_ID_description378, ptr @__UNIQUE_ID_file375, ptr @__UNIQUE_ID_license376, ptr @__exitcall_mlxsw_m_module_exit, ptr @__initcall__kmod_mlxsw_minimal__374_503_mlxsw_m_module_init6, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_m_fw_rev_validate._entry, ptr @mlxsw_m_fw_rev_validate._entry_ptr, ptr @mlxsw_m_init._entry, ptr @mlxsw_m_init._entry.6, ptr @mlxsw_m_init._entry_ptr, ptr @mlxsw_m_init._entry_ptr.8, ptr @mlxsw_m_module_exit, ptr @mlxsw_m_port_create._entry, ptr @mlxsw_m_port_create._entry.27, ptr @mlxsw_m_port_create._entry.30, ptr @mlxsw_m_port_create._entry_ptr, ptr @mlxsw_m_port_create._entry_ptr.29, ptr @mlxsw_m_port_create._entry_ptr.32, ptr @mlxsw_m_i2c_driver, ptr @mlxsw_m_driver, ptr @.str, ptr @mlxsw_m_i2c_id, ptr @mlxsw_m_driver_name, ptr @mlxsw_m_config_profile, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mlxsw_m_fw_rev, ptr @.str.9, ptr @.str.10, ptr @mlxsw_reg_spad, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mlxsw_reg_pmlp, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @mlxsw_m_port_netdev_ops, ptr @mlxsw_m_port_ethtool_ops, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @mlxsw_reg_ppad, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_driver to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_driver_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_config_profile to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_fw_rev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_fw_rev_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_spad to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pmlp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_port_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_port_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_port_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_port_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_m_port_create._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ppad to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_m_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlxsw_i2c_driver_unregister(ptr noundef nonnull @mlxsw_m_i2c_driver) #10
  tail call void @mlxsw_core_driver_unregister(ptr noundef nonnull @mlxsw_m_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_i2c_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_core_driver_register(ptr noundef nonnull @mlxsw_m_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mlxsw_i2c_driver_register(ptr noundef nonnull @mlxsw_m_i2c_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_i2c_driver_register

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_i2c_driver_register:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlxsw_core_driver_unregister(ptr noundef nonnull @mlxsw_m_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %err_i2c_driver_register, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_i2c_driver_register ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_init(ptr noundef %mlxsw_core, ptr noundef %mlxsw_bus_info, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %addr.i.i.i.i = alloca [6 x i8], align 1
  %ppad_pl.i.i.i = alloca [16 x i8], align 4
  %addr.i.i.i = alloca [6 x i8], align 1
  %pmlp_pl.i.i.i = alloca [64 x i8], align 4
  %spad_pl.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %core = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mlxsw_core, ptr %core, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %bus_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mlxsw_bus_info, ptr %bus_info, align 4
  %fw_rev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %mlxsw_bus_info, i32 0, i32 3
  %call.i = tail call zeroext i1 @mlxsw_core_fw_rev_minor_subminor_validate(ptr noundef %fw_rev.i, ptr noundef nonnull @mlxsw_m_fw_rev) #10
  br i1 %call.i, label %if.end, label %mlxsw_m_fw_rev_validate.exit

mlxsw_m_fw_rev_validate.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %fw_rev.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fw_rev.i, align 2
  %conv.i = zext i16 %7 to i32
  %minor.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %mlxsw_bus_info, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %minor.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %minor.i, align 2
  %conv2.i = zext i16 %9 to i32
  %subminor.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %mlxsw_bus_info, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %subminor.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subminor.i, align 2
  %conv3.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv.i, i32 noundef 2000, i32 noundef 1886) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spad_pl.i) #10
  %12 = call ptr @memset(ptr %spad_pl.i, i32 0, i32 16)
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 4
  %call.i29 = call i32 @mlxsw_reg_query(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_spad, ptr noundef nonnull %spad_pl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spad_pl.i) #10
  %15 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %base_mac.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 4
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %spad_pl.i, i32 2
  %19 = call ptr @memcpy(ptr %base_mac.i, ptr %arrayidx.i.i.i, i32 6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spad_pl.i) #10
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %call.i31 = call i32 @mlxsw_core_max_ports(ptr noundef %21) #10
  %conv.i32 = trunc i32 %call.i31 to i8
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i31, i32 4) #10
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  br i1 %23, label %kcalloc.exit.thread.i, label %kcalloc.exit.thread367.i, !prof !112

kcalloc.exit.thread.i:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %call, align 4
  br label %do.end12

kcalloc.exit.thread367.i:                         ; preds = %if.end6
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #14
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i.i, ptr %call, align 4
  %tobool.not369.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not369.i, label %kcalloc.exit.thread367.i.do.end12_crit_edge, label %if.end7.i.i

kcalloc.exit.thread367.i.do.end12_crit_edge:      ; preds = %kcalloc.exit.thread367.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end7.i.i:                                      ; preds = %kcalloc.exit.thread367.i
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #14
  %module_to_port.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i, ptr %module_to_port.i, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not.i, label %mlxsw_m_ports_create.exit.thread50, label %for.cond.preheader.i

mlxsw_m_ports_create.exit.thread50:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  call void @kfree(ptr noundef %29) #10
  br label %do.end12

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp262.not.i = icmp eq i32 %call.i31, 0
  br i1 %cmp262.not.i, label %for.cond.preheader.i.for.cond22.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond22.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond22.preheader.i

for.cond10.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31)
  %cmp11268.i = icmp ugt i32 %call.i31, 1
  br i1 %cmp11268.i, label %for.body13.lr.ph.i, label %for.cond10.preheader.i.for.cond22.preheader.i_crit_edge

for.cond10.preheader.i.for.cond22.preheader.i_crit_edge: ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond22.preheader.i

for.body13.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %max_ports54.i.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 5
  %arrayidx.i.i.i.i.i = getelementptr inbounds i32, ptr %pmlp_pl.i.i.i, i32 1
  br label %for.body13.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0263.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx.i = getelementptr i32, ptr %31, i32 %i.0263.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0263.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i31
  br i1 %exitcond.not.i, label %for.cond10.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond22.preheader.i:                           ; preds = %for.inc19.i.for.cond22.preheader.i_crit_edge, %for.cond10.preheader.i.for.cond22.preheader.i_crit_edge, %for.cond.preheader.i.for.cond22.preheader.i_crit_edge
  %max_ports23.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 5
  %33 = ptrtoint ptr %max_ports23.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_ports23.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp25282.not.i = icmp eq i8 %34, 0
  br i1 %cmp25282.not.i, label %for.cond22.preheader.i.cleanup_crit_edge, label %for.body27.lr.ph.i

for.cond22.preheader.i.cleanup_crit_edge:         ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body27.lr.ph.i:                               ; preds = %for.cond22.preheader.i
  %35 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i.i, i32 0, i32 1
  %36 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i.i, i32 0, i32 2
  %37 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i.i, i32 0, i32 3
  %38 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i.i, i32 0, i32 4
  %39 = getelementptr inbounds [6 x i8], ptr %addr.i.i.i.i, i32 0, i32 5
  %addr.i.i.i.1.addr.i.i.i.1.addr.i.i.1.addr.i.i.1.addr.i.1.addr.i.1.addr.1.addr.1..sroa_idx = getelementptr inbounds i8, ptr %addr.i.i.i, i32 1
  %addr.i.i.i.2.addr.i.i.i.2.addr.i.i.2.addr.i.i.2.addr.i.2.addr.i.2.addr.2.addr.2..sroa_idx = getelementptr inbounds i8, ptr %addr.i.i.i, i32 2
  %addr.i.i.i.3.addr.i.i.i.3.addr.i.i.3.addr.i.i.3.addr.i.3.addr.i.3.addr.3.addr.3..sroa_idx = getelementptr inbounds i8, ptr %addr.i.i.i, i32 3
  %addr.i.i.i.4.addr.i.i.i.4.addr.i.i.4.addr.i.i.4.addr.i.4.addr.i.4.addr.4.addr.4..sroa_idx = getelementptr inbounds i8, ptr %addr.i.i.i, i32 4
  %addr.i.i.i.5.addr.i.i.i.5.addr.i.i.5.addr.i.i.5.addr.i.5.addr.i.5.addr.5.addr.5..sroa_idx = getelementptr inbounds i8, ptr %addr.i.i.i, i32 5
  %arrayidx.i.i.i.i163.i = getelementptr inbounds i8, ptr %ppad_pl.i.i.i, i32 2
  br label %for.body27.i

for.body13.i:                                     ; preds = %for.inc19.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %i.1270.i = phi i32 [ 1, %for.body13.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body13.i_crit_edge ]
  %last_module.0269.i = phi i8 [ %conv.i32, %for.body13.lr.ph.i ], [ %last_module.1.ph.i, %for.inc19.i.for.body13.i_crit_edge ]
  %40 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core, align 4
  %call.i.i = call i32 @mlxsw_core_max_ports(ptr noundef %41) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pmlp_pl.i.i.i) #10
  %42 = call ptr @memset(ptr %pmlp_pl.i.i.i, i32 0, i32 64)
  %and.i.i.i.i.i = shl i32 %i.1270.i, 16
  %spec.select.i.i.i.i.i.i = and i32 %and.i.i.i.i.i, 16711680
  %43 = ptrtoint ptr %pmlp_pl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pmlp_pl.i.i.i, align 4
  %and7.i.i.i.i.i.i = and i32 %44, -16723969
  %or.i.i.i.i.i.i = or i32 %spec.select.i.i.i.i.i.i, %and7.i.i.i.i.i.i
  %45 = shl i32 %i.1270.i, 4
  %and6.i26.i.i.i.i.i = and i32 %45, 12288
  %or.i30.i.i.i.i.i = or i32 %and6.i26.i.i.i.i.i, %or.i.i.i.i.i.i
  store i32 %or.i30.i.i.i.i.i, ptr %pmlp_pl.i.i.i, align 4
  %46 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core, align 4
  %call.i.i.i = call i32 @mlxsw_reg_query(ptr noundef %47, ptr noundef nonnull @mlxsw_reg_pmlp, ptr noundef nonnull %pmlp_pl.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mlxsw_reg_pmlp_module_get.exit.i.i.i, label %mlxsw_m_port_module_info_get.exit.i.i

mlxsw_reg_pmlp_module_get.exit.i.i.i:             ; preds = %for.body13.i
  %48 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and4.i.i.i.i.i = and i32 %49, 255
  %conv.i.i.i34 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %pmlp_pl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pmlp_pl.i.i.i, align 4
  %conv6.i.i.i = trunc i32 %51 to i8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pmlp_pl.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6.i.i.i)
  %tobool2.not.i.i = icmp eq i8 %conv6.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %last_module.0269.i, i8 %conv.i.i.i34)
  %cmp.i.i = icmp eq i8 %last_module.0269.i, %conv.i.i.i34
  %or.cond.i = select i1 %tobool2.not.i.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i, label %mlxsw_reg_pmlp_module_get.exit.i.i.i.for.inc19.i_crit_edge, label %if.end8.i.i

mlxsw_reg_pmlp_module_get.exit.i.i.i.for.inc19.i_crit_edge: ; preds = %mlxsw_reg_pmlp_module_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19.i

mlxsw_m_port_module_info_get.exit.i.i:            ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pmlp_pl.i.i.i) #10
  br label %err_module_to_port_map.i

if.end8.i.i:                                      ; preds = %mlxsw_reg_pmlp_module_get.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %and4.i.i.i.i.i)
  %cmp10.not.i.i = icmp ugt i32 %call.i.i, %and4.i.i.i.i.i
  br i1 %cmp10.not.i.i, label %if.end52.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end8.i.i
  %.b67.i.i = load i1, ptr @mlxsw_m_port_module_map.__already_done, align 1
  br i1 %.b67.i.i, label %land.rhs.i.i.err_module_to_port_map.i_crit_edge, label %if.then20.i.i, !prof !113

land.rhs.i.i.err_module_to_port_map.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_module_to_port_map.i

if.then20.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlxsw_m_port_module_map.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 311, i32 noundef 9, ptr noundef null) #10
  br label %err_module_to_port_map.i

if.end52.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core, align 4
  call void @mlxsw_env_module_port_map(ptr noundef %53, i8 noundef zeroext %conv.i.i.i34) #10
  %54 = ptrtoint ptr %max_ports54.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_ports54.i.i, align 2
  %inc.i.i = add i8 %55, 1
  store i8 %inc.i.i, ptr %max_ports54.i.i, align 2
  %conv55.i.i = zext i8 %inc.i.i to i32
  %56 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %57, i32 %and4.i.i.i.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv55.i.i, ptr %arrayidx.i.i, align 4
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %if.end52.i.i, %mlxsw_reg_pmlp_module_get.exit.i.i.i.for.inc19.i_crit_edge
  %last_module.1.ph.i = phi i8 [ %conv.i.i.i34, %if.end52.i.i ], [ %last_module.0269.i, %mlxsw_reg_pmlp_module_get.exit.i.i.i.for.inc19.i_crit_edge ]
  %inc20.i = add nuw i32 %i.1270.i, 1
  %exitcond366.not.i = icmp eq i32 %inc20.i, %call.i31
  br i1 %exitcond366.not.i, label %for.inc19.i.for.cond22.preheader.i_crit_edge, label %for.inc19.i.for.body13.i_crit_edge

for.inc19.i.for.body13.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.inc19.i.for.cond22.preheader.i_crit_edge:     ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond22.preheader.i

for.body27.i:                                     ; preds = %for.inc45.i.for.body27.i_crit_edge, %for.body27.lr.ph.i
  %i.2283.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %inc46.i, %for.inc45.i.for.body27.i_crit_edge ]
  %59 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx29.i = getelementptr i32, ptr %60, i32 %i.2283.i
  %61 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp30.i = icmp sgt i32 %62, 0
  br i1 %cmp30.i, label %land.lhs.true.i, label %for.body27.i.for.inc45.i_crit_edge

for.body27.i.for.inc45.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45.i

land.lhs.true.i:                                  ; preds = %for.body27.i
  %63 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core, align 4
  %conv33.i = trunc i32 %i.2283.i to i16
  %call34.i = call zeroext i1 @mlxsw_core_port_is_xm(ptr noundef %64, i16 noundef zeroext %conv33.i) #10
  br i1 %call34.i, label %land.lhs.true.i.for.inc45.i_crit_edge, label %if.then35.i

land.lhs.true.i.for.inc45.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc45.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  %65 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %66, i32 %i.2283.i
  %67 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx37.i, align 4
  %conv38.i = trunc i32 %68 to i16
  %conv39.i = trunc i32 %i.2283.i to i8
  %69 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %core, align 4
  %add.i.i = add nuw nsw i32 %i.2283.i, 1
  %call.i132.i = call i32 @mlxsw_core_port_init(ptr noundef %70, i16 noundef zeroext %conv38.i, i32 noundef %add.i.i, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0, ptr noundef %base_mac.i, i8 noundef zeroext 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool.not.i.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool.not.i.i, label %if.end.i133.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus_info, align 4
  %dev1.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1.i.i, align 4
  %conv2.i.i = and i32 %68, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.25, i32 noundef %conv2.i.i) #13
  br label %mlxsw_m_port_create.exit.i

if.end.i133.i:                                    ; preds = %if.then35.i
  %call3.i.i = call ptr @alloc_etherdev_mqs(i32 noundef 12, i32 noundef 1, i32 noundef 1) #10
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i133.i.err_alloc_etherdev.i.i_crit_edge, label %if.end6.i.i

if.end.i133.i.err_alloc_etherdev.i.i_crit_edge:   ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_etherdev.i.i

if.end6.i.i:                                      ; preds = %if.end.i133.i
  %75 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus_info, align 4
  %dev8.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev8.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 133, i32 1
  %79 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %parent.i.i, align 8
  %80 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %core, align 4
  %call.i.i134.i = call ptr @priv_to_devlink(ptr noundef %81) #10
  %call1.i.i.i = call ptr @devlink_net(ptr noundef %call.i.i134.i) #10
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 127
  %82 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call1.i.i.i, ptr %nd_net.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 2304
  %83 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call3.i.i, ptr %add.ptr.i.i.i, align 4
  %mlxsw_m14.i.i = getelementptr i8, ptr %call3.i.i, i32 2308
  %84 = ptrtoint ptr %mlxsw_m14.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call, ptr %mlxsw_m14.i.i, align 4
  %local_port15.i.i = getelementptr i8, ptr %call3.i.i, i32 2312
  %85 = ptrtoint ptr %local_port15.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv38.i, ptr %local_port15.i.i, align 4
  %module16.i.i = getelementptr i8, ptr %call3.i.i, i32 2314
  %86 = ptrtoint ptr %module16.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv39.i, ptr %module16.i.i, align 2
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 16
  %87 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mlxsw_m_port_netdev_ops, ptr %netdev_ops.i.i, align 8
  %ethtool_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 44
  %88 = ptrtoint ptr %ethtool_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @mlxsw_m_port_ethtool_ops, ptr %ethtool_ops.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ppad_pl.i.i.i) #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i)
  %89 = call ptr @memset(ptr %addr.i.i.i, i32 255, i32 6)
  %90 = call ptr @memset(ptr %ppad_pl.i.i.i, i32 0, i32 16)
  %91 = ptrtoint ptr %ppad_pl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ppad_pl.i.i.i, align 4
  %and7.i25.i.i.i.i.i = and i32 %92, -335478785
  store i32 %and7.i25.i.i.i.i.i, ptr %ppad_pl.i.i.i, align 4
  %93 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core, align 4
  %call.i87.i.i = call i32 @mlxsw_reg_query(ptr noundef %94, ptr noundef nonnull @mlxsw_reg_ppad, ptr noundef nonnull %ppad_pl.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i.i)
  %tobool.not.i.i159.i = icmp eq i32 %call.i87.i.i, 0
  br i1 %tobool.not.i.i159.i, label %if.end27.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ppad_pl.i.i.i) #10
  %95 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus_info, align 4
  %dev24.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %dev24.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev24.i.i, align 4
  %99 = ptrtoint ptr %local_port15.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %local_port15.i.i, align 4
  %conv26.i.i = zext i16 %100 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.28, i32 noundef %conv26.i.i) #13
  br label %err_dev_addr_get.i.i

if.end27.i.i:                                     ; preds = %if.end6.i.i
  %101 = call ptr @memcpy(ptr %addr.i.i.i, ptr %arrayidx.i.i.i.i163.i, i32 6)
  %102 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i.i.i, align 4
  %104 = ptrtoint ptr %module16.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %module16.i.i, align 2
  %conv.i.i165.i = zext i8 %105 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i165.i, 1
  %106 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %addr.i.i.i.0.addr.i.i.i.0.addr.i.i.0.addr.i.i.0.addr.i.0.addr.i.0.addr.0.addr.0..i.i.i = load i8, ptr %addr.i.i.i, align 1
  %conv.i.i12.i.i.i = zext i8 %addr.i.i.i.0.addr.i.i.i.0.addr.i.i.0.addr.i.i.0.addr.i.0.addr.i.0.addr.0.addr.0..i.i.i to i64
  %107 = ptrtoint ptr %addr.i.i.i.1.addr.i.i.i.1.addr.i.i.1.addr.i.i.1.addr.i.1.addr.i.1.addr.1.addr.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %107)
  %addr.i.i.i.1.addr.i.i.i.1.addr.i.i.1.addr.i.i.1.addr.i.1.addr.i.1.addr.1.addr.1..i.i.i = load i8, ptr %addr.i.i.i.1.addr.i.i.i.1.addr.i.i.1.addr.i.i.1.addr.i.1.addr.i.1.addr.1.addr.1..sroa_idx, align 1
  %conv.1.i.i.i.i.i = zext i8 %addr.i.i.i.1.addr.i.i.i.1.addr.i.i.1.addr.i.i.1.addr.i.1.addr.i.1.addr.1.addr.1..i.i.i to i64
  %108 = shl nuw nsw i64 %conv.i.i12.i.i.i, 16
  %109 = shl nuw nsw i64 %conv.1.i.i.i.i.i, 8
  %shl.2.i.i.i.i.i = or i64 %109, %108
  %110 = ptrtoint ptr %addr.i.i.i.2.addr.i.i.i.2.addr.i.i.2.addr.i.i.2.addr.i.2.addr.i.2.addr.2.addr.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %110)
  %addr.i.i.i.2.addr.i.i.i.2.addr.i.i.2.addr.i.i.2.addr.i.2.addr.i.2.addr.2.addr.2..i.i.i = load i8, ptr %addr.i.i.i.2.addr.i.i.i.2.addr.i.i.2.addr.i.i.2.addr.i.2.addr.i.2.addr.2.addr.2..sroa_idx, align 1
  %conv.2.i.i.i.i.i = zext i8 %addr.i.i.i.2.addr.i.i.i.2.addr.i.i.2.addr.i.i.2.addr.i.2.addr.i.2.addr.2.addr.2..i.i.i to i64
  %or.2.i.i.i.i.i = or i64 %shl.2.i.i.i.i.i, %conv.2.i.i.i.i.i
  %111 = ptrtoint ptr %addr.i.i.i.3.addr.i.i.i.3.addr.i.i.3.addr.i.i.3.addr.i.3.addr.i.3.addr.3.addr.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %111)
  %addr.i.i.i.3.addr.i.i.i.3.addr.i.i.3.addr.i.i.3.addr.i.3.addr.i.3.addr.3.addr.3..i.i.i = load i8, ptr %addr.i.i.i.3.addr.i.i.i.3.addr.i.i.3.addr.i.i.3.addr.i.3.addr.i.3.addr.3.addr.3..sroa_idx, align 1
  %conv.3.i.i.i.i.i = zext i8 %addr.i.i.i.3.addr.i.i.i.3.addr.i.i.3.addr.i.i.3.addr.i.3.addr.i.3.addr.3.addr.3..i.i.i to i64
  %112 = ptrtoint ptr %addr.i.i.i.4.addr.i.i.i.4.addr.i.i.4.addr.i.i.4.addr.i.4.addr.i.4.addr.4.addr.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %112)
  %addr.i.i.i.4.addr.i.i.i.4.addr.i.i.4.addr.i.i.4.addr.i.4.addr.i.4.addr.4.addr.4..i.i.i = load i8, ptr %addr.i.i.i.4.addr.i.i.i.4.addr.i.i.4.addr.i.i.4.addr.i.4.addr.i.4.addr.4.addr.4..sroa_idx, align 1
  %conv.4.i.i.i.i.i = zext i8 %addr.i.i.i.4.addr.i.i.i.4.addr.i.i.4.addr.i.i.4.addr.i.4.addr.i.4.addr.4.addr.4..i.i.i to i64
  %113 = shl nuw nsw i64 %or.2.i.i.i.i.i, 24
  %114 = shl nuw nsw i64 %conv.3.i.i.i.i.i, 16
  %115 = shl nuw nsw i64 %conv.4.i.i.i.i.i, 8
  %116 = or i64 %115, %114
  %shl.5.i.i.i.i.i = or i64 %116, %113
  %117 = ptrtoint ptr %addr.i.i.i.5.addr.i.i.i.5.addr.i.i.5.addr.i.i.5.addr.i.5.addr.i.5.addr.5.addr.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %117)
  %addr.i.i.i.5.addr.i.i.i.5.addr.i.i.5.addr.i.i.5.addr.i.5.addr.i.5.addr.5.addr.5..i.i.i = load i8, ptr %addr.i.i.i.5.addr.i.i.i.5.addr.i.i.5.addr.i.i.5.addr.i.5.addr.i.5.addr.5.addr.5..sroa_idx, align 1
  %conv.5.i.i.i.i.i = zext i8 %addr.i.i.i.5.addr.i.i.i.5.addr.i.i.5.addr.i.i.5.addr.i.5.addr.i.5.addr.5.addr.5..i.i.i to i64
  %or.5.i.i.i.i.i = or i64 %shl.5.i.i.i.i.i, %conv.5.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i.i) #10
  %conv.i.i.i.i = zext i32 %add.i.i.i to i64
  %add.i.i.i.i = add i64 %or.5.i.i.i.i.i, %conv.i.i.i.i
  %conv.i3.i.i.i.i = trunc i64 %add.i.i.i.i to i8
  %118 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i3.i.i.i.i, ptr %39, align 1
  %shr.i.i.i.i166.i = lshr i64 %add.i.i.i.i, 8
  %conv.1.i4.i.i.i.i = trunc i64 %shr.i.i.i.i166.i to i8
  %119 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.1.i4.i.i.i.i, ptr %38, align 1
  %shr.1.i.i.i.i.i = lshr i64 %add.i.i.i.i, 16
  %conv.2.i6.i.i.i.i = trunc i64 %shr.1.i.i.i.i.i to i8
  %120 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv.2.i6.i.i.i.i, ptr %37, align 1
  %shr.2.i.i.i.i.i = lshr i64 %add.i.i.i.i, 24
  %conv.3.i8.i.i.i.i = trunc i64 %shr.2.i.i.i.i.i to i8
  %121 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.3.i8.i.i.i.i, ptr %36, align 1
  %shr.3.i.i.i.i.i = lshr i64 %add.i.i.i.i, 32
  %conv.4.i10.i.i.i.i = trunc i64 %shr.3.i.i.i.i.i to i8
  %122 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv.4.i10.i.i.i.i, ptr %35, align 1
  %shr.4.i.i.i.i.i = lshr i64 %add.i.i.i.i, 40
  %conv.5.i12.i.i.i.i = trunc i64 %shr.4.i.i.i.i.i to i8
  %123 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.5.i12.i.i.i.i, ptr %addr.i.i.i.i, align 1
  call void @dev_addr_mod(ptr noundef %103, i32 noundef 0, ptr noundef nonnull %addr.i.i.i.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ppad_pl.i.i.i) #10
  call void @netif_carrier_off(ptr noundef nonnull %call3.i.i) #10
  %124 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call, align 4
  %idxprom.i.i = and i32 %68, 65535
  %arrayidx.i167.i = getelementptr ptr, ptr %125, i32 %idxprom.i.i
  %126 = ptrtoint ptr %arrayidx.i167.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr.i.i.i, ptr %arrayidx.i167.i, align 4
  %call28.i.i = call i32 @register_netdev(ptr noundef nonnull %call3.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %mlxsw_m_port_create.exit.thread.i, label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus_info, align 4
  %dev35.i.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %dev35.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev35.i.i, align 4
  %131 = ptrtoint ptr %local_port15.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %local_port15.i.i, align 4
  %conv37.i.i = zext i16 %132 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.31, i32 noundef %conv37.i.i) #13
  %133 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call, align 4
  %arrayidx43.i.i = getelementptr ptr, ptr %134, i32 %idxprom.i.i
  %135 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %arrayidx43.i.i, align 4
  br label %err_dev_addr_get.i.i

mlxsw_m_port_create.exit.thread.i:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %core, align 4
  %138 = ptrtoint ptr %local_port15.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %local_port15.i.i, align 4
  call void @mlxsw_core_port_eth_set(ptr noundef %137, i16 noundef zeroext %139, ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %call3.i.i) #10
  br label %for.inc45.i

err_dev_addr_get.i.i:                             ; preds = %do.end33.i.i, %do.end22.i.i
  %err.0.i.i = phi i32 [ %call.i87.i.i, %do.end22.i.i ], [ %call28.i.i, %do.end33.i.i ]
  call void @free_netdev(ptr noundef nonnull %call3.i.i) #10
  br label %err_alloc_etherdev.i.i

err_alloc_etherdev.i.i:                           ; preds = %err_dev_addr_get.i.i, %if.end.i133.i.err_alloc_etherdev.i.i_crit_edge
  %err.1.i.i = phi i32 [ %err.0.i.i, %err_dev_addr_get.i.i ], [ -12, %if.end.i133.i.err_alloc_etherdev.i.i_crit_edge ]
  %conv38.i231 = trunc i32 %68 to i16
  %140 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %core, align 4
  call void @mlxsw_core_port_fini(ptr noundef %141, i16 noundef zeroext %conv38.i231) #10
  br label %mlxsw_m_port_create.exit.i

mlxsw_m_port_create.exit.i:                       ; preds = %err_alloc_etherdev.i.i, %do.end.i.i
  %retval.0.i168.i = phi i32 [ %call.i132.i, %do.end.i.i ], [ %err.1.i.i, %err_alloc_etherdev.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2283.i)
  %cmp49286.not.i = icmp eq i32 %i.2283.i, 0
  br i1 %cmp49286.not.i, label %mlxsw_m_port_create.exit.i.err_module_to_port_map.i_crit_edge, label %mlxsw_m_port_create.exit.i.for.body51.i_crit_edge

mlxsw_m_port_create.exit.i.for.body51.i_crit_edge: ; preds = %mlxsw_m_port_create.exit.i
  br label %for.body51.i

mlxsw_m_port_create.exit.i.err_module_to_port_map.i_crit_edge: ; preds = %mlxsw_m_port_create.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_module_to_port_map.i

for.inc45.i:                                      ; preds = %mlxsw_m_port_create.exit.thread.i, %land.lhs.true.i.for.inc45.i_crit_edge, %for.body27.i.for.inc45.i_crit_edge
  %inc46.i = add nuw nsw i32 %i.2283.i, 1
  %142 = ptrtoint ptr %max_ports23.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %max_ports23.i, align 2
  %conv24.i = zext i8 %143 to i32
  %cmp25.i = icmp ult i32 %inc46.i, %conv24.i
  br i1 %cmp25.i, label %for.inc45.i.for.body27.i_crit_edge, label %for.inc45.i.cleanup_crit_edge

for.inc45.i.cleanup_crit_edge:                    ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc45.i.for.body27.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27.i

for.body51.i:                                     ; preds = %for.inc61.i.for.body51.i_crit_edge, %mlxsw_m_port_create.exit.i.for.body51.i_crit_edge
  %i.3287.in.i = phi i32 [ %i.3287.i, %for.inc61.i.for.body51.i_crit_edge ], [ %i.2283.i, %mlxsw_m_port_create.exit.i.for.body51.i_crit_edge ]
  %i.3287.i = add nsw i32 %i.3287.in.i, -1
  %144 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx53.i = getelementptr i32, ptr %145, i32 %i.3287.i
  %146 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp54.i = icmp sgt i32 %147, 0
  br i1 %cmp54.i, label %if.then56.i, label %for.body51.i.for.inc61.i_crit_edge

for.body51.i.for.inc61.i_crit_edge:               ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61.i

if.then56.i:                                      ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv59.i = trunc i32 %147 to i16
  %148 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %call, align 4
  %idxprom.i169.i = and i32 %147, 65535
  %arrayidx.i170.i = getelementptr ptr, ptr %149, i32 %idxprom.i169.i
  %150 = ptrtoint ptr %arrayidx.i170.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i170.i, align 4
  %152 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %core, align 4
  call void @mlxsw_core_port_clear(ptr noundef %153, i16 noundef zeroext %conv59.i, ptr noundef %call) #10
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %151, align 4
  call void @unregister_netdev(ptr noundef %155) #10
  %156 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %157, i32 %idxprom.i169.i
  %158 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %arrayidx3.i.i, align 4
  %159 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %151, align 4
  call void @free_netdev(ptr noundef %160) #10
  %161 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %core, align 4
  call void @mlxsw_core_port_fini(ptr noundef %162, i16 noundef zeroext %conv59.i) #10
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %if.then56.i, %for.body51.i.for.inc61.i_crit_edge
  %cmp49.i = icmp sgt i32 %i.3287.in.i, 1
  br i1 %cmp49.i, label %for.inc61.i.for.body51.i_crit_edge, label %for.inc61.i.err_module_to_port_map.i_crit_edge

for.inc61.i.err_module_to_port_map.i_crit_edge:   ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_module_to_port_map.i

for.inc61.i.for.body51.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51.i

err_module_to_port_map.i:                         ; preds = %for.inc61.i.err_module_to_port_map.i_crit_edge, %mlxsw_m_port_create.exit.i.err_module_to_port_map.i_crit_edge, %if.then20.i.i, %land.rhs.i.i.err_module_to_port_map.i_crit_edge, %mlxsw_m_port_module_info_get.exit.i.i
  %i.4.i = phi i32 [ %i.1270.i, %mlxsw_m_port_module_info_get.exit.i.i ], [ %i.1270.i, %land.rhs.i.i.err_module_to_port_map.i_crit_edge ], [ %i.1270.i, %if.then20.i.i ], [ %call.i31, %mlxsw_m_port_create.exit.i.err_module_to_port_map.i_crit_edge ], [ %call.i31, %for.inc61.i.err_module_to_port_map.i_crit_edge ]
  %err.0.i = phi i32 [ %call.i.i.i, %mlxsw_m_port_module_info_get.exit.i.i ], [ -22, %land.rhs.i.i.err_module_to_port_map.i_crit_edge ], [ -22, %if.then20.i.i ], [ %retval.0.i168.i, %mlxsw_m_port_create.exit.i.err_module_to_port_map.i_crit_edge ], [ %retval.0.i168.i, %for.inc61.i.err_module_to_port_map.i_crit_edge ]
  %i.5288.i = add i32 %i.4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5288.i)
  %cmp66289.i = icmp sgt i32 %i.5288.i, 0
  br i1 %cmp66289.i, label %err_module_to_port_map.i.for.body68.i_crit_edge, label %err_module_to_port_map.i.mlxsw_m_ports_create.exit_crit_edge

err_module_to_port_map.i.mlxsw_m_ports_create.exit_crit_edge: ; preds = %err_module_to_port_map.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_m_ports_create.exit

err_module_to_port_map.i.for.body68.i_crit_edge:  ; preds = %err_module_to_port_map.i
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.body68.i.for.body68.i_crit_edge, %err_module_to_port_map.i.for.body68.i_crit_edge
  %i.5290.i = phi i32 [ %i.5.i, %for.body68.i.for.body68.i_crit_edge ], [ %i.5288.i, %err_module_to_port_map.i.for.body68.i_crit_edge ]
  %conv69.i = trunc i32 %i.5290.i to i8
  %163 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %module_to_port.i, align 4
  %idxprom.i173.i = and i32 %i.5290.i, 255
  %arrayidx.i174.i = getelementptr i32, ptr %164, i32 %idxprom.i173.i
  %165 = ptrtoint ptr %arrayidx.i174.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %arrayidx.i174.i, align 4
  %166 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %core, align 4
  call void @mlxsw_env_module_port_unmap(ptr noundef %167, i8 noundef zeroext %conv69.i) #10
  %i.5.i = add nsw i32 %i.5290.i, -1
  %cmp66.not.i = icmp eq i32 %i.5.i, 0
  br i1 %cmp66.not.i, label %for.body68.i.mlxsw_m_ports_create.exit_crit_edge, label %for.body68.i.for.body68.i_crit_edge

for.body68.i.for.body68.i_crit_edge:              ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body68.i

for.body68.i.mlxsw_m_ports_create.exit_crit_edge: ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_m_ports_create.exit

mlxsw_m_ports_create.exit:                        ; preds = %for.body68.i.mlxsw_m_ports_create.exit_crit_edge, %err_module_to_port_map.i.mlxsw_m_ports_create.exit_crit_edge
  %168 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %module_to_port.i, align 4
  call void @kfree(ptr noundef %169) #10
  %170 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %call, align 4
  call void @kfree(ptr noundef %171) #10
  br label %do.end12

do.end12:                                         ; preds = %mlxsw_m_ports_create.exit, %mlxsw_m_ports_create.exit.thread50, %kcalloc.exit.thread367.i.do.end12_crit_edge, %kcalloc.exit.thread.i
  %retval.0.i3545 = phi i32 [ %err.0.i, %mlxsw_m_ports_create.exit ], [ -12, %mlxsw_m_ports_create.exit.thread50 ], [ -12, %kcalloc.exit.thread.i ], [ -12, %kcalloc.exit.thread367.i.do.end12_crit_edge ]
  %172 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bus_info, align 4
  %dev14 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %for.inc45.i.cleanup_crit_edge, %for.cond22.preheader.i.cleanup_crit_edge, %do.end, %mlxsw_m_fw_rev_validate.exit
  %retval.0 = phi i32 [ %call.i29, %do.end ], [ %retval.0.i3545, %do.end12 ], [ -22, %mlxsw_m_fw_rev_validate.exit ], [ 0, %for.cond22.preheader.i.cleanup_crit_edge ], [ 0, %for.inc45.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_m_fini(ptr noundef %mlxsw_core) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_core_driver_priv(ptr noundef %mlxsw_core) #10
  %max_ports.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %max_ports.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_ports.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp23.not.i = icmp eq i8 %1, 0
  br i1 %cmp23.not.i, label %entry.mlxsw_m_ports_remove.exit_crit_edge, label %for.body.lr.ph.i

entry.mlxsw_m_ports_remove.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_m_ports_remove.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %module_to_port.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 1
  %core.i.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %i.024.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp sgt i32 %5, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.i = trunc i32 %5 to i16
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %idxprom.i.i = and i32 %5, 65535
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i.i, align 4
  tail call void @mlxsw_core_port_clear(ptr noundef %11, i16 noundef zeroext %conv6.i, ptr noundef %call) #10
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  tail call void @unregister_netdev(ptr noundef %13) #10
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %15, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx3.i.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  tail call void @free_netdev(ptr noundef %18) #10
  %19 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i.i, align 4
  tail call void @mlxsw_core_port_fini(ptr noundef %20, i16 noundef zeroext %conv6.i) #10
  %conv7.i = trunc i32 %i.024.i to i8
  %21 = ptrtoint ptr %module_to_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %module_to_port.i, align 4
  %arrayidx.i20.i = getelementptr i32, ptr %22, i32 %i.024.i
  %23 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %arrayidx.i20.i, align 4
  %24 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i.i, align 4
  tail call void @mlxsw_env_module_port_unmap(ptr noundef %25, i8 noundef zeroext %conv7.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %26 = ptrtoint ptr %max_ports.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_ports.i, align 2
  %conv.i = zext i8 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mlxsw_m_ports_remove.exit_crit_edge

for.inc.i.mlxsw_m_ports_remove.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_m_ports_remove.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlxsw_m_ports_remove.exit:                        ; preds = %for.inc.i.mlxsw_m_ports_remove.exit_crit_edge, %entry.mlxsw_m_ports_remove.exit_crit_edge
  %module_to_port8.i = getelementptr inbounds %struct.mlxsw_m, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %module_to_port8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %module_to_port8.i, align 4
  tail call void @kfree(ptr noundef %29) #10
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  tail call void @kfree(ptr noundef %31) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_core_driver_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_fw_rev_minor_subminor_validate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_max_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_port_is_xm(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_env_module_port_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_port_init(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_port_eth_set(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_port_fini(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_port_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m1, align 4
  %core = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %module = getelementptr i8, ptr %dev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %call2 = tail call i32 @mlxsw_env_module_port_up(ptr noundef %3, i8 noundef zeroext %5) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_port_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m1, align 4
  %core = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %module = getelementptr i8, ptr %dev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  tail call void @mlxsw_env_module_port_down(ptr noundef %3, i8 noundef zeroext %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_m_port_get_devlink_port(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m1, align 4
  %core = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %local_port = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_port, align 4
  %call2 = tail call ptr @mlxsw_core_port_devlink_port_get(ptr noundef %3, i16 noundef zeroext %5) #10
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_module_port_up(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_env_module_port_down(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_core_port_devlink_port_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_m_module_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m1, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %bus_info = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef %5, i32 noundef 32) #10
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %6 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_info, align 4
  %fw_rev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fw_rev, align 4
  %conv = zext i16 %9 to i32
  %minor = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %minor, align 2
  %conv7 = zext i16 %11 to i32
  %subminor = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %subminor to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subminor, align 4
  %conv10 = zext i16 %13 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv10)
  %bus_info12 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %14 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_info, align 4
  %device_name = getelementptr inbounds %struct.mlxsw_bus_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_name, align 4
  %call15 = tail call i32 @strlcpy(ptr noundef %bus_info12, ptr noundef %17, i32 noundef 32) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_reset(ptr noundef %netdev, ptr noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %module = getelementptr i8, ptr %netdev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %call2 = tail call i32 @mlxsw_env_reset_module(ptr noundef %netdev, ptr noundef %3, i8 noundef zeroext %5, ptr noundef %flags) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_get_module_info(ptr nocapture noundef readonly %netdev, ptr noundef %modinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %module = getelementptr i8, ptr %netdev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @mlxsw_env_get_module_info(ptr noundef %3, i32 noundef %conv, ptr noundef %modinfo) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_get_module_eeprom(ptr noundef %netdev, ptr noundef %ee, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %module = getelementptr i8, ptr %netdev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @mlxsw_env_get_module_eeprom(ptr noundef %netdev, ptr noundef %3, i32 noundef %conv, ptr noundef %ee, ptr noundef %data) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_get_module_eeprom_by_page(ptr nocapture noundef readonly %netdev, ptr noundef %page, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %module = getelementptr i8, ptr %netdev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %call2 = tail call i32 @mlxsw_env_get_module_eeprom_by_page(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %page, ptr noundef %extack) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_get_module_power_mode(ptr nocapture noundef readonly %netdev, ptr noundef %params, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %module = getelementptr i8, ptr %netdev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %call2 = tail call i32 @mlxsw_env_get_module_power_mode(ptr noundef %3, i8 noundef zeroext %5, ptr noundef %params, ptr noundef %extack) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_m_set_module_power_mode(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %params, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_m = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %mlxsw_m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_m, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_m, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %module = getelementptr i8, ptr %netdev, i32 2314
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module, align 2
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  %call2 = tail call i32 @mlxsw_env_set_module_power_mode(ptr noundef %3, i8 noundef zeroext %5, i32 noundef %7, ptr noundef %extack) #10
  ret i32 %call2
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_reset_module(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_eeprom(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_eeprom_by_page(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_get_module_power_mode(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_set_module_power_mode(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_port_clear(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_env_module_port_unmap(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_i2c_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !54, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_mlxsw_minimal__374_503_mlxsw_m_module_init6, !1, !"__initcall__kmod_mlxsw_minimal__374_503_mlxsw_m_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 503, i32 1}
!2 = !{ptr @__exitcall_mlxsw_m_module_exit, !3, !"__exitcall_mlxsw_m_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 504, i32 1}
!4 = !{ptr @__UNIQUE_ID_file375, !5, !"__UNIQUE_ID_file375", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 506, i32 1}
!6 = !{ptr @__UNIQUE_ID_license376, !5, !"__UNIQUE_ID_license376", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author377, !8, !"__UNIQUE_ID_author377", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 507, i32 1}
!9 = !{ptr @__UNIQUE_ID_description378, !10, !"__UNIQUE_ID_description378", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 508, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 472, i32 17}
!13 = !{ptr @mlxsw_m_i2c_driver, !14, !"mlxsw_m_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 471, i32 26}
!15 = !{ptr @mlxsw_m_i2c_id, !16, !"mlxsw_m_i2c_id", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 466, i32 35}
!17 = !{ptr @mlxsw_m_driver, !18, !"mlxsw_m_driver", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 457, i32 28}
!19 = !{ptr @mlxsw_m_driver_name, !20, !"mlxsw_m_driver_name", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 17, i32 19}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 435, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mlxsw_m_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlxsw_m_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 441, i32 3}
!31 = !{ptr @mlxsw_m_init._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlxsw_m_init._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 412, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mlxsw_m_fw_rev_validate._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mlxsw_m_fw_rev_validate._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mlxsw_m_fw_rev, !39, !"mlxsw_m_fw_rev", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 22, i32 34}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 62, i32 1}
!42 = !{ptr @mlxsw_reg_spad, !41, !"mlxsw_reg_spad", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__mlxsw_item_offset._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @__mlxsw_item_offset._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 70, i32 1}
!51 = distinct !{null, !50, !"mlxsw_reg_spad_base_mac_item", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 311, i32 6}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4310, i32 1}
!56 = distinct !{null, !55, !"mlxsw_reg_pmlp_local_port_item", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !55, !"mlxsw_reg_pmlp_lp_msb_item", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4297, i32 1}
!61 = !{ptr @mlxsw_reg_pmlp, !60, !"mlxsw_reg_pmlp", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4326, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_pmlp_module_item", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4320, i32 1}
!67 = distinct !{null, !66, !"mlxsw_reg_pmlp_width_item", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 228, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlxsw_m_port_create._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlxsw_m_port_create._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 252, i32 3}
!75 = !{ptr @mlxsw_m_port_create._entry.27, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlxsw_m_port_create._entry_ptr.29, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 261, i32 3}
!79 = !{ptr @mlxsw_m_port_create._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mlxsw_m_port_create._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mlxsw_m_port_netdev_ops, !82, !"mlxsw_m_port_netdev_ops", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 84, i32 36}
!83 = !{ptr @mlxsw_m_port_ethtool_ops, !84, !"mlxsw_m_port_ethtool_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 172, i32 33}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 99, i32 4}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4676, i32 1}
!89 = distinct !{null, !88, !"mlxsw_reg_ppad_single_base_mac_item", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4682, i32 1}
!92 = distinct !{null, !91, !"mlxsw_reg_ppad_local_port_item", i1 false, i1 false}
!93 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !91, !"mlxsw_reg_ppad_lp_msb_item", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4668, i32 1}
!97 = !{ptr @mlxsw_reg_ppad, !96, !"mlxsw_reg_ppad", i1 false, i1 false}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 4689, i32 1}
!100 = distinct !{null, !99, !"mlxsw_reg_ppad_mac_item", i1 false, i1 false}
!101 = !{ptr @mlxsw_m_config_profile, !102, !"mlxsw_m_config_profile", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlxsw/minimal.c", i32 455, i32 42}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
