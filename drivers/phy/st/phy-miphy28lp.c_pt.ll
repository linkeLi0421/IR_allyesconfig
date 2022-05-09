; ModuleID = '/llk/IR_all_yes/drivers/phy/st/phy-miphy28lp.c_pt.bc'
source_filename = "../drivers/phy/st/phy-miphy28lp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miphy28lp_pll_gen = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.miphy28lp_dev = type { ptr, ptr, %struct.mutex, ptr, i32 }
%struct.miphy28lp_phy = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, [4 x i32], i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_miphy28lp__289_1278_miphy28lp_driver_init6 = internal global ptr @miphy28lp_driver_init, section ".initcall6.init", align 4
@miphy28lp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @miphy28lp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @miphy28lp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_miphy28lp_driver_exit = internal global ptr @miphy28lp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"phy_miphy28lp.author=Alexandre Torgue <alexandre.torgue@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [62 x i8] c"phy_miphy28lp.description=STMicroelectronics miphy28lp driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [48 x i8] c"phy_miphy28lp.file=drivers/phy/st/phy-miphy28lp\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [29 x i8] c"phy_miphy28lp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"miphy28lp-phy\00", [18 x i8] zeroinitializer }, align 32
@miphy28lp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,miphy28lp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@miphy28lp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No syscfg phandle specified\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"miphy28lp_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/phy/st/phy-miphy28lp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@miphy28lp_probe._entry_ptr = internal global ptr @miphy28lp_probe._entry, section ".printk_index", align 4
@miphy28lp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&miphy_dev->miphy_mutex\00", [40 x i8] zeroinitializer }, align 32
@miphy28lp_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @miphy28lp_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@miphy28lp_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@miphy28lp_probe._entry_ptr.10 = internal global ptr @miphy28lp_probe._entry.8, section ".printk_index", align 4
@miphy28lp_init_sata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 928, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sata-up mode, addr 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"miphy28lp_init_sata\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@miphy28lp_init_sata._entry_ptr = internal global ptr @miphy28lp_init_sata._entry, section ".printk_index", align 4
@miphy28lp_init_sata._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.4, i32 944, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SATA phy setup failed\0A\00", [41 x i8] zeroinitializer }, align 32
@miphy28lp_init_sata._entry_ptr.16 = internal global ptr @miphy28lp_init_sata._entry.14, section ".printk_index", align 4
@miphy28lp_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 898, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to bring out of miphy reset\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"miphy28lp_setup\00", [16 x i8] zeroinitializer }, align 32
@miphy28lp_setup._entry_ptr = internal global ptr @miphy28lp_setup._entry, section ".printk_index", align 4
@miphy28lp_setup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 911, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@miphy28lp_setup._entry_ptr.20 = internal global ptr @miphy28lp_setup._entry.19, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sata_pll_gen = internal constant { [3 x %struct.miphy28lp_pll_gen], [36 x i8] } { [3 x %struct.miphy28lp_pll_gen] [%struct.miphy28lp_pll_gen { i32 0, i32 0, i32 0, i32 174, i32 0, i32 83, i32 0, i32 0, i32 0, i32 125, i32 86, i32 0, i32 13 }, %struct.miphy28lp_pll_gen { i32 1, i32 5, i32 0, i32 174, i32 0, i32 114, i32 32, i32 0, i32 0, i32 125, i32 86, i32 0, i32 13 }, %struct.miphy28lp_pll_gen { i32 2, i32 10, i32 0, i32 174, i32 0, i32 192, i32 32, i32 0, i32 0, i32 125, i32 86, i32 0, i32 13 }], [36 x i8] zeroinitializer }, align 32
@miphy28lp_init_pcie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 964, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcie-up mode, addr 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"miphy28lp_init_pcie\00", [44 x i8] zeroinitializer }, align 32
@miphy28lp_init_pcie._entry_ptr = internal global ptr @miphy28lp_init_pcie._entry, section ".printk_index", align 4
@miphy28lp_init_pcie._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 978, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCIe phy setup failed\0A\00", [41 x i8] zeroinitializer }, align 32
@miphy28lp_init_pcie._entry_ptr.25 = internal global ptr @miphy28lp_init_pcie._entry.23, section ".printk_index", align 4
@miphy28lp_init_usb3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1007, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb3-up mode, addr 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"miphy28lp_init_usb3\00", [44 x i8] zeroinitializer }, align 32
@miphy28lp_init_usb3._entry_ptr = internal global ptr @miphy28lp_init_usb3._entry, section ".printk_index", align 4
@miphy28lp_init_usb3._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 1012, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB3 phy setup failed\0A\00", [41 x i8] zeroinitializer }, align 32
@miphy28lp_init_usb3._entry_ptr.30 = internal global ptr @miphy28lp_init_usb3._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,osc-force-ext\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,osc-rdy\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,px_rx_pol_inv\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,ssc-on\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,tx-impedance-comp\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,sata-gen\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"miphy-sw-rst\00", [19 x i8] zeroinitializer }, align 32
@miphy28lp_probe_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1147, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"miphy soft reset control not defined\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"miphy28lp_probe_resets\00", [41 x i8] zeroinitializer }, align 32
@miphy28lp_probe_resets._entry_ptr = internal global ptr @miphy28lp_probe_resets._entry, section ".printk_index", align 4
@miphy28lp_probe_resets._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.39, ptr @.str.4, i32 1153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@miphy28lp_probe_resets._entry_ptr.41 = internal global ptr @miphy28lp_probe_resets._entry.40, section ".printk_index", align 4
@miphy28lp_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 1107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid number of cells in 'phy' property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"miphy28lp_xlate\00", [16 x i8] zeroinitializer }, align 32
@miphy28lp_xlate._entry_ptr = internal global ptr @miphy28lp_xlate._entry, section ".printk_index", align 4
@miphy28lp_xlate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 1118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to find appropriate phy\0A\00", [32 x i8] zeroinitializer }, align 32
@miphy28lp_xlate._entry_ptr.46 = internal global ptr @miphy28lp_xlate._entry.44, section ".printk_index", align 4
@PHY_TYPE_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pipew\00", [26 x i8] zeroinitializer }, align 32
@miphy28lp_get_one_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 879, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to ioremap %s address region\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"miphy28lp_get_one_addr\00", [41 x i8] zeroinitializer }, align 32
@miphy28lp_get_one_addr._entry_ptr = internal global ptr @miphy28lp_get_one_addr._entry, section ".printk_index", align 4
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sata-up\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcie-up\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb3-up\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"miphy28lp_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1270, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1273, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"miphy28lp_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1263, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1209, i32 58 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1211, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1219, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"miphy28lp_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1131, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1235, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 928, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 944, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 898, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 911, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"sata_pll_gen\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 291, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 964, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 978, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1007, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1012, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1167, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1169, i32 49 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1172, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1174, i32 45 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1177, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1179, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1143, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1146, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1153, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1107, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1118, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [14 x i8] c"PHY_TYPE_name\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 237, i32 14 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 1089, i32 57 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 878, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 860, i32 42 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 237, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 237, i32 45 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 237, i32 56 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [34 x i8] c"../drivers/phy/st/phy-miphy28lp.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 237, i32 60 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_miphy28lp_driver_exit, ptr @__initcall__kmod_phy_miphy28lp__289_1278_miphy28lp_driver_init6, ptr @miphy28lp_driver_exit, ptr @miphy28lp_get_one_addr._entry, ptr @miphy28lp_get_one_addr._entry_ptr, ptr @miphy28lp_init_pcie._entry, ptr @miphy28lp_init_pcie._entry.23, ptr @miphy28lp_init_pcie._entry_ptr, ptr @miphy28lp_init_pcie._entry_ptr.25, ptr @miphy28lp_init_sata._entry, ptr @miphy28lp_init_sata._entry.14, ptr @miphy28lp_init_sata._entry_ptr, ptr @miphy28lp_init_sata._entry_ptr.16, ptr @miphy28lp_init_usb3._entry, ptr @miphy28lp_init_usb3._entry.28, ptr @miphy28lp_init_usb3._entry_ptr, ptr @miphy28lp_init_usb3._entry_ptr.30, ptr @miphy28lp_probe._entry, ptr @miphy28lp_probe._entry.8, ptr @miphy28lp_probe._entry_ptr, ptr @miphy28lp_probe._entry_ptr.10, ptr @miphy28lp_probe_resets._entry, ptr @miphy28lp_probe_resets._entry.40, ptr @miphy28lp_probe_resets._entry_ptr, ptr @miphy28lp_probe_resets._entry_ptr.41, ptr @miphy28lp_setup._entry, ptr @miphy28lp_setup._entry.19, ptr @miphy28lp_setup._entry_ptr, ptr @miphy28lp_setup._entry_ptr.20, ptr @miphy28lp_xlate._entry, ptr @miphy28lp_xlate._entry.44, ptr @miphy28lp_xlate._entry_ptr, ptr @miphy28lp_xlate._entry_ptr.46, ptr @miphy28lp_driver, ptr @.str, ptr @miphy28lp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @miphy28lp_probe.__key, ptr @.str.7, ptr @miphy28lp_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @sata_pll_gen, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @PHY_TYPE_name, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_init_sata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_init_sata._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_setup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_pll_gen to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_init_pcie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_init_pcie._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_init_usb3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_init_usb3._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_probe_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_probe_resets._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_xlate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PHY_TYPE_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miphy28lp_get_one_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @miphy28lp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @miphy28lp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @miphy28lp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @miphy28lp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @miphy28lp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ctrlreg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %if.end

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end:                                           ; preds = %entry
  %call.i114 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i114, null
  br i1 %cmp.not5.i, label %if.end.of_get_child_count.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.of_get_child_count.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i114, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %nphys = getelementptr inbounds %struct.miphy28lp_dev, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %nphys to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num.0.lcssa.i, ptr %nphys, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 4) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !140

devm_kcalloc.exit.thread:                         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phys122 = getelementptr inbounds %struct.miphy28lp_dev, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %phys122 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %phys122, align 4
  br label %cleanup62

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %6 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #6
  %phys = getelementptr inbounds %struct.miphy28lp_dev, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.cleanup62_crit_edge, label %if.end9

devm_kcalloc.exit.cleanup62_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end9:                                          ; preds = %devm_kcalloc.exit
  %call10 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.miphy28lp_dev, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup62

if.end17:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  %miphy_mutex = getelementptr inbounds %struct.miphy28lp_dev, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %miphy_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @miphy28lp_probe.__key) #6
  %call24 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not142 = icmp eq ptr %call24, null
  br i1 %cmp.not142, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %port.0145 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %child.0143 = phi ptr [ %call58, %for.inc.for.body_crit_edge ], [ %call24, %if.end17.for.body_crit_edge ]
  %call.i115 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #6
  %tobool27.not = icmp eq ptr %call.i115, null
  br i1 %tobool27.not, label %for.body.put_child_crit_edge, label %if.end29

for.body.put_child_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_child

if.end29:                                         ; preds = %for.body
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %port.0145
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i115, ptr %arrayidx, align 4
  %call32 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef nonnull %child.0143, ptr noundef nonnull @miphy28lp_ops) #6
  %cmp.i116 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %19 = ptrtoint ptr %call32 to i32
  br label %put_child

if.end40:                                         ; preds = %if.end29
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phys, align 4
  %arrayidx42 = getelementptr ptr, ptr %21, i32 %port.0145
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call32, ptr %23, align 4
  %25 = load ptr, ptr %phys, align 4
  %arrayidx45 = getelementptr ptr, ptr %25, i32 %port.0145
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx45, align 4
  %phydev = getelementptr inbounds %struct.miphy28lp_phy, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %phydev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrlreg.i) #6
  %29 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %ctrlreg.i, align 4, !annotation !141
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.31, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %osc_force_ext.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 4
  %frombool.i = zext i1 %tobool.i.i to i8
  %30 = ptrtoint ptr %osc_force_ext.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i, ptr %osc_force_ext.i, align 4
  %call.i1.i = call ptr @of_find_property(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.32, ptr noundef null) #6
  %tobool.i2.i = icmp ne ptr %call.i1.i, null
  %osc_rdy.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 5
  %frombool2.i = zext i1 %tobool.i2.i to i8
  %31 = ptrtoint ptr %osc_rdy.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool2.i, ptr %osc_rdy.i, align 1
  %call.i3.i = call ptr @of_find_property(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.33, ptr noundef null) #6
  %tobool.i4.i = icmp ne ptr %call.i3.i, null
  %px_rx_pol_inv.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 6
  %frombool4.i = zext i1 %tobool.i4.i to i8
  %32 = ptrtoint ptr %px_rx_pol_inv.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool4.i, ptr %px_rx_pol_inv.i, align 2
  %call.i5.i = call ptr @of_find_property(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.34, ptr noundef null) #6
  %tobool.i6.i = icmp ne ptr %call.i5.i, null
  %ssc.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 7
  %frombool6.i = zext i1 %tobool.i6.i to i8
  %33 = ptrtoint ptr %ssc.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool6.i, ptr %ssc.i, align 1
  %call.i7.i = call ptr @of_find_property(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.35, ptr noundef null) #6
  %tobool.i8.i = icmp ne ptr %call.i7.i, null
  %tx_impedance.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 8
  %frombool8.i = zext i1 %tobool.i8.i to i8
  %34 = ptrtoint ptr %tx_impedance.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool8.i, ptr %tx_impedance.i, align 4
  %sata_gen.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 10
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.36, ptr noundef %sata_gen.i, i32 noundef 1, i32 noundef 0) #6
  %35 = ptrtoint ptr %sata_gen.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sata_gen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end40.if.end.i_crit_edge

if.end40.if.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %sata_gen.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sata_gen.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end40.if.end.i_crit_edge
  %call12.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %ctrlreg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctrlreg.i, align 4
  %arrayidx.i = getelementptr %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 11, i32 0
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end.i.for.inc.i_crit_edge
  %call12.1.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %ctrlreg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %tobool13.not.1.i = icmp eq i32 %call12.1.i, 0
  br i1 %tobool13.not.1.i, label %if.then14.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then14.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrlreg.i, align 4
  %arrayidx.1.i = getelementptr %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 11, i32 1
  %43 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then14.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %call12.2.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull %ctrlreg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %tobool13.not.2.i = icmp eq i32 %call12.2.i, 0
  br i1 %tobool13.not.2.i, label %if.then14.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then14.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrlreg.i, align 4
  %arrayidx.2.i = getelementptr %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 11, i32 2
  %46 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then14.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %call12.3.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef nonnull %ctrlreg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3.i)
  %tobool13.not.3.i = icmp eq i32 %call12.3.i, 0
  br i1 %tobool13.not.3.i, label %if.then14.3.i, label %for.inc.2.i.miphy28lp_of_probe.exit_crit_edge

for.inc.2.i.miphy28lp_of_probe.exit_crit_edge:    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_of_probe.exit

if.then14.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrlreg.i, align 4
  %arrayidx.3.i = getelementptr %struct.miphy28lp_phy, ptr %call.i115, i32 0, i32 11, i32 3
  %49 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx.3.i, align 4
  br label %miphy28lp_of_probe.exit

miphy28lp_of_probe.exit:                          ; preds = %if.then14.3.i, %for.inc.2.i.miphy28lp_of_probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrlreg.i) #6
  %50 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phys, align 4
  %arrayidx51 = getelementptr ptr, ptr %51, i32 %port.0145
  %52 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx51, align 4
  %phydev.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phydev.i, align 4
  %call.i.i117 = call ptr @__of_reset_control_get(ptr noundef nonnull %child.0143, ptr noundef nonnull @.str.37, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %miphy_rst.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %53, i32 0, i32 9
  %56 = ptrtoint ptr %miphy_rst.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i117, ptr %miphy_rst.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %miphy28lp_probe_resets.exit, label %if.end.i119

if.end.i119:                                      ; preds = %miphy28lp_of_probe.exit
  %call6.i = call i32 @reset_control_deassert(ptr noundef %call.i.i117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i118 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i118, label %if.end.i119.for.inc_crit_edge, label %miphy28lp_probe_resets.exit.thread126

if.end.i119.for.inc_crit_edge:                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

miphy28lp_probe_resets.exit.thread126:            ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.17) #9
  br label %put_child

miphy28lp_probe_resets.exit:                      ; preds = %miphy28lp_of_probe.exit
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.38) #9
  %61 = ptrtoint ptr %miphy_rst.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %miphy_rst.i, align 4
  %tobool53.not = icmp eq ptr %62, null
  br i1 %tobool53.not, label %miphy28lp_probe_resets.exit.for.inc_crit_edge, label %put_child.loopexit.split.loop.exit

miphy28lp_probe_resets.exit.for.inc_crit_edge:    ; preds = %miphy28lp_probe_resets.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %miphy28lp_probe_resets.exit.for.inc_crit_edge, %if.end.i119.for.inc_crit_edge
  %63 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phys, align 4
  %arrayidx57 = getelementptr ptr, ptr %64, i32 %port.0145
  %65 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx57, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call32, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %driver_data.i.i, align 4
  %inc = add i32 %port.0145, 1
  %call58 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0143) #6
  %cmp.not = icmp eq ptr %call58, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  %call60 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @miphy28lp_xlate) #6
  %cmp.i.i120 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  %68 = ptrtoint ptr %call60 to i32
  %spec.select.i = select i1 %cmp.i.i120, i32 %68, i32 0
  br label %cleanup62

put_child.loopexit.split.loop.exit:               ; preds = %miphy28lp_probe_resets.exit
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %62 to i32
  br label %put_child

put_child:                                        ; preds = %put_child.loopexit.split.loop.exit, %miphy28lp_probe_resets.exit.thread126, %do.end37, %for.body.put_child_crit_edge
  %ret.0.ph = phi i32 [ %call6.i, %miphy28lp_probe_resets.exit.thread126 ], [ %19, %do.end37 ], [ %69, %put_child.loopexit.split.loop.exit ], [ -12, %for.body.put_child_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0143) #6
  br label %cleanup62

cleanup62:                                        ; preds = %put_child, %for.end, %do.end, %devm_kcalloc.exit.cleanup62_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ %ret.0.ph, %put_child ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup62_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup62_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @miphy28lp_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  %res.i47.i = alloca %struct.resource, align 4
  %res.i.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %nphys = getelementptr inbounds %struct.miphy28lp_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp247 = icmp sgt i32 %7, 0
  br i1 %cmp247, label %for.body.lr.ph, label %for.cond.preheader.do.end12_crit_edge

for.cond.preheader.do.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phys = getelementptr inbounds %struct.miphy28lp_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %index.048, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.do.end12_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.do.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %index.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %9, i32 %index.048
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %cmp4 = icmp eq ptr %3, %15
  br i1 %cmp4, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.end.do.end12_crit_edge, label %if.end14

for.end.do.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end12:                                         ; preds = %for.end.do.end12_crit_edge, %for.cond.do.end12_crit_edge, %for.cond.preheader.do.end12_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %args15 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %16 = ptrtoint ptr %args15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %args15, align 4
  %conv = trunc i32 %17 to i8
  %type = getelementptr inbounds %struct.miphy28lp_phy, ptr %11, i32 0, i32 12
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %type, align 4
  %phydev.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %25 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %if.end14.cleanup_crit_edge [
    i8 1, label %if.end14.if.end.i_crit_edge
    i8 2, label %if.end14.if.end.i_crit_edge54
    i8 4, label %if.end14.if.end.i_crit_edge55
  ]

if.end14.if.end.i_crit_edge55:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end14.if.end.i_crit_edge54:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end14.if.end.i_crit_edge, %if.end14.if.end.i_crit_edge54, %if.end14.if.end.i_crit_edge55
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %20, align 4
  %conv13.i = and i32 %17, 255
  %sub.i = add nsw i32 %conv13.i, -1
  %arrayidx.i = getelementptr [4 x ptr], ptr @PHY_TYPE_name, i32 0, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %base.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %11, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #6
  %30 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 1
  %31 = call ptr @memset(ptr %res.i.i, i32 255, i32 32)
  %call.i.i.i = tail call i32 @of_property_match_string(ptr noundef %24, ptr noundef nonnull @.str.50, ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.if.end15.i_crit_edge, label %miphy28lp_get_resource_byname.exit.i.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

miphy28lp_get_resource_byname.exit.i.i:           ; preds = %if.end.i
  %call1.i.i.i = call i32 @of_address_to_resource(ptr noundef %24, i32 noundef %call.i.i.i, ptr noundef nonnull %res.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %miphy28lp_get_resource_byname.exit.i.i.if.end15.i_crit_edge

miphy28lp_get_resource_byname.exit.i.i.if.end15.i_crit_edge: ; preds = %miphy28lp_get_resource_byname.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then.i.i:                                      ; preds = %miphy28lp_get_resource_byname.exit.i.i
  %32 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %res.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %30, align 4
  %sub.i.i.i = sub i32 1, %33
  %add.i.i.i = add i32 %sub.i.i.i, %35
  %call2.i.i = call ptr @devm_ioremap(ptr noundef %27, i32 noundef %33, i32 noundef %add.i.i.i) #6
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call2.i.i, ptr %base.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %miphy28lp_get_one_addr.exit.i, label %if.then.i.i.if.end15.i_crit_edge

if.then.i.i.if.end15.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

miphy28lp_get_one_addr.exit.i:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.48, ptr noundef %29) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #6
  br label %cleanup

if.end15.i:                                       ; preds = %if.then.i.i.if.end15.i_crit_edge, %miphy28lp_get_resource_byname.exit.i.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #6
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type, align 4
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %38, label %if.end15.i.if.end22_crit_edge [
    i8 2, label %if.end15.i.if.then24.i_crit_edge
    i8 4, label %if.end15.i.if.then24.i_crit_edge56
  ]

if.end15.i.if.then24.i_crit_edge56:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.end15.i.if.then24.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.end15.i.if.end22_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then24.i:                                      ; preds = %if.end15.i.if.then24.i_crit_edge, %if.end15.i.if.then24.i_crit_edge56
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %20, align 4
  %pipebase.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %11, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i47.i) #6
  %42 = getelementptr inbounds %struct.resource, ptr %res.i47.i, i32 0, i32 1
  %43 = call ptr @memset(ptr %res.i47.i, i32 255, i32 32)
  %call.i.i48.i = call i32 @of_property_match_string(ptr noundef %24, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48.i)
  %cmp.i.i49.i = icmp slt i32 %call.i.i48.i, 0
  br i1 %cmp.i.i49.i, label %if.then24.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge, label %miphy28lp_get_resource_byname.exit.i52.i

if.then24.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_get_one_addr.exit60.thread.i

miphy28lp_get_resource_byname.exit.i52.i:         ; preds = %if.then24.i
  %call1.i.i50.i = call i32 @of_address_to_resource(ptr noundef %24, i32 noundef %call.i.i48.i, ptr noundef nonnull %res.i47.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call1.i.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.then.i57.i, label %miphy28lp_get_resource_byname.exit.i52.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge

miphy28lp_get_resource_byname.exit.i52.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge: ; preds = %miphy28lp_get_resource_byname.exit.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_get_one_addr.exit60.thread.i

if.then.i57.i:                                    ; preds = %miphy28lp_get_resource_byname.exit.i52.i
  %44 = ptrtoint ptr %res.i47.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %res.i47.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %42, align 4
  %sub.i.i53.i = sub i32 1, %45
  %add.i.i54.i = add i32 %sub.i.i53.i, %47
  %call2.i55.i = call ptr @devm_ioremap(ptr noundef %41, i32 noundef %45, i32 noundef %add.i.i54.i) #6
  %48 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call2.i55.i, ptr %pipebase.i, align 4
  %tobool3.not.i56.i = icmp eq ptr %call2.i55.i, null
  br i1 %tobool3.not.i56.i, label %miphy28lp_get_one_addr.exit60.i, label %if.then.i57.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge

if.then.i57.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge: ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_get_one_addr.exit60.thread.i

miphy28lp_get_one_addr.exit60.thread.i:           ; preds = %if.then.i57.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge, %miphy28lp_get_resource_byname.exit.i52.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge, %if.then24.i.miphy28lp_get_one_addr.exit60.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i47.i) #6
  br label %if.end22

miphy28lp_get_one_addr.exit60.i:                  ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i47.i) #6
  br label %cleanup

if.end22:                                         ; preds = %miphy28lp_get_one_addr.exit60.thread.i, %if.end15.i.if.end22_crit_edge
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %miphy28lp_get_one_addr.exit60.i, %miphy28lp_get_one_addr.exit.i, %if.end14.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %50, %if.end22 ], [ inttoptr (i32 -22 to ptr), %do.end12 ], [ inttoptr (i32 -2 to ptr), %miphy28lp_get_one_addr.exit60.i ], [ inttoptr (i32 -2 to ptr), %miphy28lp_get_one_addr.exit.i ], [ inttoptr (i32 -22 to ptr), %if.end14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @miphy28lp_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phydev = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  %miphy_mutex = getelementptr inbounds %struct.miphy28lp_dev, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %miphy_mutex, i32 noundef 0) #6
  %type = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
    i8 4, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 4
  %arrayidx.i = getelementptr %struct.miphy28lp_phy, ptr %1, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx2.i = getelementptr %struct.miphy28lp_phy, ptr %1, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %base.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.sw.epilog_crit_edge, label %do.end.i

lor.lhs.false4.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i:                                         ; preds = %lor.lhs.false4.i
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.11, ptr noundef nonnull %14) #9
  %sata_gen.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %sata_gen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sata_gen.i, align 4
  %shl.i = shl i32 %18, 1
  %or.i = or i32 %shl.i, 1
  %regmap.i = getelementptr inbounds %struct.miphy28lp_dev, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef 7, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i, align 4
  %call.i40.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %26, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call13.i = tail call fastcc i32 @miphy28lp_setup(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end20.i, label %do.end.i.sw.epilog.sink.split_crit_edge

do.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end20.i:                                       ; preds = %do.end.i
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 3) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 1) #6, !srcloc !142
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp.i.i.i = icmp eq i8 %30, 2
  %add.ptr5.i.i.i = getelementptr i8, ptr %28, i32 4
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i, i8 20) #6, !srcloc !142
  br label %miphy28lp_set_reset.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i, i8 28) #6, !srcloc !142
  br label %miphy28lp_set_reset.exit.i.i

miphy28lp_set_reset.exit.i.i:                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 235
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 29) #6, !srcloc !142
  %add.ptr2.i.i.i = getelementptr i8, ptr %32, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i.i, i8 30) #6, !srcloc !142
  %add.ptr4.i.i.i = getelementptr i8, ptr %32, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i.i, i8 -56) #6, !srcloc !142
  %add.ptr6.i.i.i = getelementptr i8, ptr %32, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i.i, i8 0) #6, !srcloc !142
  %add.ptr8.i.i.i = getelementptr i8, ptr %32, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i.i, i8 0) #6, !srcloc !142
  %add.ptr10.i.i.i = getelementptr i8, ptr %32, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i.i, i8 0) #6, !srcloc !142
  %add.ptr12.i.i.i = getelementptr i8, ptr %32, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.i.i, i8 0) #6, !srcloc !142
  %add.ptr13.i.i.i = getelementptr i8, ptr %32, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i.i.i, i8 64) #6, !srcloc !142
  %add.ptr14.i.i.i = getelementptr i8, ptr %32, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i.i.i, i8 -47) #6, !srcloc !142
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.not.i.i.i = icmp eq i8 %34, 1
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 31, i8 95
  %add.ptr19.i.i.i = getelementptr i8, ptr %32, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i.i.i, i8 %spec.select.i.i.i) #6, !srcloc !142
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp22.i.i.i = icmp eq i8 %36, 4
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %miphy28lp_set_reset.exit.i.i.miphy28lp_pll_calibration.exit.i.i_crit_edge

miphy28lp_set_reset.exit.i.i.miphy28lp_pll_calibration.exit.i.i_crit_edge: ; preds = %miphy28lp_set_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_pll_calibration.exit.i.i

if.then24.i.i.i:                                  ; preds = %miphy28lp_set_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr25.i.i.i = getelementptr i8, ptr %32, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i.i.i, i8 0) #6, !srcloc !142
  %add.ptr26.i.i.i = getelementptr i8, ptr %32, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i.i.i, i8 112) #6, !srcloc !142
  %add.ptr27.i.i.i = getelementptr i8, ptr %32, i32 201
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27.i.i.i, i8 2) #6, !srcloc !142
  %add.ptr28.i.i.i = getelementptr i8, ptr %32, i32 202
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i.i, i8 2) #6, !srcloc !142
  %add.ptr29.i.i.i = getelementptr i8, ptr %32, i32 203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29.i.i.i, i8 2) #6, !srcloc !142
  %add.ptr30.i.i.i = getelementptr i8, ptr %32, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i.i.i, i8 10) #6, !srcloc !142
  br label %miphy28lp_pll_calibration.exit.i.i

miphy28lp_pll_calibration.exit.i.i:               ; preds = %if.then24.i.i.i, %miphy28lp_set_reset.exit.i.i.miphy28lp_pll_calibration.exit.i.i_crit_edge
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %38, i32 15
  %add.ptr3.i.i.i = getelementptr i8, ptr %38, i32 14
  %add.ptr5.i5.i.i = getelementptr i8, ptr %38, i32 99
  %add.ptr7.i.i.i = getelementptr i8, ptr %38, i32 100
  %add.ptr9.i.i.i = getelementptr i8, ptr %38, i32 74
  %add.ptr11.i.i.i = getelementptr i8, ptr %38, i32 75
  %add.ptr13.i6.i.i = getelementptr i8, ptr %38, i32 122
  %add.ptr15.i.i.i = getelementptr i8, ptr %38, i32 123
  %add.ptr17.i.i.i = getelementptr i8, ptr %38, i32 127
  %add.ptr19.i7.i.i = getelementptr i8, ptr %38, i32 128
  %add.ptr21.i.i.i = getelementptr i8, ptr %38, i32 129
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %miphy28lp_pll_calibration.exit.i.i
  %i.044.i.i.i = phi i32 [ 0, %miphy28lp_pll_calibration.exit.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i8.i.i = trunc i32 %40 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4.i.i, i8 %conv.i8.i.i) #6, !srcloc !142
  %speed.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 1
  %41 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed.i.i.i, align 4
  %conv2.i.i.i = trunc i32 %42 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i, i8 %conv2.i.i.i) #6, !srcloc !142
  %bias_boost_1.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 2
  %43 = ptrtoint ptr %bias_boost_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bias_boost_1.i.i.i, align 4
  %conv4.i.i.i = trunc i32 %44 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i5.i.i, i8 %conv4.i.i.i) #6, !srcloc !142
  %bias_boost_2.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 3
  %45 = ptrtoint ptr %bias_boost_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bias_boost_2.i.i.i, align 4
  %conv6.i.i.i = trunc i32 %46 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i.i, i8 %conv6.i.i.i) #6, !srcloc !142
  %tx_ctrl_2.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 5
  %47 = ptrtoint ptr %tx_ctrl_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_ctrl_2.i.i.i, align 4
  %conv8.i.i.i = trunc i32 %48 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i.i, i8 %conv8.i.i.i) #6, !srcloc !142
  %tx_ctrl_3.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 6
  %49 = ptrtoint ptr %tx_ctrl_3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_ctrl_3.i.i.i, align 4
  %conv10.i.i.i = trunc i32 %50 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i.i, i8 %conv10.i.i.i) #6, !srcloc !142
  %rx_buff_ctrl.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 12
  %51 = ptrtoint ptr %rx_buff_ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_buff_ctrl.i.i.i, align 4
  %conv12.i.i.i = trunc i32 %52 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i6.i.i, i8 %conv12.i.i.i) #6, !srcloc !142
  %rx_vga_gain.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 8
  %53 = ptrtoint ptr %rx_vga_gain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_vga_gain.i.i.i, align 4
  %conv14.i.i.i = trunc i32 %54 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i.i, i8 %conv14.i.i.i) #6, !srcloc !142
  %rx_equ_gain_1.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 9
  %55 = ptrtoint ptr %rx_equ_gain_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_equ_gain_1.i.i.i, align 4
  %conv16.i.i.i = trunc i32 %56 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i.i.i, i8 %conv16.i.i.i) #6, !srcloc !142
  %rx_equ_gain_2.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 10
  %57 = ptrtoint ptr %rx_equ_gain_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_equ_gain_2.i.i.i, align 4
  %conv18.i.i.i = trunc i32 %58 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i7.i.i, i8 %conv18.i.i.i) #6, !srcloc !142
  %rx_equ_gain_3.i.i.i = getelementptr [3 x %struct.miphy28lp_pll_gen], ptr @sata_pll_gen, i32 0, i32 %i.044.i.i.i, i32 11
  %59 = ptrtoint ptr %rx_equ_gain_3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_equ_gain_3.i.i.i, align 4
  %conv20.i.i.i = trunc i32 %60 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i.i.i, i8 %conv20.i.i.i) #6, !srcloc !142
  %inc.i.i.i = add nuw nsw i32 %i.044.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 3
  br i1 %exitcond.not.i.i.i, label %miphy28lp_sata_config_gen.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

miphy28lp_sata_config_gen.exit.i.i:               ; preds = %for.body.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 0) #6, !srcloc !142
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %62, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i.i, i8 5) #6, !srcloc !142
  %add.ptr2.i11.i.i = getelementptr i8, ptr %62, i32 233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i11.i.i, i8 0) #6, !srcloc !142
  %add.ptr3.i13.i.i = getelementptr i8, ptr %62, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i13.i.i, i8 30) #6, !srcloc !142
  %add.ptr4.i14.i.i = getelementptr i8, ptr %62, i32 58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i14.i.i, i8 64) #6, !srcloc !142
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp.i16.i.i = icmp eq i8 %64, 2
  br i1 %cmp.i16.i.i, label %if.then.i17.i.i, label %miphy28lp_sata_config_gen.exit.i.i.if.end.i.i.i_crit_edge

miphy28lp_sata_config_gen.exit.i.i.if.end.i.i.i_crit_edge: ; preds = %miphy28lp_sata_config_gen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i17.i.i:                                  ; preds = %miphy28lp_sata_config_gen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i.i, i8 1) #6, !srcloc !142
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i17.i.i, %miphy28lp_sata_config_gen.exit.i.i.if.end.i.i.i_crit_edge
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i11.i.i, i8 64) #6, !srcloc !142
  %add.ptr10.i18.i.i = getelementptr i8, ptr %62, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i18.i.i, i8 2) #6, !srcloc !142
  %add.ptr11.i19.i.i = getelementptr i8, ptr %62, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i19.i.i, i8 0) #6, !srcloc !142
  %65 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp14.i.i.i = icmp eq i8 %66, 2
  br i1 %cmp14.i.i.i, label %if.then16.i.i.i, label %if.end.i.i.i.if.end.i.i_crit_edge

if.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then16.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i.i = sub i32 -500, %67
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.end.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then16.i.i.i
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %69, i32 63
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i.i = add i32 %add.neg.i.i.i.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %do.body.i.i.i.i.miphy28lp_configure_sata.exit.i_crit_edge, label %do.end.i.i.i.i

do.body.i.i.i.i.miphy28lp_configure_sata.exit.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_configure_sata.exit.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !145
  %tobool.not.i.i.i.i = icmp sgt i8 %70, -1
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i.do.body.i.i.i.i_crit_edge, label %do.end.i.i.i.i.if.end.i.i_crit_edge

do.end.i.i.i.i.if.end.i.i_crit_edge:              ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i.i.i.do.body.i.i.i.i_crit_edge:         ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

if.end.i.i:                                       ; preds = %do.end.i.i.i.i.if.end.i.i_crit_edge, %if.end.i.i.i.if.end.i.i_crit_edge
  %px_rx_pol_inv.i.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 6
  %72 = ptrtoint ptr %px_rx_pol_inv.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %px_rx_pol_inv.i.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool3.not.i.i = icmp eq i8 %73, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %75, i32 4
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i.i) #6, !srcloc !143
  %77 = or i8 %76, 32
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i, i8 %77) #6, !srcloc !142
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %ssc.i.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 7
  %80 = ptrtoint ptr %ssc.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ssc.i.i, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool12.not.i.i = icmp eq i8 %81, 0
  br i1 %tobool12.not.i.i, label %if.end11.i.i.if.end14.i.i_crit_edge, label %if.then13.i.i

if.end11.i.i.if.end14.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %83, i32 12
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i21.i.i) #6, !srcloc !143
  %85 = or i8 %84, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21.i.i, i8 %85) #6, !srcloc !142
  %add.ptr5.i22.i.i = getelementptr i8, ptr %83, i32 10
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i22.i.i) #6, !srcloc !143
  %87 = or i8 %86, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i22.i.i, i8 %87) #6, !srcloc !142
  %add.ptr14.i23.i.i = getelementptr i8, ptr %83, i32 15
  %add.ptr15.i24.i.i = getelementptr i8, ptr %83, i32 228
  %add.ptr16.i.i.i = getelementptr i8, ptr %83, i32 229
  %add.ptr17.i25.i.i = getelementptr i8, ptr %83, i32 230
  %add.ptr18.i.i.i = getelementptr i8, ptr %83, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i23.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i24.i.i, i8 60) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i, i8 108) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i25.i.i, i8 -127) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i23.i.i, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i24.i.i, i8 60) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i, i8 108) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i25.i.i, i8 -127) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i23.i.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i24.i.i, i8 60) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i, i8 108) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i25.i.i, i8 -127) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i.i, i8 0) #6, !srcloc !142
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then13.i.i, %if.end11.i.i.if.end14.i.i_crit_edge
  %tx_impedance.i.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 8
  %88 = ptrtoint ptr %tx_impedance.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tx_impedance.i.i, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool15.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool15.not.i.i, label %if.end14.i.i.miphy28lp_configure_sata.exit.i_crit_edge, label %if.then16.i.i

if.end14.i.i.miphy28lp_configure_sata.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_configure_sata.exit.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %91, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i26.i.i, i8 2) #6, !srcloc !142
  br label %miphy28lp_configure_sata.exit.i

miphy28lp_configure_sata.exit.i:                  ; preds = %if.then16.i.i, %if.end14.i.i.miphy28lp_configure_sata.exit.i_crit_edge, %do.body.i.i.i.i.miphy28lp_configure_sata.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %93 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %cmp.i.i = icmp eq i8 %94, 1
  %spec.select.i.i = select i1 %cmp.i.i, i32 7, i32 6
  %add.neg.i.i = sub i32 -500, %92
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %miphy28lp_configure_sata.exit.i
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %96, i32 2
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i41.i) #6, !srcloc !143
  %conv4.i.i = zext i8 %97 to i32
  %and.i.i = and i32 %spec.select.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %spec.select.i.i)
  %cmp7.not.i.i = icmp eq i32 %and.i.i, %spec.select.i.i
  br i1 %cmp7.not.i.i, label %do.body.i.i.sw.epilog_crit_edge, label %do.end.i.i

do.body.i.i.sw.epilog_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %98
  %cmp19.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp19.i.i, label %do.end.i.i.do.body.i.i_crit_edge, label %do.end.i.i.sw.epilog_crit_edge

do.end.i.i.sw.epilog_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

sw.bb2:                                           ; preds = %entry
  %99 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phydev, align 4
  %arrayidx.i13 = getelementptr %struct.miphy28lp_phy, ptr %1, i32 0, i32 11, i32 3
  %101 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i14 = icmp eq i32 %102, 0
  br i1 %tobool.not.i14, label %sw.bb2.sw.epilog_crit_edge, label %lor.lhs.false.i17

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.i17:                                ; preds = %sw.bb2
  %arrayidx2.i15 = getelementptr %struct.miphy28lp_phy, ptr %1, i32 0, i32 11, i32 2
  %103 = ptrtoint ptr %arrayidx2.i15 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx2.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool3.not.i16 = icmp eq i32 %104, 0
  br i1 %tobool3.not.i16, label %lor.lhs.false.i17.sw.epilog_crit_edge, label %lor.lhs.false4.i20

lor.lhs.false.i17.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false4.i20:                               ; preds = %lor.lhs.false.i17
  %base.i18 = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 2
  %105 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i18, align 4
  %tobool5.not.i19 = icmp eq ptr %106, null
  br i1 %tobool5.not.i19, label %lor.lhs.false4.i20.sw.epilog_crit_edge, label %lor.lhs.false6.i

lor.lhs.false4.i20.sw.epilog_crit_edge:           ; preds = %lor.lhs.false4.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i20
  %pipebase.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pipebase.i, align 4
  %tobool7.not.i = icmp eq ptr %108, null
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.sw.epilog_crit_edge, label %do.end.i23

lor.lhs.false6.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i23:                                       ; preds = %lor.lhs.false6.i
  %109 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.21, ptr noundef nonnull %106) #9
  %regmap.i21 = getelementptr inbounds %struct.miphy28lp_dev, ptr %100, i32 0, i32 1
  %111 = ptrtoint ptr %regmap.i21 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i21, align 4
  %113 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i13, align 4
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef %114, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %115 = ptrtoint ptr %regmap.i21 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i21, align 4
  %117 = ptrtoint ptr %arrayidx2.i15 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx2.i15, align 4
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef %118, i32 noundef 255, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call15.i = tail call fastcc i32 @miphy28lp_setup(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end22.i, label %do.end.i23.sw.epilog.sink.split_crit_edge

do.end.i23.sw.epilog.sink.split_crit_edge:        ; preds = %do.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end22.i:                                       ; preds = %do.end.i23
  %119 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i18, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %120, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %120, i8 3) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %120, i8 1) #6, !srcloc !142
  %121 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %122)
  %cmp.i.i88 = icmp eq i8 %122, 2
  %add.ptr5.i.i89 = getelementptr i8, ptr %120, i32 4
  br i1 %cmp.i.i88, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i89, i8 20) #6, !srcloc !142
  br label %miphy28lp_set_reset.exit.i

if.else.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i89, i8 28) #6, !srcloc !142
  br label %miphy28lp_set_reset.exit.i

miphy28lp_set_reset.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %123 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i18, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %124, i32 235
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i90, i8 29) #6, !srcloc !142
  %add.ptr2.i.i91 = getelementptr i8, ptr %124, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i91, i8 30) #6, !srcloc !142
  %add.ptr4.i.i92 = getelementptr i8, ptr %124, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i92, i8 -90) #6, !srcloc !142
  %add.ptr6.i.i93 = getelementptr i8, ptr %124, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i93, i8 -86) #6, !srcloc !142
  %add.ptr8.i.i94 = getelementptr i8, ptr %124, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i94, i8 -86) #6, !srcloc !142
  %add.ptr10.i.i95 = getelementptr i8, ptr %124, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i95, i8 0) #6, !srcloc !142
  %add.ptr12.i.i96 = getelementptr i8, ptr %124, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.i96, i8 0) #6, !srcloc !142
  %add.ptr13.i.i97 = getelementptr i8, ptr %124, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i.i97, i8 64) #6, !srcloc !142
  %add.ptr14.i.i98 = getelementptr i8, ptr %124, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i.i98, i8 -47) #6, !srcloc !142
  %125 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %cmp.not.i.i = icmp eq i8 %126, 1
  %spec.select.i.i99 = select i1 %cmp.not.i.i, i8 31, i8 95
  %add.ptr19.i.i100 = getelementptr i8, ptr %124, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i.i100, i8 %spec.select.i.i99) #6, !srcloc !142
  %127 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %128)
  %cmp22.i.i = icmp eq i8 %128, 4
  br i1 %cmp22.i.i, label %if.then24.i.i, label %miphy28lp_set_reset.exit.i.miphy28lp_pll_calibration.exit.i_crit_edge

miphy28lp_set_reset.exit.i.miphy28lp_pll_calibration.exit.i_crit_edge: ; preds = %miphy28lp_set_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_pll_calibration.exit.i

if.then24.i.i:                                    ; preds = %miphy28lp_set_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr25.i.i101 = getelementptr i8, ptr %124, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i.i101, i8 0) #6, !srcloc !142
  %add.ptr26.i.i102 = getelementptr i8, ptr %124, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i.i102, i8 112) #6, !srcloc !142
  %add.ptr27.i.i = getelementptr i8, ptr %124, i32 201
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27.i.i, i8 2) #6, !srcloc !142
  %add.ptr28.i.i103 = getelementptr i8, ptr %124, i32 202
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i103, i8 2) #6, !srcloc !142
  %add.ptr29.i.i = getelementptr i8, ptr %124, i32 203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29.i.i, i8 2) #6, !srcloc !142
  %add.ptr30.i.i = getelementptr i8, ptr %124, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i.i, i8 10) #6, !srcloc !142
  br label %miphy28lp_pll_calibration.exit.i

miphy28lp_pll_calibration.exit.i:                 ; preds = %if.then24.i.i, %miphy28lp_set_reset.exit.i.miphy28lp_pll_calibration.exit.i_crit_edge
  %129 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i18, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %130, i32 15
  %add.ptr3.i.i104 = getelementptr i8, ptr %130, i32 14
  %add.ptr5.i24.i = getelementptr i8, ptr %130, i32 99
  %add.ptr7.i.i105 = getelementptr i8, ptr %130, i32 100
  %add.ptr9.i.i106 = getelementptr i8, ptr %130, i32 73
  %add.ptr11.i.i107 = getelementptr i8, ptr %130, i32 74
  %add.ptr13.i25.i = getelementptr i8, ptr %130, i32 75
  %add.ptr15.i.i108 = getelementptr i8, ptr %130, i32 120
  %add.ptr17.i.i = getelementptr i8, ptr %130, i32 122
  %add.ptr19.i26.i = getelementptr i8, ptr %130, i32 123
  %add.ptr21.i.i = getelementptr i8, ptr %130, i32 127
  %add.ptr23.i.i = getelementptr i8, ptr %130, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i104, i8 5) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i24.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i105, i8 -91) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i106, i8 7) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i107, i8 113) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i25.i, i8 96) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i108, i8 -104) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i.i, i8 13) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i26.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i.i, i8 121) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i.i, i8 86) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23.i, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i104, i8 10) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i24.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i105, i8 -91) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i106, i8 7) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i107, i8 112) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i25.i, i8 96) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i108, i8 -52) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i.i, i8 13) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i26.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i.i, i8 120) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i.i, i8 7) #6, !srcloc !142
  %add.ptr.i109 = getelementptr i8, ptr %120, i32 205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i109, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %120, i8 0) #6, !srcloc !142
  %131 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i18, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %132, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28.i, i8 5) #6, !srcloc !142
  %add.ptr2.i29.i = getelementptr i8, ptr %132, i32 233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i29.i, i8 0) #6, !srcloc !142
  %add.ptr3.i31.i = getelementptr i8, ptr %132, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i31.i, i8 30) #6, !srcloc !142
  %add.ptr4.i32.i = getelementptr i8, ptr %132, i32 58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i32.i, i8 64) #6, !srcloc !142
  %133 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %134)
  %cmp.i34.i = icmp eq i8 %134, 2
  br i1 %cmp.i34.i, label %if.then.i35.i, label %miphy28lp_pll_calibration.exit.i.if.end.i.i110_crit_edge

miphy28lp_pll_calibration.exit.i.if.end.i.i110_crit_edge: ; preds = %miphy28lp_pll_calibration.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i110

if.then.i35.i:                                    ; preds = %miphy28lp_pll_calibration.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28.i, i8 1) #6, !srcloc !142
  br label %if.end.i.i110

if.end.i.i110:                                    ; preds = %if.then.i35.i, %miphy28lp_pll_calibration.exit.i.if.end.i.i110_crit_edge
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i29.i, i8 64) #6, !srcloc !142
  %add.ptr10.i36.i = getelementptr i8, ptr %132, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i36.i, i8 2) #6, !srcloc !142
  %add.ptr11.i37.i = getelementptr i8, ptr %132, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i37.i, i8 0) #6, !srcloc !142
  %135 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %136)
  %cmp14.i.i = icmp eq i8 %136, 2
  br i1 %cmp14.i.i, label %if.then16.i.i111, label %if.end.i.i110.if.end.i_crit_edge

if.end.i.i110.if.end.i_crit_edge:                 ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then16.i.i111:                                 ; preds = %if.end.i.i110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i = sub i32 -500, %137
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.end.i.i.i.do.body.i.i.i_crit_edge, %if.then16.i.i111
  %138 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i18, align 4
  %add.ptr.i.i.i112 = getelementptr i8, ptr %139, i32 63
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i112) #6, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %141 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %add.neg.i.i.i, %141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i.i113 = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i.i113, label %do.body.i.i.i.sw.epilog_crit_edge, label %do.end.i.i.i

do.body.i.i.i.sw.epilog_crit_edge:                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !145
  %tobool.not.i.i.i = icmp sgt i8 %140, -1
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i.if.end.i_crit_edge

do.end.i.i.i.if.end.i_crit_edge:                  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i

if.end.i:                                         ; preds = %do.end.i.i.i.if.end.i_crit_edge, %if.end.i.i110.if.end.i_crit_edge
  %ssc.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 7
  %142 = ptrtoint ptr %ssc.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ssc.i, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool3.not.i114 = icmp eq i8 %143, 0
  br i1 %tobool3.not.i114, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i18, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %145, i32 12
  %146 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39.i) #6, !srcloc !143
  %147 = or i8 %146, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i39.i, i8 %147) #6, !srcloc !142
  %add.ptr5.i40.i = getelementptr i8, ptr %145, i32 10
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i40.i) #6, !srcloc !143
  %149 = or i8 %148, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i40.i, i8 %149) #6, !srcloc !142
  %add.ptr14.i41.i = getelementptr i8, ptr %145, i32 15
  %add.ptr15.i42.i = getelementptr i8, ptr %145, i32 229
  %add.ptr16.i.i115 = getelementptr i8, ptr %145, i32 230
  %add.ptr17.i43.i = getelementptr i8, ptr %145, i32 228
  %add.ptr19.i44.i = getelementptr i8, ptr %145, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i41.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i42.i, i8 105) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i115, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i43.i, i8 60) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i115, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i44.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i44.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i44.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i41.i, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i42.i, i8 105) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i115, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17.i43.i, i8 60) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i115, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i44.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i44.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i44.i, i8 0) #6, !srcloc !142
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %tx_impedance.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 8
  %150 = ptrtoint ptr %tx_impedance.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %tx_impedance.i, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool6.not.i = icmp eq i8 %151, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end26.i_crit_edge, label %if.then7.i

if.end5.i.if.end26.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i18, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %153, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i45.i, i8 2) #6, !srcloc !142
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end26.i_crit_edge
  %154 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pipebase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %155, i32 260
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 104) #6, !srcloc !142
  %156 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pipebase.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %157, i32 261
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29.i, i8 97) #6, !srcloc !142
  %158 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pipebase.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %159, i32 264
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 104) #6, !srcloc !142
  %160 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pipebase.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %161, i32 265
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 97) #6, !srcloc !142
  %162 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pipebase.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %163, i32 268
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35.i, i8 104) #6, !srcloc !142
  %164 = ptrtoint ptr %pipebase.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pipebase.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %165, i32 269
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37.i, i8 96) #6, !srcloc !142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %166 = load volatile i32, ptr @jiffies, align 128
  %167 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %168)
  %cmp.i = icmp eq i8 %168, 1
  %spec.select.i = select i1 %cmp.i, i32 7, i32 6
  %add.neg.i = sub i32 -500, %166
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i86.do.body.i_crit_edge, %if.end26.i
  %169 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i18, align 4
  %add.ptr.i85 = getelementptr i8, ptr %170, i32 2
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i85) #6, !srcloc !143
  %conv4.i = zext i8 %171 to i32
  %and.i = and i32 %spec.select.i, %conv4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %spec.select.i)
  %cmp7.not.i = icmp eq i32 %and.i, %spec.select.i
  br i1 %cmp7.not.i, label %do.body.i.sw.epilog_crit_edge, label %do.end.i86

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i86:                                       ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %172 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %172
  %cmp19.i = icmp slt i32 %sub.i, 0
  br i1 %cmp19.i, label %do.end.i86.do.body.i_crit_edge, label %do.end.i86.sw.epilog_crit_edge

do.end.i86.sw.epilog_crit_edge:                   ; preds = %do.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i86.do.body.i_crit_edge:                   ; preds = %do.end.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.bb4:                                           ; preds = %entry
  %173 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %phydev, align 4
  %base.i26 = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 2
  %175 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i26, align 4
  %tobool.not.i27 = icmp eq ptr %176, null
  br i1 %tobool.not.i27, label %sw.bb4.sw.epilog_crit_edge, label %lor.lhs.false.i29

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.i29:                                ; preds = %sw.bb4
  %pipebase.i28 = getelementptr inbounds %struct.miphy28lp_phy, ptr %1, i32 0, i32 3
  %177 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pipebase.i28, align 4
  %tobool1.not.i = icmp eq ptr %178, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i29.sw.epilog_crit_edge, label %do.end.i31

lor.lhs.false.i29.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i31:                                       ; preds = %lor.lhs.false.i29
  %179 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %174, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %180, ptr noundef nonnull @.str.26, ptr noundef nonnull %176) #9
  %call.i = tail call fastcc i32 @miphy28lp_setup(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i30 = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i30, label %if.end9.i, label %do.end.i31.sw.epilog.sink.split_crit_edge

do.end.i31.sw.epilog.sink.split_crit_edge:        ; preds = %do.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end9.i:                                        ; preds = %do.end.i31
  %181 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i26, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %182, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %182, i8 3) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %182, i8 1) #6, !srcloc !142
  %183 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %184)
  %cmp.i.i.i33 = icmp eq i8 %184, 2
  %add.ptr5.i.i.i34 = getelementptr i8, ptr %182, i32 4
  br i1 %cmp.i.i.i33, label %if.then.i.i.i35, label %if.else.i.i.i36

if.then.i.i.i35:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i34, i8 20) #6, !srcloc !142
  br label %miphy28lp_set_reset.exit.i.i56

if.else.i.i.i36:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i34, i8 28) #6, !srcloc !142
  br label %miphy28lp_set_reset.exit.i.i56

miphy28lp_set_reset.exit.i.i56:                   ; preds = %if.else.i.i.i36, %if.then.i.i.i35
  %185 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i26, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %186, i32 235
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i37, i8 29) #6, !srcloc !142
  %add.ptr2.i.i.i39 = getelementptr i8, ptr %186, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i.i39, i8 30) #6, !srcloc !142
  %add.ptr4.i.i.i41 = getelementptr i8, ptr %186, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i.i41, i8 -90) #6, !srcloc !142
  %add.ptr6.i.i.i43 = getelementptr i8, ptr %186, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i.i43, i8 -86) #6, !srcloc !142
  %add.ptr8.i.i.i45 = getelementptr i8, ptr %186, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i.i45, i8 -86) #6, !srcloc !142
  %add.ptr10.i.i.i47 = getelementptr i8, ptr %186, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i.i47, i8 4) #6, !srcloc !142
  %add.ptr12.i.i.i49 = getelementptr i8, ptr %186, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.i.i49, i8 0) #6, !srcloc !142
  %add.ptr13.i.i.i50 = getelementptr i8, ptr %186, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i.i.i50, i8 64) #6, !srcloc !142
  %add.ptr14.i.i.i51 = getelementptr i8, ptr %186, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i.i.i51, i8 -47) #6, !srcloc !142
  %187 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %188)
  %cmp.not.i.i.i52 = icmp eq i8 %188, 1
  %spec.select.i.i.i53 = select i1 %cmp.not.i.i.i52, i8 31, i8 95
  %add.ptr19.i.i.i54 = getelementptr i8, ptr %186, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i.i.i54, i8 %spec.select.i.i.i53) #6, !srcloc !142
  %189 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %190)
  %cmp22.i.i.i55 = icmp eq i8 %190, 4
  br i1 %cmp22.i.i.i55, label %if.then24.i.i.i63, label %miphy28lp_set_reset.exit.i.i56.miphy28lp_configure_usb3.exit.i_crit_edge

miphy28lp_set_reset.exit.i.i56.miphy28lp_configure_usb3.exit.i_crit_edge: ; preds = %miphy28lp_set_reset.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy28lp_configure_usb3.exit.i

if.then24.i.i.i63:                                ; preds = %miphy28lp_set_reset.exit.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr25.i.i.i57 = getelementptr i8, ptr %186, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i.i.i57, i8 0) #6, !srcloc !142
  %add.ptr26.i.i.i58 = getelementptr i8, ptr %186, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i.i.i58, i8 112) #6, !srcloc !142
  %add.ptr27.i.i.i59 = getelementptr i8, ptr %186, i32 201
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27.i.i.i59, i8 2) #6, !srcloc !142
  %add.ptr28.i.i.i60 = getelementptr i8, ptr %186, i32 202
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i.i60, i8 2) #6, !srcloc !142
  %add.ptr29.i.i.i61 = getelementptr i8, ptr %186, i32 203
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29.i.i.i61, i8 2) #6, !srcloc !142
  %add.ptr30.i.i.i62 = getelementptr i8, ptr %186, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i.i.i62, i8 10) #6, !srcloc !142
  br label %miphy28lp_configure_usb3.exit.i

miphy28lp_configure_usb3.exit.i:                  ; preds = %if.then24.i.i.i63, %miphy28lp_set_reset.exit.i.i56.miphy28lp_configure_usb3.exit.i_crit_edge
  %add.ptr.i.i64 = getelementptr i8, ptr %182, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i64, i8 0) #6, !srcloc !142
  %add.ptr2.i.i = getelementptr i8, ptr %182, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i, i8 10) #6, !srcloc !142
  %add.ptr3.i.i = getelementptr i8, ptr %182, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i, i8 28) #6, !srcloc !142
  %add.ptr4.i.i = getelementptr i8, ptr %182, i32 151
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 81) #6, !srcloc !142
  %add.ptr5.i.i = getelementptr i8, ptr %182, i32 152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 112) #6, !srcloc !142
  %add.ptr6.i.i65 = getelementptr i8, ptr %182, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i65, i8 95) #6, !srcloc !142
  %add.ptr7.i.i = getelementptr i8, ptr %182, i32 154
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i, i8 34) #6, !srcloc !142
  %add.ptr8.i.i = getelementptr i8, ptr %182, i32 159
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 14) #6, !srcloc !142
  %add.ptr9.i.i = getelementptr i8, ptr %182, i32 122
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 5) #6, !srcloc !142
  %add.ptr10.i.i66 = getelementptr i8, ptr %182, i32 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i66, i8 120) #6, !srcloc !142
  %add.ptr11.i.i = getelementptr i8, ptr %182, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i, i8 27) #6, !srcloc !142
  %add.ptr12.i.i = getelementptr i8, ptr %182, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i.i, i8 2) #6, !srcloc !142
  %add.ptr13.i.i = getelementptr i8, ptr %182, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i.i, i8 17) #6, !srcloc !142
  %add.ptr14.i.i = getelementptr i8, ptr %182, i32 99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i.i, i8 0) #6, !srcloc !142
  %add.ptr15.i.i = getelementptr i8, ptr %182, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i, i8 -89) #6, !srcloc !142
  %add.ptr16.i.i = getelementptr i8, ptr %182, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i, i8 4) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i64, i8 0) #6, !srcloc !142
  %add.ptr18.i.i = getelementptr i8, ptr %182, i32 229
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i.i, i8 90) #6, !srcloc !142
  %add.ptr19.i.i = getelementptr i8, ptr %182, i32 230
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i.i, i8 -96) #6, !srcloc !142
  %add.ptr20.i.i = getelementptr i8, ptr %182, i32 228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i.i, i8 60) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i.i, i8 -95) #6, !srcloc !142
  %add.ptr22.i.i = getelementptr i8, ptr %182, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22.i.i, i8 2) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22.i.i, i8 0) #6, !srcloc !142
  %add.ptr25.i.i = getelementptr i8, ptr %182, i32 120
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25.i.i, i8 -54) #6, !srcloc !142
  %add.ptr26.i.i = getelementptr i8, ptr %182, i32 205
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i.i, i8 33) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i.i, i8 41) #6, !srcloc !142
  %add.ptr28.i.i = getelementptr i8, ptr %182, i32 206
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i, i8 26) #6, !srcloc !142
  %191 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i26, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %192, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %192, i8 0) #6, !srcloc !142
  %add.ptr3.i.i.i67 = getelementptr i8, ptr %192, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i67, i8 4) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i67, i8 5) #6, !srcloc !142
  %add.ptr5.i65.i.i = getelementptr i8, ptr %192, i32 233
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i65.i.i, i8 0) #6, !srcloc !142
  %add.ptr6.i66.i.i = getelementptr i8, ptr %192, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i66.i.i, i8 30) #6, !srcloc !142
  %add.ptr7.i.i.i68 = getelementptr i8, ptr %192, i32 58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i.i68, i8 64) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i67, i8 1) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i.i.i67, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i65.i.i, i8 64) #6, !srcloc !142
  %add.ptr11.i.i.i69 = getelementptr i8, ptr %192, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i.i69, i8 0) #6, !srcloc !142
  %add.ptr12.i67.i.i = getelementptr i8, ptr %192, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i67.i.i, i8 0) #6, !srcloc !142
  %add.ptr13.i68.i.i = getelementptr i8, ptr %192, i32 98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i68.i.i, i8 0) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i.i69, i8 0) #6, !srcloc !142
  %add.ptr15.i.i.i70 = getelementptr i8, ptr %192, i32 227
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i.i70, i8 2) #6, !srcloc !142
  %add.ptr16.i.i.i71 = getelementptr i8, ptr %192, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i.i.i71, i8 -91) #6, !srcloc !142
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i.i69, i8 0) #6, !srcloc !142
  %193 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr.i72 = getelementptr i8, ptr %194, i32 35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 104) #6, !srcloc !142
  %195 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr12.i = getelementptr i8, ptr %196, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 97) #6, !srcloc !142
  %197 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr14.i = getelementptr i8, ptr %198, i32 38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 104) #6, !srcloc !142
  %199 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr16.i = getelementptr i8, ptr %200, i32 39
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 97) #6, !srcloc !142
  %201 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr18.i = getelementptr i8, ptr %202, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 24) #6, !srcloc !142
  %203 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr20.i = getelementptr i8, ptr %204, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 97) #6, !srcloc !142
  %205 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr22.i = getelementptr i8, ptr %206, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22.i, i8 103) #6, !srcloc !142
  %207 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr24.i = getelementptr i8, ptr %208, i32 105
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 13) #6, !srcloc !142
  %209 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr26.i = getelementptr i8, ptr %210, i32 106
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i, i8 103) #6, !srcloc !142
  %211 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr28.i = getelementptr i8, ptr %212, i32 107
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 13) #6, !srcloc !142
  %213 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr30.i = getelementptr i8, ptr %214, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i, i8 103) #6, !srcloc !142
  %215 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr32.i = getelementptr i8, ptr %216, i32 109
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i, i8 13) #6, !srcloc !142
  %217 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr34.i = getelementptr i8, ptr %218, i32 110
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i, i8 103) #6, !srcloc !142
  %219 = ptrtoint ptr %pipebase.i28 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pipebase.i28, align 4
  %add.ptr36.i = getelementptr i8, ptr %220, i32 111
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.i, i8 13) #6, !srcloc !142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %221 = load volatile i32, ptr @jiffies, align 128
  %222 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %223)
  %cmp.i.i73 = icmp eq i8 %223, 1
  %spec.select.i.i74 = select i1 %cmp.i.i73, i32 7, i32 6
  %add.neg.i.i75 = sub i32 -500, %221
  br label %do.body.i.i79

do.body.i.i79:                                    ; preds = %do.end.i.i82.do.body.i.i79_crit_edge, %miphy28lp_configure_usb3.exit.i
  %224 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base.i26, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %225, i32 2
  %226 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i61.i) #6, !srcloc !143
  %conv4.i.i76 = zext i8 %226 to i32
  %and.i.i77 = and i32 %spec.select.i.i74, %conv4.i.i76
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i77, i32 %spec.select.i.i74)
  %cmp7.not.i.i78 = icmp eq i32 %and.i.i77, %spec.select.i.i74
  br i1 %cmp7.not.i.i78, label %do.body.i.i79.sw.epilog_crit_edge, label %do.end.i.i82

do.body.i.i79.sw.epilog_crit_edge:                ; preds = %do.body.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i82:                                     ; preds = %do.body.i.i79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i80 = add i32 %add.neg.i.i75, %227
  %cmp19.i.i81 = icmp slt i32 %sub.i.i80, 0
  br i1 %cmp19.i.i81, label %do.end.i.i82.do.body.i.i79_crit_edge, label %do.end.i.i82.sw.epilog_crit_edge

do.end.i.i82.sw.epilog_crit_edge:                 ; preds = %do.end.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i82.do.body.i.i79_crit_edge:             ; preds = %do.end.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i79

sw.epilog.sink.split:                             ; preds = %do.end.i31.sw.epilog.sink.split_crit_edge, %do.end.i23.sw.epilog.sink.split_crit_edge, %do.end.i.sw.epilog.sink.split_crit_edge
  %.sink138 = phi ptr [ %8, %do.end.i.sw.epilog.sink.split_crit_edge ], [ %100, %do.end.i23.sw.epilog.sink.split_crit_edge ], [ %174, %do.end.i31.sw.epilog.sink.split_crit_edge ]
  %.str.29.sink = phi ptr [ @.str.15, %do.end.i.sw.epilog.sink.split_crit_edge ], [ @.str.24, %do.end.i23.sw.epilog.sink.split_crit_edge ], [ @.str.29, %do.end.i31.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call13.i, %do.end.i.sw.epilog.sink.split_crit_edge ], [ %call15.i, %do.end.i23.sw.epilog.sink.split_crit_edge ], [ %call.i, %do.end.i31.sw.epilog.sink.split_crit_edge ]
  %228 = ptrtoint ptr %.sink138 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %.sink138, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull %.str.29.sink) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end.i.i82.sw.epilog_crit_edge, %do.body.i.i79.sw.epilog_crit_edge, %lor.lhs.false.i29.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %do.end.i86.sw.epilog_crit_edge, %do.body.i.sw.epilog_crit_edge, %do.body.i.i.i.sw.epilog_crit_edge, %lor.lhs.false6.i.sw.epilog_crit_edge, %lor.lhs.false4.i20.sw.epilog_crit_edge, %lor.lhs.false.i17.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %do.end.i.i.sw.epilog_crit_edge, %do.body.i.i.sw.epilog_crit_edge, %lor.lhs.false4.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ -22, %lor.lhs.false4.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %lor.lhs.false6.i.sw.epilog_crit_edge ], [ -22, %lor.lhs.false4.i20.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i17.sw.epilog_crit_edge ], [ -22, %sw.bb2.sw.epilog_crit_edge ], [ -22, %lor.lhs.false.i29.sw.epilog_crit_edge ], [ -22, %sw.bb4.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ], [ 0, %do.body.i.i.sw.epilog_crit_edge ], [ -16, %do.end.i.i.sw.epilog_crit_edge ], [ -16, %do.end.i86.sw.epilog_crit_edge ], [ 0, %do.body.i.sw.epilog_crit_edge ], [ -16, %do.body.i.i.i.sw.epilog_crit_edge ], [ 0, %do.body.i.i79.sw.epilog_crit_edge ], [ -16, %do.end.i.i82.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %miphy_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @miphy28lp_setup(ptr nocapture noundef readonly %miphy_phy, i32 noundef %miphy_val) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.miphy28lp_phy, ptr %miphy_phy, i32 0, i32 1
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 4
  %syscfg_reg = getelementptr inbounds %struct.miphy28lp_phy, ptr %miphy_phy, i32 0, i32 11
  %2 = ptrtoint ptr %syscfg_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %syscfg_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %miphy_rst = getelementptr inbounds %struct.miphy28lp_phy, ptr %miphy_phy, i32 0, i32 9
  %4 = ptrtoint ptr %miphy_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %miphy_rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %osc_force_ext = getelementptr inbounds %struct.miphy28lp_phy, ptr %miphy_phy, i32 0, i32 4
  %8 = ptrtoint ptr %osc_force_ext to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %osc_force_ext, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %or = or i32 %miphy_val, 8
  %spec.select = select i1 %tobool4.not, i32 %miphy_val, i32 %or
  %regmap = getelementptr inbounds %struct.miphy28lp_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %syscfg_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %syscfg_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef 15, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %miphy_rst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %miphy_rst, align 4
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end3
  %18 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phydev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !141
  %osc_rdy.i = getelementptr inbounds %struct.miphy28lp_phy, ptr %miphy_phy, i32 0, i32 5
  %22 = ptrtoint ptr %osc_rdy.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %osc_rdy.i, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end18.miphy_osc_is_ready.exit_crit_edge, label %if.end.i

if.end18.miphy_osc_is_ready.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy_osc_is_ready.exit

if.end.i:                                         ; preds = %if.end18
  %arrayidx.i = getelementptr %struct.miphy28lp_phy, ptr %miphy_phy, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i, label %if.end.i.miphy_osc_is_ready.exit_crit_edge, label %do.body.preheader.i

if.end.i.miphy_osc_is_ready.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy_osc_is_ready.exit

do.body.preheader.i:                              ; preds = %if.end.i
  %regmap.i = getelementptr inbounds %struct.miphy28lp_dev, ptr %19, i32 0, i32 1
  %add.neg.i = sub i32 -500, %20
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.preheader.i
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %call.i33 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %val.i) #6
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  %and.i = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not.i, label %do.end.i, label %do.body.i.miphy_osc_is_ready.exit_crit_edge

do.body.i.miphy_osc_is_ready.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy_osc_is_ready.exit

do.end.i:                                         ; preds = %do.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !149
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %32
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.miphy_osc_is_ready.exit_crit_edge

do.end.i.miphy_osc_is_ready.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %miphy_osc_is_ready.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

miphy_osc_is_ready.exit:                          ; preds = %do.end.i.miphy_osc_is_ready.exit_crit_edge, %do.body.i.miphy_osc_is_ready.exit_crit_edge, %if.end.i.miphy_osc_is_ready.exit_crit_edge, %if.end18.miphy_osc_is_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end18.miphy_osc_is_ready.exit_crit_edge ], [ -22, %if.end.i.miphy_osc_is_ready.exit_crit_edge ], [ 0, %do.body.i.miphy_osc_is_ready.exit_crit_edge ], [ -16, %do.end.i.miphy_osc_is_ready.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %miphy_osc_is_ready.exit, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end16 ], [ %retval.0.i, %miphy_osc_is_ready.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_phy_miphy28lp__289_1278_miphy28lp_driver_init6, !1, !"__initcall__kmod_phy_miphy28lp__289_1278_miphy28lp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1278, i32 1}
!2 = !{ptr @__exitcall_miphy28lp_driver_exit, !1, !"__exitcall_miphy28lp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1280, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1281, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1282, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1273, i32 11}
!12 = !{ptr @miphy28lp_driver, !13, !"miphy28lp_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1270, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1209, i32 58}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1211, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @miphy28lp_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @miphy28lp_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @miphy28lp_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1219, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1235, i32 4}
!29 = !{ptr @miphy28lp_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @miphy28lp_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @miphy28lp_ops, !32, !"miphy28lp_ops", i1 false, i1 false}
!32 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1131, i32 29}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 928, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @miphy28lp_init_sata._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @miphy28lp_init_sata._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 944, i32 3}
!41 = !{ptr @miphy28lp_init_sata._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @miphy28lp_init_sata._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 898, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @miphy28lp_setup._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @miphy28lp_setup._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @miphy28lp_setup._entry.19, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 911, i32 3}
!50 = !{ptr @miphy28lp_setup._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"sata_pll_ratio", i1 false, i1 false}
!52 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 248, i32 25}
!53 = !{ptr @sata_pll_gen, !54, !"sata_pll_gen", i1 false, i1 false}
!54 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 291, i32 33}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 964, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @miphy28lp_init_pcie._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @miphy28lp_init_pcie._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 978, i32 3}
!62 = !{ptr @miphy28lp_init_pcie._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @miphy28lp_init_pcie._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = distinct !{null, !65, !"pcie_pll_ratio", i1 false, i1 false}
!65 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 257, i32 25}
!66 = distinct !{null, !67, !"pcie_pll_gen", i1 false, i1 false}
!67 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 333, i32 33}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1007, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @miphy28lp_init_usb3._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @miphy28lp_init_usb3._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1012, i32 3}
!75 = !{ptr @miphy28lp_init_usb3._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @miphy28lp_init_usb3._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"usb3_pll_ratio", i1 false, i1 false}
!78 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 266, i32 25}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1167, i32 29}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1169, i32 49}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1172, i32 29}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1174, i32 45}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1177, i32 29}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1179, i32 27}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1143, i32 37}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1146, i32 3}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @miphy28lp_probe_resets._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @miphy28lp_probe_resets._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @miphy28lp_probe_resets._entry.40, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1153, i32 3}
!100 = !{ptr @miphy28lp_probe_resets._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1107, i32 3}
!103 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @miphy28lp_xlate._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @miphy28lp_xlate._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1118, i32 3}
!108 = !{ptr @miphy28lp_xlate._entry.44, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @miphy28lp_xlate._entry_ptr.46, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1089, i32 57}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 878, i32 4}
!114 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @miphy28lp_get_one_addr._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @miphy28lp_get_one_addr._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 860, i32 42}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 237, i32 34}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 237, i32 45}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 237, i32 56}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 237, i32 60}
!127 = !{ptr @PHY_TYPE_name, !128, !"PHY_TYPE_name", i1 false, i1 false}
!128 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 237, i32 14}
!129 = !{ptr @miphy28lp_of_match, !130, !"miphy28lp_of_match", i1 false, i1 false}
!130 = !{!"../drivers/phy/st/phy-miphy28lp.c", i32 1263, i32 34}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{!"auto-init"}
!142 = !{i64 4816212}
!143 = !{i64 4816607}
!144 = !{i64 2155254805}
!145 = !{i64 2155254647}
!146 = !{i8 0, i8 2}
!147 = !{i64 2155263927}
!148 = !{i64 2155263769}
!149 = !{i64 2155264730}
!150 = !{i64 2155264572}
