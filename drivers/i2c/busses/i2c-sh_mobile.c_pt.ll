; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-sh_mobile.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sh_mobile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sh_mobile_dt_config = type { i32, ptr }
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
%struct.sh_mobile_i2c_data = type { ptr, ptr, %struct.i2c_adapter, i32, i32, ptr, i8, i8, i16, i16, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, i8, i8, i8, ptr, ptr, ptr, %struct.scatterlist, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_sh_mobile__302_1010_sh_mobile_i2c_adap_init4 = internal global ptr @sh_mobile_i2c_adap_init, section ".initcall4.init", align 4
@sh_mobile_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_mobile_i2c_probe, ptr @sh_mobile_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_mobile_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_mobile_i2c_adap_exit = internal global ptr @sh_mobile_i2c_adap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [66 x i8] c"i2c_sh_mobile.description=SuperH Mobile I2C Bus Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [33 x i8] c"i2c_sh_mobile.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [34 x i8] c"i2c_sh_mobile.author=Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [52 x i8] c"i2c_sh_mobile.file=drivers/i2c/busses/i2c-sh_mobile\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [29 x i8] c"i2c_sh_mobile.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias308 = internal constant [43 x i8] c"i2c_sh_mobile.alias=platform:i2c-sh_mobile\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c-sh_mobile\00", [18 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_dt_ids = internal constant { [15 x %struct.of_device_id], [708 x i8] } { [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fast_clock_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7740_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fast_clock_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-iic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-iic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_freq_calc_dt_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rmobile-iic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_dt_config }, %struct.of_device_id zeroinitializer], [708 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_i2c_suspend, ptr @sh_mobile_i2c_resume, ptr @sh_mobile_i2c_suspend, ptr @sh_mobile_i2c_resume, ptr @sh_mobile_i2c_suspend, ptr @sh_mobile_i2c_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 885, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_mobile_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-sh_mobile.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_probe._entry_ptr = internal global ptr @sh_mobile_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @sh_mobile_i2c_xfer, ptr @sh_mobile_i2c_xfer_atomic, ptr null, ptr null, ptr @sh_mobile_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 32, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pd->lock\00", [22 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pd->wait\00", [22 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"I2C adapter %d, bus speed %lu Hz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_probe._entry_ptr.13 = internal global ptr @sh_mobile_i2c_probe._entry.10, section ".printk_index", align 4
@sh_mobile_i2c_hook_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot request IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sh_mobile_i2c_hook_irqs\00", [40 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_hook_irqs._entry_ptr = internal global ptr @sh_mobile_i2c_hook_irqs._entry, section ".printk_index", align 4
@sh_mobile_i2c_hook_irqs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot request IRQ %pa\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_hook_irqs._entry_ptr.18 = internal global ptr @sh_mobile_i2c_hook_irqs._entry.16, section ".printk_index", align 4
@sh_mobile_i2c_isr.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_sh_mobile\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_mobile_i2c_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c_isr 0x%02x 0x%02x %s %d %d!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@i2c_op.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_op\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"op %d\0A\00", [25 x i8] zeroinitializer }, align 32
@i2c_op.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"op %d, data out 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unrecognized bus speed %lu Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_mobile_i2c_init\00", [45 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_init._entry_ptr = internal global ptr @sh_mobile_i2c_init._entry, section ".printk_index", align 4
@sh_mobile_i2c_check_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timing values out of range: L/H=0x%x/0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sh_mobile_i2c_check_timing\00", [37 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_check_timing._entry_ptr = internal global ptr @sh_mobile_i2c_check_timing._entry, section ".printk_index", align 4
@sh_mobile_i2c_check_timing.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 65, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timing values: L/H=0x%x/0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sh_mobile_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Transfer request timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_mobile_xfer\00", [17 x i8] zeroinitializer }, align 32
@sh_mobile_xfer._entry_ptr = internal global ptr @sh_mobile_xfer._entry, section ".printk_index", align 4
@sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_mobile_i2c_xfer_dma\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma map failed, using PIO\0A\00", [37 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.34, ptr @.str.3, ptr @.str.36, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dma prep slave sg failed, using PIO\0A\00", [59 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 -118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"submitting dma failed, using PIO\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sh_mobile_i2c_request_dma_chan\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"request_channel failed for %s (%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"slave_config failed for %s (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.40, ptr @.str.3, ptr @.str.43, i8 0, i8 125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"got DMA channel for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@poll_busy.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"poll_busy\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"val 0x%02x pd->sr 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@fast_clock_dt_config = internal constant { %struct.sh_mobile_dt_config, [24 x i8] } { %struct.sh_mobile_dt_config { i32 2, ptr @sh_mobile_i2c_init }, [24 x i8] zeroinitializer }, align 32
@r8a7740_dt_config = internal constant { %struct.sh_mobile_dt_config, [24 x i8] } { %struct.sh_mobile_dt_config { i32 1, ptr @sh_mobile_i2c_r8a7740_workaround }, [24 x i8] zeroinitializer }, align 32
@v2_freq_calc_dt_config = internal constant { %struct.sh_mobile_dt_config, [24 x i8] } { %struct.sh_mobile_dt_config { i32 2, ptr @sh_mobile_i2c_v2_init }, [24 x i8] zeroinitializer }, align 32
@default_dt_config = internal constant { %struct.sh_mobile_dt_config, [24 x i8] } { %struct.sh_mobile_dt_config { i32 1, ptr @sh_mobile_i2c_init }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100000, i64 400000]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.50 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"sh_mobile_i2c_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 996, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 998, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"sh_mobile_i2c_dt_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 799, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"sh_mobile_i2c_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 986, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 885, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 903, i32 47 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"sh_mobile_i2c_algorithm\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 741, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"sh_mobile_i2c_quirks\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 747, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 945, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 946, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 954, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 845, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 859, i32 6 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 411, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 308, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 350, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 280, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 243, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 260, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 691, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 530, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 543, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 553, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 476, i32 44 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 476, i32 51 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 481, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 498, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 503, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 326, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1169, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 617, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [21 x i8] c"fast_clock_dt_config\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 784, i32 41 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"r8a7740_dt_config\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 794, i32 41 }
@___asan_gen_.231 = private unnamed_addr constant [23 x i8] c"v2_freq_calc_dt_config\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 789, i32 41 }
@___asan_gen_.234 = private unnamed_addr constant [18 x i8] c"default_dt_config\00", align 1
@___asan_gen_.235 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-sh_mobile.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 779, i32 41 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_sh_mobile_i2c_adap_exit, ptr @__initcall__kmod_i2c_sh_mobile__302_1010_sh_mobile_i2c_adap_init4, ptr @sh_mobile_i2c_adap_exit, ptr @sh_mobile_i2c_check_timing._entry, ptr @sh_mobile_i2c_check_timing._entry_ptr, ptr @sh_mobile_i2c_hook_irqs._entry, ptr @sh_mobile_i2c_hook_irqs._entry.16, ptr @sh_mobile_i2c_hook_irqs._entry_ptr, ptr @sh_mobile_i2c_hook_irqs._entry_ptr.18, ptr @sh_mobile_i2c_init._entry, ptr @sh_mobile_i2c_init._entry_ptr, ptr @sh_mobile_i2c_probe._entry, ptr @sh_mobile_i2c_probe._entry.10, ptr @sh_mobile_i2c_probe._entry_ptr, ptr @sh_mobile_i2c_probe._entry_ptr.13, ptr @sh_mobile_xfer._entry, ptr @sh_mobile_xfer._entry_ptr, ptr @sh_mobile_i2c_driver, ptr @.str, ptr @sh_mobile_i2c_dt_ids, ptr @sh_mobile_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sh_mobile_i2c_algorithm, ptr @sh_mobile_i2c_quirks, ptr @sh_mobile_i2c_probe.__key, ptr @.str.7, ptr @sh_mobile_i2c_probe.__key.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @fast_clock_dt_config, ptr @r8a7740_dt_config, ptr @v2_freq_calc_dt_config, ptr @default_dt_config], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_dt_ids to i32), i32 2940, i32 3648, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_hook_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_hook_irqs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_i2c_check_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mobile_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_clock_dt_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7740_dt_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2_freq_calc_dt_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_dt_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_adap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mobile_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_i2c_adap_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mobile_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_probe(ptr noundef %dev) #2 align 64 {
entry:
  %n.i = alloca i32, align 4
  %bus_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_speed) #7
  %0 = ptrtoint ptr %bus_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_speed, align 4, !annotation !140
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1544, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end10
  %call283.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call283.i)
  %cmp.not84.i = icmp eq i32 %call283.i, -6
  br i1 %cmp.not84.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call286.i = phi i32 [ %call283.i, %while.body.lr.ph.i ], [ %call2.i, %if.end12.i.while.body.i_crit_edge ]
  %k.085.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end12.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286.i)
  %cmp3.i = icmp slt i32 %call286.i, 0
  br i1 %cmp3.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i64.i = icmp eq ptr %8, null
  br i1 %tobool.not.i64.i, label %if.end.i65.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i65.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i65.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i66.i = phi ptr [ %10, %if.end.i65.i ], [ %8, %if.end.i.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef nonnull %dev1, i32 noundef %call286.i, ptr noundef nonnull @sh_mobile_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i66.i, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end12.i, label %do.end.i

do.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev1, ptr noundef nonnull @.str.14, i32 noundef %call286.i) #10
  br label %cleanup

if.end12.i:                                       ; preds = %dev_name.exit.i
  %inc.i = add i32 %k.085.i, 1
  %call2.i = tail call i32 @platform_get_irq_optional(ptr noundef %dev, i32 noundef %inc.i) #7
  %cmp.not.i = icmp eq i32 %call2.i, -6
  br i1 %cmp.not.i, label %if.end12.i.if.end36.i_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end12.i.if.end36.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #7
  %call1491.i = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 1024, i32 noundef 0) #7
  %tobool15.not92.i = icmp eq ptr %call1491.i, null
  br i1 %tobool15.not92.i, label %if.else.i.cleanup32.thread.i_crit_edge, label %while.body16.lr.ph.i

if.else.i.cleanup32.thread.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32.thread.i

while.body16.lr.ph.i:                             ; preds = %if.else.i
  %init_name.i67.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  br label %while.body16.i

cleanup32.thread.i:                               ; preds = %for.end.i.cleanup32.thread.i_crit_edge, %if.else.i.cleanup32.thread.i_crit_edge
  %k.1.lcssa.i = phi i32 [ 0, %if.else.i.cleanup32.thread.i_crit_edge ], [ %inc30.i, %for.end.i.cleanup32.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #7
  br label %if.end36.i

while.body16.i:                                   ; preds = %for.end.i.while.body16.i_crit_edge, %while.body16.lr.ph.i
  %call1495.i = phi ptr [ %call1491.i, %while.body16.lr.ph.i ], [ %call14.i, %for.end.i.while.body16.i_crit_edge ]
  %k.193.i = phi i32 [ 0, %while.body16.lr.ph.i ], [ %inc30.i, %for.end.i.while.body16.i_crit_edge ]
  %11 = ptrtoint ptr %call1495.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1495.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1495.i, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp17.not88.i = icmp ugt i32 %12, %14
  br i1 %cmp17.not88.i, label %while.body16.i.for.end.i_crit_edge, label %while.body16.i.for.body.i_crit_edge

while.body16.i.for.body.i_crit_edge:              ; preds = %while.body16.i
  br label %for.body.i

while.body16.i.for.end.i_crit_edge:               ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body16.i.for.body.i_crit_edge
  %storemerge89.i = phi i32 [ %inc29.i, %for.inc.i.for.body.i_crit_edge ], [ %12, %while.body16.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %init_name.i67.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i67.i, align 8
  %tobool.not.i68.i = icmp eq ptr %16, null
  br i1 %tobool.not.i68.i, label %if.end.i69.i, label %for.body.i.dev_name.exit71.i_crit_edge

for.body.i.dev_name.exit71.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit71.i

if.end.i69.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit71.i

dev_name.exit71.i:                                ; preds = %if.end.i69.i, %for.body.i.dev_name.exit71.i_crit_edge
  %retval.0.i70.i = phi ptr [ %18, %if.end.i69.i ], [ %16, %for.body.i.dev_name.exit71.i_crit_edge ]
  %call.i72.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %storemerge89.i, ptr noundef nonnull @sh_mobile_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i70.i, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool22.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool22.not.i, label %for.inc.i, label %cleanup32.i

for.inc.i:                                        ; preds = %dev_name.exit71.i
  %inc29.i = add i32 %storemerge89.i, 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %cmp17.not.i = icmp ugt i32 %inc29.i, %20
  br i1 %cmp17.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.body16.i.for.end.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ %12, %while.body16.i.for.end.i_crit_edge ], [ %inc29.i, %for.inc.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge.lcssa.i, ptr %n.i, align 4
  %inc30.i = add i32 %k.193.i, 1
  %call14.i = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 1024, i32 noundef %inc30.i) #7
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %for.end.i.cleanup32.thread.i_crit_edge, label %for.end.i.while.body16.i_crit_edge

for.end.i.while.body16.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16.i

for.end.i.cleanup32.thread.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32.thread.i

cleanup32.i:                                      ; preds = %dev_name.exit71.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge89.i, ptr %n.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %n.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #7
  br label %cleanup

if.end36.i:                                       ; preds = %cleanup32.thread.i, %if.end12.i.if.end36.i_crit_edge
  %k.2.i = phi i32 [ %k.1.lcssa.i, %cleanup32.thread.i ], [ %inc.i, %if.end12.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.2.i)
  %cmp37.i = icmp sgt i32 %k.2.i, 0
  br i1 %cmp37.i, label %if.end14, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end36.i
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call17 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #7
  %res18 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 18
  %25 = ptrtoint ptr %res18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call17, ptr %res18, align 4
  %call20 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call17) #7
  %reg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call20, ptr %reg, align 4
  %cmp.i149 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %28 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i150 = call i32 @of_property_read_variable_u32_array(ptr noundef %29, ptr noundef nonnull @.str.6, ptr noundef nonnull %bus_speed, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i150)
  %tobool29.not = icmp sgt i32 %call.i.i150, -1
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end26.cond.end_crit_edge

if.end26.cond.end_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

lor.lhs.false:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool30.not = icmp eq i32 %31, 0
  %spec.select = select i1 %tobool30.not, i32 100000, i32 %31
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %if.end26.cond.end_crit_edge
  %cond = phi i32 [ 100000, %if.end26.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %bus_speed31 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %bus_speed31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %bus_speed31, align 8
  %clks_per_count = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %clks_per_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %clks_per_count, align 4
  %end.i151 = getelementptr inbounds %struct.resource, ptr %call17, i32 0, i32 1
  %34 = ptrtoint ptr %end.i151 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i151, align 4
  %36 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call17, align 4
  %sub.i = add i32 %35, 1
  %add.i = sub i32 %sub.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 23
  br i1 %cmp, label %if.then33, label %cond.end.if.end35_crit_edge

cond.end.if.end35_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags, align 1
  %40 = or i8 %39, 1
  store i8 %40, ptr %flags, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %cond.end.if.end35_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i152 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  %call40 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call40, align 4
  %43 = ptrtoint ptr %clks_per_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %clks_per_count, align 4
  %setup = getelementptr inbounds %struct.sh_mobile_dt_config, ptr %call40, i32 0, i32 1
  %44 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %setup, align 4
  %call45 = call i32 %45(ptr noundef nonnull %call.i) #7
  br label %if.end47

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 @sh_mobile_i2c_init(ptr noundef nonnull %call.i)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then42
  %ret.0 = phi i32 [ %call45, %if.then42 ], [ %call46, %if.else ]
  %call.i153 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool50.not = icmp eq i32 %ret.0, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %sg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 21
  call void @sg_init_table(ptr noundef %sg, i32 noundef 1) #7
  %dma_direction = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 22
  %46 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %dma_direction, align 4
  %dma_tx = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 19
  %47 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_tx, align 8
  %dma_rx = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 20
  %48 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_rx, align 4
  %adap54 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2
  %driver_data.i.i154 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 9, i32 8
  %49 = ptrtoint ptr %driver_data.i.i154 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i154, align 4
  %50 = ptrtoint ptr %adap54 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %adap54, align 8
  %algo = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @sh_mobile_i2c_algorithm, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 17
  %52 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @sh_mobile_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %53 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev1, ptr %parent, align 8
  %retries = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 8
  %54 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 5, ptr %retries, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 1
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 11
  %57 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %nr, align 4
  %58 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i.i, align 8
  %of_node60 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 9, i32 27
  %60 = ptrtoint ptr %of_node60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %of_node60, align 8
  %name = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 2, i32 12
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %call62 = call i32 @strlcpy(ptr noundef %name, ptr noundef %62, i32 noundef 48) #7
  %lock = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sh_mobile_i2c_probe.__key, i16 noundef signext 3) #7
  %wait = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %call.i, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.9, ptr noundef nonnull @sh_mobile_i2c_probe.__key.8) #7
  %call70 = call i32 @i2c_add_numbered_adapter(ptr noundef %adap54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %do.end77

if.then73:                                        ; preds = %if.end52
  %63 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_tx, align 8
  %cmp.i.i = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then73.if.end.i155_crit_edge, label %if.then.i

if.then73.if.end.i155_crit_edge:                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i155

if.then.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_release_channel(ptr noundef %64) #7
  %65 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_tx, align 8
  br label %if.end.i155

if.end.i155:                                      ; preds = %if.then.i, %if.then73.if.end.i155_crit_edge
  %66 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_rx, align 4
  %cmp.i15.i = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.end.i155.cleanup_crit_edge, label %if.then5.i

if.end.i155.cleanup_crit_edge:                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_release_channel(ptr noundef %67) #7
  %68 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_rx, align 4
  br label %cleanup

do.end77:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr, align 4
  %71 = ptrtoint ptr %bus_speed31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bus_speed31, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %70, i32 noundef %72) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then5.i, %if.end.i155.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then23, %if.end36.i.cleanup_crit_edge, %cleanup32.i, %do.end.i, %while.body.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %27, %if.then23 ], [ 0, %do.end77 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0, %if.end47.cleanup_crit_edge ], [ %call70, %if.end.i155.cleanup_crit_edge ], [ %call70, %if.then5.i ], [ -2, %if.end36.i.cleanup_crit_edge ], [ -2, %while.cond.preheader.i.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i72.i, %cleanup32.i ], [ %call286.i, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap) #7
  %dma_tx.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx.i, align 8
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef %3) #7
  %4 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_tx.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dma_rx.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_rx.i, align 4
  %cmp.i15.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.end.i.sh_mobile_i2c_release_dma.exit_crit_edge, label %if.then5.i

if.end.i.sh_mobile_i2c_release_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mobile_i2c_release_dma.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_release_channel(ptr noundef %6) #7
  %7 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_rx.i, align 4
  br label %sh_mobile_i2c_release_dma.exit

sh_mobile_i2c_release_dma.exit:                   ; preds = %if.then5.i, %if.end.i.sh_mobile_i2c_release_dma.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_init(ptr nocapture noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %div = udiv i32 %call, 1000
  %clks_per_count = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 4
  %2 = ptrtoint ptr %clks_per_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clks_per_count, align 4
  %div1 = udiv i32 %div, %3
  %bus_speed = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 3
  %4 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_speed, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 100000, label %entry.if.end7_crit_edge
    i32 400000, label %if.then4
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %cleanup

if.end7:                                          ; preds = %if.then4, %entry.if.end7_crit_edge
  %tHIGH.0 = phi i32 [ 9, %if.then4 ], [ 43, %entry.if.end7_crit_edge ]
  %tLOW.0 = phi i32 [ 16, %if.then4 ], [ 50, %entry.if.end7_crit_edge ]
  %mul.i = mul nuw nsw i32 %tLOW.0, %div1
  %add1.i = add nuw nsw i32 %mul.i, 5000
  %div.i = udiv i32 %add1.i, 10000
  %conv = trunc i32 %div.i to i16
  %iccl = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 8
  %9 = ptrtoint ptr %iccl to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %iccl, align 2
  %mul.i26 = mul nuw nsw i32 %tHIGH.0, %div1
  %add1.i27 = add nuw nsw i32 %mul.i26, 5000
  %div.i28 = udiv i32 %add1.i27, 10000
  %conv10 = trunc i32 %div.i28 to i16
  %icch = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 9
  %10 = ptrtoint ptr %icch to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv10, ptr %icch, align 8
  %flags.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 7
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %conv3.i = select i1 %tobool.not.i, i32 255, i32 511
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %div.i)
  %cmp.i = icmp ult i32 %conv3.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %div.i28)
  %cmp7.i = icmp ult i32 %conv3.i, %div.i28
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef %div.i, i32 noundef %div.i28) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %icic20.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 6
  %16 = ptrtoint ptr %icic20.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %icic20.i, align 4
  %18 = and i8 %17, 63
  %and15.i29 = lshr i32 %div.i, 1
  %19 = trunc i32 %and15.i29 to i8
  %20 = and i8 %19, -128
  %21 = lshr i32 %div.i28, 2
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 64
  %.sink.i = or i8 %20, %23
  %.sink70.i = or i8 %.sink.i, %18
  store i8 %.sink70.i, ptr %icic20.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_check_timing.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_init, %cleanup)) #7
          to label %if.then45.i [label %cleanup], !srcloc !141

if.then45.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd, align 8
  %26 = ptrtoint ptr %iccl to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %iccl, align 2
  %conv48.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %icch to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %icch, align 8
  %conv50.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_check_timing.__UNIQUE_ID_ddebug291, ptr noundef %25, ptr noundef nonnull @.str.31, i32 noundef %conv48.i, i32 noundef %conv50.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45.i, %if.end.i, %do.end.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end.i ], [ 0, %if.then45.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %conv = zext i8 %2 to i32
  %sr1 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 14
  %3 = ptrtoint ptr %sr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sr1, align 4
  %or = or i32 %4, %conv
  store i32 %or, ptr %sr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_isr.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_isr, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 8
  %7 = ptrtoint ptr %sr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sr1, align 4
  %msg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 12
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  %cond = select i1 %tobool9.not, ptr @.str.23, ptr @.str.22
  %pos = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 13
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  %conv11 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_isr.__UNIQUE_ID_ddebug294, ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %8, ptr noundef nonnull %cond, i32 noundef %15, i32 noundef %conv11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma_direction = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 22
  %18 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %pos13 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 13
  %20 = ptrtoint ptr %pos13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %icic.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 6
  %25 = ptrtoint ptr %icic.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %icic.i.i, align 4
  %or6.i = or i8 %24, %26
  %or6.i.i = or i8 %or6.i, 32
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %or6.i.i) #7, !srcloc !145
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %and18 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and22 = and i8 %2, -13
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i90, i8 %and22) #7, !srcloc !145
  br label %if.end36

if.else24:                                        ; preds = %if.else
  %msg25 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 12
  %31 = ptrtoint ptr %msg25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msg25, align 4
  %flags26 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %flags26 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags26, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool29.not = icmp eq i16 %35, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @sh_mobile_i2c_isr_rx(ptr noundef %dev_id)
  br label %if.end36

if.else32:                                        ; preds = %if.else24
  %pos.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 13
  %36 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pos.i, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 2
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i)
  %cmp.i = icmp eq i32 %37, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc zeroext i8 @i2c_op(ptr noundef %dev_id, i32 noundef 3) #7
  br label %if.end36

if.end.i:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp3.i = icmp eq i32 %37, -1
  %..i = select i1 %cmp3.i, i32 1, i32 2
  %call7.i = tail call fastcc zeroext i8 @i2c_op(ptr noundef %dev_id, i32 noundef %..i) #7
  %40 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pos.i, align 8
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %pos.i, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.end.i, %if.then.i, %if.then30, %if.then20, %if.then16
  %wakeup.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then20 ], [ %call31, %if.then30 ], [ 1, %if.then.i ], [ 0, %if.end.i ]
  %42 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp38 = icmp eq i32 %43, 2
  br i1 %cmp38, label %land.lhs.true40, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true40:                                  ; preds = %if.end36
  %pos41 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 13
  %44 = ptrtoint ptr %pos41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pos41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp42 = icmp eq i32 %45, 1
  br i1 %cmp42, label %if.then44, label %land.lhs.true40.if.end45_crit_edge

land.lhs.true40.if.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %47, i32 12
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i93) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %icic.i.i95 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 6
  %49 = ptrtoint ptr %icic.i.i95 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %icic.i.i95, align 4
  %or6.i94 = or i8 %48, %50
  %or6.i.i96 = or i8 %or6.i94, 16
  %51 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg.i, align 4
  %add.ptr.i8.i97 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i97, i8 %or6.i.i96) #7, !srcloc !145
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.lhs.true40.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %and47 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end53_crit_edge, label %if.then49

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %and51 = and i8 %2, -3
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i99, i8 %and51) #7, !srcloc !145
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end45.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wakeup.0)
  %tobool54.not = icmp eq i32 %wakeup.0, 0
  br i1 %tobool54.not, label %if.end53.if.end61_crit_edge, label %if.then55

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then55:                                        ; preds = %if.end53
  %55 = ptrtoint ptr %sr1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sr1, align 4
  %or57 = or i32 %56, 32
  store i32 %or57, ptr %sr1, align 4
  %atomic_xfer = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 17
  %57 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %atomic_xfer, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool58.not = icmp eq i8 %58, 0
  br i1 %tobool58.not, label %if.then59, label %if.then55.if.end61_crit_edge

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %wait = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %dev_id, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then55.if.end61_crit_edge, %if.end53.if.end61_crit_edge
  %59 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %60, i32 8
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i102) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_mobile_i2c_isr_rx(ptr noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 13
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 8
  %sub = add i32 %1, -2
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %1, label %if.else6 [
    i32 -1, label %if.then
    i32 0, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef 1)
  br label %done

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef 4)
  br label %done

if.else6:                                         ; preds = %entry
  %msg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 12
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp8 = icmp eq i32 %1, %conv
  br i1 %cmp8, label %if.then10, label %if.else22

if.then10:                                        ; preds = %if.else6
  %stop_after_dma = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 16
  %7 = ptrtoint ptr %stop_after_dma to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stop_after_dma, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef 6)
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pos, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %pos, align 8
  br label %done

if.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef 6)
  br label %done

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef 7)
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call19, ptr %arrayidx, align 1
  br label %done

if.else22:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp23 = icmp sgt i32 %sub, -1
  br i1 %cmp23, label %if.then25, label %if.else22.done_crit_edge

if.else22.done_crit_edge:                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then25:                                        ; preds = %if.else22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_op.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_isr_rx, %do.body5.i)) #7
          to label %if.then.i [label %do.body5.i], !srcloc !141

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_op.__UNIQUE_ID_ddebug292, ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef 5) #7
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %if.then25
  %lock.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 10
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %reg.i90.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i90.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg.i90.i, align 4
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_op.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_isr_rx, %i2c_op.exit)) #7
          to label %if.then49.i [label %i2c_op.exit], !srcloc !141

if.then49.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd, align 8
  %conv51.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_op.__UNIQUE_ID_ddebug293, ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv51.i) #7
  br label %i2c_op.exit

i2c_op.exit:                                      ; preds = %if.then49.i, %do.body5.i
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %msg, align 4
  %buf28 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %buf28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf28, align 4
  %arrayidx29 = getelementptr i8, ptr %26, i32 %sub
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %20, ptr %arrayidx29, align 1
  br label %done

done:                                             ; preds = %i2c_op.exit, %if.else22.done_crit_edge, %if.else18, %if.then16, %if.then11, %if.then4, %if.then
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos, align 8
  %inc35 = add i32 %29, 1
  store i32 %inc35, ptr %pos, align 8
  %msg37 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 12
  %30 = ptrtoint ptr %msg37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msg37, align 4
  %len38 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %len38 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len38, align 4
  %conv39 = zext i16 %33 to i32
  %34 = add nuw nsw i32 %conv39, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %34)
  %cmp40 = icmp eq i32 %29, %34
  %conv41 = zext i1 %cmp40 to i32
  ret i32 %conv41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_op.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_op, %do.body5)) #7
          to label %if.then [label %do.body5], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_op.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %op) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 10
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %op, label %do.body5.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb15
    i32 3, label %sw.bb17
    i32 4, label %sw.bb21
    i32 5, label %sw.bb22
    i32 6, label %sw.bb24
    i32 7, label %sw.bb28
  ]

do.body5.sw.epilog_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %reg.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -108) #7, !srcloc !145
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %icic.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 6
  %5 = ptrtoint ptr %icic.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %icic.i, align 4
  %or6.i = or i8 %6, 14
  %reg.i82 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %7 = ptrtoint ptr %reg.i82 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i82, align 4
  %add.ptr.i83 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i83, i8 %or6.i) #7, !srcloc !145
  %msg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 12
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %conv.i = trunc i16 %12 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 2
  %15 = trunc i16 %14 to i8
  %16 = and i8 %15, 1
  %or.i = or i8 %16, %shl.i
  %17 = ptrtoint ptr %reg.i82 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i82, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %or.i) #7, !srcloc !145
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %msg16 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 12
  %19 = ptrtoint ptr %msg16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg16, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %pos = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 13
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pos, align 8
  %arrayidx = getelementptr i8, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %reg.i85 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %27 = ptrtoint ptr %reg.i85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i85, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #7, !srcloc !145
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %send_stop = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 15
  %29 = ptrtoint ptr %send_stop to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %send_stop, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not = icmp eq i8 %30, 0
  %conv20 = select i1 %tobool18.not, i8 -108, i8 -112
  %reg.i86 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %31 = ptrtoint ptr %reg.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i87, i8 %conv20) #7, !srcloc !145
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %reg.i88 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %33 = ptrtoint ptr %reg.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i88, align 4
  %add.ptr.i89 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i89, i8 -127) #7, !srcloc !145
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %reg.i90 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %35 = ptrtoint ptr %reg.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i90, align 4
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body5
  %atomic_xfer = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 17
  %38 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %atomic_xfer, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool25.not = icmp eq i8 %39, 0
  br i1 %tobool25.not, label %if.then26, label %sw.bb24.if.end27_crit_edge

sw.bb24.if.end27_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %icic.i91 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 6
  %40 = ptrtoint ptr %icic.i91 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %icic.i91, align 4
  %or6.i92 = or i8 %41, 15
  %reg.i93 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %42 = ptrtoint ptr %reg.i93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i94, i8 %or6.i92) #7, !srcloc !145
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %sw.bb24.if.end27_crit_edge
  %reg.i95 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %44 = ptrtoint ptr %reg.i95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i96, i8 -64) #7, !srcloc !145
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.body5
  %atomic_xfer29 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 17
  %46 = ptrtoint ptr %atomic_xfer29 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %atomic_xfer29, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool30.not = icmp eq i8 %47, 0
  br i1 %tobool30.not, label %if.then31, label %sw.bb28.if.end32_crit_edge

sw.bb28.if.end32_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  %icic.i97 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 6
  %48 = ptrtoint ptr %icic.i97 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %icic.i97, align 4
  %or6.i98 = or i8 %49, 15
  %reg.i99 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %50 = ptrtoint ptr %reg.i99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i100, i8 %or6.i98) #7, !srcloc !145
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %sw.bb28.if.end32_crit_edge
  %reg.i101 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %52 = ptrtoint ptr %reg.i101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i101, align 4
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %53) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %55 = ptrtoint ptr %reg.i101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg.i101, align 4
  %add.ptr.i103 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i103, i8 -64) #7, !srcloc !145
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end32, %if.end27, %sw.bb22, %sw.bb21, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb, %do.body5.sw.epilog_crit_edge
  %ret.0 = phi i8 [ 0, %do.body5.sw.epilog_crit_edge ], [ %54, %if.end32 ], [ 0, %if.end27 ], [ %37, %sw.bb22 ], [ 0, %sw.bb21 ], [ 0, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_op.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_op, %do.end54)) #7
          to label %if.then49 [label %do.end54], !srcloc !141

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd, align 8
  %conv51 = zext i8 %ret.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_op.__UNIQUE_ID_ddebug293, ptr noundef %58, ptr noundef nonnull @.str.26, i32 noundef %op, i32 noundef %conv51) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %sw.epilog
  ret i8 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %atomic_xfer = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %atomic_xfer, align 2
  %call1 = tail call fastcc i32 @sh_mobile_xfer(ptr noundef %1, ptr noundef %msgs, i32 noundef %num)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_xfer_atomic(ptr nocapture noundef readonly %adapter, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %atomic_xfer = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %atomic_xfer, align 2
  %call1 = tail call fastcc i32 @sh_mobile_xfer(ptr noundef %1, ptr noundef %msgs, i32 noundef %num)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592717
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_mobile_xfer(ptr noundef %pd, ptr noundef %msgs, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp239 = icmp sgt i32 %num, 0
  br i1 %cmp239, label %for.body.lr.ph, label %entry.for.end126_crit_edge

entry.for.end126_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.body.lr.ph:                                   ; preds = %entry
  %send_stop = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 15
  %sub = add nsw i32 %num, -1
  %stop_after_dma = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 16
  %reg.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %iccl.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 8
  %icch.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 9
  %msg.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 12
  %pos.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 13
  %sr.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 14
  %atomic_xfer.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 17
  %dma_buf.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 23
  %icic.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 6
  %timeout = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 2, i32 7
  %wait = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0240 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %send_stop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %send_stop, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0240)
  %tobool1.not = icmp eq i32 %i.0240, 0
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0240
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0240, i32 %sub)
  %cmp2 = icmp eq i32 %i.0240, %sub
  br i1 %cmp2, label %for.body.lor.end5_crit_edge, label %lor.rhs3

for.body.lor.end5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end5

lor.rhs3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0240, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool4 = icmp slt i16 %5, 0
  br label %lor.end5

lor.end5:                                         ; preds = %lor.rhs3, %for.body.lor.end5_crit_edge
  %6 = phi i1 [ true, %for.body.lor.end5_crit_edge ], [ %tobool4, %lor.rhs3 ]
  %frombool7 = zext i1 %6 to i8
  %7 = ptrtoint ptr %send_stop to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool7, ptr %send_stop, align 8
  %8 = ptrtoint ptr %stop_after_dma to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %stop_after_dma, align 1
  br i1 %spec.select, label %if.then.i, label %lor.end5.if.end.i_crit_edge

lor.end5.if.end.i_crit_edge:                      ; preds = %lor.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %lor.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #7, !srcloc !145
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %12, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28.i, i8 -127) #7, !srcloc !145
  %13 = ptrtoint ptr %iccl.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %iccl.i, align 2
  %conv1.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %16, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i30.i, i8 %conv1.i) #7, !srcloc !145
  %17 = ptrtoint ptr %icch.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %icch.i, align 8
  %conv4.i = trunc i16 %18 to i8
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %20, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i32.i, i8 %conv4.i) #7, !srcloc !145
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.end5.if.end.i_crit_edge
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %msg.i, align 4
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %pos.i, align 8
  %23 = ptrtoint ptr %sr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sr.i, align 4
  %24 = ptrtoint ptr %atomic_xfer.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %atomic_xfer.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool5.not.i = icmp eq i8 %25, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.start_ch.exit_crit_edge

if.end.i.start_ch.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %start_ch.exit

if.end7.i:                                        ; preds = %if.end.i
  %call.i183 = call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %arrayidx, i32 noundef 8) #7
  %26 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i183, ptr %dma_buf.i, align 8
  %tobool10.not.i = icmp eq ptr %call.i183, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then11.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @sh_mobile_i2c_xfer_dma(ptr noundef %pd) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  %27 = ptrtoint ptr %icic.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %icic.i.i, align 4
  %or6.i.i = or i8 %28, 15
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %30, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i34.i, i8 %or6.i.i) #7, !srcloc !145
  br label %start_ch.exit

start_ch.exit:                                    ; preds = %if.end12.i, %if.end.i.start_ch.exit_crit_edge
  br i1 %spec.select, label %if.then, label %start_ch.exit.if.end_crit_edge

start_ch.exit.if.end_crit_edge:                   ; preds = %start_ch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %start_ch.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call fastcc zeroext i8 @i2c_op(ptr noundef %pd, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %start_ch.exit.if.end_crit_edge
  %31 = ptrtoint ptr %atomic_xfer.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %atomic_xfer.i, align 2, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11.not = icmp eq i8 %32, 0
  br i1 %tobool11.not, label %if.else39, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout, align 4
  %add = add i32 %35, %33
  %36 = xor i32 %add, -1
  %.pn223 = load volatile i32, ptr @jiffies, align 128
  %time_left.0.in224 = add i32 %.pn223, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %time_left.0.in224)
  %tobool16.not225 = icmp sgt i32 %time_left.0.in224, -1
  br i1 %tobool16.not225, label %if.then12.if.end100.loopexit_crit_edge, label %land.rhs.preheader

if.then12.if.end100.loopexit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.loopexit

land.rhs.preheader:                               ; preds = %if.then12
  %37 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sr.i, align 4
  %and17260 = and i32 %38, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17260)
  %tobool18.not261 = icmp eq i32 %and17260, 0
  br i1 %tobool18.not261, label %land.rhs.preheader.while.body_crit_edge, label %land.rhs.preheader.if.end100.loopexit_crit_edge

land.rhs.preheader.if.end100.loopexit_crit_edge:  ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.loopexit

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs:                                         ; preds = %if.end34
  %39 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sr.i, align 4
  %and17 = and i32 %40, 36
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.rhs.while.body_crit_edge, label %land.rhs.if.end100.loopexit_crit_edge

land.rhs.if.end100.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.loopexit

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 8
  %43 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %44 = and i8 %43, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool25.not = icmp eq i8 %44, 0
  br i1 %tobool25.not, label %do.end, label %if.then26

if.then26:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 @sh_mobile_i2c_isr(i32 noundef 0, ptr noundef %pd)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 32212200) #7
  br label %if.end34

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !148
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %.pn = load volatile i32, ptr @jiffies, align 128
  %time_left.0.in = add i32 %.pn, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %time_left.0.in)
  %tobool16.not = icmp sgt i32 %time_left.0.in, -1
  br i1 %tobool16.not, label %if.end34.if.end100.loopexit_crit_edge, label %land.rhs

if.end34.if.end100.loopexit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.loopexit

if.else39:                                        ; preds = %if.end
  %46 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timeout, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 683) #7
  %48 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sr.i, align 4
  %and49 = and i32 %49, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not = icmp eq i32 %47, 0
  %spec.store.select = select i1 %tobool54.not, i32 1, i32 %47
  %__ret.0 = select i1 %tobool50.not, i32 %47, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool60.not = icmp eq i32 %__ret.0, 0
  %not.tobool50.not = xor i1 %tobool50.not, true
  %50 = select i1 %not.tobool50.not, i1 true, i1 %tobool60.not
  br i1 %50, label %if.else39.if.end95_crit_edge, label %if.then64

if.else39.if.end95_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then64:                                        ; preds = %if.else39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %51 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %52 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %timeout, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call69228 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %54 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sr.i, align 4
  %and72229 = and i32 %55, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72229)
  %tobool73.not230 = icmp eq i32 %and72229, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool78.not231 = icmp eq i32 %53, 0
  %spec.store.select134232 = select i1 %tobool78.not231, i32 1, i32 %53
  %__ret65.1233 = select i1 %tobool73.not230, i32 %53, i32 %spec.store.select134232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret65.1233)
  %tobool85.not234 = icmp eq i32 %__ret65.1233, 0
  %not.tobool73.not235 = xor i1 %tobool73.not230, true
  %56 = select i1 %not.tobool73.not235, i1 true, i1 %tobool85.not234
  br i1 %56, label %if.then64.for.end_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  br label %cleanup

if.then64.for.end_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then64.cleanup_crit_edge
  %__ret65.1236 = phi i32 [ %__ret65.1, %cleanup.cleanup_crit_edge ], [ %__ret65.1233, %if.then64.cleanup_crit_edge ]
  %call92 = call i32 @schedule_timeout(i32 noundef %__ret65.1236) #7
  %call69 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %57 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sr.i, align 4
  %and72 = and i32 %58, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool78.not = icmp eq i32 %call92, 0
  %spec.store.select134 = select i1 %tobool78.not, i32 1, i32 %call92
  %__ret65.1 = select i1 %tobool73.not, i32 %call92, i32 %spec.store.select134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret65.1)
  %tobool85.not = icmp eq i32 %__ret65.1, 0
  %not.tobool73.not = xor i1 %tobool73.not, true
  %59 = select i1 %not.tobool73.not, i1 true, i1 %tobool85.not
  br i1 %59, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then64.for.end_crit_edge
  %__ret65.1.lcssa = phi i32 [ %__ret65.1233, %if.then64.for.end_crit_edge ], [ %__ret65.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end95

if.end95:                                         ; preds = %for.end, %if.else39.if.end95_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.else39.if.end95_crit_edge ], [ %__ret65.1.lcssa, %for.end ]
  %60 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_buf.i, align 8
  %62 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msg.i, align 4
  %64 = ptrtoint ptr %stop_after_dma to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %stop_after_dma, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool99 = icmp ne i8 %65, 0
  call void @i2c_put_dma_safe_msg_buf(ptr noundef %61, ptr noundef %63, i1 noundef zeroext %tobool99) #7
  br label %if.end100

if.end100.loopexit:                               ; preds = %if.end34.if.end100.loopexit_crit_edge, %land.rhs.if.end100.loopexit_crit_edge, %land.rhs.preheader.if.end100.loopexit_crit_edge, %if.then12.if.end100.loopexit_crit_edge
  %time_left.0.in.lcssa = phi i32 [ %time_left.0.in224, %if.then12.if.end100.loopexit_crit_edge ], [ %time_left.0.in224, %land.rhs.preheader.if.end100.loopexit_crit_edge ], [ %time_left.0.in, %land.rhs.if.end100.loopexit_crit_edge ], [ %time_left.0.in, %if.end34.if.end100.loopexit_crit_edge ]
  %time_left.0.le = lshr i32 %time_left.0.in.lcssa, 31
  br label %if.end100

if.end100:                                        ; preds = %if.end100.loopexit, %if.end95
  %time_left.1 = phi i32 [ %__ret.1, %if.end95 ], [ %time_left.0.le, %if.end100.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_left.1)
  %tobool101.not = icmp eq i32 %time_left.1, 0
  br i1 %tobool101.not, label %do.end105, label %if.end111

do.end105:                                        ; preds = %if.end100
  %66 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.32) #10
  %dma_direction = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 22
  %68 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp107.not = icmp eq i32 %69, 3
  br i1 %cmp107.not, label %do.end105.for.end126_crit_edge, label %if.then109

do.end105.for.end126_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

if.then109:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp.i = icmp eq i32 %69, 2
  %dma_rx.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 20
  %dma_tx.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 19
  %cond.in.i = select i1 %cmp.i, ptr %dma_rx.i, ptr %dma_tx.i
  %70 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %71 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cond.i, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %72, i32 0, i32 47
  %73 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i.i, label %if.then109.sh_mobile_i2c_cleanup_dma.exit_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.then109.sh_mobile_i2c_cleanup_dma.exit_crit_edge: ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mobile_i2c_cleanup_dma.exit

dmaengine_terminate_async.exit.i.i:               ; preds = %if.then109
  %call.i.i.i = call i32 %74(ptr noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.sh_mobile_i2c_cleanup_dma.exit_crit_edge

dmaengine_terminate_async.exit.i.i.sh_mobile_i2c_cleanup_dma.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mobile_i2c_cleanup_dma.exit

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 1169) #7
  %75 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cond.i, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 48
  %77 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.sh_mobile_i2c_cleanup_dma.exit_crit_edge, label %if.then.i2.i.i

if.end.i.i.sh_mobile_i2c_cleanup_dma.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mobile_i2c_cleanup_dma.exit

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %78(ptr noundef %cond.i) #7
  br label %sh_mobile_i2c_cleanup_dma.exit

sh_mobile_i2c_cleanup_dma.exit:                   ; preds = %if.then.i2.i.i, %if.end.i.i.sh_mobile_i2c_cleanup_dma.exit_crit_edge, %dmaengine_terminate_async.exit.i.i.sh_mobile_i2c_cleanup_dma.exit_crit_edge, %if.then109.sh_mobile_i2c_cleanup_dma.exit_crit_edge
  %79 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cond.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 15
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %dma_address.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 21, i32 3
  %83 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_address.i, align 4
  %85 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %msg.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma_direction, align 4
  call void @dma_unmap_page_attrs(ptr noundef %82, i32 noundef %84, i32 noundef %conv.i, i32 noundef %90, i32 noundef 0) #7
  %91 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 3, ptr %dma_direction, align 4
  br label %for.end126

if.end111:                                        ; preds = %if.end100
  %92 = ptrtoint ptr %send_stop to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %send_stop, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool113.not = icmp eq i8 %93, 0
  br i1 %tobool113.not, label %if.end111.for.body.i195_crit_edge, label %if.end111.for.body.i_crit_edge

if.end111.for.body.i_crit_edge:                   ; preds = %if.end111
  br label %for.body.i

if.end111.for.body.i195_crit_edge:                ; preds = %if.end111
  br label %for.body.i195

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end111.for.body.i_crit_edge
  %i.041.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ 1000, %if.end111.for.body.i_crit_edge ]
  %94 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i189 = getelementptr i8, ptr %95, i32 8
  %96 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i189) #7, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_busy.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_xfer, %do.end.i)) #7
          to label %if.then.i191 [label %do.end.i], !srcloc !141

if.then.i191:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pd, align 8
  %conv.i190 = zext i8 %96 to i32
  %99 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sr.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_busy.__UNIQUE_ID_ddebug301, ptr noundef %98, ptr noundef nonnull @.str.48, i32 noundef %conv.i190, i32 noundef %100) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i191, %for.body.i
  %101 = and i8 %96, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool7.not.i = icmp eq i8 %101, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %for.inc.i

if.then8.i:                                       ; preds = %do.end.i
  %102 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sr.i, align 4
  %104 = trunc i32 %103 to i8
  %conv11.i = or i8 %96, %104
  %conv12.i = zext i8 %conv11.i to i32
  %and13.i = and i32 %conv12.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then8.i.for.end126_crit_edge

if.then8.i.for.end126_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

if.end16.i:                                       ; preds = %if.then8.i
  %and18.i = and i32 %conv12.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.for.inc_crit_edge, label %if.end16.i.for.end126_crit_edge

if.end16.i.for.end126_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

if.end16.i.for.inc_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.i:                                        ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 2147480) #7
  %dec.i = add nsw i32 %i.041.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.for.end126_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end126_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.body.i195:                                    ; preds = %for.inc.i199.for.body.i195_crit_edge, %if.end111.for.body.i195_crit_edge
  %i.015.i = phi i32 [ %dec.i197, %for.inc.i199.for.body.i195_crit_edge ], [ 1000, %if.end111.for.body.i195_crit_edge ]
  %106 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i193 = getelementptr i8, ptr %107, i32 8
  %108 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i193) #7, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %conv.i194 = zext i8 %108 to i32
  %and.i = and i32 %conv.i194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i196, label %for.body.i195.for.inc_crit_edge

for.body.i195.for.inc_crit_edge:                  ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i196:                                      ; preds = %for.body.i195
  %and3.i = and i32 %conv.i194, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %for.inc.i199, label %if.end.i196.for.end126_crit_edge

if.end.i196.for.end126_crit_edge:                 ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.inc.i199:                                     ; preds = %if.end.i196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 2147480) #7
  %dec.i197 = add nsw i32 %i.015.i, -1
  %tobool.not.i198 = icmp eq i32 %dec.i197, 0
  br i1 %tobool.not.i198, label %for.inc.i199.for.end126_crit_edge, label %for.inc.i199.for.body.i195_crit_edge

for.inc.i199.for.body.i195_crit_edge:             ; preds = %for.inc.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i195

for.inc.i199.for.end126_crit_edge:                ; preds = %for.inc.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.inc:                                          ; preds = %for.body.i195.for.inc_crit_edge, %if.end16.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0240, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end126_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end126_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.end126:                                       ; preds = %for.inc.for.end126_crit_edge, %for.inc.i199.for.end126_crit_edge, %if.end.i196.for.end126_crit_edge, %for.inc.i.for.end126_crit_edge, %if.end16.i.for.end126_crit_edge, %if.then8.i.for.end126_crit_edge, %sh_mobile_i2c_cleanup_dma.exit, %do.end105.for.end126_crit_edge, %entry.for.end126_crit_edge
  %spec.select216 = phi i32 [ -110, %do.end105.for.end126_crit_edge ], [ -110, %sh_mobile_i2c_cleanup_dma.exit ], [ %num, %entry.for.end126_crit_edge ], [ -110, %for.inc.i199.for.end126_crit_edge ], [ -6, %if.end.i196.for.end126_crit_edge ], [ -110, %for.inc.i.for.end126_crit_edge ], [ %num, %for.inc.for.end126_crit_edge ], [ -11, %if.end16.i.for.end126_crit_edge ], [ -6, %if.then8.i.for.end126_crit_edge ]
  %reg.i201 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %110 = ptrtoint ptr %reg.i201 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg.i201, align 4
  %add.ptr.i202 = getelementptr i8, ptr %111, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i202, i8 1) #7, !srcloc !145
  %112 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pd, align 8
  %call.i204 = call i32 @__pm_runtime_idle(ptr noundef %113, i32 noundef 4) #7
  ret i32 %spec.select216
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_dma_safe_msg_buf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_dma_safe_msg_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_i2c_xfer_dma(ptr noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 12
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %dma_rx = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 20
  %dma_tx = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 19
  %cond5.in = select i1 %tobool.not, ptr %dma_tx, ptr %dma_rx
  %5 = ptrtoint ptr %cond5.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond5 = load ptr, ptr %cond5.in, align 4
  %cmp = icmp eq ptr %cond5, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 8
  %res12 = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 18
  %8 = ptrtoint ptr %res12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res12, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc ptr @sh_mobile_i2c_request_dma_chan(ptr noundef %7, i32 noundef 2, i32 noundef %11)
  %12 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %dma_rx, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc ptr @sh_mobile_i2c_request_dma_chan(ptr noundef %7, i32 noundef 1, i32 noundef %11)
  %13 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %dma_tx, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then8, %entry.if.end17_crit_edge
  %chan.0 = phi ptr [ %call9, %if.then8 ], [ %call15, %if.else ], [ %cond5, %entry.if.end17_crit_edge ]
  %cmp.i = icmp ugt ptr %chan.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan.0, align 4
  %dev21 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev21, align 4
  %dma_buf = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 23
  %18 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_buf, align 8
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %19) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end20
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !149

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %17) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %27, %if.end.i.i ], [ %25, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %conv23 = zext i16 %23 to i32
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %19, i32 noundef %conv23) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %19 to i32
  %sub.i = add i32 %29, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %28, i32 %shr.i
  %and.i = and i32 %29, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv23, i32 noundef %cond, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i140 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %30 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.0, align 4
  %dev26 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev26, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %33, i32 noundef %retval.0.i140) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i140)
  %cmp.i141 = icmp eq i32 %retval.0.i140, -1
  br i1 %cmp.i141, label %do.body, label %if.end39

do.body:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_xfer_dma, %cleanup)) #7
          to label %if.then36 [label %cleanup], !srcloc !141

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug298, ptr noundef %35, ptr noundef nonnull @.str.35) #7
  br label %cleanup

if.end39:                                         ; preds = %dma_map_single_attrs.exit
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msg, align 4
  %len41 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %len41 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len41, align 4
  %conv42 = zext i16 %39 to i32
  %sg = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 21
  %dma_length = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 21, i32 4
  %40 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv42, ptr %dma_length, align 8
  %dma_address = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 21, i32 3
  %41 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i140, ptr %dma_address, align 4
  %dma_direction = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 22
  %42 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond, ptr %dma_direction, align 4
  %tobool.not.i = icmp eq ptr %chan.0, null
  br i1 %tobool.not.i, label %if.end39.do.body51_crit_edge, label %lor.lhs.false.i

if.end39.do.body51_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

lor.lhs.false.i:                                  ; preds = %if.end39
  %43 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan.0, align 4
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body51_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body51_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 39
  %45 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body51_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.body51_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i142 = tail call ptr %46(ptr noundef nonnull %chan.0, ptr noundef %sg, i32 noundef 1, i32 noundef %cond, i32 noundef 3, ptr noundef null) #7
  %tobool49.not = icmp eq ptr %call.i142, null
  br i1 %tobool49.not, label %dmaengine_prep_slave_sg.exit.do.body51_crit_edge, label %if.end70

dmaengine_prep_slave_sg.exit.do.body51_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

do.body51:                                        ; preds = %dmaengine_prep_slave_sg.exit.do.body51_crit_edge, %lor.lhs.false2.i.do.body51_crit_edge, %lor.lhs.false.i.do.body51_crit_edge, %if.end39.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_xfer_dma, %do.end69)) #7
          to label %if.then65 [label %do.end69], !srcloc !141

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug299, ptr noundef %48, ptr noundef nonnull @.str.36) #7
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body51
  %49 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i144 = icmp eq i32 %50, 2
  %cond.in.i = select i1 %cmp.i144, ptr %dma_rx, ptr %dma_tx
  %51 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %52 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cond.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %56 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_address, align 4
  %58 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msg, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %61 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %57, i32 noundef %conv.i, i32 noundef %50, i32 noundef 0) #7
  %62 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %dma_direction, align 4
  br label %cleanup

if.end70:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i142, i32 0, i32 6
  %63 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @sh_mobile_i2c_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i142, i32 0, i32 8
  %64 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %pd, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i142, i32 0, i32 4
  %65 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_submit.i, align 4
  %call.i146 = tail call i32 %66(ptr noundef nonnull %call.i142) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i146)
  %tobool73.not = icmp sgt i32 %call.i146, -1
  br i1 %tobool73.not, label %if.end94, label %do.body75

do.body75:                                        ; preds = %if.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_xfer_dma, %do.end93)) #7
          to label %if.then89 [label %do.end93], !srcloc !141

if.then89:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug300, ptr noundef %68, ptr noundef nonnull @.str.37) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body75
  %69 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp.i148 = icmp eq i32 %70, 2
  %cond.in.i151 = select i1 %cmp.i148, ptr %dma_rx, ptr %dma_tx
  %71 = ptrtoint ptr %cond.in.i151 to i32
  call void @__asan_load4_noabort(i32 %71)
  %cond.i152 = load ptr, ptr %cond.in.i151, align 4
  %72 = ptrtoint ptr %cond.i152 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cond.i152, align 4
  %dev.i153 = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %dev.i153 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i153, align 4
  %76 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_address, align 4
  %78 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %msg, align 4
  %len.i156 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %len.i156 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %len.i156, align 4
  %conv.i157 = zext i16 %81 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %77, i32 noundef %conv.i157, i32 noundef %70, i32 noundef 0) #7
  %82 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %dma_direction, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chan.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 50
  %85 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %86(ptr noundef nonnull %chan.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end93, %do.end69, %if.then36, %do.body, %if.end17.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sh_mobile_i2c_request_dma_chan(ptr noundef %dev, i32 noundef %dir, i32 noundef %port_addr) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, ptr @.str.38, ptr @.str.39
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %cond) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_request_dma_chan, %cleanup)) #7
          to label %if.then6 [label %cleanup], !srcloc !141

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond, i32 noundef %0) #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %cfg, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 44)
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dir, ptr %cfg, align 4
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port_addr, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  br label %if.end11

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %port_addr, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %src_addr_width.sink = phi ptr [ %src_addr_width, %if.else ], [ %dst_addr_width, %if.then10 ]
  %6 = ptrtoint ptr %src_addr_width.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %src_addr_width.sink, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end11.do.body15_crit_edge, label %dmaengine_slave_config.exit

if.end11.do.body15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

dmaengine_slave_config.exit:                      ; preds = %if.end11
  %call.i = call i32 %10(ptr noundef %call, ptr noundef nonnull %cfg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %do.body35, label %dmaengine_slave_config.exit.do.body15_crit_edge

dmaengine_slave_config.exit.do.body15_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

do.body15:                                        ; preds = %dmaengine_slave_config.exit.do.body15_crit_edge, %if.end11.do.body15_crit_edge
  %retval.0.i7882 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.body15_crit_edge ], [ -38, %if.end11.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_request_dma_chan, %do.end32)) #7
          to label %if.then29 [label %do.end32], !srcloc !141

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond, i32 noundef %retval.0.i7882) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body15
  call void @dma_release_channel(ptr noundef %call) #7
  %11 = inttoptr i32 %retval.0.i7882 to ptr
  br label %cleanup

do.body35:                                        ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_request_dma_chan, %cleanup)) #7
          to label %if.then49 [label %cleanup], !srcloc !141

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body35, %do.end32, %if.then6, %do.body
  %retval.0 = phi ptr [ %11, %do.end32 ], [ %call, %if.then6 ], [ %call, %if.then49 ], [ %call, %do.body ], [ %call, %do.body35 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mobile_i2c_dma_callback(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_direction.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %dma_direction.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %dma_rx.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 20
  %dma_tx.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 19
  %cond.in.i = select i1 %cmp.i, ptr %dma_rx.i, ptr %dma_tx.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %3 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cond.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %dma_address.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 21, i32 3
  %7 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_address.i, align 4
  %msg.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 12
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %12 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %8, i32 noundef %conv.i, i32 noundef %1, i32 noundef 0) #7
  %13 = ptrtoint ptr %dma_direction.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %dma_direction.i, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg.i, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  %conv = zext i16 %17 to i32
  %pos = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 13
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %pos, align 8
  %stop_after_dma = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 16
  %19 = ptrtoint ptr %stop_after_dma to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %stop_after_dma, align 1
  %reg.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %and.i = and i8 %22, -49
  %icic.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %data, i32 0, i32 6
  %23 = ptrtoint ptr %icic.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %icic.i.i, align 4
  %or6.i.i = or i8 %24, %and.i
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %or6.i.i) #7, !srcloc !145
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_r8a7740_workaround(ptr nocapture noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 1
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %or6.i = or i8 %2, -128
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %or6.i) #7, !srcloc !145
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %9, i32 112
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i13) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %or6.i14 = or i8 %10, 16
  %11 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i8.i15 = getelementptr i8, ptr %12, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i15, i8 %or6.i14) #7, !srcloc !145
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 112
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i17) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #7
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 1) #7, !srcloc !145
  %19 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21, i8 0) #7, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  %22 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i23, i8 16) #7, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #7
  %25 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i25, i8 0) #7, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #7
  %28 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i27, i8 16) #7, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #7
  %call2 = tail call i32 @sh_mobile_i2c_init(ptr noundef %pd)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_v2_init(ptr nocapture noundef %pd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %bus_speed = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 3
  %2 = ptrtoint ptr %bus_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_speed, align 8
  %div = udiv i32 %call, %3
  %mul = mul i32 %div, 5
  %div1 = udiv i32 %mul, 9
  %clks_per_count = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 4
  %4 = ptrtoint ptr %clks_per_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clks_per_count, align 4
  %add = add i32 %5, -2
  %sub2 = add i32 %add, %div1
  %div4 = udiv i32 %sub2, %5
  %conv = trunc i32 %div4 to i16
  %iccl = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 8
  %6 = ptrtoint ptr %iccl to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %iccl, align 2
  %mul5 = shl i32 %div, 2
  %div6 = udiv i32 %mul5, 9
  %add9 = add i32 %5, -6
  %sub10 = add i32 %add9, %div6
  %div12 = udiv i32 %sub10, %5
  %conv13 = trunc i32 %div12 to i16
  %icch = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 9
  %7 = ptrtoint ptr %icch to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv13, ptr %icch, align 8
  %flags.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %conv2.i = and i32 %div4, 65535
  %conv3.i = select i1 %tobool.not.i, i32 255, i32 511
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %conv2.i)
  %cmp.i = icmp ult i32 %conv3.i, %conv2.i
  %conv5.i = and i32 %div12, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %conv5.i)
  %cmp7.i = icmp ult i32 %conv3.i, %conv5.i
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29, i32 noundef %conv2.i, i32 noundef %conv5.i) #10
  br label %sh_mobile_i2c_check_timing.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %icic20.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %pd, i32 0, i32 6
  %13 = ptrtoint ptr %icic20.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %icic20.i, align 4
  %15 = and i8 %14, 63
  %and15.i24 = lshr i32 %div4, 1
  %16 = trunc i32 %and15.i24 to i8
  %17 = and i8 %16, -128
  %18 = lshr i32 %div12, 2
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 64
  %.sink.i = or i8 %20, %17
  %.sink70.i = or i8 %.sink.i, %15
  store i8 %.sink70.i, ptr %icic20.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mobile_i2c_check_timing.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_mobile_i2c_v2_init, %sh_mobile_i2c_check_timing.exit)) #7
          to label %if.then45.i [label %sh_mobile_i2c_check_timing.exit], !srcloc !141

if.then45.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd, align 8
  %23 = ptrtoint ptr %iccl to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %iccl, align 2
  %conv48.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %icch to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %icch, align 8
  %conv50.i = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mobile_i2c_check_timing.__UNIQUE_ID_ddebug291, ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef %conv48.i, i32 noundef %conv50.i) #7
  br label %sh_mobile_i2c_check_timing.exit

sh_mobile_i2c_check_timing.exit:                  ; preds = %if.then45.i, %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.then45.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2
  %lock_ops.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #7
  %locked_flags.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #7
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mobile_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2
  %lock_ops.i.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #7
  %locked_flags.i = getelementptr inbounds %struct.sh_mobile_i2c_data, ptr %1, i32 0, i32 2, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #7
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_i2c_sh_mobile__302_1010_sh_mobile_i2c_adap_init4, !1, !"__initcall__kmod_i2c_sh_mobile__302_1010_sh_mobile_i2c_adap_init4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1010, i32 1}
!2 = !{ptr @__exitcall_sh_mobile_i2c_adap_exit, !3, !"__exitcall_sh_mobile_i2c_adap_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1016, i32 1}
!4 = !{ptr @__UNIQUE_ID_description303, !5, !"__UNIQUE_ID_description303", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1018, i32 1}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1019, i32 1}
!8 = !{ptr @__UNIQUE_ID_author305, !9, !"__UNIQUE_ID_author305", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1020, i32 1}
!10 = !{ptr @__UNIQUE_ID_file306, !11, !"__UNIQUE_ID_file306", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1021, i32 1}
!12 = !{ptr @__UNIQUE_ID_license307, !11, !"__UNIQUE_ID_license307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias308, !14, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 1022, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 998, i32 12}
!17 = !{ptr @sh_mobile_i2c_driver, !18, !"sh_mobile_i2c_driver", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 996, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 885, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sh_mobile_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @sh_mobile_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 903, i32 47}
!29 = !{ptr @sh_mobile_i2c_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 945, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sh_mobile_i2c_probe.__key.8, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 946, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 954, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sh_mobile_i2c_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sh_mobile_i2c_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 845, i32 5}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sh_mobile_i2c_hook_irqs._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sh_mobile_i2c_hook_irqs._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 859, i32 6}
!47 = !{ptr @sh_mobile_i2c_hook_irqs._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sh_mobile_i2c_hook_irqs._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 411, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sh_mobile_i2c_isr.__UNIQUE_ID_ddebug294, !50, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!54 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 308, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @i2c_op.__UNIQUE_ID_ddebug292, !57, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 350, i32 2}
!62 = !{ptr @i2c_op.__UNIQUE_ID_ddebug293, !61, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 280, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sh_mobile_i2c_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sh_mobile_i2c_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 243, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sh_mobile_i2c_check_timing._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sh_mobile_i2c_check_timing._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 260, i32 2}
!75 = !{ptr @sh_mobile_i2c_check_timing.__UNIQUE_ID_ddebug291, !74, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!76 = !{ptr @sh_mobile_i2c_algorithm, !77, !"sh_mobile_i2c_algorithm", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 741, i32 35}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 691, i32 4}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sh_mobile_xfer._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @sh_mobile_xfer._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 530, i32 3}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug298, !84, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 543, i32 3}
!89 = !{ptr @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug299, !88, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 553, i32 3}
!92 = !{ptr @sh_mobile_i2c_xfer_dma.__UNIQUE_ID_ddebug300, !91, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 476, i32 44}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 476, i32 51}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 481, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug295, !98, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 498, i32 3}
!103 = !{ptr @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug296, !102, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 503, i32 2}
!106 = !{ptr @sh_mobile_i2c_request_dma_chan.__UNIQUE_ID_ddebug297, !105, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 617, i32 3}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @poll_busy.__UNIQUE_ID_ddebug301, !114, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!117 = !{ptr @sh_mobile_i2c_quirks, !118, !"sh_mobile_i2c_quirks", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 747, i32 40}
!119 = !{ptr @sh_mobile_i2c_dt_ids, !120, !"sh_mobile_i2c_dt_ids", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 799, i32 34}
!121 = !{ptr @fast_clock_dt_config, !122, !"fast_clock_dt_config", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 784, i32 41}
!123 = !{ptr @r8a7740_dt_config, !124, !"r8a7740_dt_config", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 794, i32 41}
!125 = !{ptr @v2_freq_calc_dt_config, !126, !"v2_freq_calc_dt_config", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 789, i32 41}
!127 = !{ptr @default_dt_config, !128, !"default_dt_config", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 779, i32 41}
!129 = !{ptr @sh_mobile_i2c_pm_ops, !130, !"sh_mobile_i2c_pm_ops", i1 false, i1 false}
!130 = !{!"../drivers/i2c/busses/i2c-sh_mobile.c", i32 986, i32 32}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 2148749263, i64 2148749268, i64 2148749281, i64 2148749325, i64 2148749359, i64 2148749380}
!142 = !{i64 6334051}
!143 = !{i64 2153873396}
!144 = !{i64 2153875001}
!145 = !{i64 6333656}
!146 = !{i8 0, i8 2}
!147 = !{i64 2155819988}
!148 = !{i64 2155819830}
!149 = !{!"branch_weights", i32 2000, i32 1}
