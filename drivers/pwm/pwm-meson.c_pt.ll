; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-meson.c_pt.bc'
source_filename = "../drivers/pwm/pwm-meson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.meson_pwm_channel_data = type { i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_pwm_data = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_pwm = type { %struct.pwm_chip, ptr, [2 x %struct.meson_pwm_channel], ptr, %struct.spinlock }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.meson_pwm_channel = type { i32, i32, i8, ptr, %struct.clk_mux, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_meson__211_577_meson_pwm_driver_init6 = internal global ptr @meson_pwm_driver_init, section ".initcall6.init", align 4
@meson_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_pwm_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_pwm_driver_exit = internal global ptr @meson_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description212 = internal constant [57 x i8] c"pwm_meson.description=Amlogic Meson PWM Generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [58 x i8] c"pwm_meson.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [37 x i8] c"pwm_meson.file=drivers/pwm/pwm-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [31 x i8] c"pwm_meson.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson-pwm\00", [22 x i8] zeroinitializer }, align 32
@meson_pwm_matches = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_meson8b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-ao-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_gxbb_ao_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-ee-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_axg_ee_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-ao-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_axg_ao_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ee-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_g12a_ee_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ao-pwm-ab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_g12a_ao_ab_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ao-pwm-cd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_g12a_ao_cd_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@meson_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&meson->lock\00", [19 x i8] zeroinitializer }, align 32
@meson_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @meson_pwm_request, ptr @meson_pwm_free, ptr null, ptr @meson_pwm_apply, ptr @meson_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@meson_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register PWM chip: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_pwm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pwm/pwm-meson.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_pwm_probe._entry_ptr = internal global ptr @meson_pwm_probe._entry, section ".printk_index", align 4
@meson_pwm_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set parent %s for %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_pwm_request\00", [46 x i8] zeroinitializer }, align 32
@meson_pwm_request._entry_ptr = internal global ptr @meson_pwm_request._entry, section ".printk_index", align 4
@meson_pwm_request._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable clock %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_pwm_request._entry_ptr.11 = internal global ptr @meson_pwm_request._entry.9, section ".printk_index", align 4
@meson_pwm_per_channel_data = internal constant { [2 x %struct.meson_pwm_channel_data], [40 x i8] } { [2 x %struct.meson_pwm_channel_data] [%struct.meson_pwm_channel_data { i8 0, i8 4, i8 8, i32 32768, i32 1 }, %struct.meson_pwm_channel_data { i8 4, i8 6, i8 16, i32 8388608, i32 2 }], [40 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid source clock frequency\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"meson_pwm_calc\00", [17 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry_ptr = internal global ptr @meson_pwm_calc._entry, section ".printk_index", align 4
@meson_pwm_calc.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.4, ptr @.str.15, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_meson\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fin_freq: %lu Hz\0A\00", [46 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to get period pre_div\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry_ptr.18 = internal global ptr @meson_pwm_calc._entry.16, section ".printk_index", align 4
@meson_pwm_calc._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get period cnt\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry_ptr.21 = internal global ptr @meson_pwm_calc._entry.19, section ".printk_index", align 4
@meson_pwm_calc.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.4, ptr @.str.22, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"period=%u pre_div=%u cnt=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get duty cycle\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_pwm_calc._entry_ptr.25 = internal global ptr @meson_pwm_calc._entry.23, section ".printk_index", align 4
@meson_pwm_calc.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.13, ptr @.str.4, ptr @.str.26, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"duty=%u pre_div=%u duty_cnt=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s#mux%u\00", [23 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@meson_pwm_init_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_pwm_init_channels\00", [40 x i8] zeroinitializer }, align 32
@meson_pwm_init_channels._entry_ptr = internal global ptr @meson_pwm_init_channels._entry, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkin%u\00", [24 x i8] zeroinitializer }, align 32
@pwm_meson8b_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_meson8b_parent_names, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pwm_gxbb_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_gxbb_parent_names, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pwm_gxbb_ao_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_gxbb_ao_parent_names, i32 2 }, [24 x i8] zeroinitializer }, align 32
@pwm_axg_ee_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_axg_ee_parent_names, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pwm_axg_ao_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_axg_ao_parent_names, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pwm_g12a_ee_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_g12a_ee_parent_names, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pwm_g12a_ao_ab_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_g12a_ao_ab_parent_names, i32 4 }, [24 x i8] zeroinitializer }, align 32
@pwm_g12a_ao_cd_data = internal constant { %struct.meson_pwm_data, [24 x i8] } { %struct.meson_pwm_data { ptr @pwm_g12a_ao_cd_parent_names, i32 2 }, [24 x i8] zeroinitializer }, align 32
@pwm_meson8b_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vid_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fclk_div4\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fclk_div3\00", [22 x i8] zeroinitializer }, align 32
@pwm_gxbb_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.35, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_pll\00", [23 x i8] zeroinitializer }, align 32
@pwm_gxbb_ao_parent_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.36], [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk81\00", [26 x i8] zeroinitializer }, align 32
@pwm_axg_ee_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.37, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fclk_div5\00", [22 x i8] zeroinitializer }, align 32
@pwm_axg_ao_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.31, ptr @.str.33, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aoclk81\00", [24 x i8] zeroinitializer }, align 32
@pwm_g12a_ee_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.35, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@pwm_g12a_ao_ab_parent_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.38, ptr @.str.33, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@pwm_g12a_ao_cd_parent_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.38], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"meson_pwm_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 570, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 572, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"meson_pwm_matches\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 455, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 550, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"meson_pwm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 371, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 563, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 136, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 145, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"meson_pwm_per_channel_data\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 71, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 176, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 180, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 184, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 190, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 194, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 210, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 214, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 503, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 523, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 527, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"pwm_meson8b_data\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 383, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"pwm_gxbb_data\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 392, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"pwm_gxbb_ao_data\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 405, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"pwm_axg_ee_data\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 414, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"pwm_axg_ao_data\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 423, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"pwm_g12a_ee_data\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 450, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"pwm_g12a_ao_ab_data\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 432, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"pwm_g12a_ao_cd_data\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 441, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"pwm_meson8b_parent_names\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 379, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 380, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 380, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 380, i32 21 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 380, i32 34 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"pwm_gxbb_parent_names\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 388, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 389, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant [25 x i8] c"pwm_gxbb_ao_parent_names\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 401, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 402, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant [24 x i8] c"pwm_axg_ee_parent_names\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 410, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 411, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant [24 x i8] c"pwm_axg_ao_parent_names\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 419, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 420, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [25 x i8] c"pwm_g12a_ee_parent_names\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 446, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant [28 x i8] c"pwm_g12a_ao_ab_parent_names\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 428, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant [28 x i8] c"pwm_g12a_ao_cd_parent_names\00", align 1
@___asan_gen_.217 = private constant [27 x i8] c"../drivers/pwm/pwm-meson.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 437, i32 27 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_meson_pwm_driver_exit, ptr @__initcall__kmod_pwm_meson__211_577_meson_pwm_driver_init6, ptr @meson_pwm_calc._entry, ptr @meson_pwm_calc._entry.16, ptr @meson_pwm_calc._entry.19, ptr @meson_pwm_calc._entry.23, ptr @meson_pwm_calc._entry_ptr, ptr @meson_pwm_calc._entry_ptr.18, ptr @meson_pwm_calc._entry_ptr.21, ptr @meson_pwm_calc._entry_ptr.25, ptr @meson_pwm_driver_exit, ptr @meson_pwm_init_channels._entry, ptr @meson_pwm_init_channels._entry_ptr, ptr @meson_pwm_probe._entry, ptr @meson_pwm_probe._entry_ptr, ptr @meson_pwm_request._entry, ptr @meson_pwm_request._entry.9, ptr @meson_pwm_request._entry_ptr, ptr @meson_pwm_request._entry_ptr.11, ptr @meson_pwm_driver, ptr @.str, ptr @meson_pwm_matches, ptr @meson_pwm_probe.__key, ptr @.str.1, ptr @meson_pwm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @meson_pwm_per_channel_data, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pwm_meson8b_data, ptr @pwm_gxbb_data, ptr @pwm_gxbb_ao_data, ptr @pwm_axg_ee_data, ptr @pwm_axg_ao_data, ptr @pwm_g12a_ee_data, ptr @pwm_g12a_ao_ab_data, ptr @pwm_g12a_ao_cd_data, ptr @pwm_meson8b_parent_names, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @pwm_gxbb_parent_names, ptr @.str.35, ptr @pwm_gxbb_ao_parent_names, ptr @.str.36, ptr @pwm_axg_ee_parent_names, ptr @.str.37, ptr @pwm_axg_ao_parent_names, ptr @.str.38, ptr @pwm_g12a_ee_parent_names, ptr @pwm_g12a_ao_ab_parent_names, ptr @pwm_g12a_ao_cd_parent_names], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_matches to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_request._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_per_channel_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_calc._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_calc._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_calc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pwm_init_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_meson8b_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_gxbb_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_gxbb_ao_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_axg_ee_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_axg_ao_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_g12a_ee_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_g12a_ao_ab_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_g12a_ao_cd_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_meson8b_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_gxbb_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_gxbb_ao_parent_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_axg_ee_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_axg_ao_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_g12a_ee_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_g12a_ao_ab_parent_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_g12a_ao_cd_parent_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_pwm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_pwm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %name.i = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.meson_pwm, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.meson_pwm, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @meson_pwm_probe.__key, i16 noundef signext 3) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @meson_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %npwm, align 4
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %data = getelementptr inbounds %struct.meson_pwm, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %data, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %8 = call ptr @memset(ptr %init.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %name.i) #7
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 255)
  %10 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp74.not.i = icmp eq i32 %11, 0
  br i1 %cmp74.not.i, label %do.body.meson_pwm_init_channels.exit.thread_crit_edge, label %for.body.lr.ph.i

do.body.meson_pwm_init_channels.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pwm_init_channels.exit.thread

for.body.lr.ph.i:                                 ; preds = %do.body
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names6.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents8.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw i32 %i.075.i, 1
  %12 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npwm, align 4
  %cmp.i48 = icmp ult i32 %inc.i, %13
  br i1 %cmp.i48, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.meson_pwm_init_channels.exit.thread_crit_edge

for.cond.i.meson_pwm_init_channels.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pwm_init_channels.exit.thread

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.dev_name.exit.i_crit_edge

for.body.i.dev_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %for.body.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %for.body.i.dev_name.exit.i_crit_edge ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 255, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i.i, i32 noundef %i.075.i) #7
  %18 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name.i, ptr %init.i, align 4
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @clk_mux_ops, ptr %ops.i, align 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %parent_names6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %parent_names6.i, align 4
  %num_parents.i = getelementptr inbounds %struct.meson_pwm_data, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_parents.i, align 4
  %conv.i = trunc i32 %27 to i8
  %28 = ptrtoint ptr %num_parents8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %num_parents8.i, align 4
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 8
  %mux.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4
  %reg.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4, i32 1
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %clk_sel_shift.i = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %i.075.i, i32 1
  %32 = ptrtoint ptr %clk_sel_shift.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %clk_sel_shift.i, align 1
  %shift.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4, i32 4
  %34 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %shift.i, align 4
  %mask.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4, i32 3
  %35 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %mask.i, align 4
  %flags13.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4, i32 5
  %36 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %flags13.i, align 1
  %lock15.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4, i32 6
  %37 = ptrtoint ptr %lock15.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lock, ptr %lock15.i, align 4
  %table.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 4, i32 2
  %38 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %table.i, align 4
  %init18.i = getelementptr inbounds %struct.clk_hw, ptr %mux.i, i32 0, i32 2
  %39 = ptrtoint ptr %init18.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %init.i, ptr %init18.i, align 4
  %call21.i = call ptr @devm_clk_register(ptr noundef %7, ptr noundef %mux.i) #7
  %clk.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 5
  %40 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call21.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call21.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef nonnull %name.i, i32 noundef %41) #10
  br label %meson_pwm_init_channels.exit

if.end.i:                                         ; preds = %dev_name.exit.i
  %call28.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 255, ptr noundef nonnull @.str.30, i32 noundef %i.075.i) #7
  %call30.i = call ptr @devm_clk_get_optional(ptr noundef %7, ptr noundef nonnull %name.i) #7
  %clk_parent.i = getelementptr %struct.meson_pwm, ptr %call.i, i32 0, i32 2, i32 %i.075.i, i32 3
  %42 = ptrtoint ptr %clk_parent.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call30.i, ptr %clk_parent.i, align 4
  %cmp.i70.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70.i, label %if.then33.i, label %for.cond.i

if.then33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call30.i to i32
  br label %meson_pwm_init_channels.exit

meson_pwm_init_channels.exit.thread:              ; preds = %for.cond.i.meson_pwm_init_channels.exit.thread_crit_edge, %do.body.meson_pwm_init_channels.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %name.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  br label %if.end17

meson_pwm_init_channels.exit:                     ; preds = %if.then33.i, %if.then.i
  %retval.2.i = phi i32 [ %43, %if.then33.i ], [ %41, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %name.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp = icmp slt i32 %retval.2.i, 0
  br i1 %cmp, label %meson_pwm_init_channels.exit.cleanup_crit_edge, label %meson_pwm_init_channels.exit.if.end17_crit_edge

meson_pwm_init_channels.exit.if.end17_crit_edge:  ; preds = %meson_pwm_init_channels.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

meson_pwm_init_channels.exit.cleanup_crit_edge:   ; preds = %meson_pwm_init_channels.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %meson_pwm_init_channels.exit.if.end17_crit_edge, %meson_pwm_init_channels.exit.thread
  %call20 = call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end17.cleanup_crit_edge, %meson_pwm_init_channels.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call20, %do.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.2.i, %meson_pwm_init_channels.exit.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pwm_request(ptr noundef %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call2 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %3
  %clk_parent = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %3, i32 3
  %4 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_parent, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %clk = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %3, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call6 = tail call i32 @clk_set_parent(ptr noundef %7, ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_parent, align 4
  %call9 = tail call ptr @__clk_get_name(ptr noundef %9) #7
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call11 = tail call ptr @__clk_get_name(ptr noundef %11) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %call9, ptr noundef %call11, i32 noundef %call6) #10
  br label %cleanup

if.end13:                                         ; preds = %if.then4.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %clk14 = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %3, i32 5
  %12 = ptrtoint ptr %clk14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk14, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.clk_prepare_enable.exit_crit_edge

if.end13.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end23_crit_edge, label %if.then3.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end13.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end13.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp16 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp16, label %do.end20, label %clk_prepare_enable.exit.if.end23_crit_edge

clk_prepare_enable.exit.if.end23_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end20:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %clk14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk14, align 4
  %call22 = tail call ptr @__clk_get_name(ptr noundef %15) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %call22, i32 noundef %retval.0.i) #10
  br label %cleanup

if.end23:                                         ; preds = %clk_prepare_enable.exit.if.end23_crit_edge, %if.end.i.if.end23_crit_edge
  %call24 = tail call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef %arrayidx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %retval.0.i, %do.end20 ], [ %call24, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_pwm_free(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pwm_apply(ptr noundef %chip, ptr noundef %pwm, ptr noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %pre_div = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %pre_div to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pre_div, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %call, align 4
  %lo = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lo, align 4
  tail call fastcc void @meson_pwm_enable(ptr noundef %chip, ptr noundef %pwm)
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.meson_pwm, ptr %chip, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %base.i = getelementptr inbounds %struct.meson_pwm, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !134
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %11 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm.i, align 8
  %pwm_en_mask.i = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %12, i32 4
  %13 = ptrtoint ptr %pwm_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pwm_en_mask.i, align 4
  %neg.i = xor i32 %14, -1
  %and.i = and i32 %10, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %15) #7, !srcloc !137
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %cleanup

if.else6:                                         ; preds = %if.end
  %call7 = tail call fastcc i32 @meson_pwm_calc(ptr noundef %chip, ptr noundef %pwm, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.else6.cleanup_crit_edge, label %if.end10

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @meson_pwm_enable(ptr noundef %chip, ptr noundef %pwm)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else6.cleanup_crit_edge, %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call7, %if.else6.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.else ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_pwm_get_state(ptr nocapture noundef %chip, ptr nocapture noundef readonly %pwm, ptr noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %1
  %arrayidx2 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1
  %base = getelementptr inbounds %struct.meson_pwm, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %pwm_en_mask = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1, i32 4
  %6 = ptrtoint ptr %pwm_en_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwm_en_mask, align 4
  %clk_en_mask = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1, i32 3
  %8 = ptrtoint ptr %clk_en_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_en_mask, align 4
  %or = or i32 %9, %7
  %and = and i32 %or, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or)
  %cmp = icmp eq i32 %and, %or
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %frombool = zext i1 %cmp to i8
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %enabled, align 4
  %clk_div_shift = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1, i32 2
  %11 = ptrtoint ptr %clk_div_shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %clk_div_shift, align 2
  %conv = zext i8 %12 to i32
  %shr = lshr i32 %5, %conv
  %13 = trunc i32 %shr to i8
  %conv21 = and i8 %13, 127
  %pre_div = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %1, i32 2
  %14 = ptrtoint ptr %pre_div to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %pre_div, align 4
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2, align 4
  %conv25 = zext i8 %18 to i32
  %add.ptr26 = getelementptr i8, ptr %16, i32 %conv25
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !134
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and46 = and i32 %20, 65535
  %lo = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %1, i32 1
  %21 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and46, ptr %lo, align 4
  %shr65 = lshr i32 %20, 16
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr65, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp67 = icmp eq i32 %and46, 0
  br i1 %cmp67, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end
  %23 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwpwm, align 8
  %clk.i = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %24, i32 5
  %25 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then69.meson_pwm_cnt_to_ns.exit_crit_edge, label %div_u64.exit.i

if.then69.meson_pwm_cnt_to_ns.exit_crit_edge:     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pwm_cnt_to_ns.exit

div_u64.exit.i:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %div172.i.i.i = udiv i32 1000000000, %call1.i
  %mul.i = mul i32 %div172.i.i.i, %shr65
  %pre_div.i = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %24, i32 2
  %27 = ptrtoint ptr %pre_div.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pre_div.i, align 4
  %conv3.i = zext i8 %28 to i32
  %add.i = add nuw nsw i32 %conv3.i, 1
  %mul4.i = mul i32 %mul.i, %add.i
  br label %meson_pwm_cnt_to_ns.exit

meson_pwm_cnt_to_ns.exit:                         ; preds = %div_u64.exit.i, %if.then69.meson_pwm_cnt_to_ns.exit_crit_edge
  %retval.0.i = phi i32 [ %mul4.i, %div_u64.exit.i ], [ 0, %if.then69.meson_pwm_cnt_to_ns.exit_crit_edge ]
  %conv72 = zext i32 %retval.0.i to i64
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv72, ptr %state, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %30 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv72, ptr %duty_cycle, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %and46, i32 %shr65)
  %cmp76.not = icmp ult i32 %and46, %shr65
  br i1 %cmp76.not, label %if.else88, label %if.then78

if.then78:                                        ; preds = %if.else
  %31 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwpwm, align 8
  %clk.i132 = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %32, i32 5
  %33 = ptrtoint ptr %clk.i132 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk.i132, align 4
  %call1.i133 = tail call i32 @clk_get_rate(ptr noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %cmp.i134 = icmp eq i32 %call1.i133, 0
  br i1 %cmp.i134, label %if.then78.meson_pwm_cnt_to_ns.exit249_crit_edge, label %div_u64.exit.i247

if.then78.meson_pwm_cnt_to_ns.exit249_crit_edge:  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pwm_cnt_to_ns.exit249

div_u64.exit.i247:                                ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %and46, %shr65
  %div172.i.i.i239 = udiv i32 1000000000, %call1.i133
  %mul.i242 = mul i32 %div172.i.i.i239, %add
  %pre_div.i243 = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %32, i32 2
  %35 = ptrtoint ptr %pre_div.i243 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pre_div.i243, align 4
  %conv3.i244 = zext i8 %36 to i32
  %add.i245 = add nuw nsw i32 %conv3.i244, 1
  %mul4.i246 = mul i32 %mul.i242, %add.i245
  br label %meson_pwm_cnt_to_ns.exit249

meson_pwm_cnt_to_ns.exit249:                      ; preds = %div_u64.exit.i247, %if.then78.meson_pwm_cnt_to_ns.exit249_crit_edge
  %retval.0.i248 = phi i32 [ %mul4.i246, %div_u64.exit.i247 ], [ 0, %if.then78.meson_pwm_cnt_to_ns.exit249_crit_edge ]
  %conv82 = zext i32 %retval.0.i248 to i64
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv82, ptr %state, align 8
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwpwm, align 8
  %clk.i251 = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %41, i32 5
  %42 = ptrtoint ptr %clk.i251 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i251, align 4
  %call1.i252 = tail call i32 @clk_get_rate(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i252)
  %cmp.i253 = icmp eq i32 %call1.i252, 0
  br i1 %cmp.i253, label %meson_pwm_cnt_to_ns.exit249.meson_pwm_cnt_to_ns.exit368_crit_edge, label %div_u64.exit.i366

meson_pwm_cnt_to_ns.exit249.meson_pwm_cnt_to_ns.exit368_crit_edge: ; preds = %meson_pwm_cnt_to_ns.exit249
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_pwm_cnt_to_ns.exit368

div_u64.exit.i366:                                ; preds = %meson_pwm_cnt_to_ns.exit249
  call void @__sanitizer_cov_trace_pc() #9
  %div172.i.i.i358 = udiv i32 1000000000, %call1.i252
  %mul.i361 = mul i32 %div172.i.i.i358, %39
  %pre_div.i362 = getelementptr %struct.meson_pwm, ptr %chip, i32 0, i32 2, i32 %41, i32 2
  %44 = ptrtoint ptr %pre_div.i362 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pre_div.i362, align 4
  %conv3.i363 = zext i8 %45 to i32
  %add.i364 = add nuw nsw i32 %conv3.i363, 1
  %mul4.i365 = mul i32 %mul.i361, %add.i364
  br label %meson_pwm_cnt_to_ns.exit368

meson_pwm_cnt_to_ns.exit368:                      ; preds = %div_u64.exit.i366, %meson_pwm_cnt_to_ns.exit249.meson_pwm_cnt_to_ns.exit368_crit_edge
  %retval.0.i367 = phi i32 [ %mul4.i365, %div_u64.exit.i366 ], [ 0, %meson_pwm_cnt_to_ns.exit249.meson_pwm_cnt_to_ns.exit368_crit_edge ]
  %conv86 = zext i32 %retval.0.i367 to i64
  %duty_cycle87 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %46 = ptrtoint ptr %duty_cycle87 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv86, ptr %duty_cycle87, align 8
  br label %cleanup

if.else88:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %47 = call ptr @memset(ptr %state, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else88, %meson_pwm_cnt_to_ns.exit368, %meson_pwm_cnt_to_ns.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_pwm_enable(ptr noundef %meson, ptr noundef %pwm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %lock = getelementptr inbounds %struct.meson_pwm, ptr %meson, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %base = getelementptr inbounds %struct.meson_pwm, ptr %meson, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %clk_div_shift = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1, i32 2
  %6 = ptrtoint ptr %clk_div_shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_div_shift, align 2
  %conv9 = zext i8 %7 to i32
  %shl = shl i32 127, %conv9
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %pre_div = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %pre_div to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pre_div, align 4
  %conv10 = zext i8 %9 to i32
  %shl13 = shl i32 %conv10, %conv9
  %clk_en_mask = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1, i32 3
  %10 = ptrtoint ptr %clk_en_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_en_mask, align 4
  %or = or i32 %shl13, %11
  %or14 = or i32 %or, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #7, !srcloc !137
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  %lo = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lo, align 4
  %shl39 = shl i32 %16, 16
  %arrayidx = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1
  %and66 = and i32 %18, 65535
  %or67 = or i32 %and66, %shl39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 4
  %conv72 = zext i8 %23 to i32
  %add.ptr73 = getelementptr i8, ptr %21, i32 %conv72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %19) #7, !srcloc !137
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr77 = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #7, !srcloc !134
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %pwm_en_mask = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %1, i32 4
  %28 = ptrtoint ptr %pwm_en_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pwm_en_mask, align 4
  %or81 = or i32 %29, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr86 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %30) #7, !srcloc !137
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_pwm_calc(ptr nocapture noundef readonly %meson, ptr noundef %pwm, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #7
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %duty_cycle, align 8
  %conv = trunc i64 %1 to i32
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %conv2 = trunc i64 %3 to i32
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %sub = sub i32 %conv2, %conv
  %spec.select = select i1 %cmp, i32 %sub, i32 %conv
  %clk = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %do.end, label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.12) #10
  br label %cleanup

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pwm_calc.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_pwm_calc, %if.then13)) #7
          to label %do.end18 [label %if.then13], !srcloc !145

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pwm_calc.__UNIQUE_ID_ddebug183, ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %call4) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body9
  %conv19 = zext i32 %call4 to i64
  %conv20 = and i64 %3, 4294967295
  %mul = mul nuw i64 %conv20, %conv19
  %call21 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef 65535000000000) #7
  %conv22 = trunc i64 %call21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv22)
  %cmp23 = icmp ugt i32 %conv22, 127
  br i1 %cmp23, label %do.end28, label %if.end31

do.end28:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end31:                                         ; preds = %do.end18
  %14 = mul i32 %conv22, 1000000000
  %mul35 = add i32 %14, 1000000000
  %conv36 = zext i32 %mul35 to i64
  %call37 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %conv36) #7
  %conv38 = trunc i64 %call37 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv38)
  %cmp39 = icmp ugt i32 %conv38, 65535
  br i1 %cmp39, label %do.end44, label %do.body48

do.end44:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20) #10
  br label %cleanup

do.body48:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pwm_calc.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_pwm_calc, %if.then60)) #7
          to label %do.end65 [label %if.then60], !srcloc !145

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pwm_calc.__UNIQUE_ID_ddebug184, ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef %conv2, i32 noundef %conv22, i32 noundef %conv38) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body48
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv2)
  %cmp66 = icmp eq i32 %spec.select, %conv2
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  %conv69 = trunc i64 %call21 to i8
  %pre_div70 = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %pre_div70 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv69, ptr %pre_div70, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv38, ptr %call, align 4
  %lo = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lo, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp71 = icmp eq i32 %spec.select, 0
  br i1 %cmp71, label %if.then73, label %if.else78

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv74 = trunc i64 %call21 to i8
  %pre_div75 = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %pre_div75 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv74, ptr %pre_div75, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %call, align 4
  %lo77 = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %lo77 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv38, ptr %lo77, align 4
  br label %cleanup

if.else78:                                        ; preds = %if.else
  %conv80 = zext i32 %spec.select to i64
  %mul81 = mul nuw i64 %conv19, %conv80
  %call85 = tail call i64 @div64_u64(i64 noundef %mul81, i64 noundef %conv36) #7
  %conv86 = trunc i64 %call85 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv86)
  %cmp87 = icmp ugt i32 %conv86, 65535
  br i1 %cmp87, label %do.end92, label %do.body96

do.end92:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.24) #10
  br label %cleanup

do.body96:                                        ; preds = %if.else78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pwm_calc.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_pwm_calc, %if.then108)) #7
          to label %do.end113 [label %if.then108], !srcloc !145

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %meson to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %meson, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pwm_calc.__UNIQUE_ID_ddebug185, ptr noundef %28, ptr noundef nonnull @.str.26, i32 noundef %spec.select, i32 noundef %conv22, i32 noundef %conv86) #7
  br label %do.end113

do.end113:                                        ; preds = %if.then108, %do.body96
  %conv114 = trunc i64 %call21 to i8
  %pre_div115 = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %pre_div115 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv114, ptr %pre_div115, align 4
  %30 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv86, ptr %call, align 4
  %sub117 = sub nsw i32 %conv38, %conv86
  %lo118 = getelementptr inbounds %struct.meson_pwm_channel, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %lo118 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub117, ptr %lo118, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %do.end92, %if.then73, %if.then68, %do.end44, %do.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ -22, %do.end44 ], [ -22, %do.end92 ], [ 0, %if.then73 ], [ 0, %do.end113 ], [ 0, %if.then68 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_pwm_meson__211_577_meson_pwm_driver_init6, !1, !"__initcall__kmod_pwm_meson__211_577_meson_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-meson.c", i32 577, i32 1}
!2 = !{ptr @__exitcall_meson_pwm_driver_exit, !1, !"__exitcall_meson_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description212, !4, !"__UNIQUE_ID_description212", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-meson.c", i32 579, i32 1}
!5 = !{ptr @__UNIQUE_ID_author213, !6, !"__UNIQUE_ID_author213", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-meson.c", i32 580, i32 1}
!7 = !{ptr @__UNIQUE_ID_file214, !8, !"__UNIQUE_ID_file214", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-meson.c", i32 581, i32 1}
!9 = !{ptr @__UNIQUE_ID_license215, !8, !"__UNIQUE_ID_license215", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-meson.c", i32 572, i32 11}
!12 = !{ptr @meson_pwm_driver, !13, !"meson_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-meson.c", i32 570, i32 31}
!14 = !{ptr @meson_pwm_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-meson.c", i32 550, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pwm/pwm-meson.c", i32 563, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @meson_pwm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @meson_pwm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @meson_pwm_ops, !26, !"meson_pwm_ops", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-meson.c", i32 371, i32 29}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pwm/pwm-meson.c", i32 136, i32 4}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @meson_pwm_request._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_pwm_request._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-meson.c", i32 145, i32 3}
!34 = !{ptr @meson_pwm_request._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meson_pwm_request._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @meson_pwm_per_channel_data, !37, !"meson_pwm_per_channel_data", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-meson.c", i32 71, i32 3}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-meson.c", i32 176, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @meson_pwm_calc._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @meson_pwm_calc._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-meson.c", i32 180, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @meson_pwm_calc.__UNIQUE_ID_ddebug183, !44, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-meson.c", i32 184, i32 3}
!49 = !{ptr @meson_pwm_calc._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @meson_pwm_calc._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-meson.c", i32 190, i32 3}
!53 = !{ptr @meson_pwm_calc._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @meson_pwm_calc._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pwm/pwm-meson.c", i32 194, i32 2}
!57 = !{ptr @meson_pwm_calc.__UNIQUE_ID_ddebug184, !56, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pwm/pwm-meson.c", i32 210, i32 4}
!60 = !{ptr @meson_pwm_calc._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @meson_pwm_calc._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-meson.c", i32 214, i32 3}
!64 = !{ptr @meson_pwm_calc.__UNIQUE_ID_ddebug185, !63, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pwm/pwm-meson.c", i32 503, i32 32}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pwm/pwm-meson.c", i32 523, i32 4}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @meson_pwm_init_channels._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @meson_pwm_init_channels._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pwm/pwm-meson.c", i32 527, i32 32}
!74 = !{ptr @meson_pwm_matches, !75, !"meson_pwm_matches", i1 false, i1 false}
!75 = !{!"../drivers/pwm/pwm-meson.c", i32 455, i32 34}
!76 = !{ptr @pwm_meson8b_data, !77, !"pwm_meson8b_data", i1 false, i1 false}
!77 = !{!"../drivers/pwm/pwm-meson.c", i32 383, i32 36}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pwm/pwm-meson.c", i32 380, i32 2}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pwm/pwm-meson.c", i32 380, i32 10}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pwm/pwm-meson.c", i32 380, i32 21}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pwm/pwm-meson.c", i32 380, i32 34}
!86 = !{ptr @pwm_meson8b_parent_names, !87, !"pwm_meson8b_parent_names", i1 false, i1 false}
!87 = !{!"../drivers/pwm/pwm-meson.c", i32 379, i32 27}
!88 = !{ptr @pwm_gxbb_data, !89, !"pwm_gxbb_data", i1 false, i1 false}
!89 = !{!"../drivers/pwm/pwm-meson.c", i32 392, i32 36}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pwm/pwm-meson.c", i32 389, i32 10}
!92 = !{ptr @pwm_gxbb_parent_names, !93, !"pwm_gxbb_parent_names", i1 false, i1 false}
!93 = !{!"../drivers/pwm/pwm-meson.c", i32 388, i32 27}
!94 = !{ptr @pwm_gxbb_ao_data, !95, !"pwm_gxbb_ao_data", i1 false, i1 false}
!95 = !{!"../drivers/pwm/pwm-meson.c", i32 405, i32 36}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pwm/pwm-meson.c", i32 402, i32 10}
!98 = !{ptr @pwm_gxbb_ao_parent_names, !99, !"pwm_gxbb_ao_parent_names", i1 false, i1 false}
!99 = !{!"../drivers/pwm/pwm-meson.c", i32 401, i32 27}
!100 = !{ptr @pwm_axg_ee_data, !101, !"pwm_axg_ee_data", i1 false, i1 false}
!101 = !{!"../drivers/pwm/pwm-meson.c", i32 414, i32 36}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pwm/pwm-meson.c", i32 411, i32 10}
!104 = !{ptr @pwm_axg_ee_parent_names, !105, !"pwm_axg_ee_parent_names", i1 false, i1 false}
!105 = !{!"../drivers/pwm/pwm-meson.c", i32 410, i32 27}
!106 = !{ptr @pwm_axg_ao_data, !107, !"pwm_axg_ao_data", i1 false, i1 false}
!107 = !{!"../drivers/pwm/pwm-meson.c", i32 423, i32 36}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pwm/pwm-meson.c", i32 420, i32 2}
!110 = !{ptr @pwm_axg_ao_parent_names, !111, !"pwm_axg_ao_parent_names", i1 false, i1 false}
!111 = !{!"../drivers/pwm/pwm-meson.c", i32 419, i32 27}
!112 = !{ptr @pwm_g12a_ee_data, !113, !"pwm_g12a_ee_data", i1 false, i1 false}
!113 = !{!"../drivers/pwm/pwm-meson.c", i32 450, i32 36}
!114 = !{ptr @pwm_g12a_ee_parent_names, !115, !"pwm_g12a_ee_parent_names", i1 false, i1 false}
!115 = !{!"../drivers/pwm/pwm-meson.c", i32 446, i32 27}
!116 = !{ptr @pwm_g12a_ao_ab_data, !117, !"pwm_g12a_ao_ab_data", i1 false, i1 false}
!117 = !{!"../drivers/pwm/pwm-meson.c", i32 432, i32 36}
!118 = !{ptr @pwm_g12a_ao_ab_parent_names, !119, !"pwm_g12a_ao_ab_parent_names", i1 false, i1 false}
!119 = !{!"../drivers/pwm/pwm-meson.c", i32 428, i32 27}
!120 = !{ptr @pwm_g12a_ao_cd_data, !121, !"pwm_g12a_ao_cd_data", i1 false, i1 false}
!121 = !{!"../drivers/pwm/pwm-meson.c", i32 441, i32 36}
!122 = !{ptr @pwm_g12a_ao_cd_parent_names, !123, !"pwm_g12a_ao_cd_parent_names", i1 false, i1 false}
!123 = !{!"../drivers/pwm/pwm-meson.c", i32 437, i32 27}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
!134 = !{i64 4099398}
!135 = !{i64 2153161940}
!136 = !{i64 2153162160}
!137 = !{i64 4098980}
!138 = !{i64 2153162846}
!139 = !{i64 2153176823}
!140 = !{i64 2153075081}
!141 = !{i64 2153075306}
!142 = !{i64 2153160001}
!143 = !{i64 2153160693}
!144 = !{i64 2153160913}
!145 = !{i64 2148766763, i64 2148766768, i64 2148766781, i64 2148766825, i64 2148766859, i64 2148766880}
