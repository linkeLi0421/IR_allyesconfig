; ModuleID = '/llk/IR_all_yes/drivers/media/cec/platform/meson/ao-cec-g12a.c_pt.bc'
source_filename = "../drivers/media/cec/platform/meson/ao-cec-g12a.c"
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
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_ao_cec_g12a_data = type { i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.meson_ao_cec_g12a_device = type { ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.cec_msg, ptr, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.meson_ao_cec_g12a_dualdiv_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__initcall__kmod_ao_cec_g12a__322_790_meson_ao_cec_g12a_driver_init6 = internal global ptr @meson_ao_cec_g12a_driver_init, section ".initcall6.init", align 4
@meson_ao_cec_g12a_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_ao_cec_g12a_probe, ptr @meson_ao_cec_g12a_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_ao_cec_g12a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_ao_cec_g12a_driver_exit = internal global ptr @meson_ao_cec_g12a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [60 x i8] c"ao_cec_g12a.description=Meson AO CEC G12A Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [60 x i8] c"ao_cec_g12a.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [62 x i8] c"ao_cec_g12a.file=drivers/media/cec/platform/meson/ao-cec-g12a\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [24 x i8] c"ao_cec_g12a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson-ao-cec-g12a\00", [46 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ao-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ao_cec_g12a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-sm1-ao-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ao_cec_sm1_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_ao_cec_g12a_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/cec/platform/meson/ao-cec-g12a.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry_ptr = internal global ptr @meson_ao_cec_g12a_probe._entry, section ".printk_index", align 4
@meson_ao_cec_g12a_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ao_cec->cec_reg_lock\00", [42 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @meson_ao_cec_g12a_adap_enable, ptr null, ptr null, ptr @meson_ao_cec_g12a_set_log_addr, ptr @meson_ao_cec_g12a_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_g12a_ao_cec\00", [46 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_ao_cec_g12a_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ao_cec_g12a:673:(&meson_ao_cec_g12a_regmap_conf)->lock\00", [41 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_ao_cec_g12a_cec_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @meson_ao_cec_g12a_read, ptr @meson_ao_cec_g12a_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ao_cec_g12a:680:(&meson_ao_cec_g12a_cec_regmap_conf)->lock\00", [37 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry_ptr.13 = internal global ptr @meson_ao_cec_g12a_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oscin\00", [26 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"oscin clock request failed\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry_ptr.17 = internal global ptr @meson_ao_cec_g12a_probe._entry.15, section ".printk_index", align 4
@meson_ao_cec_g12a_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core clock enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry_ptr.20 = internal global ptr @meson_ao_cec_g12a_probe._entry.18, section ".printk_index", align 4
@meson_ao_cec_g12a_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CEC controller registration failed\0A\00", [60 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_probe._entry_ptr.23 = internal global ptr @meson_ao_cec_g12a_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s#dualdiv_clk\00", [17 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_dualdiv_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_ao_cec_g12a_dualdiv_clk_enable, ptr @meson_ao_cec_g12a_dualdiv_clk_disable, ptr @meson_ao_cec_g12a_dualdiv_clk_is_enabled, ptr null, ptr null, ptr null, ptr @meson_ao_cec_g12a_dualdiv_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_setup_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_ao_cec_g12a_setup_clk\00", [36 x i8] zeroinitializer }, align 32
@meson_ao_cec_g12a_setup_clk._entry_ptr = internal global ptr @meson_ao_cec_g12a_setup_clk._entry, section ".printk_index", align 4
@ao_cec_g12a_data = internal constant { %struct.meson_ao_cec_g12a_data, [31 x i8] } zeroinitializer, align 32
@ao_cec_sm1_data = internal constant { %struct.meson_ao_cec_g12a_data, [31 x i8] } { %struct.meson_ao_cec_g12a_data { i8 1 }, [31 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"meson_ao_cec_g12a_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 781, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 785, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"meson_ao_cec_g12a_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 768, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 649, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 653, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"meson_ao_cec_g12a_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 626, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 657, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"meson_ao_cec_g12a_regmap_conf\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 189, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 672, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [34 x i8] c"meson_ao_cec_g12a_cec_regmap_conf\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 407, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 679, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 692, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 696, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 698, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 709, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 742, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 346, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [34 x i8] c"meson_ao_cec_g12a_dualdiv_clk_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 326, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 363, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"ao_cec_g12a_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 760, i32 44 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"ao_cec_sm1_data\00", align 1
@___asan_gen_.130 = private constant [50 x i8] c"../drivers/media/cec/platform/meson/ao-cec-g12a.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 764, i32 44 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_meson_ao_cec_g12a_driver_exit, ptr @__initcall__kmod_ao_cec_g12a__322_790_meson_ao_cec_g12a_driver_init6, ptr @meson_ao_cec_g12a_driver_exit, ptr @meson_ao_cec_g12a_probe._entry, ptr @meson_ao_cec_g12a_probe._entry.11, ptr @meson_ao_cec_g12a_probe._entry.15, ptr @meson_ao_cec_g12a_probe._entry.18, ptr @meson_ao_cec_g12a_probe._entry.21, ptr @meson_ao_cec_g12a_probe._entry_ptr, ptr @meson_ao_cec_g12a_probe._entry_ptr.13, ptr @meson_ao_cec_g12a_probe._entry_ptr.17, ptr @meson_ao_cec_g12a_probe._entry_ptr.20, ptr @meson_ao_cec_g12a_probe._entry_ptr.23, ptr @meson_ao_cec_g12a_setup_clk._entry, ptr @meson_ao_cec_g12a_setup_clk._entry_ptr, ptr @meson_ao_cec_g12a_driver, ptr @.str, ptr @meson_ao_cec_g12a_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @meson_ao_cec_g12a_probe.__key, ptr @.str.6, ptr @meson_ao_cec_g12a_ops, ptr @.str.7, ptr @meson_ao_cec_g12a_probe._key, ptr @meson_ao_cec_g12a_regmap_conf, ptr @.str.8, ptr @meson_ao_cec_g12a_probe._key.9, ptr @meson_ao_cec_g12a_cec_regmap_conf, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @meson_ao_cec_g12a_dualdiv_clk_ops, ptr @.str.25, ptr @.str.26, ptr @ao_cec_g12a_data, ptr @ao_cec_sm1_data], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_cec_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_dualdiv_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_g12a_setup_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_cec_g12a_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ao_cec_sm1_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_ao_cec_g12a_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_ao_cec_g12a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_ao_cec_g12a_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %parent_name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %data, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end, label %do.body14

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.body14:                                        ; preds = %if.end6
  %cec_reg_lock = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %cec_reg_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @meson_ao_cec_g12a_probe.__key, i16 noundef signext 3) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 8
  %call19 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @meson_ao_cec_g12a_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.7, i32 noundef 286, i8 noundef zeroext 4) #6
  %adap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %adap, align 4
  %cmp.i167 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then22, label %if.end25

if.then22:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %do.body14
  %5 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call19, align 8
  %call27 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i168 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call27 to i32
  br label %out_probe_adapter

if.end31:                                         ; preds = %if.end25
  %call33 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call27, ptr noundef nonnull @meson_ao_cec_g12a_regmap_conf, ptr noundef nonnull @meson_ao_cec_g12a_probe._key, ptr noundef nonnull @.str.8) #6
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call33, ptr %regmap, align 4
  %cmp.i169 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call33 to i32
  br label %out_probe_adapter

if.end39:                                         ; preds = %if.end31
  %call42 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @meson_ao_cec_g12a_cec_regmap_conf, ptr noundef nonnull @meson_ao_cec_g12a_probe._key.9, ptr noundef nonnull @.str.10) #6
  %regmap_cec = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call42, ptr %regmap_cec, align 8
  %cmp.i170 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call42 to i32
  br label %out_probe_adapter

if.end48:                                         ; preds = %if.end39
  %call49 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %call51 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call49, ptr noundef nonnull @meson_ao_cec_g12a_irq, ptr noundef nonnull @meson_ao_cec_g12a_irq_thread, i32 noundef 0, ptr noundef null, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %out_probe_adapter

if.end58:                                         ; preds = %if.end48
  %call60 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %oscin = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %oscin to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call60, ptr %oscin, align 8
  %cmp.i171 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end66, label %if.end70

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  %12 = ptrtoint ptr %oscin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oscin, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %out_probe_adapter

if.end70:                                         ; preds = %if.end58
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %17 = getelementptr inbounds i8, ptr %init.i, i32 12
  %18 = call ptr @memset(ptr %17, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i) #6
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end70.meson_ao_cec_g12a_setup_clk.exit.thread_crit_edge, label %if.end.i

if.end70.meson_ao_cec_g12a_setup_clk.exit.thread_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_ao_cec_g12a_setup_clk.exit.thread

if.end.i:                                         ; preds = %if.end70
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.end.i.dev_name.exit.i_crit_edge ]
  %call3.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i.i) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %dev_name.exit.i.meson_ao_cec_g12a_setup_clk.exit.thread_crit_edge, label %if.end6.i

dev_name.exit.i.meson_ao_cec_g12a_setup_clk.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_ao_cec_g12a_setup_clk.exit.thread

if.end6.i:                                        ; preds = %dev_name.exit.i
  %23 = ptrtoint ptr %oscin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oscin, align 8
  %call7.i = tail call ptr @__clk_get_name(ptr noundef %24) #6
  %25 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %parent_name.i, align 4
  %26 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call3.i, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @meson_ao_cec_g12a_dualdiv_clk_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %29 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %parent_name.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %30 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %num_parents.i, align 4
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %regmap9.i = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %regmap9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %regmap9.i, align 4
  %init10.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %init10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i, ptr %init10.i, align 4
  %call12.i = call ptr @devm_clk_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i) #6
  call void @kfree(ptr noundef nonnull %call3.i) #6
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %meson_ao_cec_g12a_setup_clk.exit, label %meson_ao_cec_g12a_setup_clk.exit.thread179

meson_ao_cec_g12a_setup_clk.exit.thread179:       ; preds = %if.end6.i
  %core.i = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %core.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call12.i, ptr %core.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %call.i172 = call i32 @clk_prepare(ptr noundef %call12.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool.not.i173 = icmp eq i32 %call.i172, 0
  br i1 %tobool.not.i173, label %if.end.i174, label %meson_ao_cec_g12a_setup_clk.exit.thread179.do.end80_crit_edge

meson_ao_cec_g12a_setup_clk.exit.thread179.do.end80_crit_edge: ; preds = %meson_ao_cec_g12a_setup_clk.exit.thread179
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end80

meson_ao_cec_g12a_setup_clk.exit.thread:          ; preds = %dev_name.exit.i.meson_ao_cec_g12a_setup_clk.exit.thread_crit_edge, %if.end70.meson_ao_cec_g12a_setup_clk.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %out_probe_adapter

meson_ao_cec_g12a_setup_clk.exit:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.25) #9
  %36 = ptrtoint ptr %call12.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %out_probe_adapter

if.end.i174:                                      ; preds = %meson_ao_cec_g12a_setup_clk.exit.thread179
  %call1.i = call i32 @clk_enable(ptr noundef %call12.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end82, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call12.i) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then3.i, %meson_ao_cec_g12a_setup_clk.exit.thread179.do.end80_crit_edge
  %retval.0.i175.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i172, %meson_ao_cec_g12a_setup_clk.exit.thread179.do.end80_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %out_probe_adapter

if.end82:                                         ; preds = %if.end.i174
  %call.i176 = call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %38 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adap, align 4
  %call86 = call ptr @cec_notifier_cec_adap_register(ptr noundef %call, ptr noundef null, ptr noundef %39) #6
  %notify = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call86, ptr %notify, align 8
  %tobool88.not = icmp eq ptr %call86, null
  br i1 %tobool88.not, label %if.end82.out_probe_core_clk_crit_edge, label %if.end90

if.end82.out_probe_core_clk_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_probe_core_clk

if.end90:                                         ; preds = %if.end82
  %41 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adap, align 4
  %call93 = call i32 @cec_register_adapter(ptr noundef %42, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp = icmp slt i32 %call93, 0
  br i1 %cmp, label %out_probe_notify, label %if.end95

if.end95:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regmap_write(ptr noundef %44, i32 noundef 8, i32 noundef 1) #6
  br label %cleanup

out_probe_notify:                                 ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %notify, align 8
  %47 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adap, align 4
  call void @cec_notifier_cec_adap_unregister(ptr noundef %46, ptr noundef %48) #6
  br label %out_probe_core_clk

out_probe_core_clk:                               ; preds = %out_probe_notify, %if.end82.out_probe_core_clk_crit_edge
  %ret.0 = phi i32 [ %call93, %out_probe_notify ], [ -12, %if.end82.out_probe_core_clk_crit_edge ]
  %49 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core.i, align 4
  call void @clk_disable(ptr noundef %50) #6
  call void @clk_unprepare(ptr noundef %50) #6
  br label %out_probe_adapter

out_probe_adapter:                                ; preds = %out_probe_core_clk, %do.end80, %meson_ao_cec_g12a_setup_clk.exit, %meson_ao_cec_g12a_setup_clk.exit.thread, %do.end66, %do.end56, %if.then45, %if.then36, %if.then29
  %ret.1 = phi i32 [ %6, %if.then29 ], [ %8, %if.then36 ], [ %10, %if.then45 ], [ %call51, %do.end56 ], [ %14, %do.end66 ], [ %36, %meson_ao_cec_g12a_setup_clk.exit ], [ %retval.0.i175.ph, %do.end80 ], [ %ret.0, %out_probe_core_clk ], [ -12, %meson_ao_cec_g12a_setup_clk.exit.thread ]
  %51 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adap, align 4
  call void @cec_delete_adapter(ptr noundef %52) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %out_probe_adapter, %if.end95, %if.then22, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %4, %if.then22 ], [ %ret.1, %out_probe_adapter ], [ 0, %if.end95 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %notify = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify, align 8
  %adap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %5, ptr noundef %7) #6
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #6
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !81
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 24, ptr noundef nonnull %stat) #6
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #6
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !81
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 24, ptr noundef nonnull %stat) #6
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 20, i32 noundef %6) #6
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %adap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 4
  %call.i = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %10, i8 noundef zeroext 1, i64 noundef %call.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat, align 4
  %and3 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %regmap_cec.i = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_cec.i, align 8
  %call.i40 = call i32 @regmap_read(ptr noundef %15, i32 noundef 8, ptr noundef nonnull %val.i) #6
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %rx_msg.i = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 6, i32 2
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 16) #6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp733.not.i = icmp eq i32 %18, 0
  br i1 %cmp733.not.i, label %if.then5.for.end.i_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.for.end.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %ret.035.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %call.i40, %if.then5.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then5.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_cec.i, align 8
  %add.i = add i32 %i.034.i, 32
  %call9.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %add.i, ptr noundef nonnull %val.i) #6
  %or.i = or i32 %call9.i, %ret.035.i
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %23 to i8
  %arrayidx.i = getelementptr %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 6, i32 6, i32 %i.034.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.034.i, 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 8
  %cmp7.i = icmp ult i32 %inc.i, %26
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then5.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i40, %if.then5.for.end.i_crit_edge ], [ %or.i, %for.body.i.for.end.i_crit_edge ]
  %27 = ptrtoint ptr %regmap_cec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_cec.i, align 8
  %call12.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 48, i32 noundef 0) #6
  %or13.i = or i32 %call12.i, %ret.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or13.i)
  %tobool.not.i = icmp eq i32 %or13.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %for.end.i.meson_ao_cec_g12a_irq_rx.exit_crit_edge

for.end.i.meson_ao_cec_g12a_irq_rx.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_ao_cec_g12a_irq_rx.exit

if.end15.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %adap.i = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 5
  %29 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap.i, align 4
  %call.i.i = call i64 @ktime_get() #6
  call void @cec_received_msg_ts(ptr noundef %30, ptr noundef %rx_msg.i, i64 noundef %call.i.i) #6
  br label %meson_ao_cec_g12a_irq_rx.exit

meson_ao_cec_g12a_irq_rx.exit:                    ; preds = %if.end15.i, %for.end.i.meson_ao_cec_g12a_irq_rx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end6

if.end6:                                          ; preds = %meson_ao_cec_g12a_irq_rx.exit, %if.end.if.end6_crit_edge
  %31 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stat, align 4
  %and7 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %adap10 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 5
  %33 = ptrtoint ptr %adap10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap10, align 4
  %call.i41 = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %34, i8 noundef zeroext 4, i64 noundef %call.i41) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stat, align 4
  %and12 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %regmap_cec = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap_cec, align 8
  %call15 = call i32 @regmap_write(ptr noundef %38, i32 noundef 7, i32 noundef 0) #6
  %39 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap_cec, align 8
  %call.i42 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %adap18 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 5
  %41 = ptrtoint ptr %adap18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adap18, align 4
  %call.i43 = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %42, i8 noundef zeroext 2, i64 noundef %call.i43) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end11.if.end19_crit_edge
  %43 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stat, align 4
  %and20 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %adap23 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 5
  %45 = ptrtoint ptr %adap23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap23, align 4
  %call.i44 = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %46, i8 noundef zeroext 16, i64 noundef %call.i44) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %47 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stat, align 4
  %and25 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %regmap_cec28 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %data, i32 0, i32 2
  %49 = ptrtoint ptr %regmap_cec28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap_cec28, align 8
  %call29 = call i32 @regmap_write(ptr noundef %50, i32 noundef 48, i32 noundef 0) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap.i = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #6
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %enable, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 29440, i32 noundef 28928, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8, i32 noundef 6, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %data = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool53.not = icmp eq i8 %17, 0
  br i1 %tobool53.not, label %if.end.if.end72_crit_edge, label %if.then54

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap_cec = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_cec, align 8
  %call71 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1, i32 noundef 2) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then54, %if.end.if.end72_crit_edge
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i87 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 16, i32 noundef 63) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_set_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %logical_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = zext i8 %logical_addr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %logical_addr)
  %cmp = icmp eq i8 %logical_addr, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap_cec = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_cec, align 8
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 5, i32 noundef 0) #6
  %4 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_cec, align 8
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 6, i32 noundef 0) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %logical_addr)
  %cmp5 = icmp ult i8 %logical_addr, 8
  %regmap_cec8 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_cec8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_cec8, align 8
  br i1 %cmp5, label %if.then7, label %if.else13

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %conv
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 5, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end21

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %conv, -8
  %shl16 = shl nuw i32 1, %sub
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef %shl16, i32 noundef %shl16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then7
  %ret.0 = phi i32 [ %call.i, %if.then7 ], [ %call.i35, %if.else13 ]
  %regmap_cec22 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_cec22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_cec22, align 8
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %or = or i32 %call.i36, %ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  %cond = select i1 %tobool.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !81
  %regmap_cec = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_cec, align 8
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 48, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_cec, align 8
  %call5 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %signal_free_time)
  %switch.selectcmp = icmp eq i32 %signal_free_time, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %signal_free_time)
  %switch.selectcmp67 = icmp eq i32 %signal_free_time, 3
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp69.not = icmp eq i32 %12, 0
  br i1 %cmp69.not, label %if.end12.for.end_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %ret.070 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %13 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_cec, align 8
  %add = add i32 %i.071, 16
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.071
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %call17 = call i32 @regmap_write(ptr noundef %14, i32 noundef %add, i32 noundef %conv) #6
  %or = or i32 %call17, %ret.070
  %inc = add nuw i32 %i.071, 1
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end12.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap_cec, align 8
  %call20 = call i32 @regmap_write(ptr noundef %20, i32 noundef 7, i32 noundef %.lcssa) #6
  %or21 = or i32 %call20, %ret.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or21)
  %tobool22.not = icmp eq i32 %or21, 0
  br i1 %tobool22.not, label %if.end24, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %regmap_cec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_cec, align 8
  %switch.select.op = select i1 %switch.selectcmp, i32 5, i32 3
  %or43 = select i1 %switch.selectcmp67, i32 1, i32 %switch.select.op
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 7, i32 noundef %or43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %for.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ -16, %if.end8.cleanup_crit_edge ], [ -5, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_read(ptr nocapture noundef readonly %context, i32 noundef %addr, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %and13 = and i32 %addr, 255
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and13, ptr %reg, align 4
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 12, i32 noundef %and13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %entry
  %call17 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call17, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 385) #6
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call31108 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31108)
  %tobool32.not109 = icmp eq i32 %call31108, 0
  br i1 %tobool32.not109, label %if.end16.lor.lhs.false_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.lor.lhs.false_crit_edge:                 ; preds = %if.end16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46.lor.lhs.false_crit_edge, %if.end16.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and33 = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call38 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #6
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_read(ptr noundef %8, i32 noundef 12, ptr noundef nonnull %reg) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then46.lor.lhs.false_crit_edge, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46.lor.lhs.false_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_read(ptr noundef %10, i32 noundef 12, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool49.not = icmp eq i32 %call43, 0
  br i1 %tobool49.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %and50 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end59, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call61 = call i32 @regmap_read(ptr noundef %14, i32 noundef 12, ptr noundef nonnull %reg) #6
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %shr79 = lshr i32 %16, 24
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr79, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.end59 ], [ %call, %entry.cleanup_crit_edge ], [ %call31108, %if.end16.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call43, %for.end.cleanup_crit_edge ], [ %call31, %if.then46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_write(ptr nocapture noundef readonly %context, i32 noundef %addr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and13 = and i32 %addr, 255
  %shl36 = shl i32 %data, 8
  %and37 = and i32 %shl36, 65280
  %or = or i32 %and13, %and37
  %or38 = or i32 %or, 65536
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_device, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef %or38) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_dualdiv_clk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef -1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 4095, i32 noundef 732, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16773120, i32 noundef 2994176, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i85 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4, i32 noundef 4095, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4, i32 noundef 16773120, i32 noundef 40960, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 4, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef -1073741824, i32 noundef -1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_ao_cec_g12a_dualdiv_clk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef -1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_dualdiv_clk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %4)
  %tobool = icmp ugt i32 %4, 1073741823
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_g12a_dualdiv_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg0 = alloca i32, align 4
  %reg1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg0) #6
  %0 = ptrtoint ptr %reg0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg0, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg1) #6
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg1, align 4, !annotation !81
  %regmap = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %reg0) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %reg1) #6
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg1, align 4
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg0, align 4
  %and3 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and124 = and i32 %9, 4095
  %add126 = add nuw nsw i32 %and124, 1
  br i1 %tobool4.not, label %do.end122, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and36 = lshr i32 %9, 12
  %shr37 = and i32 %and36, 4095
  %add38 = add nuw nsw i32 %shr37, 1
  %and55 = and i32 %7, 4095
  %add57 = add nuw nsw i32 %and55, 1
  %div153 = lshr i32 %add126, 1
  %add78 = add i32 %div153, %parent_rate
  %div79 = udiv i32 %add78, %add126
  %div83154 = lshr i32 %add38, 1
  %add84 = add i32 %div83154, %parent_rate
  %div85 = udiv i32 %add84, %add38
  %mul = mul i32 %add57, 100000000
  %add88 = shl nuw nsw i32 %add57, 1
  %mul89 = mul i32 %div79, %add88
  %div91155 = lshr exact i32 %mul89, 1
  %add92 = add i32 %div91155, %mul
  %div93 = udiv i32 %add92, %mul89
  %mul98 = mul i32 %div85, %add88
  %div100156 = lshr exact i32 %mul98, 1
  %add101 = add i32 %div100156, %mul
  %div102 = udiv i32 %add101, %mul98
  %add103 = add i32 %div102, %div93
  %sub = add i32 %add103, 99999999
  %div106 = udiv i32 %sub, %add103
  br label %cleanup

do.end122:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div130152 = lshr i32 %add126, 1
  %add131 = add i32 %div130152, %parent_rate
  %div132 = udiv i32 %add131, %add126
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div106, %if.then5 ], [ %div132, %do.end122 ], [ %parent_rate, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg0) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_ao_cec_g12a__322_790_meson_ao_cec_g12a_driver_init6, !1, !"__initcall__kmod_ao_cec_g12a__322_790_meson_ao_cec_g12a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 790, i32 1}
!2 = !{ptr @__exitcall_meson_ao_cec_g12a_driver_exit, !1, !"__exitcall_meson_ao_cec_g12a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description323, !4, !"__UNIQUE_ID_description323", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 792, i32 1}
!5 = !{ptr @__UNIQUE_ID_author324, !6, !"__UNIQUE_ID_author324", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 793, i32 1}
!7 = !{ptr @__UNIQUE_ID_file325, !8, !"__UNIQUE_ID_file325", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 794, i32 1}
!9 = !{ptr @__UNIQUE_ID_license326, !8, !"__UNIQUE_ID_license326", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 785, i32 11}
!12 = !{ptr @meson_ao_cec_g12a_driver, !13, !"meson_ao_cec_g12a_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 781, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 649, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson_ao_cec_g12a_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_ao_cec_g12a_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @meson_ao_cec_g12a_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 653, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 657, i32 10}
!27 = !{ptr @meson_ao_cec_g12a_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 672, i32 19}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @meson_ao_cec_g12a_probe._key.9, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 679, i32 23}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 692, i32 3}
!35 = !{ptr @meson_ao_cec_g12a_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @meson_ao_cec_g12a_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 696, i32 43}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 698, i32 3}
!41 = !{ptr @meson_ao_cec_g12a_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @meson_ao_cec_g12a_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 709, i32 3}
!45 = !{ptr @meson_ao_cec_g12a_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @meson_ao_cec_g12a_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 742, i32 2}
!49 = !{ptr @meson_ao_cec_g12a_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @meson_ao_cec_g12a_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @meson_ao_cec_g12a_ops, !52, !"meson_ao_cec_g12a_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 626, i32 34}
!53 = !{ptr @meson_ao_cec_g12a_regmap_conf, !54, !"meson_ao_cec_g12a_regmap_conf", i1 false, i1 false}
!54 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 189, i32 35}
!55 = !{ptr @meson_ao_cec_g12a_cec_regmap_conf, !56, !"meson_ao_cec_g12a_cec_regmap_conf", i1 false, i1 false}
!56 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 407, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 346, i32 31}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 363, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @meson_ao_cec_g12a_setup_clk._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @meson_ao_cec_g12a_setup_clk._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @meson_ao_cec_g12a_dualdiv_clk_ops, !65, !"meson_ao_cec_g12a_dualdiv_clk_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 326, i32 29}
!66 = !{ptr @meson_ao_cec_g12a_of_match, !67, !"meson_ao_cec_g12a_of_match", i1 false, i1 false}
!67 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 768, i32 34}
!68 = !{ptr @ao_cec_g12a_data, !69, !"ao_cec_g12a_data", i1 false, i1 false}
!69 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 760, i32 44}
!70 = !{ptr @ao_cec_sm1_data, !71, !"ao_cec_sm1_data", i1 false, i1 false}
!71 = !{!"../drivers/media/cec/platform/meson/ao-cec-g12a.c", i32 764, i32 44}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i8 0, i8 2}
