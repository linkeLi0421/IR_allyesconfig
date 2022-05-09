; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/meson_saradc.c_pt.bc'
source_filename = "../drivers/iio/adc/meson_saradc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_sar_adc_data = type { ptr, ptr }
%struct.meson_sar_adc_param = type { i8, i32, i32, i32, ptr, i8, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.meson_sar_adc_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.clk_gate, ptr, %struct.clk_divider, %struct.completion, i32, i32, ptr, i8, i8, i16 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_meson_saradc__392_1352_meson_sar_adc_driver_init6 = internal global ptr @meson_sar_adc_driver_init, section ".initcall6.init", align 4
@meson_sar_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_sar_adc_probe, ptr @meson_sar_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_sar_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_sar_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_sar_adc_driver_exit = internal global ptr @meson_sar_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [77 x i8] c"meson_saradc.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [54 x i8] c"meson_saradc.description=Amlogic Meson SAR ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [47 x i8] c"meson_saradc.file=drivers/iio/adc/meson_saradc\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [28 x i8] c"meson_saradc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson-saradc\00", [19 x i8] zeroinitializer }, align 32
@meson_sar_adc_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_meson8_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_meson8b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_meson8m2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_gxl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_gxm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_axg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-saradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_sar_adc_g12a_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@meson_sar_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_sar_adc_suspend, ptr @meson_sar_adc_resume, ptr @meson_sar_adc_suspend, ptr @meson_sar_adc_resume, ptr @meson_sar_adc_suspend, ptr @meson_sar_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@meson_sar_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_sar_adc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/meson_saradc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_probe._entry_ptr = internal global ptr @meson_sar_adc_probe._entry, section ".printk_index", align 4
@meson_sar_adc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_sar_adc_probe._entry_ptr.8 = internal global ptr @meson_sar_adc_probe._entry.6, section ".printk_index", align 4
@meson_sar_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @meson_sar_adc_iio_info_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@meson_sar_adc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"meson_saradc:1219:(priv->param->regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clkin\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get core clk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get adc clk\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get adc_sel clk\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get vref regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_sar_adc_and_temp_iio_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.49, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.50, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.51, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.52, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.53, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.54, i8 64 }, %struct.iio_chan_spec { i32 9, i32 8, i32 0, i32 6, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 12, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.55, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 9, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [208 x i8] zeroinitializer }, align 32
@meson_sar_adc_iio_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.47, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.48, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.49, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.50, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.51, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.52, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.53, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 zeroinitializer, i32 513, i32 0, i32 4, i32 0, i32 0, i32 0, i32 48, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.54, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@meson_sar_adc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1300, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calibration failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_sar_adc_probe._entry_ptr.23 = internal global ptr @meson_sar_adc_probe._entry.20, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@meson_sar_adc_iio_info_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get vref voltage: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"meson_sar_adc_iio_info_read_raw\00", [32 x i8] zeroinitializer }, align 32
@meson_sar_adc_iio_info_read_raw._entry_ptr = internal global ptr @meson_sar_adc_iio_info_read_raw._entry, section ".printk_index", align 4
@meson_sar_adc_get_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 578, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read sample for channel %lu: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson_sar_adc_get_sample\00", [39 x i8] zeroinitializer }, align 32
@meson_sar_adc_get_sample._entry_ptr = internal global ptr @meson_sar_adc_get_sample._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_sar_adc_read_raw_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ADC FIFO has %d element(s) instead of one\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"meson_sar_adc_read_raw_sample\00", [34 x i8] zeroinitializer }, align 32
@meson_sar_adc_read_raw_sample._entry_ptr = internal global ptr @meson_sar_adc_read_raw_sample._entry, section ".printk_index", align 4
@meson_sar_adc_read_raw_sample._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ADC FIFO entry belongs to channel %d instead of %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@meson_sar_adc_read_raw_sample._entry_ptr.33 = internal global ptr @meson_sar_adc_read_raw_sample._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s#adc_div\00", [21 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s#adc_en\00", [22 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"temperature_calib\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get temperature_calib cell\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amlogic,hhi-sysctrl\00", [44 x i8] zeroinitializer }, align 32
@meson_sar_adc_temp_sensor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get amlogic,hhi-sysctrl regmap\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"meson_sar_adc_temp_sensor_init\00", [33 x i8] zeroinitializer }, align 32
@meson_sar_adc_temp_sensor_init._entry_ptr = internal global ptr @meson_sar_adc_temp_sensor_init._entry, section ".printk_index", align 4
@meson_sar_adc_temp_sensor_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read temperature_calib cell\0A\00", [57 x i8] zeroinitializer }, align 32
@meson_sar_adc_temp_sensor_init._entry_ptr.43 = internal global ptr @meson_sar_adc_temp_sensor_init._entry.41, section ".printk_index", align 4
@meson_sar_adc_temp_sensor_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid read size of temperature_calib cell\0A\00", [51 x i8] zeroinitializer }, align 32
@meson_sar_adc_temp_sensor_init._entry_ptr.46 = internal global ptr @meson_sar_adc_temp_sensor_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH0\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH1\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH2\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH3\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH4\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH5\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH6\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAR_ADC_CH7\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TEMP_SENSOR\00", [20 x i8] zeroinitializer }, align 32
@meson_sar_adc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 893, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set adc parent to clkin\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_sar_adc_init\00", [45 x i8] zeroinitializer }, align 32
@meson_sar_adc_init._entry_ptr = internal global ptr @meson_sar_adc_init._entry, section ".printk_index", align 4
@meson_sar_adc_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 900, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set adc clock rate\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_sar_adc_init._entry_ptr.60 = internal global ptr @meson_sar_adc_init._entry.58, section ".printk_index", align 4
@meson_sar_adc_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 935, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable vref regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_sar_adc_hw_enable\00", [40 x i8] zeroinitializer }, align 32
@meson_sar_adc_hw_enable._entry_ptr = internal global ptr @meson_sar_adc_hw_enable._entry, section ".printk_index", align 4
@meson_sar_adc_hw_enable._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable core clk\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_sar_adc_hw_enable._entry_ptr.65 = internal global ptr @meson_sar_adc_hw_enable._entry.63, section ".printk_index", align 4
@meson_sar_adc_hw_enable._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 959, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable adc clk\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_sar_adc_hw_enable._entry_ptr.68 = internal global ptr @meson_sar_adc_hw_enable._entry.66, section ".printk_index", align 4
@meson_sar_adc_meson8_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_meson8_param, ptr @.str.69 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_meson8b_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_meson8b_param, ptr @.str.70 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_meson8m2_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_meson8b_param, ptr @.str.71 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_gxbb_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxbb_param, ptr @.str.72 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_gxl_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxl_param, ptr @.str.73 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_gxm_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxl_param, ptr @.str.74 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_axg_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_gxl_param, ptr @.str.75 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_g12a_data = internal constant { %struct.meson_sar_adc_data, [24 x i8] } { %struct.meson_sar_adc_data { ptr @meson_sar_adc_g12a_param, ptr @.str.76 }, [24 x i8] zeroinitializer }, align 32
@meson_sar_adc_meson8_param = internal constant { %struct.meson_sar_adc_param, [32 x i8] } { %struct.meson_sar_adc_param { i8 0, i32 1150000, i32 40, i32 10, ptr @meson_sar_adc_regmap_config_meson8, i8 4, i32 180000, i32 870400 }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson-meson8-saradc\00", [44 x i8] zeroinitializer }, align 32
@meson_sar_adc_regmap_config_meson8 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@meson_sar_adc_meson8b_param = internal constant { %struct.meson_sar_adc_param, [32 x i8] } { %struct.meson_sar_adc_param { i8 0, i32 1150000, i32 40, i32 10, ptr @meson_sar_adc_regmap_config_meson8, i8 5, i32 10, i32 32 }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson-meson8b-saradc\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson-meson8m2-saradc\00", [42 x i8] zeroinitializer }, align 32
@meson_sar_adc_gxbb_param = internal constant { %struct.meson_sar_adc_param, [32 x i8] } { %struct.meson_sar_adc_param { i8 1, i32 1200000, i32 44, i32 10, ptr @meson_sar_adc_regmap_config_gxbb, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson-gxbb-saradc\00", [46 x i8] zeroinitializer }, align 32
@meson_sar_adc_regmap_config_gxbb = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@meson_sar_adc_gxl_param = internal constant { %struct.meson_sar_adc_param, [32 x i8] } { %struct.meson_sar_adc_param { i8 1, i32 1200000, i32 44, i32 12, ptr @meson_sar_adc_regmap_config_gxbb, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson-gxl-saradc\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson-gxm-saradc\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson-axg-saradc\00", [47 x i8] zeroinitializer }, align 32
@meson_sar_adc_g12a_param = internal constant { %struct.meson_sar_adc_param, [32 x i8] } { %struct.meson_sar_adc_param { i8 0, i32 1200000, i32 44, i32 12, ptr @meson_sar_adc_regmap_config_gxbb, i8 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson-g12a-saradc\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 9]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"meson_sar_adc_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1342, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1346, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"meson_sar_adc_of_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1155, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"meson_sar_adc_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1339, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1195, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1204, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"meson_sar_adc_iio_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1065, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1218, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1232, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1235, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1237, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1240, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1242, i32 43 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1248, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1251, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1257, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1267, i32 46 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1270, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant [36 x i8] c"meson_sar_adc_and_temp_iio_channels\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 216, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [27 x i8] c"meson_sar_adc_iio_channels\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 204, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1300, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 87, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 606, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 576, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 356, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 364, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 656, i32 58 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 678, i32 58 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 709, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 721, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 726, i32 7 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 728, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 736, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 741, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 217, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 218, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 219, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 220, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 221, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 222, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 223, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 224, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 225, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 892, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 899, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 934, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 941, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 959, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"meson_sar_adc_meson8_data\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1115, i32 40 }
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"meson_sar_adc_meson8b_data\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1120, i32 40 }
@___asan_gen_.312 = private unnamed_addr constant [28 x i8] c"meson_sar_adc_meson8m2_data\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1125, i32 40 }
@___asan_gen_.315 = private unnamed_addr constant [24 x i8] c"meson_sar_adc_gxbb_data\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1130, i32 40 }
@___asan_gen_.318 = private unnamed_addr constant [23 x i8] c"meson_sar_adc_gxl_data\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1135, i32 40 }
@___asan_gen_.321 = private unnamed_addr constant [23 x i8] c"meson_sar_adc_gxm_data\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1140, i32 40 }
@___asan_gen_.324 = private unnamed_addr constant [23 x i8] c"meson_sar_adc_axg_data\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1145, i32 40 }
@___asan_gen_.327 = private unnamed_addr constant [24 x i8] c"meson_sar_adc_g12a_data\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1150, i32 40 }
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"meson_sar_adc_meson8_param\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1069, i32 41 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1117, i32 10 }
@___asan_gen_.336 = private unnamed_addr constant [35 x i8] c"meson_sar_adc_regmap_config_meson8\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 294, i32 35 }
@___asan_gen_.339 = private unnamed_addr constant [28 x i8] c"meson_sar_adc_meson8b_param\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1080, i32 41 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1122, i32 10 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1127, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant [25 x i8] c"meson_sar_adc_gxbb_param\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1091, i32 41 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1132, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant [33 x i8] c"meson_sar_adc_regmap_config_gxbb\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 287, i32 35 }
@___asan_gen_.357 = private unnamed_addr constant [24 x i8] c"meson_sar_adc_gxl_param\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1099, i32 41 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1137, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1142, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1147, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant [25 x i8] c"meson_sar_adc_g12a_param\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1107, i32 41 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [34 x i8] c"../drivers/iio/adc/meson_saradc.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1152, i32 10 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__exitcall_meson_sar_adc_driver_exit, ptr @__initcall__kmod_meson_saradc__392_1352_meson_sar_adc_driver_init6, ptr @meson_sar_adc_driver_exit, ptr @meson_sar_adc_get_sample._entry, ptr @meson_sar_adc_get_sample._entry_ptr, ptr @meson_sar_adc_hw_enable._entry, ptr @meson_sar_adc_hw_enable._entry.63, ptr @meson_sar_adc_hw_enable._entry.66, ptr @meson_sar_adc_hw_enable._entry_ptr, ptr @meson_sar_adc_hw_enable._entry_ptr.65, ptr @meson_sar_adc_hw_enable._entry_ptr.68, ptr @meson_sar_adc_iio_info_read_raw._entry, ptr @meson_sar_adc_iio_info_read_raw._entry_ptr, ptr @meson_sar_adc_init._entry, ptr @meson_sar_adc_init._entry.58, ptr @meson_sar_adc_init._entry_ptr, ptr @meson_sar_adc_init._entry_ptr.60, ptr @meson_sar_adc_probe._entry, ptr @meson_sar_adc_probe._entry.20, ptr @meson_sar_adc_probe._entry.6, ptr @meson_sar_adc_probe._entry_ptr, ptr @meson_sar_adc_probe._entry_ptr.23, ptr @meson_sar_adc_probe._entry_ptr.8, ptr @meson_sar_adc_read_raw_sample._entry, ptr @meson_sar_adc_read_raw_sample._entry.31, ptr @meson_sar_adc_read_raw_sample._entry_ptr, ptr @meson_sar_adc_read_raw_sample._entry_ptr.33, ptr @meson_sar_adc_temp_sensor_init._entry, ptr @meson_sar_adc_temp_sensor_init._entry.41, ptr @meson_sar_adc_temp_sensor_init._entry.44, ptr @meson_sar_adc_temp_sensor_init._entry_ptr, ptr @meson_sar_adc_temp_sensor_init._entry_ptr.43, ptr @meson_sar_adc_temp_sensor_init._entry_ptr.46, ptr @meson_sar_adc_driver, ptr @.str, ptr @meson_sar_adc_of_match, ptr @meson_sar_adc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @meson_sar_adc_iio_info, ptr @meson_sar_adc_probe._key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @meson_sar_adc_and_temp_iio_channels, ptr @meson_sar_adc_iio_channels, ptr @.str.21, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @meson_sar_adc_meson8_data, ptr @meson_sar_adc_meson8b_data, ptr @meson_sar_adc_meson8m2_data, ptr @meson_sar_adc_gxbb_data, ptr @meson_sar_adc_gxl_data, ptr @meson_sar_adc_gxm_data, ptr @meson_sar_adc_axg_data, ptr @meson_sar_adc_g12a_data, ptr @meson_sar_adc_meson8_param, ptr @.str.69, ptr @meson_sar_adc_regmap_config_meson8, ptr @meson_sar_adc_meson8b_param, ptr @.str.70, ptr @.str.71, ptr @meson_sar_adc_gxbb_param, ptr @.str.72, ptr @meson_sar_adc_regmap_config_gxbb, ptr @meson_sar_adc_gxl_param, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @meson_sar_adc_g12a_param, ptr @.str.76], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_and_temp_iio_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_iio_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_iio_info_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_get_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_read_raw_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_read_raw_sample._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_temp_sensor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_temp_sensor_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_temp_sensor_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_hw_enable._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_hw_enable._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_meson8_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_meson8b_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_meson8m2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_gxbb_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_gxl_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_gxm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_axg_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_g12a_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_meson8_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_regmap_config_meson8 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_meson8b_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_gxbb_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_regmap_config_gxbb to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_gxl_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_sar_adc_g12a_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_sar_adc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_sar_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_sar_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 156) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %done = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #6
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call4, align 4
  %param12 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %param12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %param12, align 4
  %name = getelementptr inbounds %struct.meson_sar_adc_data, ptr %call4, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %name13 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name13, align 8
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @meson_sar_adc_iio_info, ptr %info, align 8
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %param12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param12, align 4
  %regmap_config = getelementptr inbounds %struct.meson_sar_adc_param, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_config, align 4
  %call21 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call14, ptr noundef %15, ptr noundef nonnull @meson_sar_adc_probe._key, ptr noundef nonnull @.str.9) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %1, align 4
  %cmp.i231 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call29 = tail call i32 @irq_of_parse_and_map(ptr noundef %19, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end32.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call29, ptr noundef nonnull @meson_sar_adc_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end39, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %dev_name.exit
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  %clkin = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %clkin to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call41, ptr %clkin, align 4
  %cmp.i232 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call41 to i32
  %call48 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  %core_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call51, ptr %core_clk, align 4
  %cmp.i233 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call51 to i32
  %call58 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %27, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  %call61 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %adc_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call61, ptr %adc_clk, align 4
  %cmp.i234 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then64, label %if.end59.if.end74_crit_edge

if.end59.if.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then64:                                        ; preds = %if.end59
  %cmp = icmp eq ptr %call61, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %adc_clk, align 4
  br label %if.end74

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call61 to i32
  %call72 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %30, ptr noundef nonnull @.str.15) #6
  br label %cleanup

if.end74:                                         ; preds = %if.then67, %if.end59.if.end74_crit_edge
  %call76 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #6
  %adc_sel_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %adc_sel_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call76, ptr %adc_sel_clk, align 4
  %cmp.i235 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %if.then79, label %if.end74.if.end91_crit_edge

if.end74.if.end91_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then79:                                        ; preds = %if.end74
  %cmp82 = icmp eq ptr %call76, inttoptr (i32 -2 to ptr)
  br i1 %cmp82, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %adc_sel_clk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %adc_sel_clk, align 4
  br label %if.end91

if.else85:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call76 to i32
  %call89 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end91:                                         ; preds = %if.then83, %if.end74.if.end91_crit_edge
  %34 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adc_clk, align 4
  %tobool93.not = icmp eq ptr %35, null
  br i1 %tobool93.not, label %if.then94, label %if.end91.if.end99_crit_edge

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then94:                                        ; preds = %if.end91
  %call95 = tail call fastcc i32 @meson_sar_adc_clk_init(ptr noundef nonnull %call, ptr noundef %call14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then94.if.end99_crit_edge, label %if.then94.cleanup_crit_edge

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then94.if.end99_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.end99:                                         ; preds = %if.then94.if.end99_crit_edge, %if.end91.if.end99_crit_edge
  %call101 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  %vref = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call101, ptr %vref, align 4
  %cmp.i236 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call101 to i32
  %call108 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %37, ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end109:                                        ; preds = %if.end99
  %calibscale = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %calibscale to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1000000, ptr %calibscale, align 4
  %39 = ptrtoint ptr %param12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %param12, align 4
  %temperature_trimming_bits = getelementptr inbounds %struct.meson_sar_adc_param, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %temperature_trimming_bits to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %temperature_trimming_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool111.not = icmp eq i8 %42, 0
  br i1 %tobool111.not, label %if.end109.if.end117_crit_edge, label %if.then112

if.end109.if.end117_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then112:                                       ; preds = %if.end109
  %call113 = tail call fastcc i32 @meson_sar_adc_temp_sensor_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then112.if.end117_crit_edge, label %if.then112.cleanup_crit_edge

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then112.if.end117_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.end117:                                        ; preds = %if.then112.if.end117_crit_edge, %if.end109.if.end117_crit_edge
  %temperature_sensor_calibrated = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 14
  %43 = ptrtoint ptr %temperature_sensor_calibrated to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %temperature_sensor_calibrated, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool118.not = icmp eq i8 %44, 0
  %spec.select = select i1 %tobool118.not, ptr @meson_sar_adc_iio_channels, ptr @meson_sar_adc_and_temp_iio_channels
  %spec.select237 = select i1 %tobool118.not, i32 9, i32 10
  %45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %spec.select, ptr %45, align 8
  %47 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select237, ptr %47, align 4
  %call124 = tail call fastcc i32 @meson_sar_adc_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127:                                        ; preds = %if.end117
  %call128 = tail call fastcc i32 @meson_sar_adc_hw_enable(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end131:                                        ; preds = %if.end127
  %call132 = tail call fastcc i32 @meson_sar_adc_calib(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end131.if.end139_crit_edge, label %do.end137

if.end131.if.end139_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

do.end137:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %if.end139

if.end139:                                        ; preds = %do.end137, %if.end131.if.end139_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call140 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end139.cleanup_crit_edge, label %err_hw

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_hw:                                           ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %call144 = tail call fastcc i32 @meson_sar_adc_hw_disable(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %err_hw, %if.end139.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.then112.cleanup_crit_edge, %if.then104, %if.then94.cleanup_crit_edge, %if.else85, %if.else, %if.then54, %if.then44, %dev_name.exit.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then24, %if.then16, %do.end9, %do.end
  %retval.0 = phi i32 [ %11, %if.then16 ], [ %17, %if.then24 ], [ %call48, %if.then44 ], [ %call58, %if.then54 ], [ %call108, %if.then104 ], [ %call89, %if.else85 ], [ %call72, %if.else ], [ -19, %do.end9 ], [ -12, %do.end ], [ -22, %if.end27.cleanup_crit_edge ], [ %call.i, %dev_name.exit.cleanup_crit_edge ], [ %call95, %if.then94.cleanup_crit_edge ], [ %call113, %if.then112.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ], [ %call124, %if.end117.cleanup_crit_edge ], [ %call128, %if.end127.cleanup_crit_edge ], [ %call140, %err_hw ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %call1 = tail call fastcc i32 @meson_sar_adc_hw_disable(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !205
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %regval) #6
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %and = lshr i32 %6, 21
  %shr = and i32 %and, 31
  %and30 = lshr i32 %6, 4
  %shr31 = and i32 %and30, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr31)
  %cmp = icmp ult i32 %shr, %shr31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %done = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 10
  call void @complete(ptr noundef %done) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_clk_init(ptr noundef %indio_dev, ptr noundef %base) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %clk_parents = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %2 = getelementptr inbounds i8, ptr %init, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_parents) #6
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %retval.0.i) #6
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %init, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_divider_ops, ptr %ops, align 4
  %clkin = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clkin, align 4
  %call5 = tail call ptr @__clk_get_name(ptr noundef %14) #6
  %15 = ptrtoint ptr %clk_parents to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5, ptr %clk_parents, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %clk_parents, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %17 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %num_parents, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 12
  %clk_div = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 9
  %reg = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %shift, align 4
  %width = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %width, align 1
  %init9 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init, ptr %init9, align 4
  %flags11 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %flags11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %flags11, align 2
  %call15 = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %clk_div) #6
  %adc_div_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %adc_div_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call15, ptr %adc_div_clk, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end43, !prof !206

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end43:                                         ; preds = %if.end
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %init_name.i138 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i138 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i138, align 8
  %tobool.not.i139 = icmp eq ptr %27, null
  br i1 %tobool.not.i139, label %if.end.i140, label %if.end43.dev_name.exit142_crit_edge

if.end43.dev_name.exit142_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit142

if.end.i140:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit142

dev_name.exit142:                                 ; preds = %if.end.i140, %if.end43.dev_name.exit142_crit_edge
  %retval.0.i141 = phi ptr [ %29, %if.end.i140 ], [ %27, %if.end43.dev_name.exit142_crit_edge ]
  %call48 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i141) #6
  %30 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call48, ptr %init, align 4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %dev_name.exit142.cleanup_crit_edge, label %if.end53

dev_name.exit142.cleanup_crit_edge:               ; preds = %dev_name.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %dev_name.exit142
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %flags, align 4
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @clk_gate_ops, ptr %ops, align 4
  %33 = ptrtoint ptr %adc_div_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adc_div_clk, align 4
  %call57 = call ptr @__clk_get_name(ptr noundef %34) #6
  %35 = ptrtoint ptr %clk_parents to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call57, ptr %clk_parents, align 4
  %36 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %clk_parents, ptr %parent_names, align 4
  %37 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %num_parents, align 4
  %clk_gate = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 7
  %reg63 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %reg63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr, ptr %reg63, align 4
  %bit_idx = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 30, ptr %bit_idx, align 4
  %init68 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 7, i32 0, i32 2
  %40 = ptrtoint ptr %init68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %init, ptr %init68, align 4
  %call72 = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %clk_gate) #6
  %adc_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call72, ptr %adc_clk, align 4
  %cmp.i143 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.end53.cleanup.sink.split_crit_edge, label %if.end53.cleanup_crit_edge, !prof !206

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53.cleanup.sink.split_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end53.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 675, %if.end.cleanup.sink.split_crit_edge ], [ 694, %if.end53.cleanup.sink.split_crit_edge ]
  %adc_clk.sink = phi ptr [ %adc_div_clk, %if.end.cleanup.sink.split_crit_edge ], [ %adc_clk, %if.end53.cleanup.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  %42 = ptrtoint ptr %adc_clk.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adc_clk.sink, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end53.cleanup_crit_edge, %dev_name.exit142.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %dev_name.exit.cleanup_crit_edge ], [ -12, %dev_name.exit142.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ %44, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_parents) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_temp_sensor_init(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %read_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_len) #6
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call ptr @devm_nvmem_cell_get(ptr noundef %3, ptr noundef nonnull @.str.36) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call1, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call1 to i32
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %4, ptr noundef nonnull @.str.37) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %10, ptr noundef nonnull @.str.38) #6
  %tsc_regmap = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %tsc_regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %tsc_regmap, align 4
  %cmp.i108 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.39) #9
  %14 = ptrtoint ptr %tsc_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tsc_regmap, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %read_len, align 4
  %call20 = call ptr @nvmem_cell_read(ptr noundef %call1, ptr noundef nonnull %read_len) #6
  %cmp.i109 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %do.end25, label %if.else

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.42) #9
  %20 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %21 = ptrtoint ptr %read_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp29.not = icmp eq i32 %22, 4
  br i1 %cmp29.not, label %if.end37, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call20) #6
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %param = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %param, align 4
  %temperature_trimming_bits = getelementptr inbounds %struct.meson_sar_adc_param, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %temperature_trimming_bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %temperature_trimming_bits, align 4
  %conv = zext i8 %28 to i32
  %notmask = shl nsw i32 -1, %conv
  %arrayidx = getelementptr i8, ptr %call20, i32 3
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %temperature_sensor_calibrated = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 14
  %.lobit = lshr i8 %30, 7
  %31 = ptrtoint ptr %temperature_sensor_calibrated to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.lobit, ptr %temperature_sensor_calibrated, align 4
  %arrayidx40 = getelementptr i8, ptr %call20, i32 2
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 1
  %34 = trunc i32 %notmask to i8
  %35 = xor i8 %34, -1
  %conv44 = and i8 %33, %35
  %temperature_sensor_coefficient = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %temperature_sensor_coefficient to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv44, ptr %temperature_sensor_coefficient, align 1
  %37 = load i8, ptr %arrayidx, align 1
  %38 = and i8 %37, 127
  %39 = load i8, ptr %arrayidx40, align 1
  %temperature_sensor_adc_val = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 16
  %conv66 = zext i8 %38 to i32
  %shl67 = shl nuw nsw i32 %conv66, 8
  %conv69 = zext i8 %39 to i32
  %or = or i32 %shl67, %conv69
  %shr74 = lshr i32 %or, %conv
  %conv75 = trunc i32 %shr74 to i16
  %40 = ptrtoint ptr %temperature_sensor_adc_val to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv75, ptr %temperature_sensor_adc_val, align 2
  call void @kfree(ptr noundef %call20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then30, %do.end25, %do.end, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %16, %do.end ], [ %20, %do.end25 ], [ -22, %if.then30 ], [ 0, %if.end37 ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_init(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !205
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 12, i32 noundef 58720256, i32 noundef 58720256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %param = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %10, i32 noundef 12, ptr noundef nonnull %regval) #6
  %11 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval, align 4
  %and = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  call fastcc void @meson_sar_adc_stop_sample_engine(ptr noundef %indio_dev)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call8 = call i32 @regmap_write(ptr noundef %16, i32 noundef 4, i32 noundef 0) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i231 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 12, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i232 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 12, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i233 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 16, i32 noundef 16711680, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i234 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 16, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i235 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 16, i32 noundef 16711680, i32 noundef 655360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i236 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 16, i32 noundef 50331648, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %regval, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i237 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 32, i32 noundef 896, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8388608, ptr %regval, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i238 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 32, i32 noundef 58720256, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 65739276, ptr %regval, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call120 = call i32 @regmap_write(ptr noundef %37, i32 noundef 28, i32 noundef 65739276) #6
  %temperature_sensor_calibrated = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %temperature_sensor_calibrated to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %temperature_sensor_calibrated, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool121.not = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  br i1 %tobool121.not, label %if.else167, label %if.then122

if.then122:                                       ; preds = %if.end4
  %call.i239 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 40, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i240 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 40, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %temperature_sensor_coefficient = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %temperature_sensor_coefficient to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %temperature_sensor_coefficient, align 1
  %conv149 = zext i8 %45 to i32
  %shl150 = shl nuw nsw i32 %conv149, 11
  %and151 = and i32 %shl150, 30720
  %46 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and151, ptr %regval, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i241 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 40, i32 noundef 30720, i32 noundef %and151, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %param, align 4
  %temperature_trimming_bits = getelementptr inbounds %struct.meson_sar_adc_param, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %temperature_trimming_bits to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %temperature_trimming_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %52)
  %cmp156 = icmp eq i8 %52, 5
  br i1 %cmp156, label %if.then158, label %if.then122.if.end172_crit_edge

if.then122.if.end172_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then158:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %temperature_sensor_coefficient to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %temperature_sensor_coefficient, align 1
  %55 = and i8 %54, 16
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 5
  %58 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %regval, align 4
  %tsc_regmap = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 13
  %59 = ptrtoint ptr %tsc_regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tsc_regmap, align 4
  %call.i242 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 792, i32 noundef 512, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end172

if.else167:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i243 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 40, i32 noundef 67108864, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i244 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 40, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end172

if.end172:                                        ; preds = %if.else167, %if.then158, %if.then122.if.end172_crit_edge
  %adc_sel_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %adc_sel_clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adc_sel_clk, align 4
  %clkin = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clkin, align 4
  %call173 = call i32 @clk_set_parent(ptr noundef %64, ptr noundef %66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end179, label %if.end172.cleanup.sink.split_crit_edge

if.end172.cleanup.sink.split_crit_edge:           ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end179:                                        ; preds = %if.end172
  %adc_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adc_clk, align 4
  %69 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %param, align 4
  %clock_rate = getelementptr inbounds %struct.meson_sar_adc_param, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clock_rate, align 4
  %call181 = call i32 @clk_set_rate(ptr noundef %68, i32 noundef %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end179.cleanup_crit_edge, label %if.end179.cleanup.sink.split_crit_edge

if.end179.cleanup.sink.split_crit_edge:           ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end179.cleanup.sink.split_crit_edge, %if.end172.cleanup.sink.split_crit_edge
  %.str.59.sink = phi ptr [ @.str.56, %if.end172.cleanup.sink.split_crit_edge ], [ @.str.59, %if.end179.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call173, %if.end172.cleanup.sink.split_crit_edge ], [ %call181, %if.end179.cleanup.sink.split_crit_edge ]
  %parent188 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %parent188 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent188, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull %.str.59.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end179.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end179.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_hw_enable(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @meson_sar_adc_lock(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vref = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61) #9
  br label %err_vref

if.end4:                                          ; preds = %if.end
  %core_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.do.end10_crit_edge

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then3.i, %if.end4.do.end10_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end4.do.end10_crit_edge ]
  %parent12 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.64) #9
  br label %err_core_clk

do.end28:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 496, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %param1.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %param1.i, align 4
  %bandgap_reg.i = getelementptr inbounds %struct.meson_sar_adc_param, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bandgap_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bandgap_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %17)
  %cmp.i = icmp eq i32 %17, 44
  %..i = select i1 %cmp.i, i32 8192, i32 1024
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %17, i32 noundef %..i, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 12, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #6
  %adc_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adc_clk, align 4
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %do.end28.do.end37_crit_edge

do.end28.do.end37_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

if.end.i73:                                       ; preds = %do.end28
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end40, label %if.then3.i74

if.then3.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then3.i74, %do.end28.do.end37_crit_edge
  %retval.0.i75.ph = phi i32 [ %call1.i71, %if.then3.i74 ], [ %call.i69, %do.end28.do.end37_crit_edge ]
  %parent39 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %parent39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.67) #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 12, i32 noundef 2097152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 8
  %param1.i79 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %param1.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %param1.i79, align 4
  %bandgap_reg.i80 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bandgap_reg.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bandgap_reg.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %34)
  %cmp.i81 = icmp eq i32 %34, 44
  %..i82 = select i1 %cmp.i81, i32 8192, i32 1024
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  %call.i.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %34, i32 noundef %..i82, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %38) #6
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %err_core_clk

if.end40:                                         ; preds = %if.end.i73
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 8
  %param.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %param.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i85 = icmp eq i8 %44, 0
  br i1 %tobool.not.i85, label %if.end40.cleanup.sink.split_crit_edge, label %if.end40.cleanup.sink.split.sink.split_crit_edge

if.end40.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

if.end40.cleanup.sink.split_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

err_core_clk:                                     ; preds = %do.end37, %do.end10
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end10 ], [ %retval.0.i75.ph, %do.end37 ]
  %45 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vref, align 4
  %call45 = tail call i32 @regulator_disable(ptr noundef %46) #6
  br label %err_vref

err_vref:                                         ; preds = %err_core_clk, %do.end
  %ret.1 = phi i32 [ %call2, %do.end ], [ %ret.0, %err_core_clk ]
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %param.i89 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %param.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %param.i89, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i90 = icmp eq i8 %52, 0
  br i1 %tobool.not.i90, label %err_vref.cleanup.sink.split_crit_edge, label %err_vref.cleanup.sink.split.sink.split_crit_edge

err_vref.cleanup.sink.split.sink.split_crit_edge: ; preds = %err_vref
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

err_vref.cleanup.sink.split_crit_edge:            ; preds = %err_vref
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %err_vref.cleanup.sink.split.sink.split_crit_edge, %if.end40.cleanup.sink.split.sink.split_crit_edge
  %.sink102 = phi ptr [ %40, %if.end40.cleanup.sink.split.sink.split_crit_edge ], [ %48, %err_vref.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ 0, %if.end40.cleanup.sink.split.sink.split_crit_edge ], [ %ret.1, %err_vref.cleanup.sink.split.sink.split_crit_edge ]
  %53 = ptrtoint ptr %.sink102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %.sink102, align 4
  %call.i.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 16, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %err_vref.cleanup.sink.split_crit_edge, %if.end40.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end40.cleanup.sink.split_crit_edge ], [ %ret.1, %err_vref.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %mlock.i93 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %mlock.i93) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_calib(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %remainder.i45 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  %value0 = alloca i32, align 4
  %value1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value0) #6
  %2 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value0, align 4, !annotation !205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value1) #6
  %3 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value1, align 4, !annotation !205
  %param = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %resolution = getelementptr inbounds %struct.meson_sar_adc_param, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resolution, align 4
  %shl = shl nuw i32 1, %7
  %div = sdiv i32 %shl, 4
  %mul = shl i32 3, %7
  %div4 = sdiv i32 %mul, 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 58720256, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 8
  %arrayidx = getelementptr %struct.iio_chan_spec, ptr %11, i32 7
  %call5 = call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %indio_dev, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %value0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 12, i32 noundef 58720256, i32 noundef 25165824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels, align 8
  %arrayidx7 = getelementptr %struct.iio_chan_spec, ptr %17, i32 7
  %call8 = call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %indio_dev, ptr noundef %arrayidx7, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %value1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end
  %18 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value1, align 4
  %20 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp12.not = icmp sgt i32 %19, %21
  br i1 %cmp12.not, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nsw i32 %div4, %div
  %conv = sext i32 %sub to i64
  %mul15 = mul nsw i64 %conv, 1000000
  %sub16 = sub i32 %19, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %22 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %remainder.i, align 4, !annotation !205
  %call.i = call i64 @div_s64_rem(i64 noundef %mul15, i32 noundef %sub16, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %conv18 = trunc i64 %call.i to i32
  %calibscale = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %calibscale to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv18, ptr %calibscale, align 4
  %conv20 = sext i32 %21 to i64
  %conv22 = sext i32 %conv18 to i64
  %mul23 = mul nsw i64 %conv22, %conv20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i45) #6
  %24 = ptrtoint ptr %remainder.i45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %remainder.i45, align 4, !annotation !205
  %call.i46 = call i64 @div_s64_rem(i64 noundef %mul23, i32 noundef 1000000, ptr noundef nonnull %remainder.i45) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i45) #6
  %25 = trunc i64 %call.i46 to i32
  %conv26 = sub i32 %div, %25
  %calibbias = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %calibbias to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv26, ptr %calibbias, align 4
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call5, %entry.out_crit_edge ], [ %call8, %if.end.out_crit_edge ], [ 0, %if.end14 ], [ -22, %if.end11.out_crit_edge ]
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i.i48 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 12, i32 noundef 58720256, i32 noundef 58720256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value0) #6
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_hw_disable(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @meson_sar_adc_lock(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %adc_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 2097152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %param1.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %param1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param1.i, align 4
  %bandgap_reg.i = getelementptr inbounds %struct.meson_sar_adc_param, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bandgap_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bandgap_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %11)
  %cmp.i = icmp eq i32 %11, 44
  %..i = select i1 %cmp.i, i32 8192, i32 1024
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %11, i32 noundef %..i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %core_clk = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %vref = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vref, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %17) #6
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %param.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %param.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.meson_sar_adc_unlock.exit_crit_edge, label %if.then.i

if.end.meson_sar_adc_unlock.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_sar_adc_unlock.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 16, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %meson_sar_adc_unlock.exit

meson_sar_adc_unlock.exit:                        ; preds = %if.then.i, %if.end.meson_sar_adc_unlock.exit_crit_edge
  %mlock.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %mlock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %meson_sar_adc_unlock.exit, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_iio_info_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb2
    i32 2, label %sw.bb4
    i32 5, label %sw.bb14
    i32 4, label %sw.bb15
    i32 3, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 0, i32 noundef 0, ptr noundef %val)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @meson_sar_adc_get_sample(ptr noundef %indio_dev, ptr noundef %chan, i32 noundef 1, i32 noundef 3, ptr noundef %val)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %4, label %sw.bb4.cleanup_crit_edge [
    i32 0, label %if.then
    i32 9, label %if.then10
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb4
  %vref = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref, align 4
  %call5 = tail call i32 @regulator_get_voltage(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.25, i32 noundef %call5) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div57 = udiv i32 %call5, 1000
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div57, ptr %val, align 4
  %param = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param, align 4
  %resolution = getelementptr inbounds %struct.meson_sar_adc_param, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resolution, align 4
  %15 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val2, align 4
  br label %cleanup

if.then10:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %param11 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %param11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %param11, align 4
  %temperature_multiplier = getelementptr inbounds %struct.meson_sar_adc_param, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %temperature_multiplier to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temperature_multiplier, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  %21 = load ptr, ptr %param11, align 4
  %temperature_divider = getelementptr inbounds %struct.meson_sar_adc_param, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %temperature_divider to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temperature_divider, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val2, align 4
  %25 = load i32, ptr %val, align 4
  %mul = mul i32 %25, 1000
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %calibbias = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %calibbias to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %calibbias, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %calibscale = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %calibscale to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %calibscale, align 4
  %div16 = sdiv i32 %30, 1000000
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div16, ptr %val, align 4
  %32 = load i32, ptr %calibscale, align 4
  %rem = srem i32 %32, 1000000
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rem, ptr %val2, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %param19 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %param19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %param19, align 4
  %temperature_divider20 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %temperature_divider20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %temperature_divider20, align 4
  %mul21 = mul i32 %37, 27
  %temperature_multiplier23 = getelementptr inbounds %struct.meson_sar_adc_param, ptr %35, i32 0, i32 6
  %38 = ptrtoint ptr %temperature_multiplier23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %temperature_multiplier23, align 4
  %div2456 = lshr i32 %39, 1
  %add = add i32 %div2456, %mul21
  %div25 = udiv i32 %add, %39
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div25, ptr %val, align 4
  %temperature_sensor_adc_val = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 16
  %41 = ptrtoint ptr %temperature_sensor_adc_val to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %temperature_sensor_adc_val, align 2
  %conv = zext i16 %42 to i32
  %sub = sub i32 %div25, %conv
  store i32 %sub, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb15, %sw.bb14, %if.then10, %if.end, %do.end, %sw.bb4.cleanup_crit_edge, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb18 ], [ 2, %sw.bb15 ], [ 1, %sw.bb14 ], [ %call5, %do.end ], [ 11, %if.end ], [ 10, %if.then10 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_get_sample(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %avg_mode, i32 noundef %avg_samples, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %remainder.i.i.i = alloca i32, align 4
  %regval.i.i33 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %temperature_sensor_calibrated = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %temperature_sensor_calibrated to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temperature_sensor_calibrated, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @meson_sar_adc_lock(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp.i, align 4, !annotation !205
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end4
  %count.05.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #6
  %11 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !205
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %regval.i.i) #6
  %14 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #6
  %16 = and i32 %15, 65011712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %for.body.i.meson_sar_adc_clear_fifo.exit_crit_edge, label %if.end.i

for.body.i.meson_sar_adc_clear_fifo.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_sar_adc_clear_fifo.exit

if.end.i:                                         ; preds = %for.body.i
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 24, ptr noundef nonnull %tmp.i) #6
  %inc.i = add nuw nsw i32 %count.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end.i.meson_sar_adc_clear_fifo.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.meson_sar_adc_clear_fifo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_sar_adc_clear_fifo.exit

meson_sar_adc_clear_fifo.exit:                    ; preds = %if.end.i.meson_sar_adc_clear_fifo.exit_crit_edge, %for.body.i.meson_sar_adc_clear_fifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %address1.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %21 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %address1.i, align 4
  %mul.i = shl i32 %22, 1
  %shl.i = shl i32 %avg_samples, %mul.i
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %shl3.i = shl i32 3, %mul.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 8, i32 noundef %shl3.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %add6.i = add i32 %mul.i, 16
  %shl7.i = shl i32 %avg_mode, %add6.i
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 4
  %shl10.i = shl i32 196608, %mul.i
  %call.i17.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 8, i32 noundef %shl10.i, i32 noundef %shl7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i.i29 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 4, i32 noundef 117440512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %address1.i, align 4
  %and32.i = and i32 %32, 7
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %call.i123.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 4, i32 noundef 7, i32 noundef %and32.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address1.i, align 4
  %shl60.i = shl i32 %36, 23
  %and61.i = and i32 %shl60.i, 58720256
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %28, align 4
  %call.i124.i = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 36, i32 noundef 58720256, i32 noundef %and61.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %address1.i, align 4
  %shl89.i = shl i32 %40, 7
  %and90.i = and i32 %shl89.i, 896
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %28, align 4
  %call.i125.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 36, i32 noundef 896, i32 noundef %and90.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %43 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %address1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp.i = icmp eq i32 %44, 6
  br i1 %cmp.i, label %if.then94.i, label %meson_sar_adc_clear_fifo.exit.meson_sar_adc_enable_channel.exit_crit_edge

meson_sar_adc_clear_fifo.exit.meson_sar_adc_enable_channel.exit_crit_edge: ; preds = %meson_sar_adc_clear_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_sar_adc_enable_channel.exit

if.then94.i:                                      ; preds = %meson_sar_adc_clear_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %46)
  %cmp95.i = icmp eq i32 %46, 9
  %..i = select i1 %cmp95.i, i32 134217728, i32 0
  %47 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %28, align 4
  %call.i126.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 40, i32 noundef 134217728, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %meson_sar_adc_enable_channel.exit

meson_sar_adc_enable_channel.exit:                ; preds = %if.then94.i, %meson_sar_adc_clear_fifo.exit.meson_sar_adc_enable_channel.exit_crit_edge
  %49 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i, align 8
  %done.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %done.i, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %50, align 4
  %call.i.i32 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %50, align 4
  %call.i9.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %50, align 4
  %call.i10.i = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %58 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %60 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %regval.i, align 4, !annotation !205
  %done.i35 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %59, i32 0, i32 10
  %call2.i36 = call i32 @wait_for_completion_timeout(ptr noundef %done.i35, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36)
  %tobool.not.i37 = icmp eq i32 %call2.i36, 0
  br i1 %tobool.not.i37, label %meson_sar_adc_enable_channel.exit.meson_sar_adc_read_raw_sample.exit_crit_edge, label %if.end.i39

meson_sar_adc_enable_channel.exit.meson_sar_adc_read_raw_sample.exit_crit_edge: ; preds = %meson_sar_adc_enable_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_sar_adc_read_raw_sample.exit

if.end.i39:                                       ; preds = %meson_sar_adc_enable_channel.exit
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i33) #6
  %63 = ptrtoint ptr %regval.i.i33 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %regval.i.i33, align 4, !annotation !205
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %62, align 4
  %call1.i.i38 = call i32 @regmap_read(ptr noundef %65, i32 noundef 0, ptr noundef nonnull %regval.i.i33) #6
  %66 = ptrtoint ptr %regval.i.i33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %regval.i.i33, align 4
  %and.i.i = lshr i32 %67, 21
  %shr.i.i = and i32 %and.i.i, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i.i)
  %cmp.not.i = icmp eq i32 %shr.i.i, 1
  br i1 %cmp.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %shr.i.i) #9
  br label %meson_sar_adc_read_raw_sample.exit

if.end5.i:                                        ; preds = %if.end.i39
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %59, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %69, i32 noundef 24, ptr noundef nonnull %regval.i) #6
  %70 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %regval.i, align 4
  %and.i = lshr i32 %71, 12
  %shr.i = and i32 %and.i, 7
  %72 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %address1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %73)
  %cmp22.not.i = icmp eq i32 %shr.i, %73
  br i1 %cmp22.not.i, label %do.end44.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev27.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.32, i32 noundef %shr.i, i32 noundef %73) #9
  br label %meson_sar_adc_read_raw_sample.exit

do.end44.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %and46.i = and i32 %71, 4095
  %param.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %59, i32 0, i32 2
  %74 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %param.i, align 4
  %resolution.i = getelementptr inbounds %struct.meson_sar_adc_param, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %resolution.i, align 4
  %sub48.i = sub i32 32, %77
  %shr49.i = lshr i32 -1, %sub48.i
  %and51.i = and i32 %and46.i, %shr49.i
  %78 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv.i, align 8
  %80 = zext i32 %and51.i to i64
  %calibscale.i.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %79, i32 0, i32 12
  %81 = ptrtoint ptr %calibscale.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %calibscale.i.i, align 4
  %conv1.i.i = sext i32 %82 to i64
  %mul.i.i = mul nsw i64 %80, %conv1.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #6
  %83 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !205
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %mul.i.i, i32 noundef 1000000, ptr noundef nonnull %remainder.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #6
  %calibbias.i.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %79, i32 0, i32 11
  %84 = ptrtoint ptr %calibbias.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %calibbias.i.i, align 4
  %86 = trunc i64 %call.i.i.i to i32
  %conv4.i.i = add i32 %85, %86
  %87 = call i32 @llvm.smax.i32(i32 %conv4.i.i, i32 0) #6
  %param.i.i = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %79, i32 0, i32 2
  %88 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %param.i.i, align 4
  %resolution.i.i = getelementptr inbounds %struct.meson_sar_adc_param, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %resolution.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %91
  %sub.i.i = xor i32 %notmask.i.i, -1
  %92 = call i32 @llvm.smin.i32(i32 %87, i32 %sub.i.i) #6
  %93 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %val, align 4
  br label %meson_sar_adc_read_raw_sample.exit

meson_sar_adc_read_raw_sample.exit:               ; preds = %do.end44.i, %do.end26.i, %do.end.i, %meson_sar_adc_enable_channel.exit.meson_sar_adc_read_raw_sample.exit_crit_edge
  %tobool6.not = phi i1 [ false, %meson_sar_adc_enable_channel.exit.meson_sar_adc_read_raw_sample.exit_crit_edge ], [ false, %do.end.i ], [ false, %do.end26.i ], [ true, %do.end44.i ]
  %retval.0.i = phi i32 [ -110, %meson_sar_adc_enable_channel.exit.meson_sar_adc_read_raw_sample.exit_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end26.i ], [ 0, %do.end44.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  call fastcc void @meson_sar_adc_stop_sample_engine(ptr noundef %indio_dev)
  %94 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv.i, align 8
  %param.i42 = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %param.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %param.i42, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i43 = icmp eq i8 %99, 0
  br i1 %tobool.not.i43, label %meson_sar_adc_read_raw_sample.exit.meson_sar_adc_unlock.exit_crit_edge, label %if.then.i45

meson_sar_adc_read_raw_sample.exit.meson_sar_adc_unlock.exit_crit_edge: ; preds = %meson_sar_adc_read_raw_sample.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_sar_adc_unlock.exit

if.then.i45:                                      ; preds = %meson_sar_adc_read_raw_sample.exit
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %95, align 4
  %call.i.i44 = call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 16, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %meson_sar_adc_unlock.exit

meson_sar_adc_unlock.exit:                        ; preds = %if.then.i45, %meson_sar_adc_read_raw_sample.exit.meson_sar_adc_unlock.exit_crit_edge
  %mlock.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %mlock.i) #6
  br i1 %tobool6.not, label %meson_sar_adc_unlock.exit.cleanup_crit_edge, label %do.end

meson_sar_adc_unlock.exit.cleanup_crit_edge:      ; preds = %meson_sar_adc_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %meson_sar_adc_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parent, align 8
  %104 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %address1.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.27, i32 noundef %105, i32 noundef %retval.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %meson_sar_adc_unlock.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 1, %meson_sar_adc_unlock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_sar_adc_lock(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !205
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #6
  %param = getelementptr inbounds %struct.meson_sar_adc_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 16, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.then
  %timeout.0 = phi i32 [ 10000, %if.then ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 16, ptr noundef nonnull %val) #6
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool5.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool5.not, label %land.rhs.if.then6_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.rhs.if.then6_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp = icmp slt i32 %timeout.0, 0
  br i1 %cmp, label %do.end.if.then6_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.if.then6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %do.end.if.then6_crit_edge, %land.rhs.if.then6_crit_edge
  call void @mutex_unlock(ptr noundef %mlock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then6 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_sar_adc_stop_sample_engine(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %8 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval.i, align 4, !annotation !205
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 10000, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %regval.i) #6
  %12 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regval.i, align 4
  %14 = and i32 %13, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool16.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool16.not.i
  br i1 %or.cond.i, label %meson_sar_adc_wait_busy_clear.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

meson_sar_adc_wait_busy_clear.exit:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i11 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @meson_sar_adc_hw_disable(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_sar_adc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @meson_sar_adc_hw_enable(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @__initcall__kmod_meson_saradc__392_1352_meson_sar_adc_driver_init6, !1, !"__initcall__kmod_meson_saradc__392_1352_meson_sar_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1352, i32 1}
!2 = !{ptr @__exitcall_meson_sar_adc_driver_exit, !1, !"__exitcall_meson_sar_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author393, !4, !"__UNIQUE_ID_author393", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1354, i32 1}
!5 = !{ptr @__UNIQUE_ID_description394, !6, !"__UNIQUE_ID_description394", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1355, i32 1}
!7 = !{ptr @__UNIQUE_ID_file395, !8, !"__UNIQUE_ID_file395", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1356, i32 1}
!9 = !{ptr @__UNIQUE_ID_license396, !8, !"__UNIQUE_ID_license396", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1346, i32 11}
!12 = !{ptr @meson_sar_adc_driver, !13, !"meson_sar_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1342, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1195, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @meson_sar_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_sar_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1204, i32 3}
!24 = !{ptr @meson_sar_adc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @meson_sar_adc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @meson_sar_adc_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1218, i32 17}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1232, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1235, i32 10}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1237, i32 44}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1240, i32 10}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1242, i32 43}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1248, i32 11}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1251, i32 47}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1257, i32 11}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1267, i32 46}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1270, i32 10}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1300, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @meson_sar_adc_probe._entry.20, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @meson_sar_adc_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @meson_sar_adc_iio_info, !58, !"meson_sar_adc_iio_info", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1065, i32 30}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/meson_saradc.c", i32 606, i32 5}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @meson_sar_adc_iio_info_read_raw._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @meson_sar_adc_iio_info_read_raw._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/meson_saradc.c", i32 576, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @meson_sar_adc_get_sample._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @meson_sar_adc_get_sample._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/meson_saradc.c", i32 356, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @meson_sar_adc_read_raw_sample._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @meson_sar_adc_read_raw_sample._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/meson_saradc.c", i32 364, i32 3}
!76 = !{ptr @meson_sar_adc_read_raw_sample._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @meson_sar_adc_read_raw_sample._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/meson_saradc.c", i32 656, i32 58}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/meson_saradc.c", i32 678, i32 58}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/meson_saradc.c", i32 709, i32 7}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/meson_saradc.c", i32 721, i32 10}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/meson_saradc.c", i32 726, i32 7}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/meson_saradc.c", i32 728, i32 3}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @meson_sar_adc_temp_sensor_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @meson_sar_adc_temp_sensor_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/meson_saradc.c", i32 736, i32 3}
!95 = !{ptr @meson_sar_adc_temp_sensor_init._entry.41, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @meson_sar_adc_temp_sensor_init._entry_ptr.43, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/meson_saradc.c", i32 741, i32 3}
!99 = !{ptr @meson_sar_adc_temp_sensor_init._entry.44, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @meson_sar_adc_temp_sensor_init._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/meson_saradc.c", i32 217, i32 2}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/meson_saradc.c", i32 218, i32 2}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/adc/meson_saradc.c", i32 219, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/meson_saradc.c", i32 220, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/meson_saradc.c", i32 221, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/meson_saradc.c", i32 222, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/meson_saradc.c", i32 223, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/meson_saradc.c", i32 224, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/meson_saradc.c", i32 225, i32 2}
!119 = !{ptr @meson_sar_adc_and_temp_iio_channels, !120, !"meson_sar_adc_and_temp_iio_channels", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/meson_saradc.c", i32 216, i32 35}
!121 = !{ptr @meson_sar_adc_iio_channels, !122, !"meson_sar_adc_iio_channels", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/meson_saradc.c", i32 204, i32 35}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/meson_saradc.c", i32 892, i32 3}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @meson_sar_adc_init._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @meson_sar_adc_init._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/meson_saradc.c", i32 899, i32 3}
!130 = !{ptr @meson_sar_adc_init._entry.58, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @meson_sar_adc_init._entry_ptr.60, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/meson_saradc.c", i32 934, i32 3}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @meson_sar_adc_hw_enable._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @meson_sar_adc_hw_enable._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/meson_saradc.c", i32 941, i32 3}
!139 = !{ptr @meson_sar_adc_hw_enable._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @meson_sar_adc_hw_enable._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/adc/meson_saradc.c", i32 959, i32 3}
!143 = !{ptr @meson_sar_adc_hw_enable._entry.66, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @meson_sar_adc_hw_enable._entry_ptr.68, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @meson_sar_adc_of_match, !146, !"meson_sar_adc_of_match", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1155, i32 34}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1117, i32 10}
!149 = !{ptr @meson_sar_adc_meson8_data, !150, !"meson_sar_adc_meson8_data", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1115, i32 40}
!151 = !{ptr @meson_sar_adc_meson8_param, !152, !"meson_sar_adc_meson8_param", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1069, i32 41}
!153 = !{ptr @meson_sar_adc_regmap_config_meson8, !154, !"meson_sar_adc_regmap_config_meson8", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/meson_saradc.c", i32 294, i32 35}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1122, i32 10}
!157 = !{ptr @meson_sar_adc_meson8b_data, !158, !"meson_sar_adc_meson8b_data", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1120, i32 40}
!159 = !{ptr @meson_sar_adc_meson8b_param, !160, !"meson_sar_adc_meson8b_param", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1080, i32 41}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1127, i32 10}
!163 = !{ptr @meson_sar_adc_meson8m2_data, !164, !"meson_sar_adc_meson8m2_data", i1 false, i1 false}
!164 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1125, i32 40}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1132, i32 10}
!167 = !{ptr @meson_sar_adc_gxbb_data, !168, !"meson_sar_adc_gxbb_data", i1 false, i1 false}
!168 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1130, i32 40}
!169 = !{ptr @meson_sar_adc_gxbb_param, !170, !"meson_sar_adc_gxbb_param", i1 false, i1 false}
!170 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1091, i32 41}
!171 = !{ptr @meson_sar_adc_regmap_config_gxbb, !172, !"meson_sar_adc_regmap_config_gxbb", i1 false, i1 false}
!172 = !{!"../drivers/iio/adc/meson_saradc.c", i32 287, i32 35}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1137, i32 10}
!175 = !{ptr @meson_sar_adc_gxl_data, !176, !"meson_sar_adc_gxl_data", i1 false, i1 false}
!176 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1135, i32 40}
!177 = !{ptr @meson_sar_adc_gxl_param, !178, !"meson_sar_adc_gxl_param", i1 false, i1 false}
!178 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1099, i32 41}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1142, i32 10}
!181 = !{ptr @meson_sar_adc_gxm_data, !182, !"meson_sar_adc_gxm_data", i1 false, i1 false}
!182 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1140, i32 40}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1147, i32 10}
!185 = !{ptr @meson_sar_adc_axg_data, !186, !"meson_sar_adc_axg_data", i1 false, i1 false}
!186 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1145, i32 40}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1152, i32 10}
!189 = !{ptr @meson_sar_adc_g12a_data, !190, !"meson_sar_adc_g12a_data", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1150, i32 40}
!191 = !{ptr @meson_sar_adc_g12a_param, !192, !"meson_sar_adc_g12a_param", i1 false, i1 false}
!192 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1107, i32 41}
!193 = !{ptr @meson_sar_adc_pm_ops, !194, !"meson_sar_adc_pm_ops", i1 false, i1 false}
!194 = !{!"../drivers/iio/adc/meson_saradc.c", i32 1339, i32 8}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{i8 0, i8 2}
!205 = !{!"auto-init"}
!206 = !{!"branch_weights", i32 1, i32 2000}
