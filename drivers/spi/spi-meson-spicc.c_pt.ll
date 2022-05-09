; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-meson-spicc.c_pt.bc'
source_filename = "../drivers/spi/spi-meson-spicc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_spicc_data = type { i32, i32, i32, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.meson_spicc_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_meson_spicc__296_847_meson_spicc_driver_init6 = internal global ptr @meson_spicc_driver_init, section ".initcall6.init", align 4
@meson_spicc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_spicc_probe, ptr @meson_spicc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_spicc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_spicc_driver_exit = internal global ptr @meson_spicc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [70 x i8] c"spi_meson_spicc.description=Meson SPI Communication Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [64 x i8] c"spi_meson_spicc.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [49 x i8] c"spi_meson_spicc.file=drivers/spi/spi-meson-spicc\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [28 x i8] c"spi_meson_spicc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"meson-spicc\00", [20 x i8] zeroinitializer }, align 32
@meson_spicc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-spicc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_spicc_gx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-spicc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_spicc_axg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-spicc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_spicc_g12a_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_spicc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/spi/spi-meson-spicc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr = internal global ptr @meson_spicc_probe._entry, section ".printk_index", align 4
@meson_spicc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.8 = internal global ptr @meson_spicc_probe._entry.6, section ".printk_index", align 4
@meson_spicc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"io resource mapping failed\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.11 = internal global ptr @meson_spicc_probe._entry.9, section ".printk_index", align 4
@meson_spicc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 704, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.14 = internal global ptr @meson_spicc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"core clock request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.18 = internal global ptr @meson_spicc_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pclk clock request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.22 = internal global ptr @meson_spicc_probe._entry.20, section ".printk_index", align 4
@meson_spicc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core clock enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.25 = internal global ptr @meson_spicc_probe._entry.23, section ".printk_index", align 4
@meson_spicc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pclk clock enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.28 = internal global ptr @meson_spicc_probe._entry.26, section ".printk_index", align 4
@meson_spicc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 759, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.31 = internal global ptr @meson_spicc_probe._entry.29, section ".printk_index", align 4
@meson_spicc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"spi master registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_spicc_probe._entry_ptr.34 = internal global ptr @meson_spicc_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s#pow2_fixed_div\00", [46 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s#pow2_div\00", [20 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s#enh_fixed_div\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s#enh_div\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s#sel\00", [25 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@meson_spicc_gx_data = internal constant { %struct.meson_spicc_data, [16 x i8] } { %struct.meson_spicc_data { i32 30000000, i32 325000, i32 16, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@meson_spicc_axg_data = internal constant { %struct.meson_spicc_data, [16 x i8] } { %struct.meson_spicc_data { i32 80000000, i32 325000, i32 16, i8 1, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@meson_spicc_g12a_data = internal constant { %struct.meson_spicc_data, [16 x i8] } { %struct.meson_spicc_data { i32 166666666, i32 50000, i32 15, i8 1, i8 1, i8 1 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"meson_spicc_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 838, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 842, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"meson_spicc_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 821, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 665, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 673, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 683, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 704, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 708, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 710, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 716, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 718, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 726, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 732, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 759, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 765, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 545, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 567, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 595, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 617, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 637, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"meson_spicc_gx_data\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 798, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"meson_spicc_axg_data\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 804, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"meson_spicc_g12a_data\00", align 1
@___asan_gen_.149 = private constant [33 x i8] c"../drivers/spi/spi-meson-spicc.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 812, i32 38 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_meson_spicc_driver_exit, ptr @__initcall__kmod_spi_meson_spicc__296_847_meson_spicc_driver_init6, ptr @meson_spicc_driver_exit, ptr @meson_spicc_probe._entry, ptr @meson_spicc_probe._entry.12, ptr @meson_spicc_probe._entry.16, ptr @meson_spicc_probe._entry.20, ptr @meson_spicc_probe._entry.23, ptr @meson_spicc_probe._entry.26, ptr @meson_spicc_probe._entry.29, ptr @meson_spicc_probe._entry.32, ptr @meson_spicc_probe._entry.6, ptr @meson_spicc_probe._entry.9, ptr @meson_spicc_probe._entry_ptr, ptr @meson_spicc_probe._entry_ptr.11, ptr @meson_spicc_probe._entry_ptr.14, ptr @meson_spicc_probe._entry_ptr.18, ptr @meson_spicc_probe._entry_ptr.22, ptr @meson_spicc_probe._entry_ptr.25, ptr @meson_spicc_probe._entry_ptr.28, ptr @meson_spicc_probe._entry_ptr.31, ptr @meson_spicc_probe._entry_ptr.34, ptr @meson_spicc_probe._entry_ptr.8, ptr @meson_spicc_driver, ptr @.str, ptr @meson_spicc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @meson_spicc_gx_data, ptr @meson_spicc_axg_data, ptr @meson_spicc_g12a_data], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_gx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_axg_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_spicc_g12a_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_spicc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_spicc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_spicc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %parent_data.i = alloca [2 x %struct.clk_parent_data], align 4
  %name.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 60, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup115

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %1, align 4
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %data = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %data, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %spi_controller_put.exit

if.end13:                                         ; preds = %if.end
  %pdev14 = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev14, align 4
  %driver_data.i.i189 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i189 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %driver_data.i.i189, align 4
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %spi_controller_put.exit

if.end25:                                         ; preds = %if.end13
  %add.ptr = getelementptr i8, ptr %call15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #9, !srcloc !89
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #9, !srcloc !89
  %call29 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end25.spi_controller_put.exit_crit_edge, label %if.end31

if.end25.spi_controller_put.exit_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.end31:                                         ; preds = %if.end25
  %call.i190 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call29, ptr noundef nonnull @meson_spicc_irq, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool34.not = icmp eq i32 %call.i190, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %spi_controller_put.exit

if.end40:                                         ; preds = %if.end31
  %call42 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %core = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call42, ptr %core, align 4
  %cmp.i191 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %do.end48, label %if.end52

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %spi_controller_put.exit

if.end52:                                         ; preds = %if.end40
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %has_pclk = getelementptr inbounds %struct.meson_spicc_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %has_pclk to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_pclk, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool54.not = icmp eq i8 %19, 0
  br i1 %tobool54.not, label %if.end52.if.end68_crit_edge, label %if.then55

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then55:                                        ; preds = %if.end52
  %call57 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  %pclk = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call57, ptr %pclk, align 4
  %cmp.i192 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end63, label %if.then55.if.end68_crit_edge

if.then55.if.end68_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.end63:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  %21 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pclk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %spi_controller_put.exit

if.end68:                                         ; preds = %if.then55.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 4
  %call.i193 = tail call i32 @clk_prepare(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool.not.i = icmp eq i32 %call.i193, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end68.do.end75_crit_edge

if.end68.do.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.end.i:                                         ; preds = %if.end68
  %call1.i = tail call i32 @clk_enable(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end77, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %do.end75

do.end75:                                         ; preds = %if.then3.i, %if.end68.do.end75_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i193, %if.end68.do.end75_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %spi_controller_put.exit

if.end77:                                         ; preds = %if.end.i
  %pclk78 = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %pclk78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pclk78, align 4
  %call.i194 = tail call i32 @clk_prepare(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %if.end.i198, label %if.end77.do.end84_crit_edge

if.end77.do.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

if.end.i198:                                      ; preds = %if.end77
  %call1.i196 = tail call i32 @clk_enable(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i196)
  %tobool2.not.i197 = icmp eq i32 %call1.i196, 0
  br i1 %tobool2.not.i197, label %if.end86, label %if.then3.i199

if.then3.i199:                                    ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %do.end84

do.end84:                                         ; preds = %if.then3.i199, %if.end77.do.end84_crit_edge
  %retval.0.i200.ph = phi i32 [ %call1.i196, %if.then3.i199 ], [ %call.i194, %if.end77.do.end84_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %out_core_clk

if.end86:                                         ; preds = %if.end.i198
  %call.i202 = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #9
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 4, ptr %num_chipselect, align 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %of_node91 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %31 = ptrtoint ptr %of_node91 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %of_node91, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2139062144, ptr %bits_per_word_mask, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 24, ptr %flags, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %min_speed_hz = getelementptr inbounds %struct.meson_spicc_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_speed_hz, align 4
  %min_speed_hz93 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %39 = ptrtoint ptr %min_speed_hz93 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %min_speed_hz93, align 4
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %max_speed_hz95 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %max_speed_hz95 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_speed_hz95, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %44 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @meson_spicc_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %45 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @meson_spicc_cleanup, ptr %cleanup, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %46 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @meson_spicc_prepare_message, ptr %prepare_message, align 4
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %47 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @meson_spicc_unprepare_transfer, ptr %unprepare_transfer_hardware, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %48 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @meson_spicc_transfer_one, ptr %transfer_one, align 4
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %49 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %50 = load ptr, ptr %data, align 4
  %has_oen.i = getelementptr inbounds %struct.meson_spicc_data, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %has_oen.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_oen.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i203 = icmp eq i8 %52, 0
  br i1 %tobool.not.i203, label %if.end86.meson_spicc_oen_enable.exit_crit_edge, label %if.end.i204

if.end86.meson_spicc_oen_enable.exit_crit_edge:   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_oen_enable.exit

if.end.i204:                                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 56
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !91
  %56 = or i32 %55, 14
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %58, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %56) #9, !srcloc !89
  br label %meson_spicc_oen_enable.exit

meson_spicc_oen_enable.exit:                      ; preds = %if.end.i204, %if.end86.meson_spicc_oen_enable.exit_crit_edge
  %59 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev14, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent_data.i) #9
  %61 = getelementptr inbounds [2 x %struct.clk_parent_data], ptr %parent_data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i) #9
  %62 = call ptr @memset(ptr %name.i, i32 255, i32 64)
  %63 = getelementptr inbounds i8, ptr %init.i, i32 8
  %64 = call ptr @memset(ptr %63, i32 0, i32 16)
  %65 = call ptr @memset(ptr %parent_data.i, i32 0, i32 32)
  %parent_data2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %66 = ptrtoint ptr %parent_data2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %parent_data.i, ptr %parent_data2.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 20, i32 noundef 3520) #9
  %tobool.not.i205 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i205, label %meson_spicc_oen_enable.exit.meson_spicc_clk_init.exit.thread_crit_edge, label %if.end.i206

meson_spicc_oen_enable.exit.meson_spicc_clk_init.exit.thread_crit_edge: ; preds = %meson_spicc_oen_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_clk_init.exit.thread

if.end.i206:                                      ; preds = %meson_spicc_oen_enable.exit
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i206.dev_name.exit.i_crit_edge

if.end.i206.dev_name.exit.i_crit_edge:            ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i206.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %70, %if.end.i.i ], [ %68, %if.end.i206.dev_name.exit.i_crit_edge ]
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i) #9
  %71 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %name.i, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @clk_fixed_factor_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %flags.i, align 4
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %has_pclk.i = getelementptr inbounds %struct.meson_spicc_data, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %has_pclk.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %has_pclk.i, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool8.not.i = icmp eq i8 %77, 0
  %core.sink.i = select i1 %tobool8.not.i, ptr %core, ptr %pclk78
  %78 = ptrtoint ptr %core.sink.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %core.sink.i, align 4
  %call11.i = call ptr @__clk_get_hw(ptr noundef %79) #9
  %80 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call11.i, ptr %parent_data.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %81 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %num_parents.i, align 4
  %mult.i = getelementptr inbounds %struct.clk_fixed_factor, ptr %call.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %mult.i, align 4
  %div.i = getelementptr inbounds %struct.clk_fixed_factor, ptr %call.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %div.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %div.i, align 4
  %init16.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %init16.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %init.i, ptr %init16.i, align 4
  %call18.i = call ptr @devm_clk_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i) #9
  %cmp.i.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end44.i, !prof !92

do.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 560, i32 noundef 9, ptr noundef null) #9
  br label %meson_spicc_clk_init.exit

if.end44.i:                                       ; preds = %dev_name.exit.i
  %call.i374.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 28, i32 noundef 3520) #9
  %tobool46.not.i = icmp eq ptr %call.i374.i, null
  br i1 %tobool46.not.i, label %if.end44.i.meson_spicc_clk_init.exit.thread_crit_edge, label %if.end48.i

if.end44.i.meson_spicc_clk_init.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_clk_init.exit.thread

if.end48.i:                                       ; preds = %if.end44.i
  %85 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i376.i = icmp eq ptr %86, null
  br i1 %tobool.not.i376.i, label %if.end.i377.i, label %if.end48.i.dev_name.exit379.i_crit_edge

if.end48.i.dev_name.exit379.i_crit_edge:          ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit379.i

if.end.i377.i:                                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit379.i

dev_name.exit379.i:                               ; preds = %if.end.i377.i, %if.end48.i.dev_name.exit379.i_crit_edge
  %retval.0.i378.i = phi ptr [ %88, %if.end.i377.i ], [ %86, %if.end48.i.dev_name.exit379.i_crit_edge ]
  %call51.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i378.i) #9
  %89 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %name.i, ptr %init.i, align 4
  %90 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @clk_divider_ops, ptr %ops.i, align 4
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %flags.i, align 4
  %92 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i, ptr %parent_data.i, align 4
  %93 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %num_parents.i, align 4
  %shift.i = getelementptr inbounds %struct.clk_divider, ptr %call.i374.i, i32 0, i32 2
  %94 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 16, ptr %shift.i, align 4
  %width.i = getelementptr inbounds %struct.clk_divider, ptr %call.i374.i, i32 0, i32 3
  %95 = ptrtoint ptr %width.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 3, ptr %width.i, align 1
  %flags60.i = getelementptr inbounds %struct.clk_divider, ptr %call.i374.i, i32 0, i32 4
  %96 = ptrtoint ptr %flags60.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %flags60.i, align 2
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr.i209 = getelementptr i8, ptr %98, i32 8
  %reg.i = getelementptr inbounds %struct.clk_divider, ptr %call.i374.i, i32 0, i32 1
  %99 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.i209, ptr %reg.i, align 4
  %init62.i = getelementptr inbounds %struct.clk_hw, ptr %call.i374.i, i32 0, i32 2
  %100 = ptrtoint ptr %init62.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %init.i, ptr %init62.i, align 4
  %call64.i = call ptr @devm_clk_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i374.i) #9
  %cmp.i380.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i380.i, label %do.end82.i, label %if.end99.i, !prof !92

do.end82.i:                                       ; preds = %dev_name.exit379.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 581, i32 noundef 9, ptr noundef null) #9
  br label %meson_spicc_clk_init.exit

if.end99.i:                                       ; preds = %dev_name.exit379.i
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data, align 4
  %has_enhance_clk_div.i = getelementptr inbounds %struct.meson_spicc_data, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %has_enhance_clk_div.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %has_enhance_clk_div.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool101.not.i = icmp eq i8 %104, 0
  br i1 %tobool101.not.i, label %if.then102.i, label %if.end104.i

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  %clk103.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 5
  %105 = ptrtoint ptr %clk103.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call64.i, ptr %clk103.i, align 4
  br label %meson_spicc_clk_init.exit.thread223

if.end104.i:                                      ; preds = %if.end99.i
  %call.i381.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 20, i32 noundef 3520) #9
  %tobool106.not.i = icmp eq ptr %call.i381.i, null
  br i1 %tobool106.not.i, label %if.end104.i.meson_spicc_clk_init.exit.thread_crit_edge, label %if.end108.i

if.end104.i.meson_spicc_clk_init.exit.thread_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_clk_init.exit.thread

if.end108.i:                                      ; preds = %if.end104.i
  %106 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i383.i = icmp eq ptr %107, null
  br i1 %tobool.not.i383.i, label %if.end.i384.i, label %if.end108.i.dev_name.exit386.i_crit_edge

if.end108.i.dev_name.exit386.i_crit_edge:         ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit386.i

if.end.i384.i:                                    ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit386.i

dev_name.exit386.i:                               ; preds = %if.end.i384.i, %if.end108.i.dev_name.exit386.i_crit_edge
  %retval.0.i385.i = phi ptr [ %109, %if.end.i384.i ], [ %107, %if.end108.i.dev_name.exit386.i_crit_edge ]
  %call111.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i385.i) #9
  %110 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %name.i, ptr %init.i, align 4
  %111 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @clk_fixed_factor_ops, ptr %ops.i, align 4
  %112 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %flags.i, align 4
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %has_pclk117.i = getelementptr inbounds %struct.meson_spicc_data, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %has_pclk117.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %has_pclk117.i, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool118.not.i = icmp eq i8 %116, 0
  %core125.sink.i = select i1 %tobool118.not.i, ptr %core, ptr %pclk78
  %117 = ptrtoint ptr %core125.sink.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %core125.sink.i, align 4
  %call126.i = call ptr @__clk_get_hw(ptr noundef %118) #9
  %119 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call126.i, ptr %parent_data.i, align 4
  %120 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %num_parents.i, align 4
  %mult131.i = getelementptr inbounds %struct.clk_fixed_factor, ptr %call.i381.i, i32 0, i32 1
  %121 = ptrtoint ptr %mult131.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %mult131.i, align 4
  %div132.i = getelementptr inbounds %struct.clk_fixed_factor, ptr %call.i381.i, i32 0, i32 2
  %122 = ptrtoint ptr %div132.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %div132.i, align 4
  %init134.i = getelementptr inbounds %struct.clk_hw, ptr %call.i381.i, i32 0, i32 2
  %123 = ptrtoint ptr %init134.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %init.i, ptr %init134.i, align 4
  %call136.i = call ptr @devm_clk_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i381.i) #9
  %cmp.i387.i = icmp ugt ptr %call136.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i387.i, label %do.end154.i, label %if.end171.i, !prof !92

do.end154.i:                                      ; preds = %dev_name.exit386.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 610, i32 noundef 9, ptr noundef null) #9
  br label %meson_spicc_clk_init.exit

if.end171.i:                                      ; preds = %dev_name.exit386.i
  %call.i388.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 28, i32 noundef 3520) #9
  %tobool173.not.i = icmp eq ptr %call.i388.i, null
  br i1 %tobool173.not.i, label %if.end171.i.meson_spicc_clk_init.exit.thread_crit_edge, label %if.end175.i

if.end171.i.meson_spicc_clk_init.exit.thread_crit_edge: ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_clk_init.exit.thread

if.end175.i:                                      ; preds = %if.end171.i
  %124 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i390.i = icmp eq ptr %125, null
  br i1 %tobool.not.i390.i, label %if.end.i391.i, label %if.end175.i.dev_name.exit393.i_crit_edge

if.end175.i.dev_name.exit393.i_crit_edge:         ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit393.i

if.end.i391.i:                                    ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit393.i

dev_name.exit393.i:                               ; preds = %if.end.i391.i, %if.end175.i.dev_name.exit393.i_crit_edge
  %retval.0.i392.i = phi ptr [ %127, %if.end.i391.i ], [ %125, %if.end175.i.dev_name.exit393.i_crit_edge ]
  %call178.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i392.i) #9
  %128 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %name.i, ptr %init.i, align 4
  %129 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @clk_divider_ops, ptr %ops.i, align 4
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 4, ptr %flags.i, align 4
  %131 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i381.i, ptr %parent_data.i, align 4
  %132 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %num_parents.i, align 4
  %shift187.i = getelementptr inbounds %struct.clk_divider, ptr %call.i388.i, i32 0, i32 2
  %133 = ptrtoint ptr %shift187.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 16, ptr %shift187.i, align 4
  %width188.i = getelementptr inbounds %struct.clk_divider, ptr %call.i388.i, i32 0, i32 3
  %134 = ptrtoint ptr %width188.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 8, ptr %width188.i, align 1
  %135 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base, align 4
  %add.ptr190.i = getelementptr i8, ptr %136, i32 56
  %reg191.i = getelementptr inbounds %struct.clk_divider, ptr %call.i388.i, i32 0, i32 1
  %137 = ptrtoint ptr %reg191.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %add.ptr190.i, ptr %reg191.i, align 4
  %init193.i = getelementptr inbounds %struct.clk_hw, ptr %call.i388.i, i32 0, i32 2
  %138 = ptrtoint ptr %init193.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %init.i, ptr %init193.i, align 4
  %call195.i = call ptr @devm_clk_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i388.i) #9
  %cmp.i394.i = icmp ugt ptr %call195.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i394.i, label %do.end213.i, label %if.end230.i, !prof !92

do.end213.i:                                      ; preds = %dev_name.exit393.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 630, i32 noundef 9, ptr noundef null) #9
  br label %meson_spicc_clk_init.exit

if.end230.i:                                      ; preds = %dev_name.exit393.i
  %call.i395.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 32, i32 noundef 3520) #9
  %tobool232.not.i = icmp eq ptr %call.i395.i, null
  br i1 %tobool232.not.i, label %if.end230.i.meson_spicc_clk_init.exit.thread_crit_edge, label %if.end234.i

if.end230.i.meson_spicc_clk_init.exit.thread_crit_edge: ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_clk_init.exit.thread

if.end234.i:                                      ; preds = %if.end230.i
  %139 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i397.i = icmp eq ptr %140, null
  br i1 %tobool.not.i397.i, label %if.end.i398.i, label %if.end234.i.dev_name.exit400.i_crit_edge

if.end234.i.dev_name.exit400.i_crit_edge:         ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit400.i

if.end.i398.i:                                    ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit400.i

dev_name.exit400.i:                               ; preds = %if.end.i398.i, %if.end234.i.dev_name.exit400.i_crit_edge
  %retval.0.i399.i = phi ptr [ %142, %if.end.i398.i ], [ %140, %if.end234.i.dev_name.exit400.i_crit_edge ]
  %call237.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i399.i) #9
  %143 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %name.i, ptr %init.i, align 4
  %144 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @clk_mux_ops, ptr %ops.i, align 4
  %145 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i374.i, ptr %parent_data.i, align 4
  %146 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call.i388.i, ptr %61, align 4
  %147 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 2, ptr %num_parents.i, align 4
  %148 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4, ptr %flags.i, align 4
  %mask.i = getelementptr inbounds %struct.clk_mux, ptr %call.i395.i, i32 0, i32 3
  %149 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %mask.i, align 4
  %shift249.i = getelementptr inbounds %struct.clk_mux, ptr %call.i395.i, i32 0, i32 4
  %150 = ptrtoint ptr %shift249.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 24, ptr %shift249.i, align 4
  %151 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base, align 4
  %add.ptr251.i = getelementptr i8, ptr %152, i32 56
  %reg252.i = getelementptr inbounds %struct.clk_mux, ptr %call.i395.i, i32 0, i32 1
  %153 = ptrtoint ptr %reg252.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %add.ptr251.i, ptr %reg252.i, align 4
  %init254.i = getelementptr inbounds %struct.clk_hw, ptr %call.i395.i, i32 0, i32 2
  %154 = ptrtoint ptr %init254.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %init.i, ptr %init254.i, align 4
  %call256.i = call ptr @devm_clk_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i395.i) #9
  %clk257.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 5
  %155 = ptrtoint ptr %clk257.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call256.i, ptr %clk257.i, align 4
  %cmp.i401.i = icmp ugt ptr %call256.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401.i, label %do.end276.i, label %dev_name.exit400.i.meson_spicc_clk_init.exit.thread223_crit_edge, !prof !92

dev_name.exit400.i.meson_spicc_clk_init.exit.thread223_crit_edge: ; preds = %dev_name.exit400.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_clk_init.exit.thread223

do.end276.i:                                      ; preds = %dev_name.exit400.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 651, i32 noundef 9, ptr noundef null) #9
  %156 = ptrtoint ptr %clk257.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %clk257.i, align 4
  br label %meson_spicc_clk_init.exit

meson_spicc_clk_init.exit.thread:                 ; preds = %if.end230.i.meson_spicc_clk_init.exit.thread_crit_edge, %if.end171.i.meson_spicc_clk_init.exit.thread_crit_edge, %if.end104.i.meson_spicc_clk_init.exit.thread_crit_edge, %if.end44.i.meson_spicc_clk_init.exit.thread_crit_edge, %meson_spicc_oen_enable.exit.meson_spicc_clk_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_data.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %out_clk

meson_spicc_clk_init.exit.thread223:              ; preds = %dev_name.exit400.i.meson_spicc_clk_init.exit.thread223_crit_edge, %if.then102.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_data.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %if.end103

meson_spicc_clk_init.exit:                        ; preds = %do.end276.i, %do.end213.i, %do.end154.i, %do.end82.i, %do.end.i
  %retval.0.i210.in = phi ptr [ %call18.i, %do.end.i ], [ %call64.i, %do.end82.i ], [ %call136.i, %do.end154.i ], [ %call195.i, %do.end213.i ], [ %157, %do.end276.i ]
  %retval.0.i210 = ptrtoint ptr %retval.0.i210.in to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_data.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  %tobool97.not = icmp eq ptr %retval.0.i210.in, null
  br i1 %tobool97.not, label %meson_spicc_clk_init.exit.if.end103_crit_edge, label %meson_spicc_clk_init.exit.out_clk_crit_edge

meson_spicc_clk_init.exit.out_clk_crit_edge:      ; preds = %meson_spicc_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk

meson_spicc_clk_init.exit.if.end103_crit_edge:    ; preds = %meson_spicc_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.end103:                                        ; preds = %meson_spicc_clk_init.exit.if.end103_crit_edge, %meson_spicc_clk_init.exit.thread223
  %call105 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end103.cleanup115_crit_edge, label %if.end103.out_clk_crit_edge

if.end103.out_clk_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk

if.end103.cleanup115_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup115

out_clk:                                          ; preds = %if.end103.out_clk_crit_edge, %meson_spicc_clk_init.exit.out_clk_crit_edge, %meson_spicc_clk_init.exit.thread
  %.str.33.sink = phi ptr [ @.str.30, %meson_spicc_clk_init.exit.thread ], [ @.str.30, %meson_spicc_clk_init.exit.out_clk_crit_edge ], [ @.str.33, %if.end103.out_clk_crit_edge ]
  %ret.0 = phi i32 [ -12, %meson_spicc_clk_init.exit.thread ], [ %retval.0.i210, %meson_spicc_clk_init.exit.out_clk_crit_edge ], [ %call105, %if.end103.out_clk_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.33.sink) #12
  %158 = ptrtoint ptr %pclk78 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pclk78, align 4
  call void @clk_disable(ptr noundef %159) #9
  call void @clk_unprepare(ptr noundef %159) #9
  br label %out_core_clk

out_core_clk:                                     ; preds = %out_clk, %do.end84
  %ret.1 = phi i32 [ %retval.0.i200.ph, %do.end84 ], [ %ret.0, %out_clk ]
  %160 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %core, align 4
  call void @clk_disable(ptr noundef %161) #9
  call void @clk_unprepare(ptr noundef %161) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_core_clk, %do.end75, %do.end63, %do.end48, %do.end38, %if.end25.spi_controller_put.exit_crit_edge, %do.end21, %do.end11
  %ret.2 = phi i32 [ %9, %do.end21 ], [ %call.i190, %do.end38 ], [ %15, %do.end48 ], [ %23, %do.end63 ], [ %retval.0.i.ph, %do.end75 ], [ %ret.1, %out_core_clk ], [ -22, %do.end11 ], [ %call29, %if.end25.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #9
  br label %cleanup115

cleanup115:                                       ; preds = %spi_controller_put.exit, %if.end103.cleanup115_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %do.end ], [ 0, %if.end103.cleanup115_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !89
  %core = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %pclk = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.spi_controller_put.exit_crit_edge, label %if.then.i

entry.spi_controller_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_device(ptr noundef nonnull %9) #9
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %entry.spi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !91
  %3 = or i32 %2, -2147483648
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #9, !srcloc !89
  %rx_remain.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 13
  %6 = ptrtoint ptr %rx_remain.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_remain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not5.i = icmp eq i32 %7, 0
  br i1 %tobool.not5.i, label %entry.meson_spicc_rx.exit_crit_edge, label %land.rhs.lr.ph.i

entry.meson_spicc_rx.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_rx.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %bytes_per_word.i.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 11
  %rx_buf.i.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %meson_spicc_push_data.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !91
  %11 = and i32 %10, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %land.rhs.i.meson_spicc_rx.exit_crit_edge, label %while.body.i

land.rhs.i.meson_spicc_rx.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_rx.exit

while.body.i:                                     ; preds = %land.rhs.i
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !91
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %bytes_per_word.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_per_word.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not5.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not5.i.i, label %while.body.i.meson_spicc_push_data.exit.i_crit_edge, label %while.body.i.while.body.i.i_crit_edge

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.meson_spicc_push_data.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_push_data.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %byte_shift.07.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.while.body.i.i_crit_edge ]
  %bytes.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %17, %while.body.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %bytes.06.i.i, -1
  %shr.i.i = lshr i32 %15, %byte_shift.07.i.i
  %conv.i.i = trunc i32 %shr.i.i to i8
  %18 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %19, i32 1
  store ptr %incdec.ptr.i.i, ptr %rx_buf.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i, ptr %19, align 1
  %add.i.i = add i32 %byte_shift.07.i.i, 8
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.meson_spicc_push_data.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.meson_spicc_push_data.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_push_data.exit.i

meson_spicc_push_data.exit.i:                     ; preds = %while.body.i.i.meson_spicc_push_data.exit.i_crit_edge, %while.body.i.meson_spicc_push_data.exit.i_crit_edge
  %21 = ptrtoint ptr %rx_remain.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_remain.i, align 4
  %dec1.i.i = add i32 %22, -1
  store i32 %dec1.i.i, ptr %rx_remain.i, align 4
  %tobool.not.i = icmp eq i32 %dec1.i.i, 0
  br i1 %tobool.not.i, label %meson_spicc_push_data.exit.i.meson_spicc_rx.exit_crit_edge, label %meson_spicc_push_data.exit.i.land.rhs.i_crit_edge

meson_spicc_push_data.exit.i.land.rhs.i_crit_edge: ; preds = %meson_spicc_push_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

meson_spicc_push_data.exit.i.meson_spicc_rx.exit_crit_edge: ; preds = %meson_spicc_push_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_rx.exit

meson_spicc_rx.exit:                              ; preds = %meson_spicc_push_data.exit.i.meson_spicc_rx.exit_crit_edge, %land.rhs.i.meson_spicc_rx.exit_crit_edge, %entry.meson_spicc_rx.exit_crit_edge
  %xfer_remain = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 14
  %23 = ptrtoint ptr %xfer_remain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xfer_remain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %meson_spicc_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !89
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %28) #9
  br label %cleanup

if.end:                                           ; preds = %meson_spicc_rx.exit
  %bytes_per_word.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 11
  %29 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytes_per_word.i, align 4
  %div.i = udiv i32 %24, %30
  %data.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 8
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.meson_spicc_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fifo_size.i, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %34) #9
  %tx_remain.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 12
  %36 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tx_remain.i, align 4
  %37 = ptrtoint ptr %rx_remain.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %rx_remain.i, align 4
  %mul.i = mul i32 %35, %30
  %sub.i = sub i32 %24, %mul.i
  %38 = ptrtoint ptr %xfer_remain to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i, ptr %xfer_remain, align 4
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !91
  %42 = and i32 %41, -255
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %sub8.i = shl i32 %35, 25
  %shl.i = add i32 %sub8.i, -33554432
  %or.i = or i32 %43, %shl.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr25.i = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %44) #9, !srcloc !89
  %47 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_remain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not5.i.i24 = icmp eq i32 %48, 0
  br i1 %tobool.not5.i.i24, label %if.end.meson_spicc_setup_burst.exit_crit_edge, label %land.rhs.lr.ph.i.i

if.end.meson_spicc_setup_burst.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_burst.exit

land.rhs.lr.ph.i.i:                               ; preds = %if.end
  %tx_buf.i.i.i = getelementptr inbounds %struct.meson_spicc_device, ptr %data, i32 0, i32 9
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %meson_spicc_pull_data.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !91
  %52 = and i32 %51, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i, label %while.body.i.i25, label %land.rhs.i.i.meson_spicc_setup_burst.exit_crit_edge

land.rhs.i.i.meson_spicc_setup_burst.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_burst.exit

while.body.i.i25:                                 ; preds = %land.rhs.i.i
  %53 = ptrtoint ptr %bytes_per_word.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytes_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not6.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not6.i.i.i, label %while.body.i.i25.meson_spicc_pull_data.exit.i.i_crit_edge, label %while.body.i.i25.while.body.i.i.i_crit_edge

while.body.i.i25.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i25
  br label %while.body.i.i.i

while.body.i.i25.meson_spicc_pull_data.exit.i.i_crit_edge: ; preds = %while.body.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_pull_data.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.i25.while.body.i.i.i_crit_edge
  %data.09.i.i.i = phi i32 [ %or.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i.i25.while.body.i.i.i_crit_edge ]
  %byte_shift.08.i.i.i = phi i32 [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i.i25.while.body.i.i.i_crit_edge ]
  %bytes.07.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %54, %while.body.i.i25.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %bytes.07.i.i.i, -1
  %55 = ptrtoint ptr %tx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_buf.i.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %56, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %tx_buf.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv.i.i.i = zext i8 %58 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %byte_shift.08.i.i.i
  %or.i.i.i = or i32 %shl.i.i.i, %data.09.i.i.i
  %add.i.i.i = add i32 %byte_shift.08.i.i.i, 8
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_pull_data.exit.i.i

meson_spicc_pull_data.exit.i.i:                   ; preds = %while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge, %while.body.i.i25.meson_spicc_pull_data.exit.i.i_crit_edge
  %data.0.lcssa.i.i.i = phi i32 [ 0, %while.body.i.i25.meson_spicc_pull_data.exit.i.i_crit_edge ], [ %or.i.i.i, %while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge ]
  %59 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_remain.i, align 4
  %dec1.i.i.i = add i32 %60, -1
  store i32 %dec1.i.i.i, ptr %tx_remain.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %data.0.lcssa.i.i.i) #9
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 %61) #9, !srcloc !89
  %64 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_remain.i, align 4
  %tobool.not.i.i27 = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i27, label %meson_spicc_pull_data.exit.i.i.meson_spicc_setup_burst.exit_crit_edge, label %meson_spicc_pull_data.exit.i.i.land.rhs.i.i_crit_edge

meson_spicc_pull_data.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %meson_spicc_pull_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

meson_spicc_pull_data.exit.i.i.meson_spicc_setup_burst.exit_crit_edge: ; preds = %meson_spicc_pull_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_burst.exit

meson_spicc_setup_burst.exit:                     ; preds = %meson_spicc_pull_data.exit.i.i.meson_spicc_setup_burst.exit_crit_edge, %land.rhs.i.i.meson_spicc_setup_burst.exit_crit_edge, %if.end.meson_spicc_setup_burst.exit_crit_edge
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %67, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !91
  %69 = or i32 %68, 67108864
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %69) #9, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %meson_spicc_setup_burst.exit, %do.body
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_spicc_setup(ptr nocapture noundef %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %controller_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @meson_spicc_cleanup(ptr nocapture noundef writeonly %spi) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %controller_state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_prepare_message(ptr nocapture noundef readonly %master, ptr noundef %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %message2 = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %message2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %message, ptr %message2, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chip_select, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %and15 = shl i32 %8, 5
  %9 = and i32 %and15, 128
  %10 = and i32 %and15, 32
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 3, i32 19
  %and23 = shl i32 %8, 2
  %11 = and i32 %and23, 512
  %conv80 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv80, 12
  %and81 = and i32 %shl, 12288
  %12 = or i32 %and81, %10
  %13 = or i32 %12, %9
  %14 = or i32 %13, %11
  %or82 = or i32 %14, %.
  %or99 = or i32 %or82, 3670016
  %15 = tail call i32 @llvm.bswap.i32(i32 %or99)
  %base = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #9, !srcloc !89
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr101 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 0) #9, !srcloc !89
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr103 = getelementptr i8, ptr %21, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #9, !srcloc !91
  %23 = and i32 %22, -4194305
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr109 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %23) #9, !srcloc !89
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_unprepare_transfer(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !89
  %pdev = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_spicc_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %spi, ptr noundef %xfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xfer1 = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %xfer1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %xfer, ptr %xfer1, align 4
  %3 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer, align 4
  %tx_buf2 = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %tx_buf2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %tx_buf2, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %rx_buf3 = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %rx_buf3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %rx_buf3, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %xfer_remain = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %xfer_remain to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %xfer_remain, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %12 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %13 to i32
  %sub = add nuw nsw i32 %conv, 7
  %div29 = lshr i32 %sub, 3
  %bytes_per_word = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div29, ptr %bytes_per_word, align 4
  %15 = load i32, ptr %len, align 4
  %rem = urem i32 %15, %div29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !91
  %19 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytes_per_word, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %and.i = and i32 %21, -33030145
  %shl19.i = shl i32 %20, 22
  %shl21.i = add i32 %shl19.i, 33030144
  %and22.i = and i32 %shl21.i, 33030144
  %or.i = or i32 %and22.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %21)
  %cmp.not.i = icmp eq i32 %or.i, %21
  br i1 %cmp.not.i, label %if.end.if.end26.i_crit_edge, label %if.then23.i

if.end.if.end26.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %22) #9, !srcloc !89
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end.if.end26.i_crit_edge
  %clk.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk.i, align 4
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %27 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed_hz.i, align 4
  %call27.i = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef %28) #9
  %data.i.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %has_enhance_clk_div.i.i = getelementptr inbounds %struct.meson_spicc_data, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %has_enhance_clk_div.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_enhance_clk_div.i.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  br i1 %tobool.not.i.i, label %do.end28.i.i, label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 56
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !91
  %36 = lshr i32 %35, 7
  %inc.i.i = and i32 %36, 510
  %shl.i.i = add nuw nsw i32 %inc.i.i, 2
  br label %if.end.i.i

do.end28.i.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr32.i.i = getelementptr i8, ptr %34, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i.i) #9, !srcloc !91
  %38 = lshr i32 %37, 8
  %shr36.i.i = and i32 %38, 7
  %shl37.i.i = shl nuw nsw i32 4, %shr36.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end28.i.i, %do.end12.i.i
  %div.0.i.i = phi i32 [ %shl.i.i, %do.end12.i.i ], [ %shl37.i.i, %do.end28.i.i ]
  %39 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk.i, align 4
  %call38.i.i = tail call i32 @clk_get_rate(ptr noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999999, i32 %call38.i.i)
  %cmp.i.i = icmp ugt i32 %call38.i.i, 99999999
  br i1 %cmp.i.i, label %if.end.i.i.meson_spicc_setup_xfer.exit_crit_edge, label %if.else40.i.i

if.end.i.i.meson_spicc_setup_xfer.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_xfer.exit

if.else40.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999999, i32 %call38.i.i)
  %cmp41.i.i = icmp ugt i32 %call38.i.i, 79999999
  br i1 %cmp41.i.i, label %if.else40.i.i.meson_spicc_setup_xfer.exit_crit_edge, label %if.else43.i.i

if.else40.i.i.meson_spicc_setup_xfer.exit_crit_edge: ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_xfer.exit

if.else43.i.i:                                    ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 39999999, i32 %call38.i.i)
  %cmp44.i.i = icmp ugt i32 %call38.i.i, 39999999
  br i1 %cmp44.i.i, label %if.else43.i.i.meson_spicc_setup_xfer.exit_crit_edge, label %if.else46.i.i

if.else43.i.i.meson_spicc_setup_xfer.exit_crit_edge: ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_xfer.exit

if.else46.i.i:                                    ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.0.i.i)
  %cmp47.i.i = icmp ugt i32 %div.0.i.i, 15
  br i1 %cmp47.i.i, label %if.else46.i.i.meson_spicc_setup_xfer.exit_crit_edge, label %if.else49.i.i

if.else46.i.i.meson_spicc_setup_xfer.exit_crit_edge: ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_xfer.exit

if.else49.i.i:                                    ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div.0.i.i)
  %cmp50.i.i = icmp ugt i32 %div.0.i.i, 7
  br i1 %cmp50.i.i, label %if.else49.i.i.meson_spicc_setup_xfer.exit_crit_edge, label %if.else52.i.i

if.else49.i.i.meson_spicc_setup_xfer.exit_crit_edge: ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_xfer.exit

if.else52.i.i:                                    ; preds = %if.else49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div.0.i.i)
  %cmp53.i.i = icmp ugt i32 %div.0.i.i, 5
  %phi.bo.i.i = select i1 %cmp53.i.i, i32 262144, i32 0
  br label %meson_spicc_setup_xfer.exit

meson_spicc_setup_xfer.exit:                      ; preds = %if.else52.i.i, %if.else49.i.i.meson_spicc_setup_xfer.exit_crit_edge, %if.else46.i.i.meson_spicc_setup_xfer.exit_crit_edge, %if.else43.i.i.meson_spicc_setup_xfer.exit_crit_edge, %if.else40.i.i.meson_spicc_setup_xfer.exit_crit_edge, %if.end.i.i.meson_spicc_setup_xfer.exit_crit_edge
  %cap_delay.0.i.i = phi i32 [ 3145728, %if.end.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 2097152, %if.else40.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 1048576, %if.else43.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 0, %if.else46.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 0, %if.else49.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 0, %if.else52.i.i ]
  %mi_delay.0.i.i = phi i32 [ 0, %if.end.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 0, %if.else40.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 0, %if.else43.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 786432, %if.else46.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ 524288, %if.else49.i.i.meson_spicc_setup_xfer.exit_crit_edge ], [ %phi.bo.i.i, %if.else52.i.i ]
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr63.i.i = getelementptr i8, ptr %42, i32 28
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i.i) #9, !srcloc !91
  %44 = and i32 %43, -16129
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %or.i.i = or i32 %mi_delay.0.i.i, %cap_delay.0.i.i
  %or113.i.i = or i32 %or.i.i, %45
  %46 = tail call i32 @llvm.bswap.i32(i32 %or113.i.i) #9
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr115.i.i = getelementptr i8, ptr %48, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i.i, i32 %46) #9, !srcloc !89
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 0) #9, !srcloc !89
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %has_oen.i = getelementptr inbounds %struct.meson_spicc_data, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %has_oen.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %has_oen.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i30 = icmp eq i8 %54, 0
  br i1 %tobool.not.i30, label %meson_spicc_setup_xfer.exit.if.end.i_crit_edge, label %if.then.i33

meson_spicc_setup_xfer.exit.if.end.i_crit_edge:   ; preds = %meson_spicc_setup_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i33:                                      ; preds = %meson_spicc_setup_xfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %56, i32 56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #9, !srcloc !91
  %58 = or i32 %57, 32
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %60, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %58) #9, !srcloc !89
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i33, %meson_spicc_setup_xfer.exit.if.end.i_crit_edge
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %62, i32 28
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !91
  %64 = or i32 %63, 49152
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %66, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %64) #9, !srcloc !89
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %68, i32 20
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #9, !srcloc !91
  %70 = and i32 %69, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not42.i = icmp eq i32 %70, 0
  br i1 %tobool.i.not42.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !91
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %75, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #9, !srcloc !91
  %77 = and i32 %76, 939524096
  %tobool.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %has_oen19.i = getelementptr inbounds %struct.meson_spicc_data, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %has_oen19.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %has_oen19.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool20.not.i = icmp eq i8 %81, 0
  br i1 %tobool20.not.i, label %while.end.i.meson_spicc_reset_fifo.exit_crit_edge, label %if.then21.i

while.end.i.meson_spicc_reset_fifo.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_reset_fifo.exit

if.then21.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %83, i32 56
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #9, !srcloc !91
  %85 = and i32 %84, -33
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %87, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %85) #9, !srcloc !89
  br label %meson_spicc_reset_fifo.exit

meson_spicc_reset_fifo.exit:                      ; preds = %if.then21.i, %while.end.i.meson_spicc_reset_fifo.exit_crit_edge
  %88 = ptrtoint ptr %xfer_remain to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xfer_remain, align 4
  %90 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bytes_per_word, align 4
  %div.i = udiv i32 %89, %91
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.meson_spicc_data, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fifo_size.i, align 4
  %96 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 %95) #9
  %tx_remain.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 12
  %97 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %tx_remain.i, align 4
  %rx_remain.i = getelementptr inbounds %struct.meson_spicc_device, ptr %1, i32 0, i32 13
  %98 = ptrtoint ptr %rx_remain.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %rx_remain.i, align 4
  %mul.i = mul i32 %96, %91
  %sub.i37 = sub i32 %89, %mul.i
  %99 = ptrtoint ptr %xfer_remain to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub.i37, ptr %xfer_remain, align 4
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %101, i32 8
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #9, !srcloc !91
  %103 = and i32 %102, -255
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #9
  %sub8.i = shl i32 %96, 25
  %shl.i44 = add i32 %sub8.i, -33554432
  %or.i45 = or i32 %104, %shl.i44
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i45) #9
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr25.i46 = getelementptr i8, ptr %107, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i46, i32 %105) #9, !srcloc !89
  %108 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_remain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not5.i.i = icmp eq i32 %109, 0
  br i1 %tobool.not5.i.i, label %meson_spicc_reset_fifo.exit.meson_spicc_setup_burst.exit_crit_edge, label %meson_spicc_reset_fifo.exit.land.rhs.i.i_crit_edge

meson_spicc_reset_fifo.exit.land.rhs.i.i_crit_edge: ; preds = %meson_spicc_reset_fifo.exit
  br label %land.rhs.i.i

meson_spicc_reset_fifo.exit.meson_spicc_setup_burst.exit_crit_edge: ; preds = %meson_spicc_reset_fifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_burst.exit

land.rhs.i.i:                                     ; preds = %meson_spicc_pull_data.exit.i.i.land.rhs.i.i_crit_edge, %meson_spicc_reset_fifo.exit.land.rhs.i.i_crit_edge
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %111, i32 20
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !91
  %113 = and i32 %112, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool.i.not.i.i, label %while.body.i.i, label %land.rhs.i.i.meson_spicc_setup_burst.exit_crit_edge

land.rhs.i.i.meson_spicc_setup_burst.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_burst.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %114 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bytes_per_word, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not6.i.i.i = icmp eq i32 %115, 0
  br i1 %tobool.not6.i.i.i, label %while.body.i.i.meson_spicc_pull_data.exit.i.i_crit_edge, label %while.body.i.i.while.body.i.i.i_crit_edge

while.body.i.i.while.body.i.i.i_crit_edge:        ; preds = %while.body.i.i
  br label %while.body.i.i.i

while.body.i.i.meson_spicc_pull_data.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_pull_data.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.i.while.body.i.i.i_crit_edge
  %data.09.i.i.i = phi i32 [ %or.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %byte_shift.08.i.i.i = phi i32 [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %bytes.07.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %115, %while.body.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %bytes.07.i.i.i, -1
  %116 = ptrtoint ptr %tx_buf2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tx_buf2, align 4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %117, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %tx_buf2, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %conv.i.i.i = zext i8 %119 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i, %byte_shift.08.i.i.i
  %or.i.i.i = or i32 %shl.i.i.i, %data.09.i.i.i
  %add.i.i.i = add i32 %byte_shift.08.i.i.i, 8
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_pull_data.exit.i.i

meson_spicc_pull_data.exit.i.i:                   ; preds = %while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge, %while.body.i.i.meson_spicc_pull_data.exit.i.i_crit_edge
  %data.0.lcssa.i.i.i = phi i32 [ 0, %while.body.i.i.meson_spicc_pull_data.exit.i.i_crit_edge ], [ %or.i.i.i, %while.body.i.i.i.meson_spicc_pull_data.exit.i.i_crit_edge ]
  %120 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_remain.i, align 4
  %dec1.i.i.i = add i32 %121, -1
  store i32 %dec1.i.i.i, ptr %tx_remain.i, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %data.0.lcssa.i.i.i) #9
  %123 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %124, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 %122) #9, !srcloc !89
  %125 = ptrtoint ptr %tx_remain.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_remain.i, align 4
  %tobool.not.i.i48 = icmp eq i32 %126, 0
  br i1 %tobool.not.i.i48, label %meson_spicc_pull_data.exit.i.i.meson_spicc_setup_burst.exit_crit_edge, label %meson_spicc_pull_data.exit.i.i.land.rhs.i.i_crit_edge

meson_spicc_pull_data.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %meson_spicc_pull_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

meson_spicc_pull_data.exit.i.i.meson_spicc_setup_burst.exit_crit_edge: ; preds = %meson_spicc_pull_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %meson_spicc_setup_burst.exit

meson_spicc_setup_burst.exit:                     ; preds = %meson_spicc_pull_data.exit.i.i.meson_spicc_setup_burst.exit_crit_edge, %land.rhs.i.i.meson_spicc_setup_burst.exit_crit_edge, %meson_spicc_reset_fifo.exit.meson_spicc_setup_burst.exit_crit_edge
  %127 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %128, i32 8
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !91
  %130 = or i32 %129, 67108864
  %131 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i, align 4
  %add.ptr9 = getelementptr i8, ptr %132, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %130) #9, !srcloc !89
  %133 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i, align 4
  %add.ptr11 = getelementptr i8, ptr %134, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -2147483648) #9, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %meson_spicc_setup_burst.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %meson_spicc_setup_burst.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_spi_meson_spicc__296_847_meson_spicc_driver_init6, !1, !"__initcall__kmod_spi_meson_spicc__296_847_meson_spicc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-meson-spicc.c", i32 847, i32 1}
!2 = !{ptr @__exitcall_meson_spicc_driver_exit, !1, !"__exitcall_meson_spicc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-meson-spicc.c", i32 849, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-meson-spicc.c", i32 850, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-meson-spicc.c", i32 851, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-meson-spicc.c", i32 842, i32 11}
!12 = !{ptr @meson_spicc_driver, !13, !"meson_spicc_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-meson-spicc.c", i32 838, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-meson-spicc.c", i32 665, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson_spicc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_spicc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-meson-spicc.c", i32 673, i32 3}
!24 = !{ptr @meson_spicc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @meson_spicc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-meson-spicc.c", i32 683, i32 3}
!28 = !{ptr @meson_spicc_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @meson_spicc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-meson-spicc.c", i32 704, i32 3}
!32 = !{ptr @meson_spicc_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_spicc_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-meson-spicc.c", i32 708, i32 41}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-meson-spicc.c", i32 710, i32 3}
!38 = !{ptr @meson_spicc_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @meson_spicc_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-meson-spicc.c", i32 716, i32 42}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-meson-spicc.c", i32 718, i32 4}
!44 = !{ptr @meson_spicc_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @meson_spicc_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-meson-spicc.c", i32 726, i32 3}
!48 = !{ptr @meson_spicc_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @meson_spicc_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-meson-spicc.c", i32 732, i32 3}
!52 = !{ptr @meson_spicc_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @meson_spicc_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-meson-spicc.c", i32 759, i32 3}
!56 = !{ptr @meson_spicc_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @meson_spicc_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-meson-spicc.c", i32 765, i32 3}
!60 = !{ptr @meson_spicc_probe._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @meson_spicc_probe._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-meson-spicc.c", i32 545, i32 31}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-meson-spicc.c", i32 567, i32 31}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-meson-spicc.c", i32 595, i32 31}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-meson-spicc.c", i32 617, i32 31}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-meson-spicc.c", i32 637, i32 31}
!72 = !{ptr @meson_spicc_of_match, !73, !"meson_spicc_of_match", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-meson-spicc.c", i32 821, i32 34}
!74 = !{ptr @meson_spicc_gx_data, !75, !"meson_spicc_gx_data", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-meson-spicc.c", i32 798, i32 38}
!76 = !{ptr @meson_spicc_axg_data, !77, !"meson_spicc_axg_data", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-meson-spicc.c", i32 804, i32 38}
!78 = !{ptr @meson_spicc_g12a_data, !79, !"meson_spicc_g12a_data", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-meson-spicc.c", i32 812, i32 38}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 5024973}
!90 = !{i8 0, i8 2}
!91 = !{i64 5025391}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2155040464}
!94 = !{i64 2154618635}
!95 = !{i64 2155018342}
