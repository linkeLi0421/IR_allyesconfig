; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/stm32-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/stm32-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.stm32_adc_ic = type { ptr, i32 }
%struct.stm32_adc_cfg = type { ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stm32_adc_regspec = type { i32, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs, ptr, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs, [2 x i32], ptr, %struct.stm32_adc_regs, %struct.stm32_adc_regs, %struct.stm32_adc_regs }
%struct.stm32_adc_regs = type { i32, i32, i32 }
%struct.stm32_adc_info = type { i32, ptr, i32 }
%struct.stm32_adc_trig_info = type { ptr, i32 }
%struct.stm32_adc_diff_channel = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_adc = type { ptr, i32, ptr, %struct.completion, [4 x i8], [20 x i16], ptr, i32, %struct.spinlock, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [2 x i32], %struct.stm32_adc_calib, %struct.stm32_adc_vrefint, [20 x [16 x i8]], i32, [3 x i32] }
%struct.stm32_adc_calib = type { i32, i32, [6 x i32], i8 }
%struct.stm32_adc_vrefint = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.stm32_adc_common = type { ptr, i32, i32, i32, %struct.spinlock }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.74, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.74 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_stm32_adc__252_2459_stm32_adc_driver_init6 = internal global ptr @stm32_adc_driver_init, section ".initcall6.init", align 4
@stm32_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_adc_probe, ptr @stm32_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_adc_driver_exit = internal global ptr @stm32_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [58 x i8] c"stm32_adc.author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [62 x i8] c"stm32_adc.description=STMicroelectronics STM32 ADC IIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [41 x i8] c"stm32_adc.file=drivers/iio/adc/stm32-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [25 x i8] c"stm32_adc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [35 x i8] c"stm32_adc.alias=platform:stm32-adc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-adc\00", [22 x i8] zeroinitializer }, align 32
@stm32_adc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_adc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_adc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_adc_cfg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@stm32_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_adc_suspend, ptr @stm32_adc_resume, ptr @stm32_adc_suspend, ptr @stm32_adc_resume, ptr @stm32_adc_suspend, ptr @stm32_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_runtime_suspend, ptr @stm32_adc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@stm32_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @stm32_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_adc_validate_trigger, ptr @stm32_adc_update_scan_mode, ptr @stm32_adc_debugfs_reg_access, ptr @stm32_adc_of_xlate, ptr @stm32_adc_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing reg property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/adc/stm32-adc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr = internal global ptr @stm32_adc_probe._entry, section ".printk_index", align 4
@stm32_adc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 2247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr.10 = internal global ptr @stm32_adc_probe._entry.8, section ".printk_index", align 4
@stm32_adc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 2257, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Can't get clock\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr.13 = internal global ptr @stm32_adc_probe._entry.11, section ".printk_index", align 4
@stm32_adc_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @stm32_adc_buffer_postenable, ptr @stm32_adc_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 2287, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"buffer setup failed\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr.16 = internal global ptr @stm32_adc_probe._entry.14, section ".printk_index", align 4
@stm32_adc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 2304, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iio dev register failed\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_adc_probe._entry_ptr.19 = internal global ptr @stm32_adc_probe._entry.17, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@stm32_adc_conf_scan_seq.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32_adc\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_adc_conf_scan_seq\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s chan %d to SQ%d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_adc_threaded_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 1421, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Overrun, stopping: restart needed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_adc_threaded_isr\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_threaded_isr._entry_ptr = internal global ptr @stm32_adc_threaded_isr._entry, section ".printk_index", align 4
@stm32_adc_threaded_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@stm32_adc_threaded_isr._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.5, i32 1428, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unexpected IRQ: IER=0x%08x, ISR=0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_adc_threaded_isr._entry_ptr.29 = internal global ptr @stm32_adc_threaded_isr._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"assigned-resolution-bits\00", [39 x i8] zeroinitializer }, align 32
@stm32_adc_of_get_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 1793, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad resolution: %u bits\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_adc_of_get_resolution\00", [36 x i8] zeroinitializer }, align 32
@stm32_adc_of_get_resolution._entry_ptr = internal global ptr @stm32_adc_of_get_resolution._entry, section ".printk_index", align 4
@stm32_adc_of_get_resolution.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using %u bits resolution\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA channel request failed with\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_adc_trigger_handler.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.36, ptr @.str.5, ptr @.str.37, i8 1, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_adc_trigger_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s bufi=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@stm32_adc_chan_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 2106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No channel found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_adc_chan_of_init\00", [41 x i8] zeroinitializer }, align 32
@stm32_adc_chan_of_init._entry_ptr = internal global ptr @stm32_adc_chan_of_init._entry, section ".printk_index", align 4
@stm32_adc_chan_of_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 2117, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Channel number [%d] exceeds %d\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_adc_chan_of_init._entry_ptr.42 = internal global ptr @stm32_adc_chan_of_init._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,adc-channels\00", [16 x i8] zeroinitializer }, align 32
@stm32_adc_get_legacy_chan_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 1876, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bad st,adc-channels?\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stm32_adc_get_legacy_chan_count\00", [32 x i8] zeroinitializer }, align 32
@stm32_adc_get_legacy_chan_count._entry_ptr = internal global ptr @stm32_adc_get_legacy_chan_count._entry, section ".printk_index", align 4
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,adc-diff-channels\00", [43 x i8] zeroinitializer }, align 32
@stm32_adc_get_legacy_chan_count._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.5, i32 1885, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad st,adc-diff-channels?\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_adc_get_legacy_chan_count._entry_ptr.49 = internal global ptr @stm32_adc_get_legacy_chan_count._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st,min-sample-time-nsecs\00", [39 x i8] zeroinitializer }, align 32
@stm32_adc_get_legacy_chan_count._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.5, i32 1895, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid st,min-sample-time-nsecs\0A\00", [62 x i8] zeroinitializer }, align 32
@stm32_adc_get_legacy_chan_count._entry_ptr.53 = internal global ptr @stm32_adc_get_legacy_chan_count._entry.51, section ".printk_index", align 4
@stm32_adc_legacy_chan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 1920, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get diff channels %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_adc_legacy_chan_init\00", [37 x i8] zeroinitializer }, align 32
@stm32_adc_legacy_chan_init._entry_ptr = internal global ptr @stm32_adc_legacy_chan_init._entry, section ".printk_index", align 4
@stm32_adc_legacy_chan_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.5, i32 1928, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid channel in%d-in%d\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_adc_legacy_chan_init._entry_ptr.58 = internal global ptr @stm32_adc_legacy_chan_init._entry.56, section ".printk_index", align 4
@stm32_adc_legacy_chan_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.5, i32 1941, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid channel %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_adc_legacy_chan_init._entry_ptr.61 = internal global ptr @stm32_adc_legacy_chan_init._entry.59, section ".printk_index", align 4
@stm32_adc_legacy_chan_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.5, i32 1948, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"channel %d misconfigured\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_adc_legacy_chan_init._entry_ptr.64 = internal global ptr @stm32_adc_legacy_chan_init._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in%d-in%d\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"in%d\00", [27 x i8] zeroinitializer }, align 32
@stm32_adc_ext_info = internal constant { [3 x %struct.iio_chan_spec_ext_info], [36 x i8] } { [3 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.67, i32 3, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_adc_trig_pol to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.68, i32 3, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_adc_trig_pol to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trigger_polarity\00", [47 x i8] zeroinitializer }, align 32
@stm32_adc_trig_pol = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @stm32_trig_pol_items, i32 3, ptr @stm32_adc_set_trig_pol, ptr @stm32_adc_get_trig_pol }, [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trigger_polarity_available\00", [37 x i8] zeroinitializer }, align 32
@stm32_trig_pol_items = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71], [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rising-edge\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"falling-edge\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"both-edges\00", [21 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 2018, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missing channel index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_adc_generic_chan_init\00", [36 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr = internal global ptr @stm32_adc_generic_chan_init._entry, section ".printk_index", align 4
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.5, i32 2027, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Label %s exceeds %d characters\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr.77 = internal global ptr @stm32_adc_generic_chan_init._entry.75, section ".printk_index", align 4
@stm32_adc_generic_chan_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.73, ptr @.str.5, i32 2036, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid label %d\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr.80 = internal global ptr @stm32_adc_generic_chan_init._entry.78, section ".printk_index", align 4
@stm32_adc_generic_chan_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.73, ptr @.str.5, i32 2041, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr.82 = internal global ptr @stm32_adc_generic_chan_init._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diff-channels\00", [18 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.73, ptr @.str.5, i32 2053, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr.85 = internal global ptr @stm32_adc_generic_chan_init._entry.84, section ".printk_index", align 4
@stm32_adc_generic_chan_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.73, ptr @.str.5, i32 2057, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid diff-channels property %d\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr.88 = internal global ptr @stm32_adc_generic_chan_init._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,min-sample-time-ns\00", [42 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.73, ptr @.str.5, i32 2072, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid st,min-sample-time-ns property %d\0A\00", [53 x i8] zeroinitializer }, align 32
@stm32_adc_generic_chan_init._entry_ptr.92 = internal global ptr @stm32_adc_generic_chan_init._entry.90, section ".printk_index", align 4
@stm32_adc_ic = internal constant { [3 x %struct.stm32_adc_ic], [40 x i8] } { [3 x %struct.stm32_adc_ic] [%struct.stm32_adc_ic { ptr @.str.97, i32 0 }, %struct.stm32_adc_ic { ptr @.str.93, i32 1 }, %struct.stm32_adc_ic { ptr @.str.98, i32 2 }], [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vrefint\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvmem access error\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_adc_populate_int_ch.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.95, ptr @.str.5, ptr @.str.96, i8 1, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_adc_populate_int_ch\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vrefint calibration not found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddcore\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@stm32_adc_buffer_postenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.5, i32 1689, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't set trigger\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_adc_buffer_postenable\00", [36 x i8] zeroinitializer }, align 32
@stm32_adc_buffer_postenable._entry_ptr = internal global ptr @stm32_adc_buffer_postenable._entry, section ".printk_index", align 4
@stm32_adc_buffer_postenable._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.5, i32 1695, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Can't start dma\0A\00", [47 x i8] zeroinitializer }, align 32
@stm32_adc_buffer_postenable._entry_ptr.103 = internal global ptr @stm32_adc_buffer_postenable._entry.101, section ".printk_index", align 4
@stm32_adc_dma_start.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.104, ptr @.str.5, ptr @.str.105, i8 1, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_adc_dma_start\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s size=%d watermark=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_adc_dma_buffer_done.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.106, ptr @.str.5, ptr @.str.37, i8 1, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32_adc_dma_buffer_done\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@stm32_adc_buffer_predisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 1735, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can't clear trigger\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_adc_buffer_predisable\00", [36 x i8] zeroinitializer }, align 32
@stm32_adc_buffer_predisable._entry_ptr = internal global ptr @stm32_adc_buffer_predisable._entry, section ".printk_index", align 4
@stm32f4_adc_cfg = internal constant { %struct.stm32_adc_cfg, [52 x i8] } { %struct.stm32_adc_cfg { ptr @stm32f4_adc_regspec, ptr @stm32f4_adc_info, ptr @stm32f4_adc_trigs, i8 1, i8 0, ptr null, ptr @stm32f4_adc_start_conv, ptr @stm32f4_adc_stop_conv, ptr null, ptr @stm32f4_adc_irq_clear, ptr @stm32f4_adc_smp_cycles, i32 0 }, [52 x i8] zeroinitializer }, align 32
@stm32h7_adc_cfg = internal constant { %struct.stm32_adc_cfg, [52 x i8] } { %struct.stm32_adc_cfg { ptr @stm32h7_adc_regspec, ptr @stm32h7_adc_info, ptr @stm32h7_adc_trigs, i8 0, i8 0, ptr @stm32h7_adc_prepare, ptr @stm32h7_adc_start_conv, ptr @stm32h7_adc_stop_conv, ptr @stm32h7_adc_unprepare, ptr @stm32h7_adc_irq_clear, ptr @stm32h7_adc_smp_cycles, i32 0 }, [52 x i8] zeroinitializer }, align 32
@stm32mp1_adc_cfg = internal constant { %struct.stm32_adc_cfg, [52 x i8] } { %struct.stm32_adc_cfg { ptr @stm32mp1_adc_regspec, ptr @stm32h7_adc_info, ptr @stm32h7_adc_trigs, i8 0, i8 1, ptr @stm32h7_adc_prepare, ptr @stm32h7_adc_start_conv, ptr @stm32h7_adc_stop_conv, ptr @stm32h7_adc_unprepare, ptr @stm32h7_adc_irq_clear, ptr @stm32h7_adc_smp_cycles, i32 4300 }, [52 x i8] zeroinitializer }, align 32
@stm32f4_adc_regspec = internal constant { %struct.stm32_adc_regspec, [52 x i8] } { %struct.stm32_adc_regspec { i32 76, %struct.stm32_adc_regs { i32 4, i32 32, i32 0 }, %struct.stm32_adc_regs { i32 4, i32 67108864, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 2, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 32, i32 0 }, ptr @stm32f4_sq, %struct.stm32_adc_regs { i32 8, i32 805306368, i32 28 }, %struct.stm32_adc_regs { i32 8, i32 251658240, i32 24 }, %struct.stm32_adc_regs { i32 4, i32 50331648, i32 24 }, [2 x i32] [i32 12, i32 16], ptr @stm32f4_smp_bits, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@stm32f4_adc_info = internal constant { %struct.stm32_adc_info, [20 x i8] } { %struct.stm32_adc_info { i32 16, ptr @stm32f4_adc_resolutions, i32 4 }, [20 x i8] zeroinitializer }, align 32
@stm32f4_adc_trigs = internal global { [16 x %struct.stm32_adc_trig_info], [32 x i8] } { [16 x %struct.stm32_adc_trig_info] [%struct.stm32_adc_trig_info { ptr @.str.110, i32 0 }, %struct.stm32_adc_trig_info { ptr @.str.111, i32 1 }, %struct.stm32_adc_trig_info { ptr @.str.112, i32 2 }, %struct.stm32_adc_trig_info { ptr @.str.113, i32 3 }, %struct.stm32_adc_trig_info { ptr @.str.114, i32 4 }, %struct.stm32_adc_trig_info { ptr @.str.115, i32 5 }, %struct.stm32_adc_trig_info { ptr @.str.116, i32 6 }, %struct.stm32_adc_trig_info { ptr @.str.117, i32 7 }, %struct.stm32_adc_trig_info { ptr @.str.118, i32 8 }, %struct.stm32_adc_trig_info { ptr @.str.119, i32 9 }, %struct.stm32_adc_trig_info { ptr @.str.120, i32 10 }, %struct.stm32_adc_trig_info { ptr @.str.121, i32 11 }, %struct.stm32_adc_trig_info { ptr @.str.122, i32 12 }, %struct.stm32_adc_trig_info { ptr @.str.123, i32 13 }, %struct.stm32_adc_trig_info { ptr @.str.124, i32 14 }, %struct.stm32_adc_trig_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@stm32f4_adc_smp_cycles = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 15, i32 28, i32 56, i32 84, i32 112, i32 144, i32 480], [32 x i8] zeroinitializer }, align 32
@stm32f4_sq = internal constant { [17 x %struct.stm32_adc_regs], [52 x i8] } { [17 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 44, i32 15728640, i32 20 }, %struct.stm32_adc_regs { i32 52, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 52, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 52, i32 31744, i32 10 }, %struct.stm32_adc_regs { i32 52, i32 1015808, i32 15 }, %struct.stm32_adc_regs { i32 52, i32 32505856, i32 20 }, %struct.stm32_adc_regs { i32 52, i32 1040187392, i32 25 }, %struct.stm32_adc_regs { i32 48, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 48, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 48, i32 31744, i32 10 }, %struct.stm32_adc_regs { i32 48, i32 1015808, i32 15 }, %struct.stm32_adc_regs { i32 48, i32 32505856, i32 20 }, %struct.stm32_adc_regs { i32 48, i32 1040187392, i32 25 }, %struct.stm32_adc_regs { i32 44, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 44, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 44, i32 31744, i32 10 }, %struct.stm32_adc_regs { i32 44, i32 1015808, i32 15 }], [52 x i8] zeroinitializer }, align 32
@stm32f4_smp_bits = internal constant { [19 x %struct.stm32_adc_regs], [60 x i8] } { [19 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 1, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 1, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 1, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 1, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 1, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 1, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 1, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 1, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 1, i32 117440512, i32 24 }, %struct.stm32_adc_regs { i32 1, i32 939524096, i32 27 }, %struct.stm32_adc_regs { i32 0, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 0, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 0, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 0, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 0, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 0, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 0, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 0, i32 117440512, i32 24 }], [60 x i8] zeroinitializer }, align 32
@stm32f4_adc_resolutions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 10, i32 8, i32 6], [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim2_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim3_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim3_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim4_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim8_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim8_trgo\00", [22 x i8] zeroinitializer }, align 32
@stm32h7_adc_regspec = internal constant { %struct.stm32_adc_regspec, [52 x i8] } { %struct.stm32_adc_regspec { i32 64, %struct.stm32_adc_regs { i32 4, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 4, i32 16, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 16, i32 0 }, ptr @stm32h7_sq, %struct.stm32_adc_regs { i32 12, i32 3072, i32 10 }, %struct.stm32_adc_regs { i32 12, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 12, i32 28, i32 2 }, [2 x i32] [i32 20, i32 24], ptr @stm32h7_smp_bits, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer, %struct.stm32_adc_regs zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@stm32h7_adc_info = internal constant { %struct.stm32_adc_info, [20 x i8] } { %struct.stm32_adc_info { i32 20, ptr @stm32h7_adc_resolutions, i32 5 }, [20 x i8] zeroinitializer }, align 32
@stm32h7_adc_trigs = internal global { [19 x %struct.stm32_adc_trig_info], [40 x i8] } { [19 x %struct.stm32_adc_trig_info] [%struct.stm32_adc_trig_info { ptr @.str.110, i32 0 }, %struct.stm32_adc_trig_info { ptr @.str.111, i32 1 }, %struct.stm32_adc_trig_info { ptr @.str.112, i32 2 }, %struct.stm32_adc_trig_info { ptr @.str.113, i32 3 }, %struct.stm32_adc_trig_info { ptr @.str.118, i32 4 }, %struct.stm32_adc_trig_info { ptr @.str.119, i32 5 }, %struct.stm32_adc_trig_info { ptr @.str.124, i32 7 }, %struct.stm32_adc_trig_info { ptr @.str.125, i32 8 }, %struct.stm32_adc_trig_info { ptr @.str.126, i32 9 }, %struct.stm32_adc_trig_info { ptr @.str.127, i32 10 }, %struct.stm32_adc_trig_info { ptr @.str.116, i32 11 }, %struct.stm32_adc_trig_info { ptr @.str.128, i32 12 }, %struct.stm32_adc_trig_info { ptr @.str.129, i32 13 }, %struct.stm32_adc_trig_info { ptr @.str.130, i32 14 }, %struct.stm32_adc_trig_info { ptr @.str.131, i32 15 }, %struct.stm32_adc_trig_info { ptr @.str.132, i32 18 }, %struct.stm32_adc_trig_info { ptr @.str.133, i32 19 }, %struct.stm32_adc_trig_info { ptr @.str.134, i32 20 }, %struct.stm32_adc_trig_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stm32h7_adc_smp_cycles = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 8, i32 16, i32 32, i32 64, i32 387, i32 810], [32 x i8] zeroinitializer }, align 32
@stm32h7_sq = internal constant { [17 x %struct.stm32_adc_regs], [52 x i8] } { [17 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 48, i32 15, i32 0 }, %struct.stm32_adc_regs { i32 48, i32 1984, i32 6 }, %struct.stm32_adc_regs { i32 48, i32 126976, i32 12 }, %struct.stm32_adc_regs { i32 48, i32 8126464, i32 18 }, %struct.stm32_adc_regs { i32 48, i32 520093696, i32 24 }, %struct.stm32_adc_regs { i32 52, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 52, i32 1984, i32 6 }, %struct.stm32_adc_regs { i32 52, i32 126976, i32 12 }, %struct.stm32_adc_regs { i32 52, i32 8126464, i32 18 }, %struct.stm32_adc_regs { i32 52, i32 520093696, i32 24 }, %struct.stm32_adc_regs { i32 56, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 56, i32 1984, i32 6 }, %struct.stm32_adc_regs { i32 56, i32 126976, i32 12 }, %struct.stm32_adc_regs { i32 56, i32 8126464, i32 18 }, %struct.stm32_adc_regs { i32 56, i32 520093696, i32 24 }, %struct.stm32_adc_regs { i32 60, i32 31, i32 0 }, %struct.stm32_adc_regs { i32 60, i32 1984, i32 6 }], [52 x i8] zeroinitializer }, align 32
@stm32h7_smp_bits = internal constant { [20 x %struct.stm32_adc_regs], [48 x i8] } { [20 x %struct.stm32_adc_regs] [%struct.stm32_adc_regs { i32 0, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 0, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 0, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 0, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 0, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 0, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 0, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 0, i32 117440512, i32 24 }, %struct.stm32_adc_regs { i32 0, i32 939524096, i32 27 }, %struct.stm32_adc_regs { i32 1, i32 7, i32 0 }, %struct.stm32_adc_regs { i32 1, i32 56, i32 3 }, %struct.stm32_adc_regs { i32 1, i32 448, i32 6 }, %struct.stm32_adc_regs { i32 1, i32 3584, i32 9 }, %struct.stm32_adc_regs { i32 1, i32 28672, i32 12 }, %struct.stm32_adc_regs { i32 1, i32 229376, i32 15 }, %struct.stm32_adc_regs { i32 1, i32 1835008, i32 18 }, %struct.stm32_adc_regs { i32 1, i32 14680064, i32 21 }, %struct.stm32_adc_regs { i32 1, i32 117440512, i32 24 }, %struct.stm32_adc_regs { i32 1, i32 939524096, i32 27 }], [48 x i8] zeroinitializer }, align 32
@stm32h7_adc_resolutions = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 14, i32 12, i32 10, i32 8], [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim8_trgo2\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim1_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim1_trgo2\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim4_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim6_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim15_trgo\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim3_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lptim1_out\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lptim2_out\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lptim3_out\00", [21 x i8] zeroinitializer }, align 32
@stm32h7_adc_exit_pwr_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.5, i32 836, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to exit power down\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stm32h7_adc_exit_pwr_down\00", [38 x i8] zeroinitializer }, align 32
@stm32h7_adc_exit_pwr_down._entry_ptr = internal global ptr @stm32h7_adc_exit_pwr_down._entry, section ".printk_index", align 4
@stm32h7_adc_selfcalib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 1033, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calibration failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32h7_adc_selfcalib\00", [42 x i8] zeroinitializer }, align 32
@stm32h7_adc_selfcalib._entry_ptr = internal global ptr @stm32h7_adc_selfcalib._entry, section ".printk_index", align 4
@stm32h7_adc_selfcalib._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 1050, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stm32h7_adc_selfcalib._entry_ptr.140 = internal global ptr @stm32h7_adc_selfcalib._entry.139, section ".printk_index", align 4
@stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.141, ptr @.str.5, ptr @.str.142, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_adc_int_ch_enable\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Enable VDDCore\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.141, ptr @.str.5, ptr @.str.143, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Enable VREFInt\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.141, ptr @.str.5, ptr @.str.144, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Enable VBAT\0A\00", [19 x i8] zeroinitializer }, align 32
@stm32h7_adc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.5, i32 864, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable ADC\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32h7_adc_enable\00", [45 x i8] zeroinitializer }, align 32
@stm32h7_adc_enable._entry_ptr = internal global ptr @stm32h7_adc_enable._entry, section ".printk_index", align 4
@stm32h7_adc_restore_selfcalib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.5, i32 961, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to write calfact\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32h7_adc_restore_selfcalib\00", [34 x i8] zeroinitializer }, align 32
@stm32h7_adc_restore_selfcalib._entry_ptr = internal global ptr @stm32h7_adc_restore_selfcalib._entry, section ".printk_index", align 4
@stm32h7_adc_restore_selfcalib._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.5, i32 977, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read calfact\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32h7_adc_restore_selfcalib._entry_ptr.151 = internal global ptr @stm32h7_adc_restore_selfcalib._entry.149, section ".printk_index", align 4
@stm32h7_adc_restore_selfcalib._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.5, i32 982, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calfact not consistent\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32h7_adc_restore_selfcalib._entry_ptr.154 = internal global ptr @stm32h7_adc_restore_selfcalib._entry.152, section ".printk_index", align 4
@stm32h7_adc_read_selfcalib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.155, ptr @.str.5, i32 910, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32h7_adc_read_selfcalib\00", [37 x i8] zeroinitializer }, align 32
@stm32h7_adc_read_selfcalib._entry_ptr = internal global ptr @stm32h7_adc_read_selfcalib._entry, section ".printk_index", align 4
@stm32h7_adc_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.5, i32 885, ptr @.str.158, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to disable\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32h7_adc_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32h7_adc_disable._entry_ptr = internal global ptr @stm32h7_adc_disable._entry, section ".printk_index", align 4
@stm32h7_adc_stop_conv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 800, ptr @.str.158, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop failed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32h7_adc_stop_conv\00", [42 x i8] zeroinitializer }, align 32
@stm32h7_adc_stop_conv._entry_ptr = internal global ptr @stm32h7_adc_stop_conv._entry, section ".printk_index", align 4
@stm32mp1_adc_regspec = internal constant { %struct.stm32_adc_regspec, [52 x i8] } { %struct.stm32_adc_regspec { i32 64, %struct.stm32_adc_regs { i32 4, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 4, i32 16, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 4, i32 0 }, %struct.stm32_adc_regs { i32 0, i32 16, i32 0 }, ptr @stm32h7_sq, %struct.stm32_adc_regs { i32 12, i32 3072, i32 10 }, %struct.stm32_adc_regs { i32 12, i32 992, i32 5 }, %struct.stm32_adc_regs { i32 12, i32 28, i32 2 }, [2 x i32] [i32 20, i32 24], ptr @stm32h7_smp_bits, %struct.stm32_adc_regs { i32 208, i32 1, i32 0 }, %struct.stm32_adc_regs { i32 776, i32 16777216, i32 0 }, %struct.stm32_adc_regs { i32 776, i32 4194304, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.162 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"stm32_adc_driver\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2450, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2454, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"stm32_adc_of_match\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2442, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"stm32_adc_pm_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2399, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2221, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [19 x i8] c"stm32_adc_iio_info\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1576, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2233, i32 48 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2235, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2247, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2257, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [27 x i8] c"stm32_adc_buffer_setup_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1743, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2287, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2304, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 87, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1160, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1421, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1426, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1786, i32 33 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1793, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1797, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2162, i32 40 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2167, i32 11 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1754, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2106, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2116, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1874, i32 42 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1876, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1882, i32 46 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1885, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1893, i32 42 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1895, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1920, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1927, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1941, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1948, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1840, i32 35 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1842, i32 35 }
@___asan_gen_.376 = private unnamed_addr constant [19 x i8] c"stm32_adc_ext_info\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1768, i32 44 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1769, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [19 x i8] c"stm32_adc_trig_pol\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1271, i32 30 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1771, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant [21 x i8] c"stm32_trig_pol_items\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1267, i32 27 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1268, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1268, i32 17 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1268, i32 33 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2018, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2022, i32 40 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2026, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2036, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2041, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2047, i32 43 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2052, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2057, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2064, i32 37 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2071, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant [13 x i8] c"stm32_adc_ic\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 100, i32 34 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1988, i32 47 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1991, i32 12 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1994, i32 5 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 101, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 103, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1689, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1695, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1649, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1625, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 1169, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1735, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant [16 x i8] c"stm32f4_adc_cfg\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2405, i32 35 }
@___asan_gen_.508 = private unnamed_addr constant [16 x i8] c"stm32h7_adc_cfg\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2416, i32 35 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"stm32mp1_adc_cfg\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 2428, i32 35 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c"stm32f4_adc_regspec\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 393, i32 39 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"stm32f4_adc_info\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 295, i32 36 }
@___asan_gen_.520 = private unnamed_addr constant [18 x i8] c"stm32f4_adc_trigs\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 341, i32 35 }
@___asan_gen_.523 = private unnamed_addr constant [23 x i8] c"stm32f4_adc_smp_cycles\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 389, i32 27 }
@___asan_gen_.526 = private unnamed_addr constant [11 x i8] c"stm32f4_sq\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 318, i32 36 }
@___asan_gen_.529 = private unnamed_addr constant [17 x i8] c"stm32f4_smp_bits\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 364, i32 36 }
@___asan_gen_.532 = private unnamed_addr constant [24 x i8] c"stm32f4_adc_resolutions\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 289, i32 27 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 342, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 343, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 344, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 345, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 346, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 347, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 348, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 349, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 350, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 351, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 352, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 353, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 354, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 355, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 356, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant [20 x i8] c"stm32h7_adc_regspec\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 487, i32 39 }
@___asan_gen_.583 = private unnamed_addr constant [17 x i8] c"stm32h7_adc_info\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 307, i32 36 }
@___asan_gen_.586 = private unnamed_addr constant [18 x i8] c"stm32h7_adc_trigs\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 431, i32 35 }
@___asan_gen_.589 = private unnamed_addr constant [23 x i8] c"stm32h7_adc_smp_cycles\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 483, i32 27 }
@___asan_gen_.592 = private unnamed_addr constant [11 x i8] c"stm32h7_sq\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 408, i32 36 }
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"stm32h7_smp_bits\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 457, i32 36 }
@___asan_gen_.598 = private unnamed_addr constant [24 x i8] c"stm32h7_adc_resolutions\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 301, i32 27 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 439, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 440, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 441, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 443, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 444, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 445, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 446, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 447, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 448, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 449, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 836, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1033, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 1050, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 675, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 680, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 685, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 864, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 961, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 977, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 982, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 910, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 885, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.718 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 800, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c"stm32mp1_adc_regspec\00", align 1
@___asan_gen_.722 = private constant [31 x i8] c"../drivers/iio/adc/stm32-adc.c\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.722, i32 502, i32 39 }
@llvm.compiler.used = appending global [231 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_stm32_adc_driver_exit, ptr @__initcall__kmod_stm32_adc__252_2459_stm32_adc_driver_init6, ptr @stm32_adc_buffer_postenable._entry, ptr @stm32_adc_buffer_postenable._entry.101, ptr @stm32_adc_buffer_postenable._entry_ptr, ptr @stm32_adc_buffer_postenable._entry_ptr.103, ptr @stm32_adc_buffer_predisable._entry, ptr @stm32_adc_buffer_predisable._entry_ptr, ptr @stm32_adc_chan_of_init._entry, ptr @stm32_adc_chan_of_init._entry.40, ptr @stm32_adc_chan_of_init._entry_ptr, ptr @stm32_adc_chan_of_init._entry_ptr.42, ptr @stm32_adc_driver_exit, ptr @stm32_adc_generic_chan_init._entry, ptr @stm32_adc_generic_chan_init._entry.75, ptr @stm32_adc_generic_chan_init._entry.78, ptr @stm32_adc_generic_chan_init._entry.81, ptr @stm32_adc_generic_chan_init._entry.84, ptr @stm32_adc_generic_chan_init._entry.86, ptr @stm32_adc_generic_chan_init._entry.90, ptr @stm32_adc_generic_chan_init._entry_ptr, ptr @stm32_adc_generic_chan_init._entry_ptr.77, ptr @stm32_adc_generic_chan_init._entry_ptr.80, ptr @stm32_adc_generic_chan_init._entry_ptr.82, ptr @stm32_adc_generic_chan_init._entry_ptr.85, ptr @stm32_adc_generic_chan_init._entry_ptr.88, ptr @stm32_adc_generic_chan_init._entry_ptr.92, ptr @stm32_adc_get_legacy_chan_count._entry, ptr @stm32_adc_get_legacy_chan_count._entry.47, ptr @stm32_adc_get_legacy_chan_count._entry.51, ptr @stm32_adc_get_legacy_chan_count._entry_ptr, ptr @stm32_adc_get_legacy_chan_count._entry_ptr.49, ptr @stm32_adc_get_legacy_chan_count._entry_ptr.53, ptr @stm32_adc_legacy_chan_init._entry, ptr @stm32_adc_legacy_chan_init._entry.56, ptr @stm32_adc_legacy_chan_init._entry.59, ptr @stm32_adc_legacy_chan_init._entry.62, ptr @stm32_adc_legacy_chan_init._entry_ptr, ptr @stm32_adc_legacy_chan_init._entry_ptr.58, ptr @stm32_adc_legacy_chan_init._entry_ptr.61, ptr @stm32_adc_legacy_chan_init._entry_ptr.64, ptr @stm32_adc_of_get_resolution._entry, ptr @stm32_adc_of_get_resolution._entry_ptr, ptr @stm32_adc_probe._entry, ptr @stm32_adc_probe._entry.11, ptr @stm32_adc_probe._entry.14, ptr @stm32_adc_probe._entry.17, ptr @stm32_adc_probe._entry.8, ptr @stm32_adc_probe._entry_ptr, ptr @stm32_adc_probe._entry_ptr.10, ptr @stm32_adc_probe._entry_ptr.13, ptr @stm32_adc_probe._entry_ptr.16, ptr @stm32_adc_probe._entry_ptr.19, ptr @stm32_adc_threaded_isr._entry, ptr @stm32_adc_threaded_isr._entry.27, ptr @stm32_adc_threaded_isr._entry_ptr, ptr @stm32_adc_threaded_isr._entry_ptr.29, ptr @stm32h7_adc_disable._entry, ptr @stm32h7_adc_disable._entry_ptr, ptr @stm32h7_adc_enable._entry, ptr @stm32h7_adc_enable._entry_ptr, ptr @stm32h7_adc_exit_pwr_down._entry, ptr @stm32h7_adc_exit_pwr_down._entry_ptr, ptr @stm32h7_adc_read_selfcalib._entry, ptr @stm32h7_adc_read_selfcalib._entry_ptr, ptr @stm32h7_adc_restore_selfcalib._entry, ptr @stm32h7_adc_restore_selfcalib._entry.149, ptr @stm32h7_adc_restore_selfcalib._entry.152, ptr @stm32h7_adc_restore_selfcalib._entry_ptr, ptr @stm32h7_adc_restore_selfcalib._entry_ptr.151, ptr @stm32h7_adc_restore_selfcalib._entry_ptr.154, ptr @stm32h7_adc_selfcalib._entry, ptr @stm32h7_adc_selfcalib._entry.139, ptr @stm32h7_adc_selfcalib._entry_ptr, ptr @stm32h7_adc_selfcalib._entry_ptr.140, ptr @stm32h7_adc_stop_conv._entry, ptr @stm32h7_adc_stop_conv._entry_ptr, ptr @stm32_adc_driver, ptr @.str, ptr @stm32_adc_of_match, ptr @stm32_adc_pm_ops, ptr @stm32_adc_probe.__key, ptr @.str.1, ptr @stm32_adc_iio_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @stm32_adc_buffer_setup_ops, ptr @.str.15, ptr @.str.18, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @stm32_adc_threaded_isr._rs, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @stm32_adc_ext_info, ptr @.str.67, ptr @stm32_adc_trig_pol, ptr @.str.68, ptr @stm32_trig_pol_items, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.83, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @stm32_adc_ic, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @stm32f4_adc_cfg, ptr @stm32h7_adc_cfg, ptr @stm32mp1_adc_cfg, ptr @stm32f4_adc_regspec, ptr @stm32f4_adc_info, ptr @stm32f4_adc_trigs, ptr @stm32f4_adc_smp_cycles, ptr @stm32f4_sq, ptr @stm32f4_smp_bits, ptr @stm32f4_adc_resolutions, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @stm32h7_adc_regspec, ptr @stm32h7_adc_info, ptr @stm32h7_adc_trigs, ptr @stm32h7_adc_smp_cycles, ptr @stm32h7_sq, ptr @stm32h7_smp_bits, ptr @stm32h7_adc_resolutions, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @stm32mp1_adc_regspec], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_threaded_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_threaded_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_threaded_isr._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_of_get_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_chan_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_chan_of_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_get_legacy_chan_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_get_legacy_chan_count._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_get_legacy_chan_count._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_legacy_chan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_legacy_chan_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_legacy_chan_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_legacy_chan_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_ext_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_trig_pol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trig_pol_items to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_generic_chan_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_ic to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_buffer_postenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_buffer_postenable._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_adc_buffer_predisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_cfg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_cfg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_adc_cfg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_regspec to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_trigs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_smp_cycles to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_sq to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_smp_bits to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32f4_adc_resolutions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_regspec to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_trigs to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_smp_cycles to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_sq to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_smp_bits to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_resolutions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_exit_pwr_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_selfcalib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_selfcalib._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_restore_selfcalib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_restore_selfcalib._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_restore_selfcalib._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_read_selfcalib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_adc_stop_conv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_adc_regspec to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_adc_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_adc_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i.i = alloca ptr, align 4
  %val.i102.i = alloca i32, align 4
  %vin.i.i = alloca [2 x i32], align 4
  %diff.i.i = alloca [20 x %struct.stm32_adc_diff_channel], align 4
  %val.i.i = alloca i32, align 4
  %smp.i.i = alloca i32, align 4
  %config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 592) #14
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %3, align 8
  %lock = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_adc_probe.__key, i16 noundef signext 3) #14
  %completion = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #14
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_match_table, align 4
  %call11 = tail call ptr @of_match_device(ptr noundef %13, ptr noundef %dev1) #14
  %data = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %cfg, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %if.end6.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %21 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i, ptr %name, align 8
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node17 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 27
  %24 = ptrtoint ptr %of_node17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node17, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @stm32_adc_iio_info, ptr %info, align 8
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 33, ptr %call, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %driver_data.i.i, align 4
  %28 = load ptr, ptr %of_node, align 8
  %offset = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef %offset, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #17
  br label %cleanup

if.end26:                                         ; preds = %dev_name.exit
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  %irq = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call27, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp slt i32 %call27, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %call36 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call27, ptr noundef nonnull @stm32_adc_isr, ptr noundef nonnull @stm32_adc_threaded_isr, i32 noundef 0, ptr noundef %31, ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #17
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #14
  %clk = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.end43.if.end61_crit_edge

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then48:                                        ; preds = %if.end43
  %33 = ptrtoint ptr %call45 to i32
  %cmp51 = icmp eq ptr %call45, inttoptr (i32 -2 to ptr)
  br i1 %cmp51, label %land.lhs.true, label %if.then48.do.end58_crit_edge

if.then48.do.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

land.lhs.true:                                    ; preds = %if.then48
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 8
  %clk_required = getelementptr inbounds %struct.stm32_adc_cfg, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %clk_required to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %clk_required, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool53.not = icmp eq i8 %37, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.do.end58_crit_edge

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %clk, align 8
  br label %if.end61

do.end58:                                         ; preds = %land.lhs.true.do.end58_crit_edge, %if.then48.do.end58_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #17
  br label %cleanup

if.end61:                                         ; preds = %if.then54, %if.end43.if.end61_crit_edge
  %call62 = tail call fastcc i32 @stm32_adc_of_get_resolution(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.cleanup_crit_edge, label %if.end65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #14
  %41 = call ptr @memset(ptr %config.i, i32 255, i32 48)
  %call1.i = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.34) #14
  %dma_chan.i = getelementptr inbounds %struct.stm32_adc, ptr %40, i32 0, i32 13
  %42 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call1.i, ptr %dma_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end9.i

if.then.i:                                        ; preds = %if.end65
  %cmp.not.i = icmp eq ptr %call1.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i, label %if.end.i189, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %call1.i to i32
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %43, ptr noundef nonnull @.str.35) #14
  br label %stm32_adc_dma_request.exit

if.end.i189:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %dma_chan.i, align 4
  br label %stm32_adc_dma_request.exit.thread

if.end9.i:                                        ; preds = %if.end65
  %45 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call1.i, align 4
  %dev11.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev11.i, align 4
  %rx_dma_buf.i = getelementptr inbounds %struct.stm32_adc, ptr %40, i32 0, i32 15
  %call.i.i190 = tail call ptr @dma_alloc_attrs(ptr noundef %48, i32 noundef 4096, ptr noundef %rx_dma_buf.i, i32 noundef 3264, i32 noundef 0) #14
  %rx_buf.i = getelementptr inbounds %struct.stm32_adc, ptr %40, i32 0, i32 14
  %49 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i190, ptr %rx_buf.i, align 8
  %tobool.not.i191 = icmp eq ptr %call.i.i190, null
  br i1 %tobool.not.i191, label %if.end9.i.err_release.i_crit_edge, label %if.end15.i

if.end9.i.err_release.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release.i

if.end15.i:                                       ; preds = %if.end9.i
  %50 = call ptr @memset(ptr %config.i, i32 0, i32 48)
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %40, align 8
  %phys_base.i = getelementptr inbounds %struct.stm32_adc_common, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phys_base.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %40, i32 0, i32 1
  %55 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset.i, align 4
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %40, i32 0, i32 2
  %57 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add.i = add i32 %56, %54
  %add17.i = add i32 %add.i, %62
  %63 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add17.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 3
  %64 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %src_addr_width.i, align 4
  %65 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_chan.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 44
  %69 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.end15.i.err_free.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end15.i.err_free.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end15.i
  %call.i50.i = call i32 %70(ptr noundef %66, ptr noundef nonnull %config.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool20.not.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool20.not.i, label %dmaengine_slave_config.exit.i.stm32_adc_dma_request.exit.thread_crit_edge, label %dmaengine_slave_config.exit.i.err_free.i_crit_edge

dmaengine_slave_config.exit.i.err_free.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free.i

dmaengine_slave_config.exit.i.stm32_adc_dma_request.exit.thread_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_dma_request.exit.thread

err_free.i:                                       ; preds = %dmaengine_slave_config.exit.i.err_free.i_crit_edge, %if.end15.i.err_free.i_crit_edge
  %retval.0.i53.i = phi i32 [ %call.i50.i, %dmaengine_slave_config.exit.i.err_free.i_crit_edge ], [ -38, %if.end15.i.err_free.i_crit_edge ]
  %71 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dma_chan.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %dev25.i = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev25.i, align 4
  %77 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_buf.i, align 8
  %79 = ptrtoint ptr %rx_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_dma_buf.i, align 4
  call void @dma_free_attrs(ptr noundef %76, i32 noundef 4096, ptr noundef %78, i32 noundef %80, i32 noundef 0) #14
  br label %err_release.i

err_release.i:                                    ; preds = %err_free.i, %if.end9.i.err_release.i_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i53.i, %err_free.i ], [ -12, %if.end9.i.err_release.i_crit_edge ]
  %81 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_chan.i, align 4
  call void @dma_release_channel(ptr noundef %82) #14
  br label %stm32_adc_dma_request.exit

stm32_adc_dma_request.exit.thread:                ; preds = %dmaengine_slave_config.exit.i.stm32_adc_dma_request.exit.thread_crit_edge, %if.end.i189
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #14
  br label %if.end69

stm32_adc_dma_request.exit:                       ; preds = %err_release.i, %if.then6.i
  %retval.0.i192 = phi i32 [ %call7.i, %if.then6.i ], [ %ret.0.i, %err_release.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i192)
  %cmp67 = icmp slt i32 %retval.0.i192, 0
  br i1 %cmp67, label %stm32_adc_dma_request.exit.cleanup_crit_edge, label %stm32_adc_dma_request.exit.if.end69_crit_edge

stm32_adc_dma_request.exit.if.end69_crit_edge:    ; preds = %stm32_adc_dma_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

stm32_adc_dma_request.exit.cleanup_crit_edge:     ; preds = %stm32_adc_dma_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end69:                                         ; preds = %stm32_adc_dma_request.exit.if.end69_crit_edge, %stm32_adc_dma_request.exit.thread
  %dma_chan = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 13
  %83 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_chan, align 4
  %tobool70.not = icmp eq ptr %84, null
  %spec.select = select i1 %tobool70.not, ptr @stm32_adc_trigger_handler, ptr null
  %85 = ptrtoint ptr %of_node17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %of_node17, align 8
  %87 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv.i, align 8
  %cfg.i194 = getelementptr inbounds %struct.stm32_adc, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %cfg.i194 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i194, align 8
  %adc_info1.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %adc_info1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adc_info1.i, align 4
  %uglygep.i = getelementptr i8, ptr %88, i32 580
  %93 = call ptr @memset(ptr %uglygep.i, i32 255, i32 12)
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %call.i.i195 = call ptr @of_get_next_available_child(ptr noundef %86, ptr noundef null) #14
  %cmp.not5.i.i = icmp eq ptr %call.i.i195, null
  br i1 %cmp.not5.i.i, label %if.end69.if.then.i198_crit_edge, label %if.end69.for.body.i.i_crit_edge

if.end69.for.body.i.i_crit_edge:                  ; preds = %if.end69
  br label %for.body.i.i

if.end69.if.then.i198_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i198

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end69.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end69.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i195, %if.end69.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_available_child(ptr noundef %86, ptr noundef nonnull %child.06.i.i) #14
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i196 = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i196, label %of_get_available_child_count.exit.i.if.then.i198_crit_edge, label %of_get_available_child_count.exit.i.if.end10.i_crit_edge

of_get_available_child_count.exit.i.if.end10.i_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

of_get_available_child_count.exit.i.if.then.i198_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i198

if.then.i198:                                     ; preds = %of_get_available_child_count.exit.i.if.then.i198_crit_edge, %if.end69.if.then.i198_crit_edge
  %94 = ptrtoint ptr %of_node17 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %of_node17, align 8
  %96 = ptrtoint ptr %cfg.i194 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i194, align 8
  %adc_info1.i.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %adc_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adc_info1.i.i, align 4
  %call.i.i.i = call i32 @of_property_count_elems_of_size(ptr noundef %95, ptr noundef nonnull @.str.43, i32 noundef 4) #14
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %101)
  %cmp.i.i197 = icmp sgt i32 %call.i.i.i, %101
  br i1 %cmp.i.i197, label %if.then.i198.if.else.thread.i_crit_edge, label %if.else.i.i

if.then.i198.if.else.thread.i_crit_edge:          ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

if.else.i.i:                                      ; preds = %if.then.i198
  %102 = call i32 @llvm.smax.i32(i32 %call.i.i.i, i32 0) #14
  %call6.i.i = call i32 @of_property_count_elems_of_size(ptr noundef %95, ptr noundef nonnull @.str.46, i32 noundef 8) #14
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %104)
  %cmp8.i.i = icmp sgt i32 %call6.i.i, %104
  br i1 %cmp8.i.i, label %if.else.i.i.if.else.thread.i_crit_edge, label %if.else14.i.i

if.else.i.i.if.else.thread.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

if.else14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp15.i.i = icmp sgt i32 %call6.i.i, 0
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.else14.i.i.if.end19.i.i_crit_edge

if.else14.i.i.if.end19.i.i_crit_edge:             ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i.i

if.then16.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %num_diff.i.i = getelementptr inbounds %struct.stm32_adc, ptr %88, i32 0, i32 23
  %105 = ptrtoint ptr %num_diff.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call6.i.i, ptr %num_diff.i.i, align 8
  %add17.i.i = add nuw i32 %call6.i.i, %102
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then16.i.i, %if.else14.i.i.if.end19.i.i_crit_edge
  %num_channels.1.i.i = phi i32 [ %add17.i.i, %if.then16.i.i ], [ %102, %if.else14.i.i.if.end19.i.i_crit_edge ]
  %call.i50.i.i = call i32 @of_property_count_elems_of_size(ptr noundef %95, ptr noundef nonnull @.str.50, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i50.i.i)
  %cmp21.i.i = icmp slt i32 %call.i50.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i50.i.i, i32 %num_channels.1.i.i)
  %cmp22.not.i.i = icmp eq i32 %call.i50.i.i, %num_channels.1.i.i
  %or.cond.i.i = select i1 %cmp21.i.i, i1 true, i1 %cmp22.not.i.i
  br i1 %or.cond.i.i, label %stm32_adc_get_legacy_chan_count.exit.i, label %if.end19.i.i.if.else.thread.i_crit_edge

if.end19.i.i.if.else.thread.i_crit_edge:          ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.thread.i

if.else.thread.i:                                 ; preds = %if.end19.i.i.if.else.thread.i_crit_edge, %if.else.i.i.if.else.thread.i_crit_edge, %if.then.i198.if.else.thread.i_crit_edge
  %.str.52.sink.i.i = phi ptr [ @.str.44, %if.then.i198.if.else.thread.i_crit_edge ], [ @.str.48, %if.else.i.i.if.else.thread.i_crit_edge ], [ @.str.52, %if.end19.i.i.if.else.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.52.sink.i.i) #17
  br label %err_dma_disable

stm32_adc_get_legacy_chan_count.exit.i:           ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.1.i.i)
  %tobool4.not.i = icmp eq i32 %num_channels.1.i.i, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %stm32_adc_get_legacy_chan_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.38) #17
  br label %err_dma_disable

if.else.i:                                        ; preds = %stm32_adc_get_legacy_chan_count.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.1.i.i)
  %cmp7.i = icmp slt i32 %num_channels.1.i.i, 0
  br i1 %cmp7.i, label %if.else.i.err_dma_disable_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.else.i.err_dma_disable_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_dma_disable

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %of_get_available_child_count.exit.i.if.end10.i_crit_edge
  %tobool.not157.i = phi i1 [ false, %of_get_available_child_count.exit.i.if.end10.i_crit_edge ], [ true, %if.else.i.if.end10.i_crit_edge ]
  %num_channels.0.i = phi i32 [ %inc.i.i, %of_get_available_child_count.exit.i.if.end10.i_crit_edge ], [ %num_channels.1.i.i, %if.else.i.if.end10.i_crit_edge ]
  %108 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_channels.0.i, i32 %109)
  %cmp11.i = icmp sgt i32 %num_channels.0.i, %109
  br i1 %cmp11.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %num_channels.0.i, i32 noundef %109) #17
  br label %err_dma_disable

if.end18.i:                                       ; preds = %if.end10.i
  %inc21.i = zext i1 %tobool70.not to i32
  %spec.select.i = add i32 %num_channels.0.i, %inc21.i
  %110 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 88) #14
  %111 = extractvalue { i32, i1 } %110, 1
  br i1 %111, label %if.end18.i.err_dma_disable_crit_edge, label %devm_kcalloc.exit.i, !prof !377

if.end18.i.err_dma_disable_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_dma_disable

devm_kcalloc.exit.i:                              ; preds = %if.end18.i
  %112 = extractvalue { i32, i1 } %110, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %112, i32 noundef 3520) #14
  %tobool25.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool25.not.i, label %devm_kcalloc.exit.i.err_dma_disable_crit_edge, label %if.end27.i

devm_kcalloc.exit.i.err_dma_disable_crit_edge:    ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_dma_disable

if.end27.i:                                       ; preds = %devm_kcalloc.exit.i
  %113 = ptrtoint ptr %of_node17 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %of_node17, align 8
  %115 = ptrtoint ptr %cfg.i194 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i194, align 8
  %adc_info1.i97.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %adc_info1.i97.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %adc_info1.i97.i, align 4
  br i1 %tobool.not157.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %diff.i.i) #14
  %119 = call ptr @memset(ptr %diff.i.i, i32 255, i32 160)
  %num_diff2.i.i = getelementptr inbounds %struct.stm32_adc, ptr %88, i32 0, i32 23
  %120 = ptrtoint ptr %num_diff2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_diff2.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #14
  %122 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %val.i.i, align 4, !annotation !378
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smp.i.i) #14
  %123 = ptrtoint ptr %smp.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %smp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i199 = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i199, label %if.then29.i.if.end26.i.i_crit_edge, label %if.then.i.i

if.then29.i.if.end26.i.i_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then.i.i:                                      ; preds = %if.then29.i
  %124 = shl i32 %121, 1
  %div126.i.i = and i32 %124, 1073741822
  %call.i.i98.i = call i32 @of_property_read_variable_u32_array(ptr noundef %114, ptr noundef nonnull @.str.46, ptr noundef nonnull %diff.i.i, i32 noundef %div126.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i98.i)
  %tobool3.not.i.i = icmp sgt i32 %call.i.i98.i, -1
  br i1 %tobool3.not.i.i, label %if.then.i.i.for.body.i99.i_crit_edge, label %do.end.i.i

if.then.i.i.for.body.i99.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i99.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %call.i.i98.i) #17
  br label %stm32_adc_legacy_chan_init.exit.i

for.body.i99.i:                                   ; preds = %if.end19.i100.i.for.body.i99.i_crit_edge, %if.then.i.i.for.body.i99.i_crit_edge
  %i.0160.i.i = phi i32 [ %inc25.i.i, %if.end19.i100.i.for.body.i99.i_crit_edge ], [ 0, %if.then.i.i.for.body.i99.i_crit_edge ]
  %arrayidx.i.i = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %diff.i.i, i32 0, i32 %i.0160.i.i
  %125 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i.i, align 4
  %127 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp6.not.i.i = icmp ult i32 %126, %128
  br i1 %cmp6.not.i.i, label %lor.lhs.false.i.i, label %for.body.i99.i.do.end13.i.i_crit_edge

for.body.i99.i.do.end13.i.i_crit_edge:            ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i99.i
  %vinn.i.i = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %diff.i.i, i32 0, i32 %i.0160.i.i, i32 1
  %129 = ptrtoint ptr %vinn.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vinn.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %128)
  %cmp9.not.i.i = icmp ult i32 %130, %128
  br i1 %cmp9.not.i.i, label %if.end19.i100.i, label %lor.lhs.false.i.i.do.end13.i.i_crit_edge

lor.lhs.false.i.i.do.end13.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end13.i.i_crit_edge, %for.body.i99.i.do.end13.i.i_crit_edge
  %vinn18.i.i = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %diff.i.i, i32 0, i32 %i.0160.i.i, i32 1
  %131 = ptrtoint ptr %vinn18.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vinn18.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %126, i32 noundef %132) #17
  br label %stm32_adc_legacy_chan_init.exit.i

if.end19.i100.i:                                  ; preds = %lor.lhs.false.i.i
  %arrayidx20.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i
  %133 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.stm32_adc, ptr %134, i32 0, i32 22, i32 %126
  %135 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx20.i.i, align 4
  %channel.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 1
  %136 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %126, ptr %channel.i.i.i, align 4
  %differential1.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 19
  %137 = ptrtoint ptr %differential1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load.i.i.i = load i8, ptr %differential1.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 16
  store i8 %bf.set.i.i.i, ptr %differential1.i.i.i, align 4
  %channel2.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 2
  %138 = ptrtoint ptr %channel2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %130, ptr %channel2.i.i.i, align 4
  %call2.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %126, i32 noundef %130) #14
  %datasheet_name.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 18
  %139 = ptrtoint ptr %datasheet_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %arrayidx.i.i.i, ptr %datasheet_name.i.i.i, align 4
  %scan_index4.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 4
  %140 = ptrtoint ptr %scan_index4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %i.0160.i.i, ptr %scan_index4.i.i.i, align 4
  %141 = ptrtoint ptr %differential1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load5.i.i.i = load i8, ptr %differential1.i.i.i, align 4
  %bf.set7.i.i.i = or i8 %bf.load5.i.i.i, 64
  store i8 %bf.set7.i.i.i, ptr %differential1.i.i.i, align 4
  %142 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %channel.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr %struct.stm32_adc, ptr %134, i32 0, i32 24, i32 1
  %144 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp.i.i.i = icmp eq i32 %143, %145
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 2, i32 1
  %146 = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 6
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %spec.select.i.i.i, ptr %146, align 4
  %info_mask_shared_by_type.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 8
  %148 = ptrtoint ptr %info_mask_shared_by_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 12, ptr %info_mask_shared_by_type.i.i.i, align 4
  %scan_type.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 5
  %149 = ptrtoint ptr %scan_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 117, ptr %scan_type.i.i.i, align 4
  %cfg.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %134, i32 0, i32 2
  %150 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i.i.i, align 8
  %adc_info.i.i.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %adc_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %adc_info.i.i.i, align 4
  %resolutions.i.i.i = getelementptr inbounds %struct.stm32_adc_info, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %resolutions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %resolutions.i.i.i, align 4
  %res.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %134, i32 0, i32 11
  %156 = ptrtoint ptr %res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %res.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr i32, ptr %155, i32 %157
  %158 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx14.i.i.i, align 4
  %conv.i.i.i = trunc i32 %159 to i8
  %realbits.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 5, i32 1
  %160 = ptrtoint ptr %realbits.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv.i.i.i, ptr %realbits.i.i.i, align 1
  %storagebits.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 5, i32 2
  %161 = ptrtoint ptr %storagebits.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 16, ptr %storagebits.i.i.i, align 2
  %ext_info.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0160.i.i, i32 16
  %162 = ptrtoint ptr %ext_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @stm32_adc_ext_info, ptr %ext_info.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %143
  %pcsel.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %134, i32 0, i32 18
  %163 = ptrtoint ptr %pcsel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pcsel.i.i.i, align 8
  %or.i.i.i = or i32 %164, %shl.i.i.i
  store i32 %or.i.i.i, ptr %pcsel.i.i.i, align 8
  %165 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %channel.i.i.i, align 4
  %shl21.i.i.i = shl nuw i32 1, %166
  %difsel.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %134, i32 0, i32 17
  %167 = ptrtoint ptr %difsel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %difsel.i.i.i, align 4
  %or22.i.i.i = or i32 %168, %shl21.i.i.i
  store i32 %or22.i.i.i, ptr %difsel.i.i.i, align 4
  %169 = ptrtoint ptr %channel2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %channel2.i.i.i, align 4
  %shl24.i.i.i = shl nuw i32 1, %170
  %or26.i.i.i = or i32 %shl24.i.i.i, %or.i.i.i
  store i32 %or26.i.i.i, ptr %pcsel.i.i.i, align 8
  %inc25.i.i = add nuw i32 %i.0160.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc25.i.i, %121
  br i1 %exitcond.not.i.i, label %if.end19.i100.i.if.end26.i.i_crit_edge, label %if.end19.i100.i.for.body.i99.i_crit_edge

if.end19.i100.i.for.body.i99.i_crit_edge:         ; preds = %if.end19.i100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i99.i

if.end19.i100.i.if.end26.i.i_crit_edge:           ; preds = %if.end19.i100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end19.i100.i.if.end26.i.i_crit_edge, %if.then29.i.if.end26.i.i_crit_edge
  %call27.i.i = call ptr @of_find_property(ptr noundef %114, ptr noundef nonnull @.str.43, ptr noundef null) #14
  %call28.i.i = call ptr @of_prop_next_u32(ptr noundef %call27.i.i, ptr noundef null, ptr noundef nonnull %val.i.i) #14
  %tobool30.not163.i.i = icmp eq ptr %call28.i.i, null
  br i1 %tobool30.not163.i.i, label %if.end26.i.i.for.cond60.preheader.i.i_crit_edge, label %if.end26.i.i.for.body31.i.i_crit_edge

if.end26.i.i.for.body31.i.i_crit_edge:            ; preds = %if.end26.i.i
  br label %for.body31.i.i

if.end26.i.i.for.cond60.preheader.i.i_crit_edge:  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond60.preheader.i.i

for.cond60.preheader.i.i:                         ; preds = %for.end54.i.i.for.cond60.preheader.i.i_crit_edge, %if.end26.i.i.for.cond60.preheader.i.i_crit_edge
  %scan_index.2.lcssa.i.i = phi i32 [ %121, %if.end26.i.i.for.cond60.preheader.i.i_crit_edge ], [ %inc56.i.i, %for.end54.i.i.for.cond60.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan_index.2.lcssa.i.i)
  %cmp61167.i.i = icmp sgt i32 %scan_index.2.lcssa.i.i, 0
  br i1 %cmp61167.i.i, label %for.cond60.preheader.i.i.for.body62.i.i_crit_edge, label %for.cond60.preheader.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge

for.cond60.preheader.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge: ; preds = %for.cond60.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_legacy_chan_init.exit.i

for.cond60.preheader.i.i.for.body62.i.i_crit_edge: ; preds = %for.cond60.preheader.i.i
  br label %for.body62.i.i

for.body31.i.i:                                   ; preds = %for.end54.i.i.for.body31.i.i_crit_edge, %if.end26.i.i.for.body31.i.i_crit_edge
  %cur.0165.i.i = phi ptr [ %call58.i.i, %for.end54.i.i.for.body31.i.i_crit_edge ], [ %call28.i.i, %if.end26.i.i.for.body31.i.i_crit_edge ]
  %scan_index.2164.i.i = phi i32 [ %inc56.i.i, %for.end54.i.i.for.body31.i.i_crit_edge ], [ %121, %if.end26.i.i.for.body31.i.i_crit_edge ]
  %171 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %val.i.i, align 4
  %173 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp33.not.i.i = icmp slt i32 %172, %174
  br i1 %cmp33.not.i.i, label %for.cond40.preheader.i.i, label %do.end37.i.i

for.cond40.preheader.i.i:                         ; preds = %for.body31.i.i
  br i1 %tobool.not.i.i199, label %for.cond40.preheader.i.i.for.end54.i.i_crit_edge, label %for.cond40.preheader.i.i.for.body42.i.i_crit_edge

for.cond40.preheader.i.i.for.body42.i.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  br label %for.body42.i.i

for.cond40.preheader.i.i.for.end54.i.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54.i.i

do.end37.i.i:                                     ; preds = %for.body31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60, i32 noundef %172) #17
  br label %stm32_adc_legacy_chan_init.exit.i

for.cond40.i.i:                                   ; preds = %for.body42.i.i
  %inc53.i.i = add nuw i32 %i.1162.i.i, 1
  %exitcond174.not.i.i = icmp eq i32 %inc53.i.i, %121
  br i1 %exitcond174.not.i.i, label %for.cond40.i.i.for.end54.i.i_crit_edge, label %for.cond40.i.i.for.body42.i.i_crit_edge

for.cond40.i.i.for.body42.i.i_crit_edge:          ; preds = %for.cond40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body42.i.i

for.cond40.i.i.for.end54.i.i_crit_edge:           ; preds = %for.cond40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54.i.i

for.body42.i.i:                                   ; preds = %for.cond40.i.i.for.body42.i.i_crit_edge, %for.cond40.preheader.i.i.for.body42.i.i_crit_edge
  %i.1162.i.i = phi i32 [ %inc53.i.i, %for.cond40.i.i.for.body42.i.i_crit_edge ], [ 0, %for.cond40.preheader.i.i.for.body42.i.i_crit_edge ]
  %arrayidx43.i.i = getelementptr [20 x %struct.stm32_adc_diff_channel], ptr %diff.i.i, i32 0, i32 %i.1162.i.i
  %175 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %176)
  %cmp45.i.i = icmp eq i32 %172, %176
  br i1 %cmp45.i.i, label %do.end49.i.i, label %for.cond40.i.i

do.end49.i.i:                                     ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, i32 noundef %172) #17
  br label %stm32_adc_legacy_chan_init.exit.i

for.end54.i.i:                                    ; preds = %for.cond40.i.i.for.end54.i.i_crit_edge, %for.cond40.preheader.i.i.for.end54.i.i_crit_edge
  %arrayidx55.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i
  %177 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %priv.i, align 8
  %arrayidx.i128.i.i = getelementptr %struct.stm32_adc, ptr %178, i32 0, i32 22, i32 %172
  %179 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %arrayidx55.i.i, align 4
  %channel.i129.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 1
  %180 = ptrtoint ptr %channel.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %172, ptr %channel.i129.i.i, align 4
  %call3.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i128.i.i, i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %172) #14
  %datasheet_name.i130.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 18
  %181 = ptrtoint ptr %datasheet_name.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %arrayidx.i128.i.i, ptr %datasheet_name.i130.i.i, align 4
  %scan_index4.i131.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 4
  %182 = ptrtoint ptr %scan_index4.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %scan_index.2164.i.i, ptr %scan_index4.i131.i.i, align 4
  %indexed.i132.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 19
  %183 = ptrtoint ptr %indexed.i132.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load5.i133.i.i = load i8, ptr %indexed.i132.i.i, align 4
  %bf.set7.i134.i.i = or i8 %bf.load5.i133.i.i, 64
  store i8 %bf.set7.i134.i.i, ptr %indexed.i132.i.i, align 4
  %184 = ptrtoint ptr %channel.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %channel.i129.i.i, align 4
  %arrayidx9.i135.i.i = getelementptr %struct.stm32_adc, ptr %178, i32 0, i32 24, i32 1
  %186 = ptrtoint ptr %arrayidx9.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx9.i135.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %187)
  %cmp.i136.i.i = icmp eq i32 %185, %187
  %spec.select.i137.i.i = select i1 %cmp.i136.i.i, i32 2, i32 1
  %188 = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 6
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %spec.select.i137.i.i, ptr %188, align 4
  %info_mask_shared_by_type.i138.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 8
  %190 = ptrtoint ptr %info_mask_shared_by_type.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 12, ptr %info_mask_shared_by_type.i138.i.i, align 4
  %scan_type.i139.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 5
  %191 = ptrtoint ptr %scan_type.i139.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 117, ptr %scan_type.i139.i.i, align 4
  %cfg.i140.i.i = getelementptr inbounds %struct.stm32_adc, ptr %178, i32 0, i32 2
  %192 = ptrtoint ptr %cfg.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cfg.i140.i.i, align 8
  %adc_info.i141.i.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %adc_info.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %adc_info.i141.i.i, align 4
  %resolutions.i142.i.i = getelementptr inbounds %struct.stm32_adc_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %resolutions.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %resolutions.i142.i.i, align 4
  %res.i143.i.i = getelementptr inbounds %struct.stm32_adc, ptr %178, i32 0, i32 11
  %198 = ptrtoint ptr %res.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %res.i143.i.i, align 4
  %arrayidx14.i144.i.i = getelementptr i32, ptr %197, i32 %199
  %200 = ptrtoint ptr %arrayidx14.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx14.i144.i.i, align 4
  %conv.i145.i.i = trunc i32 %201 to i8
  %realbits.i146.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 5, i32 1
  %202 = ptrtoint ptr %realbits.i146.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv.i145.i.i, ptr %realbits.i146.i.i, align 1
  %storagebits.i147.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 5, i32 2
  %203 = ptrtoint ptr %storagebits.i147.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 16, ptr %storagebits.i147.i.i, align 2
  %ext_info.i148.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.2164.i.i, i32 16
  %204 = ptrtoint ptr %ext_info.i148.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr @stm32_adc_ext_info, ptr %ext_info.i148.i.i, align 4
  %shl.i149.i.i = shl nuw i32 1, %185
  %pcsel.i150.i.i = getelementptr inbounds %struct.stm32_adc, ptr %178, i32 0, i32 18
  %205 = ptrtoint ptr %pcsel.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pcsel.i150.i.i, align 8
  %or.i151.i.i = or i32 %206, %shl.i149.i.i
  store i32 %or.i151.i.i, ptr %pcsel.i150.i.i, align 8
  %inc56.i.i = add i32 %scan_index.2164.i.i, 1
  %call58.i.i = call ptr @of_prop_next_u32(ptr noundef %call27.i.i, ptr noundef nonnull %cur.0165.i.i, ptr noundef nonnull %val.i.i) #14
  %tobool30.not.i.i = icmp eq ptr %call58.i.i, null
  br i1 %tobool30.not.i.i, label %for.end54.i.i.for.cond60.preheader.i.i_crit_edge, label %for.end54.i.i.for.body31.i.i_crit_edge

for.end54.i.i.for.body31.i.i_crit_edge:           ; preds = %for.end54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body31.i.i

for.end54.i.i.for.cond60.preheader.i.i_crit_edge: ; preds = %for.end54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond60.preheader.i.i

for.body62.i.i:                                   ; preds = %for.body62.i.i.for.body62.i.i_crit_edge, %for.cond60.preheader.i.i.for.body62.i.i_crit_edge
  %i.2168.i.i = phi i32 [ %inc66.i.i, %for.body62.i.i.for.body62.i.i_crit_edge ], [ 0, %for.cond60.preheader.i.i.for.body62.i.i_crit_edge ]
  %call63.i.i = call i32 @of_property_read_u32_index(ptr noundef %114, ptr noundef nonnull @.str.50, i32 noundef %i.2168.i.i, ptr noundef nonnull %smp.i.i) #14
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.2168.i.i, i32 1
  %207 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %channel.i.i, align 4
  %209 = ptrtoint ptr %smp.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %smp.i.i, align 4
  call fastcc void @stm32_adc_smpr_init(ptr noundef %88, i32 noundef %208, i32 noundef %210) #14
  %inc66.i.i = add nuw nsw i32 %i.2168.i.i, 1
  %exitcond175.not.i.i = icmp eq i32 %inc66.i.i, %scan_index.2.lcssa.i.i
  br i1 %exitcond175.not.i.i, label %for.body62.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge, label %for.body62.i.i.for.body62.i.i_crit_edge

for.body62.i.i.for.body62.i.i_crit_edge:          ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body62.i.i

for.body62.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge: ; preds = %for.body62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_legacy_chan_init.exit.i

stm32_adc_legacy_chan_init.exit.i:                ; preds = %for.body62.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge, %do.end49.i.i, %do.end37.i.i, %for.cond60.preheader.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge, %do.end13.i.i, %do.end.i.i
  %retval.0.i101.i = phi i32 [ %call.i.i98.i, %do.end.i.i ], [ -22, %do.end13.i.i ], [ -22, %do.end37.i.i ], [ -22, %do.end49.i.i ], [ %scan_index.2.lcssa.i.i, %for.cond60.preheader.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge ], [ %scan_index.2.lcssa.i.i, %for.body62.i.i.stm32_adc_legacy_chan_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %diff.i.i) #14
  br label %if.end33.i

if.else31.i:                                      ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i.i) #14
  %211 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i.i, align 4, !annotation !378
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i102.i) #14
  %212 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -1, ptr %val.i102.i, align 4, !annotation !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vin.i.i) #14
  %213 = ptrtoint ptr %vin.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -1, ptr %vin.i.i, align 4, !annotation !378
  %214 = getelementptr inbounds [2 x i32], ptr %vin.i.i, i32 0, i32 1
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -1, ptr %214, align 4, !annotation !378
  %call.i107.i = call ptr @of_get_next_available_child(ptr noundef %114, ptr noundef null) #14
  %cmp.not169.i.i = icmp eq ptr %call.i107.i, null
  br i1 %cmp.not169.i.i, label %if.else31.i.stm32_adc_generic_chan_init.exit.i_crit_edge, label %if.else31.i.for.body.i111.i_crit_edge

if.else31.i.for.body.i111.i_crit_edge:            ; preds = %if.else31.i
  br label %for.body.i111.i

if.else31.i.stm32_adc_generic_chan_init.exit.i_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_generic_chan_init.exit.i

for.body.i111.i:                                  ; preds = %if.end80.i.i.for.body.i111.i_crit_edge, %if.else31.i.for.body.i111.i_crit_edge
  %scan_index.0171.i.i = phi i32 [ %inc.i152.i, %if.end80.i.i.for.body.i111.i_crit_edge ], [ 0, %if.else31.i.for.body.i111.i_crit_edge ]
  %child.0170.i.i = phi ptr [ %call81.i.i, %if.end80.i.i.for.body.i111.i_crit_edge ], [ %call.i107.i, %if.else31.i.for.body.i111.i_crit_edge ]
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0170.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull %val.i102.i, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i110.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i110.i, label %if.end.i.i, label %do.end.i112.i

do.end.i112.i:                                    ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72, i32 noundef %call.i.i.i.i) #17
  br label %err.i.i

if.end.i.i:                                       ; preds = %for.body.i111.i
  %call4.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0170.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %name.i.i) #14
  %216 = zext i32 %call4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i.i, label %do.end24.i.i [
    i32 0, label %if.then6.i.i
    i32 -22, label %if.end.i.i.if.end27.i.i_crit_edge
  ]

if.end.i.i.if.end27.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %217 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %name.i.i, align 4
  %call7.i.i = call i32 @strlen(ptr noundef %218) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call7.i.i)
  %cmp8.i113.i = icmp ugt i32 %call7.i.i, 15
  br i1 %cmp8.i113.i, label %do.end12.i.i, label %if.end14.i.i

do.end12.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.76, ptr noundef %218, i32 noundef 16) #17
  br label %err.i.i

if.end14.i.i:                                     ; preds = %if.then6.i.i
  %219 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %val.i102.i, align 4
  %arrayidx.i114.i = getelementptr %struct.stm32_adc, ptr %88, i32 0, i32 22, i32 %220
  %call15.i.i = call ptr @strncpy(ptr noundef %arrayidx.i114.i, ptr noundef %218, i32 noundef 16) #14
  %call16.i.i = call fastcc i32 @stm32_adc_populate_int_ch(ptr noundef nonnull %call, ptr noundef %218, i32 noundef %220) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.if.end27.i.i_crit_edge, label %if.end14.i.i.err.i.i_crit_edge

if.end14.i.i.err.i.i_crit_edge:                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err.i.i

if.end14.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79, i32 noundef %call4.i.i) #17
  br label %err.i.i

if.end27.i.i:                                     ; preds = %if.end14.i.i.if.end27.i.i_crit_edge, %if.end.i.i.if.end27.i.i_crit_edge
  %221 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %val.i102.i, align 4
  %223 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %224)
  %cmp28.not.i.i = icmp slt i32 %222, %224
  br i1 %cmp28.not.i.i, label %if.end34.i.i, label %do.end32.i.i

do.end32.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60, i32 noundef %222) #17
  br label %err.i.i

if.end34.i.i:                                     ; preds = %if.end27.i.i
  %call.i.i115.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0170.i.i, ptr noundef nonnull @.str.83, ptr noundef nonnull %vin.i.i, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i115.i)
  %tobool37.not.i.i = icmp sgt i32 %call.i.i115.i, -1
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %if.else52.i.i

if.then38.i.i:                                    ; preds = %if.end34.i.i
  %225 = ptrtoint ptr %vin.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %vin.i.i, align 4
  %227 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %val.i102.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %228)
  %cmp40.not.i.i = icmp eq i32 %226, %228
  br i1 %cmp40.not.i.i, label %lor.lhs.false.i116.i, label %if.then38.i.i.do.end47.i.i_crit_edge

if.then38.i.i.do.end47.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end47.i.i

lor.lhs.false.i116.i:                             ; preds = %if.then38.i.i
  %229 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %214, align 4
  %231 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %232)
  %cmp43.not.i.i = icmp ult i32 %230, %232
  br i1 %cmp43.not.i.i, label %lor.lhs.false.i116.i.if.end60.i.i_crit_edge, label %lor.lhs.false.i116.i.do.end47.i.i_crit_edge

lor.lhs.false.i116.i.do.end47.i.i_crit_edge:      ; preds = %lor.lhs.false.i116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end47.i.i

lor.lhs.false.i116.i.if.end60.i.i_crit_edge:      ; preds = %lor.lhs.false.i116.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60.i.i

do.end47.i.i:                                     ; preds = %lor.lhs.false.i116.i.do.end47.i.i_crit_edge, %if.then38.i.i.do.end47.i.i_crit_edge
  %233 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %214, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %226, i32 noundef %234) #17
  br label %err.i.i

if.else52.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i115.i)
  %cmp53.not.i.i = icmp eq i32 %call.i.i115.i, -22
  br i1 %cmp53.not.i.i, label %if.else52.i.i.if.end60.i.i_crit_edge, label %do.end57.i.i

if.else52.i.i.if.end60.i.i_crit_edge:             ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60.i.i

do.end57.i.i:                                     ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.87, i32 noundef %call.i.i115.i) #17
  br label %err.i.i

if.end60.i.i:                                     ; preds = %if.else52.i.i.if.end60.i.i_crit_edge, %lor.lhs.false.i116.i.if.end60.i.i_crit_edge
  %arrayidx61.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i
  %235 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %val.i102.i, align 4
  %237 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %214, align 4
  %239 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %priv.i, align 8
  %arrayidx.i.i117.i = getelementptr %struct.stm32_adc, ptr %240, i32 0, i32 22, i32 %236
  %241 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %arrayidx61.i.i, align 4
  %channel.i.i118.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 1
  %242 = ptrtoint ptr %channel.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %236, ptr %channel.i.i118.i, align 4
  br i1 %tobool37.not.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %differential1.i.i119.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 19
  %243 = ptrtoint ptr %differential1.i.i119.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %bf.load.i.i120.i = load i8, ptr %differential1.i.i119.i, align 4
  %bf.set.i.i121.i = or i8 %bf.load.i.i120.i, 16
  store i8 %bf.set.i.i121.i, ptr %differential1.i.i119.i, align 4
  %channel2.i.i122.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 2
  %244 = ptrtoint ptr %channel2.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %238, ptr %channel2.i.i122.i, align 4
  %call2.i.i123.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i.i117.i, i32 noundef 16, ptr noundef nonnull @.str.65, i32 noundef %236, i32 noundef %238) #14
  br label %if.end.i.i146.i

if.else.i.i.i:                                    ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i.i124.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i.i117.i, i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %236) #14
  br label %if.end.i.i146.i

if.end.i.i146.i:                                  ; preds = %if.else.i.i.i, %if.then.i.i.i
  %datasheet_name.i.i125.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 18
  %245 = ptrtoint ptr %datasheet_name.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %arrayidx.i.i117.i, ptr %datasheet_name.i.i125.i, align 4
  %scan_index4.i.i126.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 4
  %246 = ptrtoint ptr %scan_index4.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %scan_index.0171.i.i, ptr %scan_index4.i.i126.i, align 4
  %indexed.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 19
  %247 = ptrtoint ptr %indexed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %bf.load5.i.i127.i = load i8, ptr %indexed.i.i.i, align 4
  %bf.set7.i.i128.i = or i8 %bf.load5.i.i127.i, 64
  store i8 %bf.set7.i.i128.i, ptr %indexed.i.i.i, align 4
  %248 = ptrtoint ptr %channel.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %channel.i.i118.i, align 4
  %arrayidx9.i.i129.i = getelementptr %struct.stm32_adc, ptr %240, i32 0, i32 24, i32 1
  %250 = ptrtoint ptr %arrayidx9.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx9.i.i129.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %251)
  %cmp.i.i130.i = icmp eq i32 %249, %251
  %spec.select.i.i131.i = select i1 %cmp.i.i130.i, i32 2, i32 1
  %252 = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 6
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %spec.select.i.i131.i, ptr %252, align 4
  %info_mask_shared_by_type.i.i132.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 8
  %254 = ptrtoint ptr %info_mask_shared_by_type.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 12, ptr %info_mask_shared_by_type.i.i132.i, align 4
  %scan_type.i.i133.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 5
  %255 = ptrtoint ptr %scan_type.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 117, ptr %scan_type.i.i133.i, align 4
  %cfg.i.i134.i = getelementptr inbounds %struct.stm32_adc, ptr %240, i32 0, i32 2
  %256 = ptrtoint ptr %cfg.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cfg.i.i134.i, align 8
  %adc_info.i.i135.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %adc_info.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %adc_info.i.i135.i, align 4
  %resolutions.i.i136.i = getelementptr inbounds %struct.stm32_adc_info, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %resolutions.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %resolutions.i.i136.i, align 4
  %res.i.i137.i = getelementptr inbounds %struct.stm32_adc, ptr %240, i32 0, i32 11
  %262 = ptrtoint ptr %res.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %res.i.i137.i, align 4
  %arrayidx14.i.i138.i = getelementptr i32, ptr %261, i32 %263
  %264 = ptrtoint ptr %arrayidx14.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx14.i.i138.i, align 4
  %conv.i.i139.i = trunc i32 %265 to i8
  %realbits.i.i140.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 5, i32 1
  %266 = ptrtoint ptr %realbits.i.i140.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %conv.i.i139.i, ptr %realbits.i.i140.i, align 1
  %storagebits.i.i141.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 5, i32 2
  %267 = ptrtoint ptr %storagebits.i.i141.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 16, ptr %storagebits.i.i141.i, align 2
  %ext_info.i.i142.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 16
  %268 = ptrtoint ptr %ext_info.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @stm32_adc_ext_info, ptr %ext_info.i.i142.i, align 4
  %shl.i.i143.i = shl nuw i32 1, %249
  %pcsel.i.i144.i = getelementptr inbounds %struct.stm32_adc, ptr %240, i32 0, i32 18
  %269 = ptrtoint ptr %pcsel.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %pcsel.i.i144.i, align 8
  %or.i.i145.i = or i32 %270, %shl.i.i143.i
  store i32 %or.i.i145.i, ptr %pcsel.i.i144.i, align 8
  br i1 %tobool37.not.i.i, label %if.then19.i.i.i, label %if.end.i.i146.i.stm32_adc_chan_init_one.exit.i.i_crit_edge

if.end.i.i146.i.stm32_adc_chan_init_one.exit.i.i_crit_edge: ; preds = %if.end.i.i146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_chan_init_one.exit.i.i

if.then19.i.i.i:                                  ; preds = %if.end.i.i146.i
  call void @__sanitizer_cov_trace_pc() #16
  %271 = ptrtoint ptr %channel.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %channel.i.i118.i, align 4
  %shl21.i.i147.i = shl nuw i32 1, %272
  %difsel.i.i148.i = getelementptr inbounds %struct.stm32_adc, ptr %240, i32 0, i32 17
  %273 = ptrtoint ptr %difsel.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %difsel.i.i148.i, align 4
  %or22.i.i149.i = or i32 %274, %shl21.i.i147.i
  store i32 %or22.i.i149.i, ptr %difsel.i.i148.i, align 4
  %channel223.i.i.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %scan_index.0171.i.i, i32 2
  %275 = ptrtoint ptr %channel223.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %channel223.i.i.i, align 4
  %shl24.i.i150.i = shl nuw i32 1, %276
  %or26.i.i151.i = or i32 %shl24.i.i150.i, %or.i.i145.i
  %277 = ptrtoint ptr %pcsel.i.i144.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %or26.i.i151.i, ptr %pcsel.i.i144.i, align 8
  br label %stm32_adc_chan_init_one.exit.i.i

stm32_adc_chan_init_one.exit.i.i:                 ; preds = %if.then19.i.i.i, %if.end.i.i146.i.stm32_adc_chan_init_one.exit.i.i_crit_edge
  %call.i.i128.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0170.i.i, ptr noundef nonnull @.str.89, ptr noundef nonnull %val.i102.i, i32 noundef 1, i32 noundef 0) #14
  %278 = call i32 @llvm.smin.i32(i32 %call.i.i128.i.i, i32 0) #14
  %279 = zext i32 %278 to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %278, label %do.end77.i.i [
    i32 0, label %if.then66.i.i
    i32 -22, label %stm32_adc_chan_init_one.exit.i.i.if.end80.i.i_crit_edge
  ]

stm32_adc_chan_init_one.exit.i.i.if.end80.i.i_crit_edge: ; preds = %stm32_adc_chan_init_one.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.i.i

if.then66.i.i:                                    ; preds = %stm32_adc_chan_init_one.exit.i.i
  %280 = ptrtoint ptr %channel.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %channel.i.i118.i, align 4
  %282 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %val.i102.i, align 4
  call fastcc void @stm32_adc_smpr_init(ptr noundef %88, i32 noundef %281, i32 noundef %283) #14
  br i1 %tobool37.not.i.i, label %if.then69.i.i, label %if.then66.i.i.if.end80.i.i_crit_edge

if.then66.i.i.if.end80.i.i_crit_edge:             ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.i.i

if.then69.i.i:                                    ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %284 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %214, align 4
  %286 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %val.i102.i, align 4
  call fastcc void @stm32_adc_smpr_init(ptr noundef %88, i32 noundef %285, i32 noundef %287) #14
  br label %if.end80.i.i

do.end77.i.i:                                     ; preds = %stm32_adc_chan_init_one.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.91, i32 noundef %278) #17
  br label %err.i.i

if.end80.i.i:                                     ; preds = %if.then69.i.i, %if.then66.i.i.if.end80.i.i_crit_edge, %stm32_adc_chan_init_one.exit.i.i.if.end80.i.i_crit_edge
  %inc.i152.i = add i32 %scan_index.0171.i.i, 1
  %call81.i.i = call ptr @of_get_next_available_child(ptr noundef %114, ptr noundef nonnull %child.0170.i.i) #14
  %cmp.not.i153.i = icmp eq ptr %call81.i.i, null
  br i1 %cmp.not.i153.i, label %if.end80.i.i.stm32_adc_generic_chan_init.exit.i_crit_edge, label %if.end80.i.i.for.body.i111.i_crit_edge

if.end80.i.i.for.body.i111.i_crit_edge:           ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i111.i

if.end80.i.i.stm32_adc_generic_chan_init.exit.i_crit_edge: ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_generic_chan_init.exit.i

err.i.i:                                          ; preds = %do.end77.i.i, %do.end57.i.i, %do.end47.i.i, %do.end32.i.i, %do.end24.i.i, %if.end14.i.i.err.i.i_crit_edge, %do.end12.i.i, %do.end.i112.i
  %ret.0.i.i = phi i32 [ %call.i.i.i.i, %do.end.i112.i ], [ %call4.i.i, %do.end24.i.i ], [ -22, %do.end32.i.i ], [ %call.i.i115.i, %do.end57.i.i ], [ %278, %do.end77.i.i ], [ 0, %do.end47.i.i ], [ -22, %do.end12.i.i ], [ %call16.i.i, %if.end14.i.i.err.i.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0170.i.i) #14
  br label %stm32_adc_generic_chan_init.exit.i

stm32_adc_generic_chan_init.exit.i:               ; preds = %err.i.i, %if.end80.i.i.stm32_adc_generic_chan_init.exit.i_crit_edge, %if.else31.i.stm32_adc_generic_chan_init.exit.i_crit_edge
  %retval.0.i154.i = phi i32 [ %ret.0.i.i, %err.i.i ], [ 0, %if.else31.i.stm32_adc_generic_chan_init.exit.i_crit_edge ], [ %inc.i152.i, %if.end80.i.i.stm32_adc_generic_chan_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vin.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i102.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %stm32_adc_generic_chan_init.exit.i, %stm32_adc_legacy_chan_init.exit.i
  %ret.0.i200 = phi i32 [ %retval.0.i101.i, %stm32_adc_legacy_chan_init.exit.i ], [ %retval.0.i154.i, %stm32_adc_generic_chan_init.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i200)
  %cmp34.i = icmp slt i32 %ret.0.i200, 0
  br i1 %cmp34.i, label %if.end33.i.err_dma_disable_crit_edge, label %if.end36.i

if.end33.i.err_dma_disable_crit_edge:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_dma_disable

if.end36.i:                                       ; preds = %if.end33.i
  br i1 %tobool70.not, label %if.then38.i, label %if.end36.i.if.end77_crit_edge

if.end36.i.if.end77_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx39.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %ret.0.i200
  %288 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 13, ptr %arrayidx39.i, align 4
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %ret.0.i200, i32 1
  %289 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 -1, ptr %channel.i, align 4
  %scan_index40.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %ret.0.i200, i32 4
  %290 = ptrtoint ptr %scan_index40.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %ret.0.i200, ptr %scan_index40.i, align 4
  %scan_type.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %ret.0.i200, i32 5
  %291 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 115, ptr %scan_type.i, align 4
  %realbits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %ret.0.i200, i32 5, i32 1
  %292 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 64, ptr %realbits.i, align 1
  %storagebits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %ret.0.i200, i32 5, i32 2
  %293 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 64, ptr %storagebits.i, align 2
  %inc43.i = add nuw i32 %ret.0.i200, 1
  br label %if.end77

if.end77:                                         ; preds = %if.then38.i, %if.end36.i.if.end77_crit_edge
  %scan_index.0.i = phi i32 [ %inc43.i, %if.then38.i ], [ %ret.0.i200, %if.end36.i.if.end77_crit_edge ]
  %num_channels45.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %294 = ptrtoint ptr %num_channels45.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %scan_index.0.i, ptr %num_channels45.i, align 4
  %channels46.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %295 = ptrtoint ptr %channels46.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call5.i.i.i, ptr %channels46.i, align 8
  %call78 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef %spec.select, i32 noundef 0, ptr noundef nonnull @stm32_adc_buffer_setup_ops, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #17
  br label %err_dma_disable

if.end85:                                         ; preds = %if.end77
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i202 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %296 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !379
  %call.i = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #14
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 100) #14
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #14
  call void @pm_runtime_enable(ptr noundef %dev1) #14
  %call87 = call fastcc i32 @stm32_adc_hw_start(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end85.err_buffer_cleanup_crit_edge

if.end85.err_buffer_cleanup_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_buffer_cleanup

if.end90:                                         ; preds = %if.end85
  %call91 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #17
  call fastcc void @stm32_adc_hw_stop(ptr noundef %dev1)
  br label %err_buffer_cleanup

if.end98:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  %call.i203 = call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %297 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %297)
  store volatile i64 %call.i203, ptr %last_busy.i, align 8
  %call.i204 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #14
  br label %cleanup

err_buffer_cleanup:                               ; preds = %do.end96, %if.end85.err_buffer_cleanup_crit_edge
  %ret.0 = phi i32 [ %call87, %if.end85.err_buffer_cleanup_crit_edge ], [ %call91, %do.end96 ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #14
  %call.i205 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #14
  %call.i.i.i207 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !380
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %298 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !381
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %298, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_buffer_cleanup.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err_buffer_cleanup.pm_runtime_put_noidle.exit_crit_edge: ; preds = %err_buffer_cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err_buffer_cleanup
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !382
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err_buffer_cleanup.pm_runtime_put_noidle.exit_crit_edge
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #14
  br label %err_dma_disable

err_dma_disable:                                  ; preds = %pm_runtime_put_noidle.exit, %do.end83, %if.end33.i.err_dma_disable_crit_edge, %devm_kcalloc.exit.i.err_dma_disable_crit_edge, %if.end18.i.err_dma_disable_crit_edge, %do.end15.i, %if.else.i.err_dma_disable_crit_edge, %do.end.i, %if.else.thread.i
  %ret.1 = phi i32 [ %call78, %do.end83 ], [ %ret.0, %pm_runtime_put_noidle.exit ], [ -12, %if.end18.i.err_dma_disable_crit_edge ], [ -22, %if.else.thread.i ], [ %ret.0.i200, %if.end33.i.err_dma_disable_crit_edge ], [ -12, %devm_kcalloc.exit.i.err_dma_disable_crit_edge ], [ %num_channels.1.i.i, %if.else.i.err_dma_disable_crit_edge ], [ -61, %do.end.i ], [ -22, %do.end15.i ]
  %299 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dma_chan, align 4
  %tobool103.not = icmp eq ptr %300, null
  br i1 %tobool103.not, label %err_dma_disable.cleanup_crit_edge, label %if.then104

err_dma_disable.cleanup_crit_edge:                ; preds = %err_dma_disable
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then104:                                       ; preds = %err_dma_disable
  call void @__sanitizer_cov_trace_pc() #16
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %300, align 4
  %dev106 = getelementptr inbounds %struct.dma_device, ptr %302, i32 0, i32 15
  %303 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev106, align 4
  %rx_buf = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 14
  %305 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %rx_buf, align 8
  %rx_dma_buf = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 15
  %307 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %rx_dma_buf, align 4
  call void @dma_free_attrs(ptr noundef %304, i32 noundef 4096, ptr noundef %306, i32 noundef %308, i32 noundef 0) #14
  %309 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dma_chan, align 4
  call void @dma_release_channel(ptr noundef %310) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %err_dma_disable.cleanup_crit_edge, %if.end98, %stm32_adc_dma_request.exit.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %do.end58, %do.end41, %if.end26.cleanup_crit_edge, %do.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %call36, %do.end41 ], [ %33, %do.end58 ], [ 0, %if.end98 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %retval.0.i192, %stm32_adc_dma_request.exit.cleanup_crit_edge ], [ %ret.1, %if.then104 ], [ %ret.1, %err_dma_disable.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #14
  tail call void @iio_device_unregister(ptr noundef %1) #14
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %unprepare.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %unprepare.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unprepare.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.stm32_adc_hw_stop.exit_crit_edge, label %if.then.i

entry.stm32_adc_hw_stop.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_hw_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %11(ptr noundef %5) #14
  br label %stm32_adc_hw_stop.exit

stm32_adc_hw_stop.exit:                           ; preds = %if.then.i, %entry.stm32_adc_hw_stop.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.stm32_adc, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %13) #14
  tail call void @clk_unprepare(ptr noundef %13) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #14
  %call.i24 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #14
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !381
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %stm32_adc_hw_stop.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

stm32_adc_hw_stop.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %stm32_adc_hw_stop.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %stm32_adc_hw_stop.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !382
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %stm32_adc_hw_stop.exit.pm_runtime_put_noidle.exit_crit_edge
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #14
  %dma_chan = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 13
  %15 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev10 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 4
  %rx_buf = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf, align 8
  %rx_dma_buf = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_dma_buf, align 4
  tail call void @dma_free_attrs(ptr noundef %20, i32 noundef 4096, ptr noundef %22, i32 noundef %24, i32 noundef 0) #14
  %25 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %26) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %isr_eoc = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %isr_eoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isr_eoc, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %ier_eoc = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %ier_eoc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ier_eoc, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i50 = getelementptr i8, ptr %add.ptr.i49, i32 %17
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i50) #14, !srcloc !383
  %25 = and i32 %24, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask5 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %mask5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask5, align 4
  %and6 = and i32 %27, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %ier_ovr.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ier_ovr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ier_ovr.i, align 4
  %mask.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %31, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask.i, align 4
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %41
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %33
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %neg.i.i = xor i32 %35, -1
  %and.i.i = and i32 %43, %neg.i.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %48, i32 %50
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %44) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %ier_eoc.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %ier_eoc.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ier_eoc.i, align 4
  %mask.i52 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %54, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %mask.i52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask.i52, align 4
  %call2.i.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i.i56 = getelementptr i8, ptr %62, i32 %64
  %add.ptr1.i.i.i57 = getelementptr i8, ptr %add.ptr.i.i.i56, i32 %56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i57) #14, !srcloc !383
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  %neg.i.i58 = xor i32 %58, -1
  %and.i.i59 = and i32 %66, %neg.i.i58
  %67 = tail call i32 @llvm.bswap.i32(i32 %and.i.i59) #14
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i.i60 = getelementptr i8, ptr %71, i32 %73
  %add.ptr1.i13.i.i61 = getelementptr i8, ptr %add.ptr.i12.i.i60, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i61, i32 %67) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i54) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mask11 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mask11, align 4
  %and12 = and i32 %75, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.then14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %5, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %81, i32 %83
  %add.ptr1.i64 = getelementptr i8, ptr %add.ptr.i63, i32 %77
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i64) #14, !srcloc !385
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #14
  %bufi = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 9
  %86 = ptrtoint ptr %bufi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bufi, align 4
  %arrayidx = getelementptr %struct.stm32_adc, ptr %1, i32 0, i32 5, i32 %87
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %85, ptr %arrayidx, align 2
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 1
  %89 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %90, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then14
  %91 = ptrtoint ptr %bufi to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bufi, align 4
  %inc = add i32 %92, 1
  store i32 %inc, ptr %bufi, align 4
  %num_conv = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 10
  %93 = ptrtoint ptr %num_conv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_conv, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %94)
  %cmp.not = icmp ult i32 %inc, %94
  br i1 %cmp.not, label %if.then17.cleanup_crit_edge, label %if.then20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %ier_eoc.i66 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %ier_eoc.i66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ier_eoc.i66, align 4
  %mask.i67 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %98, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %mask.i67 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mask.i67, align 4
  %lock.i.i68 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i68) #14
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i.i71 = getelementptr i8, ptr %106, i32 %108
  %add.ptr1.i.i.i72 = getelementptr i8, ptr %add.ptr.i.i.i71, i32 %100
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i72) #14, !srcloc !383
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #14
  %neg.i.i73 = xor i32 %102, -1
  %and.i.i74 = and i32 %110, %neg.i.i73
  %111 = tail call i32 @llvm.bswap.i32(i32 %and.i.i74) #14
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %116 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i.i75 = getelementptr i8, ptr %115, i32 %117
  %add.ptr1.i13.i.i76 = getelementptr i8, ptr %add.ptr.i12.i.i75, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i76, i32 %111) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i68, i32 noundef %call2.i.i69) #14
  %trig = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 10
  %118 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %119) #14
  br label %cleanup

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %completion = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %if.then17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then8 ], [ 2, %entry.cleanup_crit_edge ], [ 1, %if.then17.cleanup_crit_edge ], [ 1, %if.then20 ], [ 1, %if.else ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_threaded_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %isr_eoc = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %isr_eoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isr_eoc, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %ier_eoc = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %ier_eoc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ier_eoc, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i43 = getelementptr i8, ptr %add.ptr.i42, i32 %17
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i43) #14, !srcloc !383
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %mask5 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %mask5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask5, align 4
  %and = and i32 %27, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 8
  %stop_conv = getelementptr inbounds %struct.stm32_adc_cfg, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %stop_conv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stop_conv, align 4
  tail call void %31(ptr noundef %data) #14
  %32 = ptrtoint ptr %mask5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask5, align 4
  %34 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i, align 8
  %irq_clear.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %irq_clear.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_clear.i, align 4
  tail call void %39(ptr noundef %data, i32 noundef %33) #14
  %dev = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and9 = and i32 %25, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @stm32_adc_threaded_isr._rs, ptr noundef nonnull @.str.25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end18

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  %dev19 = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.28, i32 noundef %25, i32 noundef %15) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.body12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %do.body12.cleanup_crit_edge ], [ 0, %do.end18 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_of_get_resolution(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #14
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %res, align 4, !annotation !378
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %res, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %adc_info = getelementptr inbounds %struct.stm32_adc_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %adc_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adc_info, align 4
  %resolutions = getelementptr inbounds %struct.stm32_adc_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %resolutions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resolutions, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg2 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg2, align 8
  %adc_info3 = getelementptr inbounds %struct.stm32_adc_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %adc_info3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adc_info3, align 4
  %num_res = getelementptr inbounds %struct.stm32_adc_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %num_res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp45.not = icmp eq i32 %19, 0
  br i1 %cmp45.not, label %if.end.do.end_crit_edge, label %for.body.lr.ph

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end
  %20 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %res, align 4
  %resolutions6 = getelementptr inbounds %struct.stm32_adc_info, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %resolutions6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resolutions6, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %23, i32 %i.046
  %24 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp8 = icmp eq i32 %21, %25
  br i1 %cmp8, label %do.body18, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end.do.end_crit_edge
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %27) #17
  br label %cleanup

do.body18:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_of_get_resolution.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_of_get_resolution, %if.then23)) #14
          to label %do.end27 [label %if.then23], !srcloc !386

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %res, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_of_get_resolution.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %29) #14
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body18
  %res28 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %res28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.046, ptr %res28, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_trigger_handler.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_trigger_handler, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !386

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  %bufi = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %bufi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_trigger_handler.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %5) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bufi5 = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %bufi5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bufi5, align 4
  %buffer = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_timestamp.i, align 8, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

do.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %12, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %do.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #14
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %15) #14
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %ier_eoc.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ier_eoc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ier_eoc.i, align 4
  %mask.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %19, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask.i, align 4
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %offset.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %29
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %21
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %or.i.i = or i32 %31, %23
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %36, i32 %38
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %32) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_hw_start(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %clk = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %res1.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res1.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %17
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %11
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  %mask.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %9, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %21, -1
  %and.i = and i32 %19, %neg.i
  %res2.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %res2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %res2.i, align 4
  %shift.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %9, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %23, %25
  %or.i = or i32 %shl.i, %and.i
  %26 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %32, i32 %34
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %28) #14, !srcloc !384
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %prepare = getelementptr inbounds %struct.stm32_adc_cfg, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prepare, align 4
  %tobool3.not = icmp eq ptr %38, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call7 = tail call i32 %38(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.cleanup_crit_edge, label %err_clk_dis

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_clk_dis:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %40) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_clk_dis, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %40, %err_clk_dis ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7, %err_clk_dis ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_hw_stop(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %unprepare = getelementptr inbounds %struct.stm32_adc_cfg, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %unprepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unprepare, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %7(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #14
  tail call void @clk_unprepare(ptr noundef %9) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge61
    i32 2, label %sw.bb11
    i32 3, label %sw.bb22
  ]

entry.sw.bb_crit_edge61:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge61
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %completion.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion.i, align 4
  %bufi.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 9
  %14 = ptrtoint ptr %bufi.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bufi.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then2
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #14, !srcloc !381
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.end4_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.end4_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !382
  br label %if.end4

if.end.i:                                         ; preds = %if.then2
  %smpr.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %12, i32 0, i32 9
  %16 = ptrtoint ptr %smpr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smpr.i, align 4
  %smpr_val.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 19
  %18 = ptrtoint ptr %smpr_val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smpr_val.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %26
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %20) #14, !srcloc !384
  %arrayidx6.i = getelementptr %struct.stm32_adc_regspec, ptr %12, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx8.i = getelementptr %struct.stm32_adc, ptr %6, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %6, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %35, i32 %37
  %add.ptr1.i84.i = getelementptr i8, ptr %add.ptr.i83.i, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i84.i, i32 %31) #14, !srcloc !384
  %sqr.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %12, i32 0, i32 5
  %38 = ptrtoint ptr %sqr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sqr.i, align 4
  %arrayidx9.i = getelementptr %struct.stm32_adc_regs, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i, align 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %45, i32 %47
  %add.ptr1.i87.i = getelementptr i8, ptr %add.ptr.i86.i, i32 %41
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i87.i) #14, !srcloc !383
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #14
  %50 = ptrtoint ptr %sqr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sqr.i, align 4
  %arrayidx12.i = getelementptr %struct.stm32_adc_regs, ptr %51, i32 1
  %mask.i = getelementptr %struct.stm32_adc_regs, ptr %51, i32 1, i32 1
  %52 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %53, -1
  %and.i = and i32 %49, %neg.i
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %54 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel.i, align 4
  %shift.i = getelementptr %struct.stm32_adc_regs, ptr %51, i32 1, i32 2
  %56 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %55, %57
  %or.i = or i32 %shl.i, %and.i
  %58 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx12.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %6, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %64, i32 %66
  %add.ptr1.i90.i = getelementptr i8, ptr %add.ptr.i89.i, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i90.i, i32 %60) #14, !srcloc !384
  %67 = ptrtoint ptr %sqr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sqr.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %mask23.i = getelementptr inbounds %struct.stm32_adc_regs, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %mask23.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask23.i, align 4
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %6, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %76, i32 %78
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %70
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #14
  %neg.i.i = xor i32 %72, -1
  %and.i.i = and i32 %80, %neg.i.i
  %81 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %6, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %85, i32 %87
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %81) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  %exten.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %12, i32 0, i32 6
  %88 = ptrtoint ptr %exten.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %exten.i, align 4
  %mask26.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %12, i32 0, i32 6, i32 1
  %90 = ptrtoint ptr %mask26.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mask26.i, align 4
  %call2.i92.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %92 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %6, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %96 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i94.i = getelementptr i8, ptr %95, i32 %97
  %add.ptr1.i.i95.i = getelementptr i8, ptr %add.ptr.i.i94.i, i32 %89
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i95.i) #14, !srcloc !383
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #14
  %neg.i96.i = xor i32 %91, -1
  %and.i97.i = and i32 %99, %neg.i96.i
  %100 = tail call i32 @llvm.bswap.i32(i32 %and.i97.i) #14
  %101 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %6, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i98.i = getelementptr i8, ptr %104, i32 %106
  %add.ptr1.i13.i99.i = getelementptr i8, ptr %add.ptr.i12.i98.i, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i99.i, i32 %100) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i92.i) #14
  %107 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %ier_eoc.i.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %ier_eoc.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ier_eoc.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %110, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mask.i.i, align 4
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %115 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %6, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %118, i32 %120
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %112
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i) #14, !srcloc !383
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #14
  %or.i.i.i = or i32 %122, %114
  %123 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %124 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %6, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %127, i32 %129
  %add.ptr1.i13.i.i.i = getelementptr i8, ptr %add.ptr.i12.i.i.i, i32 %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i.i, i32 %123) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i.i) #14
  %130 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cfg.i, align 8
  %start_conv.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %start_conv.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %start_conv.i, align 4
  tail call void %133(ptr noundef %indio_dev, i1 noundef zeroext false) #14
  %call30.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion.i, i32 noundef 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp eq i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end.i.if.end38.i_crit_edge, label %if.else.i

if.end.i.if.end38.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp33.i = icmp slt i32 %call30.i, 0
  br i1 %cmp33.i, label %if.else.i.if.end38.i_crit_edge, label %if.else35.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.else35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %buffer.i = getelementptr inbounds %struct.stm32_adc, ptr %6, i32 0, i32 5
  %134 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %buffer.i, align 8
  %conv.i = zext i16 %135 to i32
  %136 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv.i, ptr %val, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else35.i, %if.else.i.if.end38.i_crit_edge, %if.end.i.if.end38.i_crit_edge
  %ret.0.i = phi i32 [ 1, %if.else35.i ], [ -110, %if.end.i.if.end38.i_crit_edge ], [ %call30.i, %if.else.i.if.end38.i_crit_edge ]
  %137 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i, align 8
  %stop_conv.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %stop_conv.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %stop_conv.i, align 4
  tail call void %140(ptr noundef %indio_dev) #14
  %141 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg.i, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %ier_eoc.i101.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %ier_eoc.i101.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ier_eoc.i101.i, align 4
  %mask.i102.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %144, i32 0, i32 1, i32 1
  %147 = ptrtoint ptr %mask.i102.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mask.i102.i, align 4
  %call2.i.i104.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %149 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %6, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %153 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i.i106.i = getelementptr i8, ptr %152, i32 %154
  %add.ptr1.i.i.i107.i = getelementptr i8, ptr %add.ptr.i.i.i106.i, i32 %146
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i107.i) #14, !srcloc !383
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #14
  %neg.i.i.i = xor i32 %148, -1
  %and.i.i.i = and i32 %156, %neg.i.i.i
  %157 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #14
  %158 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %6, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %162 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i.i108.i = getelementptr i8, ptr %161, i32 %163
  %add.ptr1.i13.i.i109.i = getelementptr i8, ptr %add.ptr.i12.i.i108.i, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i109.i, i32 %157) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i104.i) #14
  %call.i110.i = tail call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %164 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store volatile i64 %call.i110.i, ptr %last_busy.i.i, align 8
  %call.i111.i = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #14
  br label %if.end4

if.end4:                                          ; preds = %if.end38.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.if.end4_crit_edge ], [ %ret.0.i, %if.end38.i ], [ %call.i.i, %if.then.i.i.if.end4_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cmp5 = icmp eq i32 %mask, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %vrefint = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 21
  %165 = ptrtoint ptr %vrefint to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %vrefint, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool6.not = icmp eq i32 %166, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul i32 %166, 3300
  %167 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %val, align 4
  %div = udiv i32 %mul, %168
  store i32 %div, ptr %val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #14
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %169 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load = load i8, ptr %differential, align 4
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  %vref_mv17 = getelementptr inbounds %struct.stm32_adc_common, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %vref_mv17 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %vref_mv17, align 4
  %174 = lshr i8 %bf.load, 4
  %.lobit = and i8 %174, 1
  %175 = zext i8 %.lobit to i32
  %storemerge60 = shl i32 %173, %175
  %176 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %storemerge60, ptr %val, align 4
  %storemerge59.in.in = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %177 = ptrtoint ptr %storemerge59.in.in to i32
  call void @__asan_load1_noabort(i32 %177)
  %storemerge59.in = load i8, ptr %storemerge59.in.in, align 1
  %storemerge59 = zext i8 %storemerge59.in to i32
  %178 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %storemerge59, ptr %val2, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %differential23 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %179 = ptrtoint ptr %differential23 to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load24 = load i8, ptr %differential23, align 4
  %180 = and i8 %bf.load24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool28.not = icmp eq i8 %180, 0
  br i1 %tobool28.not, label %sw.bb22.if.end35_crit_edge, label %if.then29

sw.bb22.if.end35_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then29:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #16
  %realbits31 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %181 = ptrtoint ptr %realbits31 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %realbits31, align 1
  %conv32 = zext i8 %182 to i32
  %shl = shl nuw i32 1, %conv32
  %div33.neg = sdiv i32 %shl, -2
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %sw.bb22.if.end35_crit_edge
  %storemerge = phi i32 [ %div33.neg, %if.then29 ], [ 0, %sw.bb22.if.end35_crit_edge ]
  %183 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %sw.bb11, %if.end10, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end35 ], [ 11, %sw.bb11 ], [ %ret.0, %if.end10 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef %trig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %trigs22.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trigs22.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigs22.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not23.i = icmp eq ptr %7, null
  br i1 %tobool.not23.i, label %entry.stm32_adc_get_trig_extsel.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.stm32_adc_get_trig_extsel.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_get_trig_extsel.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %name7.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef %trig) #14
  br i1 %call1.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call2.i = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef %trig) #14
  br i1 %call2.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %trigs4.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trigs4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trigs4.i, align 4
  %arrayidx5.i = getelementptr %struct.stm32_adc_trig_info, ptr %11, i32 %i.024.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  %14 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name7.i, align 4
  %call8.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %stm32_adc_get_trig_extsel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.024.i, 1
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %trigs.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %trigs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trigs.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_adc_trig_info, ptr %19, i32 %inc.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.inc.i.stm32_adc_get_trig_extsel.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.stm32_adc_get_trig_extsel.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_get_trig_extsel.exit.thread

stm32_adc_get_trig_extsel.exit:                   ; preds = %land.lhs.true.i
  %extsel.i = getelementptr %struct.stm32_adc_trig_info, ptr %11, i32 %i.024.i, i32 1
  %22 = ptrtoint ptr %extsel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extsel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %stm32_adc_get_trig_extsel.exit.stm32_adc_get_trig_extsel.exit.thread_crit_edge, label %stm32_adc_get_trig_extsel.exit._crit_edge

stm32_adc_get_trig_extsel.exit._crit_edge:        ; preds = %stm32_adc_get_trig_extsel.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %24

stm32_adc_get_trig_extsel.exit.stm32_adc_get_trig_extsel.exit.thread_crit_edge: ; preds = %stm32_adc_get_trig_extsel.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_get_trig_extsel.exit.thread

stm32_adc_get_trig_extsel.exit.thread:            ; preds = %stm32_adc_get_trig_extsel.exit.stm32_adc_get_trig_extsel.exit.thread_crit_edge, %for.inc.i.stm32_adc_get_trig_extsel.exit.thread_crit_edge, %entry.stm32_adc_get_trig_extsel.exit.thread_crit_edge
  br label %24

24:                                               ; preds = %stm32_adc_get_trig_extsel.exit.thread, %stm32_adc_get_trig_extsel.exit._crit_edge
  %25 = phi i32 [ -22, %stm32_adc_get_trig_extsel.exit.thread ], [ 0, %stm32_adc_get_trig_extsel.exit._crit_edge ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_update_scan_mode(ptr noundef %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i16, label %if.end.i

if.then.i16:                                      ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #14, !srcloc !381
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i16.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i16.cleanup_crit_edge:                    ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !382
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %5 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %masklength, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %scan_mask, i32 noundef %6) #14
  %num_conv = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %num_conv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4.i, ptr %num_conv, align 8
  %call4 = tail call fastcc i32 @stm32_adc_conf_scan_seq(ptr noundef %indio_dev, ptr noundef %scan_mask)
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end11.i.i.i.i.i, %if.then.i16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end.i ], [ %call.i, %if.then.i16.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_debugfs_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #14, !srcloc !381
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !382
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %readval, null
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = tail call i32 @llvm.bswap.i32(i32 %writeval) #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %5) #14, !srcloc !384
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %offset.i16 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %offset.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %15, i32 %17
  %add.ptr1.i18 = getelementptr i8, ptr %add.ptr.i17, i32 %reg
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i18) #14, !srcloc !383
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  %20 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %readval, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %call.i19 = tail call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i19, ptr %last_busy.i, align 8
  %call.i20 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_of_xlate(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %iiospec) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %channel = getelementptr %struct.iio_chan_spec, ptr %3, i32 %i.08, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2 = icmp eq i32 %7, %5
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %i.08, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adc_set_watermark(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mul = shl i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul)
  %cmp = icmp ugt i32 %mul, 2048
  %phi.bo = shl i32 %val, 2
  %cond = select i1 %cmp, i32 4096, i32 %phi.bo
  %num_conv = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_conv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_conv, align 8
  %mul2 = mul i32 %3, %cond
  %4 = tail call i32 @llvm.umin.i32(i32 %mul2, i32 4096)
  %rx_buf_sz9 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %rx_buf_sz9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_buf_sz9, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_timer_trigger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_stm32_lptim_trigger(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_conf_scan_seq(ptr noundef %indio_dev, ptr noundef %scan_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sqr1 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sqr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sqr1, align 4
  %smpr = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %smpr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smpr, align 4
  %smpr_val = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %smpr_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smpr_val, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #14, !srcloc !384
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx8 = getelementptr %struct.stm32_adc_regspec, ptr %22, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.stm32_adc, ptr %1, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %31, i32 %33
  %add.ptr1.i90 = getelementptr i8, ptr %add.ptr.i89, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i90, i32 %27) #14, !srcloc !384
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %34 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %masklength, align 8
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef %scan_mask, i32 noundef %35, i32 noundef 0) #14
  %36 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %37)
  %cmp105 = icmp ult i32 %call11, %37
  br i1 %cmp105, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %bit.0106 = phi i32 [ %call11, %for.body.lr.ph ], [ %call27, %do.end.for.body_crit_edge ]
  %38 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channels, align 8
  %inc = add nuw nsw i32 %i.0108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0108)
  %exitcond = icmp eq i32 %i.0108, 16
  br i1 %exitcond, label %for.body.cleanup_crit_edge, label %do.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_conf_scan_seq.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_conf_scan_seq, %if.then17)) #14
          to label %do.end [label %if.then17], !srcloc !386

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %channel = getelementptr %struct.iio_chan_spec, ptr %39, i32 %bit.0106, i32 1
  %40 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_conf_scan_seq.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %41, i32 noundef %inc) #14
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %arrayidx19 = getelementptr %struct.stm32_adc_regs, ptr %7, i32 %inc
  %42 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx19, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %47, i32 %49
  %add.ptr1.i93 = getelementptr i8, ptr %add.ptr.i92, i32 %43
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i93) #14, !srcloc !383
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  %mask = getelementptr %struct.stm32_adc_regs, ptr %7, i32 %inc, i32 1
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask, align 4
  %neg = xor i32 %53, -1
  %and = and i32 %51, %neg
  %channel22 = getelementptr %struct.iio_chan_spec, ptr %39, i32 %bit.0106, i32 1
  %54 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel22, align 4
  %shift = getelementptr %struct.stm32_adc_regs, ptr %7, i32 %inc, i32 2
  %56 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %shift, align 4
  %shl = shl i32 %55, %57
  %or = or i32 %shl, %and
  %58 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx19, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %64, i32 %66
  %add.ptr1.i96 = getelementptr i8, ptr %add.ptr.i95, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i96, i32 %60) #14, !srcloc !384
  %67 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.0106, 1
  %call27 = tail call i32 @_find_next_bit_be(ptr noundef %scan_mask, i32 noundef %68, i32 noundef %add) #14
  %69 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call27, %70
  br i1 %cmp, label %do.end.for.body_crit_edge, label %if.end30

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %7, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %76, i32 %78
  %add.ptr1.i99 = getelementptr i8, ptr %add.ptr.i98, i32 %72
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i99) #14, !srcloc !383
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #14
  %mask35 = getelementptr inbounds %struct.stm32_adc_regs, ptr %7, i32 0, i32 1
  %81 = ptrtoint ptr %mask35 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mask35, align 4
  %neg36 = xor i32 %82, -1
  %and37 = and i32 %80, %neg36
  %shift39 = getelementptr inbounds %struct.stm32_adc_regs, ptr %7, i32 0, i32 2
  %83 = ptrtoint ptr %shift39 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %shift39, align 4
  %shl40 = shl i32 %i.0108, %84
  %or41 = or i32 %shl40, %and37
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %7, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %or41) #14
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %92 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %91, i32 %93
  %add.ptr1.i102 = getelementptr i8, ptr %add.ptr.i101, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i102, i32 %87) #14, !srcloc !384
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_smpr_init(ptr nocapture noundef %adc, i32 noundef %channel, i32 noundef %smp_ns) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %adc, i32 0, i32 2
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %smp_bits = getelementptr inbounds %struct.stm32_adc_regspec, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %smp_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smp_bits, align 4
  %arrayidx = getelementptr %struct.stm32_adc_regs, ptr %5, i32 %channel
  %shift1 = getelementptr %struct.stm32_adc_regs, ptr %5, i32 %channel, i32 2
  %6 = ptrtoint ptr %shift1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift1, align 4
  %mask2 = getelementptr %struct.stm32_adc_regs, ptr %5, i32 %channel, i32 1
  %8 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask2, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.stm32_adc, ptr %adc, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %channel)
  %cmp = icmp eq i32 %13, %channel
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ts_vrefint_ns = getelementptr inbounds %struct.stm32_adc_cfg, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %ts_vrefint_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ts_vrefint_ns, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %smp_ns)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smp_ns.addr.0 = phi i32 [ %16, %if.then ], [ %smp_ns, %entry.if.end_crit_edge ]
  %17 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adc, align 8
  %rate = getelementptr inbounds %struct.stm32_adc_common, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %div = udiv i32 1000000000, %20
  %smp_cycles = getelementptr inbounds %struct.stm32_adc_cfg, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %smp_cycles to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smp_cycles, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %mul = mul i32 %24, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %smp_ns.addr.0)
  %cmp9.not = icmp ult i32 %mul, %smp_ns.addr.0
  br i1 %cmp9.not, label %for.inc, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %if.end
  %arrayidx8.1 = getelementptr i32, ptr %22, i32 1
  %25 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx8.1, align 4
  %mul.1 = mul i32 %26, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %smp_ns.addr.0)
  %cmp9.not.1 = icmp ult i32 %mul.1, %smp_ns.addr.0
  br i1 %cmp9.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx8.2 = getelementptr i32, ptr %22, i32 2
  %27 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.2, align 4
  %mul.2 = mul i32 %28, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %smp_ns.addr.0)
  %cmp9.not.2 = icmp ult i32 %mul.2, %smp_ns.addr.0
  br i1 %cmp9.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx8.3 = getelementptr i32, ptr %22, i32 3
  %29 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.3, align 4
  %mul.3 = mul i32 %30, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %smp_ns.addr.0)
  %cmp9.not.3 = icmp ult i32 %mul.3, %smp_ns.addr.0
  br i1 %cmp9.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx8.4 = getelementptr i32, ptr %22, i32 4
  %31 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.4, align 4
  %mul.4 = mul i32 %32, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %smp_ns.addr.0)
  %cmp9.not.4 = icmp ult i32 %mul.4, %smp_ns.addr.0
  br i1 %cmp9.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx8.5 = getelementptr i32, ptr %22, i32 5
  %33 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx8.5, align 4
  %mul.5 = mul i32 %34, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %smp_ns.addr.0)
  %cmp9.not.5 = icmp ult i32 %mul.5, %smp_ns.addr.0
  br i1 %cmp9.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx8.6 = getelementptr i32, ptr %22, i32 6
  %35 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8.6, align 4
  %mul.6 = mul i32 %36, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %smp_ns.addr.0)
  %cmp9.not.6 = icmp ult i32 %mul.6, %smp_ns.addr.0
  br i1 %cmp9.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx8.7 = getelementptr i32, ptr %22, i32 7
  %37 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx8.7, align 4
  %mul.7 = mul i32 %38, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %smp_ns.addr.0)
  %cmp9.not.7 = icmp ult i32 %mul.7, %smp_ns.addr.0
  %spec.select = select i1 %cmp9.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %smp.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %39 = tail call i32 @llvm.umin.i32(i32 %smp.0.lcssa, i32 7)
  %arrayidx15 = getelementptr %struct.stm32_adc, ptr %adc, i32 0, i32 19, i32 %11
  %40 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %41, %neg
  %shl = shl i32 %39, %7
  %or = or i32 %and, %shl
  store i32 %or, ptr %arrayidx15, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adc_set_trig_pol(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trigger_polarity = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %trigger_polarity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %trigger_polarity, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_adc_get_trig_pol(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trigger_polarity = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %trigger_polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trigger_polarity, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_populate_int_ch(ptr noundef %indio_dev, ptr nocapture noundef readonly %ch_name, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  %vrefint = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vrefint) #14
  %2 = ptrtoint ptr %vrefint to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %vrefint, align 2, !annotation !378
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %vrefint22 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.stm32_adc_ic], ptr @stm32_adc_ic, i32 0, i32 %i.040
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @strncmp(ptr noundef %4, ptr noundef %ch_name, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr %struct.stm32_adc, ptr %1, i32 0, i32 24, i32 %i.040
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %chan, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.040)
  %cmp4.not = icmp eq i32 %i.040, 1
  br i1 %cmp4.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %if.then
  %call6 = call i32 @nvmem_cell_read_u16(ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull %vrefint) #14
  %6 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call6, label %if.then9 [
    i32 -2, label %do.body
    i32 0, label %if.else
  ]

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call11 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %call6, ptr noundef nonnull @.str.94) #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_populate_int_ch.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_populate_int_ch, %if.then19)) #14
          to label %for.inc [label %if.then19], !srcloc !386

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_populate_int_ch.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.96) #14
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %vrefint to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vrefint, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %vrefint22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %vrefint22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then19, %do.body, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ %call11, %if.then9 ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vrefint) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_u16(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_buffer_postenable(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #14, !srcloc !381
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !382
  br label %cleanup

if.end:                                           ; preds = %entry
  %trig = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %5 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trig, align 4
  %call3 = tail call fastcc i32 @stm32_adc_set_trig(ptr noundef %indio_dev, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.99) #17
  br label %err_pm_put

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @stm32_adc_dma_start(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.102) #17
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %8, i32 0, i32 8
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %exten10.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %exten10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exten10.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %20
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %14
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %exten14.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %26, i32 0, i32 6
  %mask.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %26, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask.i, align 4
  %mask18.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %26, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %mask18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask18.i, align 4
  %or.i = or i32 %30, %28
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %22, %neg.i
  %31 = ptrtoint ptr %exten14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %exten14.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %8, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %37, i32 %39
  %add.ptr1.i58.i = getelementptr i8, ptr %add.ptr.i57.i, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i58.i, i32 %33) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #14
  br label %err_pm_put

if.end14:                                         ; preds = %if.end6
  %bufi = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 9
  %40 = ptrtoint ptr %bufi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bufi, align 4
  %cfg.i45 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %cfg.i45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i45, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %ier_ovr.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ier_ovr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ier_ovr.i, align 4
  %mask.i46 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %44, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %mask.i46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask.i46, align 4
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %offset.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 %54
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %46
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  %or.i.i = or i32 %56, %48
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %61, i32 %63
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %57) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  %dma_chan = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 13
  %64 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_chan, align 4
  %tobool15.not = icmp eq ptr %65, null
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %cfg.i45 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i45, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %ier_eoc.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ier_eoc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ier_eoc.i, align 4
  %mask.i48 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %69, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %mask.i48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mask.i48, align 4
  %call2.i.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i52 = getelementptr i8, ptr %77, i32 %79
  %add.ptr1.i.i.i53 = getelementptr i8, ptr %add.ptr.i.i.i52, i32 %71
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i53) #14, !srcloc !383
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #14
  %or.i.i54 = or i32 %81, %73
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i.i54) #14
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i.i55 = getelementptr i8, ptr %86, i32 %88
  %add.ptr1.i13.i.i56 = getelementptr i8, ptr %add.ptr.i12.i.i55, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i56, i32 %82) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i50) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %89 = ptrtoint ptr %cfg.i45 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i45, align 8
  %start_conv = getelementptr inbounds %struct.stm32_adc_cfg, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %start_conv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %start_conv, align 4
  %93 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_chan, align 4
  %tobool19 = icmp ne ptr %94, null
  tail call void %92(ptr noundef %indio_dev, i1 noundef zeroext %tobool19) #14
  br label %cleanup

err_pm_put:                                       ; preds = %do.end12, %do.end
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call7, %do.end12 ]
  %call.i57 = tail call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %95 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store volatile i64 %call.i57, ptr %last_busy.i, align 8
  %call.i58 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #14
  br label %cleanup

cleanup:                                          ; preds = %err_pm_put, %if.end17, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_pm_put ], [ 0, %if.end17 ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_buffer_predisable(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 8
  %stop_conv = getelementptr inbounds %struct.stm32_adc_cfg, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %stop_conv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_conv, align 4
  tail call void %7(ptr noundef %indio_dev) #14
  %dma_chan = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %ier_eoc.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ier_eoc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ier_eoc.i, align 4
  %mask.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %13, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %offset.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %15
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %neg.i.i = xor i32 %17, -1
  %and.i.i = and i32 %25, %neg.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %30, i32 %32
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %26) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %33 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %ier_ovr.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ier_ovr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ier_ovr.i, align 4
  %mask.i25 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %36, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %mask.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask.i25, align 4
  %lock.i.i26 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i26) #14
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %offset.i.i.i28 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %offset.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i.i.i28, align 4
  %add.ptr.i.i.i29 = getelementptr i8, ptr %44, i32 %46
  %add.ptr1.i.i.i30 = getelementptr i8, ptr %add.ptr.i.i.i29, i32 %38
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i30) #14, !srcloc !383
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #14
  %neg.i.i31 = xor i32 %40, -1
  %and.i.i32 = and i32 %48, %neg.i.i31
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i.i32) #14
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %offset.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i.i.i28, align 4
  %add.ptr.i12.i.i33 = getelementptr i8, ptr %53, i32 %55
  %add.ptr1.i13.i.i34 = getelementptr i8, ptr %add.ptr.i12.i.i33, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i34, i32 %49) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i26, i32 noundef %call2.i.i27) #14
  %56 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_chan, align 4
  %tobool3.not = icmp eq ptr %57, null
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.then4.if.end12_crit_edge, label %dmaengine_terminate_async.exit.i

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

dmaengine_terminate_async.exit.i:                 ; preds = %if.then4
  %call.i.i = tail call i32 %61(ptr noundef nonnull %57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end12_crit_edge

dmaengine_terminate_async.exit.i.if.end12_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.107, i32 noundef 1169) #14
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %57, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 48
  %64 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %65, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end12_crit_edge, label %if.then.i2.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %65(ptr noundef nonnull %57) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then.i2.i, %if.end.i.if.end12_crit_edge, %dmaengine_terminate_async.exit.i.if.end12_crit_edge, %if.then4.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %66 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %67, i32 0, i32 8
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %cfg.i35 = getelementptr inbounds %struct.stm32_adc, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %cfg.i35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i35, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %exten10.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %exten10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %exten10.i, align 4
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %67, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %67, i32 0, i32 1
  %78 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %79
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %73
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #14
  %82 = ptrtoint ptr %cfg.i35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i35, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %exten14.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %85, i32 0, i32 6
  %mask.i36 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %85, i32 0, i32 6, i32 1
  %86 = ptrtoint ptr %mask.i36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mask.i36, align 4
  %mask18.i = getelementptr inbounds %struct.stm32_adc_regspec, ptr %85, i32 0, i32 7, i32 1
  %88 = ptrtoint ptr %mask18.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mask18.i, align 4
  %or.i = or i32 %89, %87
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %81, %neg.i
  %90 = ptrtoint ptr %exten14.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %exten14.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %93 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %67, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %96, i32 %98
  %add.ptr1.i58.i = getelementptr i8, ptr %add.ptr.i57.i, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i58.i, i32 %92) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #14
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %99 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i37 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_set_trig(ptr nocapture noundef readonly %indio_dev, ptr noundef %trig) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %trig, null
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4

if.then:                                          ; preds = %entry
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %trigs22.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %trigs22.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigs22.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not23.i = icmp eq ptr %7, null
  br i1 %tobool.not23.i, label %if.then.cleanup_crit_edge, label %for.body.lr.ph.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then
  %name7.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i = tail call zeroext i1 @is_stm32_timer_trigger(ptr noundef nonnull %trig) #14
  br i1 %call1.i, label %for.body.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call2.i = tail call zeroext i1 @is_stm32_lptim_trigger(ptr noundef nonnull %trig) #14
  br i1 %call2.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %trigs4.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %trigs4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trigs4.i, align 4
  %arrayidx5.i = getelementptr %struct.stm32_adc_trig_info, ptr %11, i32 %i.024.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  %14 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name7.i, align 4
  %call8.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %stm32_adc_get_trig_extsel.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.024.i, 1
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %trigs.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %trigs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trigs.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_adc_trig_info, ptr %19, i32 %inc.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

stm32_adc_get_trig_extsel.exit:                   ; preds = %land.lhs.true.i
  %extsel.i = getelementptr %struct.stm32_adc_trig_info, ptr %11, i32 %i.024.i, i32 1
  %22 = ptrtoint ptr %extsel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extsel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %stm32_adc_get_trig_extsel.exit.cleanup_crit_edge, label %if.end

stm32_adc_get_trig_extsel.exit.cleanup_crit_edge: ; preds = %stm32_adc_get_trig_extsel.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %stm32_adc_get_trig_extsel.exit
  call void @__sanitizer_cov_trace_pc() #16
  %trigger_polarity = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %trigger_polarity to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trigger_polarity, align 8
  %add = add i32 %25, 1
  br label %do.body4

do.body4:                                         ; preds = %if.end, %entry.do.body4_crit_edge
  %extsel.0 = phi i32 [ %23, %if.end ], [ 0, %entry.do.body4_crit_edge ]
  %exten.0 = phi i32 [ %add, %if.end ], [ 0, %entry.do.body4_crit_edge ]
  %lock = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %exten10 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %exten10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exten10, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %37
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %31
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %exten14 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %43, i32 0, i32 6
  %mask = getelementptr inbounds %struct.stm32_adc_regspec, ptr %43, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask, align 4
  %mask18 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %43, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %mask18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask18, align 4
  %or = or i32 %47, %45
  %neg = xor i32 %or, -1
  %and = and i32 %39, %neg
  %shift = getelementptr inbounds %struct.stm32_adc_regspec, ptr %43, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %shift, align 4
  %shl = shl i32 %exten.0, %49
  %or22 = or i32 %and, %shl
  %shift26 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %43, i32 0, i32 7, i32 2
  %50 = ptrtoint ptr %shift26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %shift26, align 4
  %shl27 = shl i32 %extsel.0, %51
  %or28 = or i32 %or22, %shl27
  %52 = ptrtoint ptr %exten14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %exten14, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %or28) #14
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %58, i32 %60
  %add.ptr1.i58 = getelementptr i8, ptr %add.ptr.i57, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i58, i32 %54) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %stm32_adc_get_trig_extsel.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body4 ], [ %23, %stm32_adc_get_trig_extsel.exit.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_adc_dma_start(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dma_chan = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_dma_start.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_dma_start, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !386

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %rx_buf_sz = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_sz, align 8
  %div42 = lshr i32 %5, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_dma_start.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef %5, i32 noundef %div42) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %6 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_chan, align 4
  %rx_dma_buf = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %rx_dma_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_dma_buf, align 4
  %rx_buf_sz9 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %rx_buf_sz9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buf_sz9, align 8
  %div1141 = lshr i32 %11, 1
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %lor.lhs.false.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.end
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 40
  %14 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %15(ptr noundef nonnull %7, i32 noundef %9, i32 noundef %11, i32 noundef %div1141, i32 noundef 2, i32 noundef 1) #14
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge, label %if.end15

dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @stm32_adc_dma_buffer_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %indio_dev, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_submit.i, align 4
  %call.i44 = tail call i32 %19(ptr noundef nonnull %call.i) #14
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i44, i32 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i44)
  %tobool18.not = icmp sgt i32 %call.i44, -1
  %21 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_chan, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.then19.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then19
  %call.i.i = tail call i32 %26(ptr noundef %22) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i45 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i46:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.107, i32 noundef 1169) #14
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 48
  %29 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %30, null
  br i1 %tobool.not.i1.i, label %if.end.i46.cleanup_crit_edge, label %if.end.i46.cleanup.sink.split_crit_edge

if.end.i46.cleanup.sink.split_crit_edge:          ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 50
  %31 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_issue_pending.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22, %if.end.i46.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %32, %if.end22 ], [ %30, %if.end.i46.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end22 ], [ %20, %if.end.i46.cleanup.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %22) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i46.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %dmaengine_prep_dma_cyclic.exit.cleanup_crit_edge ], [ %20, %if.then19.cleanup_crit_edge ], [ %20, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ %20, %if.end.i46.cleanup_crit_edge ], [ -16, %lor.lhs.false2.i.cleanup_crit_edge ], [ -16, %lor.lhs.false.i.cleanup_crit_edge ], [ -16, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_adc_dma_buffer_done(ptr noundef %data) #2 align 64 {
entry:
  %state.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state.i) #14
  %dma_chan.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 13
  %2 = call ptr @memset(ptr %state.i, i32 255, i32 16)
  %3 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_chan.i, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %device_tx_status.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %device_tx_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_tx_status.i.i, align 4
  %call.i.i = call i32 %10(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.stm32_adc_dma_residue.exit_crit_edge

entry.stm32_adc_dma_residue.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_dma_residue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %state.i, i32 0, i32 2
  %rx_buf_sz.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_sz.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %sub.i = sub i32 %13, %15
  %bufi.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %bufi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %17)
  %cmp2.not.i = icmp ult i32 %sub.i, %17
  %add.i = select i1 %cmp2.not.i, i32 %13, i32 0
  %sub.pn.i = sub i32 %sub.i, %17
  %size.0.i = add i32 %sub.pn.i, %add.i
  br label %stm32_adc_dma_residue.exit

stm32_adc_dma_residue.exit:                       ; preds = %if.then.i, %entry.stm32_adc_dma_residue.exit_crit_edge
  %retval.0.i28 = phi i32 [ %size.0.i, %if.then.i ], [ 0, %entry.stm32_adc_dma_residue.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state.i) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_dma_buffer_done.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_dma_buffer_done, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !386

if.then:                                          ; preds = %stm32_adc_dma_residue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  %bufi = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %bufi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bufi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_dma_buffer_done.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.106, i32 noundef %19) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %stm32_adc_dma_residue.exit
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i28, i32 %21)
  %cmp.not30 = icmp slt i32 %retval.0.i28, %21
  br i1 %cmp.not30, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %rx_buf = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 14
  %bufi5 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 9
  %rx_buf_sz = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %residue.031 = phi i32 [ %retval.0.i28, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf, align 8
  %24 = ptrtoint ptr %bufi5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bufi5, align 4
  %arrayidx = getelementptr i8, ptr %23, i32 %25
  %call6 = call i32 @iio_push_to_buffers(ptr noundef %data, ptr noundef %arrayidx) #14
  %26 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_bytes, align 4
  %sub = sub i32 %residue.031, %27
  %28 = ptrtoint ptr %bufi5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bufi5, align 4
  %add = add i32 %29, %27
  %30 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buf_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp11.not = icmp ult i32 %add, %31
  %spec.store.select = select i1 %cmp11.not, i32 %add, i32 0
  %32 = ptrtoint ptr %bufi5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select, ptr %bufi5, align 4
  %33 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_bytes, align 4
  %cmp.not = icmp slt i32 %sub, %34
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_adc_start_conv(ptr nocapture noundef readonly %indio_dev, i1 noundef zeroext %dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %9 = or i32 %8, 65536
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %9) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  br i1 %dma, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i.i13 = getelementptr i8, ptr %add.ptr.i.i12, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i13) #14, !srcloc !383
  %23 = or i32 %22, 196608
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i15 = getelementptr i8, ptr %27, i32 %29
  %add.ptr1.i13.i16 = getelementptr i8, ptr %add.ptr.i12.i15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i16, i32 %23) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i10) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %33, i32 %35
  %add.ptr1.i.i21 = getelementptr i8, ptr %add.ptr.i.i20, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i21) #14, !srcloc !383
  %37 = or i32 %36, 17039360
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i23 = getelementptr i8, ptr %41, i32 %43
  %add.ptr1.i13.i24 = getelementptr i8, ptr %add.ptr.i12.i23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i24, i32 %37) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i18) #14
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 3, i32 noundef 2) #14
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %49
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %51 = and i32 %50, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not = icmp eq i32 %51, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %55, i32 %57
  %add.ptr1.i.i29 = getelementptr i8, ptr %add.ptr.i.i28, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i29) #14, !srcloc !383
  %59 = or i32 %58, 64
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i31 = getelementptr i8, ptr %63, i32 %65
  %add.ptr1.i13.i32 = getelementptr i8, ptr %add.ptr.i12.i31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i32, i32 %59) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i26) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_adc_stop_conv(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %9 = and i32 %8, -49
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %9) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %call2.i5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %19, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #14, !srcloc !383
  %23 = and i32 %22, -268435457
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i9 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i9, i32 %23) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i5) #14
  %call2.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %33, i32 %35
  %add.ptr1.i.i14 = getelementptr i8, ptr %add.ptr.i.i13, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i14) #14, !srcloc !383
  %37 = and i32 %36, -65537
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i16 = getelementptr i8, ptr %41, i32 %43
  %add.ptr1.i13.i17 = getelementptr i8, ptr %add.ptr.i12.i16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i17, i32 %37) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i11) #14
  %call2.i19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %47, i32 %49
  %add.ptr1.i.i22 = getelementptr i8, ptr %add.ptr.i.i21, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i22) #14, !srcloc !383
  %51 = and i32 %50, -16973825
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i24 = getelementptr i8, ptr %55, i32 %57
  %add.ptr1.i13.i25 = getelementptr i8, ptr %add.ptr.i12.i24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i25, i32 %51) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i19) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32f4_adc_irq_clear(ptr nocapture noundef readonly %indio_dev, i32 noundef %msk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %isr_eoc = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %isr_eoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isr_eoc, align 4
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %neg.i = xor i32 %msk, -1
  %and.i = and i32 %15, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %20, i32 %22
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %16) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32h7_adc_prepare(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %9 = and i32 %8, -33
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %9) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  %call2.i53.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i55.i = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i.i56.i = getelementptr i8, ptr %add.ptr.i.i55.i, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i56.i) #14, !srcloc !383
  %23 = or i32 %22, 16
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i57.i = getelementptr i8, ptr %27, i32 %29
  %add.ptr1.i13.i58.i = getelementptr i8, ptr %add.ptr.i12.i57.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i58.i, i32 %23) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i53.i) #14
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %rate.i = getelementptr inbounds %struct.stm32_adc_common, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %33)
  %cmp.i = icmp ugt i32 %33, 20000000
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i60.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i62.i = getelementptr i8, ptr %37, i32 %39
  %add.ptr1.i.i63.i = getelementptr i8, ptr %add.ptr.i.i62.i, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i63.i) #14, !srcloc !383
  %41 = or i32 %40, 65536
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i65.i = getelementptr i8, ptr %45, i32 %47
  %add.ptr1.i13.i66.i = getelementptr i8, ptr %add.ptr.i12.i65.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i66.i, i32 %41) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i60.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i, align 8
  %has_vregready.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %has_vregready.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %has_vregready.i, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #14
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i64 @ktime_get() #14
  %add.i.i = add i64 %call3.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 833) #14
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %55, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #14, !srcloc !383
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #14
  %and79.i = and i32 %59, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool15.not80.i = icmp eq i32 %and79.i, 0
  br i1 %tobool15.not80.i, label %if.end2.i.land.lhs.true.i_crit_edge, label %if.end2.i.for.end.i_crit_edge

if.end2.i.for.end.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end2.i.land.lhs.true.i_crit_edge:              ; preds = %if.end2.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.end2.i.land.lhs.true.i_crit_edge
  %call19.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call19.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then22.i, label %if.then26.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %63, i32 %65
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i) #14, !srcloc !383
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !383
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #14
  %and.i = and i32 %75, 4096
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i_crit_edge

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then22.i, %if.end2.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %67, %if.then22.i ], [ %59, %if.end2.i.for.end.i_crit_edge ], [ %75, %if.then26.i.for.end.i_crit_edge ]
  %and28.i = and i32 %val.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %stm32h7_adc_exit_pwr_down.exit, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

stm32h7_adc_exit_pwr_down.exit:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i70.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i72.i = getelementptr i8, ptr %79, i32 %81
  %add.ptr1.i.i73.i = getelementptr i8, ptr %add.ptr.i.i72.i, i32 8
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i73.i) #14, !srcloc !383
  %83 = or i32 %82, 32
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i75.i = getelementptr i8, ptr %87, i32 %89
  %add.ptr1.i13.i76.i = getelementptr i8, ptr %add.ptr.i12.i75.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i76.i, i32 %83) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i70.i) #14
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.135) #17
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then1.i
  %90 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv.i, align 8
  %calibrated.i = getelementptr inbounds %struct.stm32_adc, ptr %91, i32 0, i32 20, i32 3
  %92 = ptrtoint ptr %calibrated.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %calibrated.i, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i38 = icmp eq i8 %93, 0
  br i1 %tobool.not.i38, label %if.end.i47, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end.i47:                                       ; preds = %if.end
  %lock.i.i39 = getelementptr inbounds %struct.stm32_adc, ptr %91, i32 0, i32 8
  %call2.i.i40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i39) #14
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %91, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %offset.i.i.i41 = getelementptr inbounds %struct.stm32_adc, ptr %91, i32 0, i32 1
  %98 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i.i42 = getelementptr i8, ptr %97, i32 %99
  %add.ptr1.i.i.i43 = getelementptr i8, ptr %add.ptr.i.i.i42, i32 8
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i43) #14, !srcloc !383
  %101 = and i32 %100, -65
  %102 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %91, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i12.i.i44 = getelementptr i8, ptr %105, i32 %107
  %add.ptr1.i13.i.i45 = getelementptr i8, ptr %add.ptr.i12.i.i44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i45, i32 %101) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i39, i32 noundef %call2.i.i40) #14
  %call2.i110.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i39) #14
  %108 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %91, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i112.i = getelementptr i8, ptr %111, i32 %113
  %add.ptr1.i.i113.i = getelementptr i8, ptr %add.ptr.i.i112.i, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i113.i) #14, !srcloc !383
  %115 = and i32 %114, -257
  %116 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %91, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %120 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i12.i115.i = getelementptr i8, ptr %119, i32 %121
  %add.ptr1.i13.i116.i = getelementptr i8, ptr %add.ptr.i12.i115.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i116.i, i32 %115) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i39, i32 noundef %call2.i110.i) #14
  %call2.i118.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i39) #14
  %122 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %91, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %126 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i120.i = getelementptr i8, ptr %125, i32 %127
  %add.ptr1.i.i121.i = getelementptr i8, ptr %add.ptr.i.i120.i, i32 8
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i121.i) #14, !srcloc !383
  %129 = or i32 %128, 128
  %130 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %91, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %134 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i12.i122.i = getelementptr i8, ptr %133, i32 %135
  %add.ptr1.i13.i123.i = getelementptr i8, ptr %add.ptr.i12.i122.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i123.i, i32 %129) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i39, i32 noundef %call2.i118.i) #14
  %call1.i = tail call i64 @ktime_get() #14
  %add.i.i46 = add i64 %call1.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1031) #14
  %136 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %91, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %139, i32 %141
  %add.ptr1.i171.i = getelementptr i8, ptr %add.ptr.i170.i, i32 8
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i171.i) #14, !srcloc !383
  %.mask172.i = and i32 %142, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask172.i)
  %tobool12.not173.i = icmp eq i32 %.mask172.i, 0
  br i1 %tobool12.not173.i, label %if.end.i47.if.end32.i_crit_edge, label %if.end.i47.land.lhs.true.i49_crit_edge

if.end.i47.land.lhs.true.i49_crit_edge:           ; preds = %if.end.i47
  br label %land.lhs.true.i49

if.end.i47.if.end32.i_crit_edge:                  ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

land.lhs.true.i49:                                ; preds = %if.then23.i.land.lhs.true.i49_crit_edge, %if.end.i47.land.lhs.true.i49_crit_edge
  %call16.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i, i64 %add.i.i46)
  %cmp3.i.i48 = icmp sgt i64 %call16.i, %add.i.i46
  br i1 %cmp3.i.i48, label %for.end.i51, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i49
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %143 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %91, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %147 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %146, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i50, i32 %148
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %.mask.i = and i32 %149, 128
  %tobool12.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool12.not.i, label %if.then23.i.if.end32.i_crit_edge, label %if.then23.i.land.lhs.true.i49_crit_edge

if.then23.i.land.lhs.true.i49_crit_edge:          ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i49

if.then23.i.if.end32.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

for.end.i51:                                      ; preds = %land.lhs.true.i49
  %150 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %91, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %154 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %153, i32 %155
  %add.ptr1.i126.i = getelementptr i8, ptr %add.ptr.i125.i, i32 8
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i126.i) #14, !srcloc !383
  %.mask167.i = and i32 %156, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask167.i)
  %tobool26.not.i = icmp eq i32 %.mask167.i, 0
  br i1 %tobool26.not.i, label %for.end.i51.if.end32.i_crit_edge, label %for.end.i51.out.sink.split.i_crit_edge

for.end.i51.out.sink.split.i_crit_edge:           ; preds = %for.end.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.sink.split.i

for.end.i51.if.end32.i_crit_edge:                 ; preds = %for.end.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.end32.i:                                       ; preds = %for.end.i51.if.end32.i_crit_edge, %if.then23.i.if.end32.i_crit_edge, %if.end.i47.if.end32.i_crit_edge
  %call2.i128.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i39) #14
  %157 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %91, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %161 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i130.i = getelementptr i8, ptr %160, i32 %162
  %add.ptr1.i.i131.i = getelementptr i8, ptr %add.ptr.i.i130.i, i32 8
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i131.i) #14, !srcloc !383
  %164 = or i32 %163, 320
  %165 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %91, align 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %169 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i12.i133.i = getelementptr i8, ptr %168, i32 %170
  %add.ptr1.i13.i134.i = getelementptr i8, ptr %add.ptr.i12.i133.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i134.i, i32 %164) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i39, i32 noundef %call2.i128.i) #14
  %call2.i136.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i39) #14
  %171 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %91, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i138.i = getelementptr i8, ptr %174, i32 %176
  %add.ptr1.i.i139.i = getelementptr i8, ptr %add.ptr.i.i138.i, i32 8
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i139.i) #14, !srcloc !383
  %178 = or i32 %177, 128
  %179 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %91, align 8
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %183 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i12.i141.i = getelementptr i8, ptr %182, i32 %184
  %add.ptr1.i13.i142.i = getelementptr i8, ptr %add.ptr.i12.i141.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i142.i, i32 %178) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i39, i32 noundef %call2.i136.i) #14
  %call36.i = tail call i64 @ktime_get() #14
  %add.i143.i = add i64 %call36.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1048) #14
  %185 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %91, align 8
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %189 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i145174.i = getelementptr i8, ptr %188, i32 %190
  %add.ptr1.i146175.i = getelementptr i8, ptr %add.ptr.i145174.i, i32 8
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i146175.i) #14, !srcloc !383
  %.mask168176.i = and i32 %191, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask168176.i)
  %tobool53.not177.i = icmp eq i32 %.mask168176.i, 0
  br i1 %tobool53.not177.i, label %if.end32.i.stm32h7_adc_selfcalib.exit_crit_edge, label %if.end32.i.land.lhs.true57.i_crit_edge

if.end32.i.land.lhs.true57.i_crit_edge:           ; preds = %if.end32.i
  br label %land.lhs.true57.i

if.end32.i.stm32h7_adc_selfcalib.exit_crit_edge:  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32h7_adc_selfcalib.exit

land.lhs.true57.i:                                ; preds = %if.then65.i.land.lhs.true57.i_crit_edge, %if.end32.i.land.lhs.true57.i_crit_edge
  %call58.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call58.i, i64 %add.i143.i)
  %cmp3.i148.i = icmp sgt i64 %call58.i, %add.i143.i
  br i1 %cmp3.i148.i, label %for.end69.i, label %if.then65.i

if.then65.i:                                      ; preds = %land.lhs.true57.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %192 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %91, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %195, i32 8
  %add.ptr1.i146.i = getelementptr i8, ptr %add.ptr.i145.i, i32 %197
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i146.i) #14, !srcloc !383
  %.mask168.i = and i32 %198, 128
  %tobool53.not.i = icmp eq i32 %.mask168.i, 0
  br i1 %tobool53.not.i, label %if.then65.i.stm32h7_adc_selfcalib.exit_crit_edge, label %if.then65.i.land.lhs.true57.i_crit_edge

if.then65.i.land.lhs.true57.i_crit_edge:          ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true57.i

if.then65.i.stm32h7_adc_selfcalib.exit_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32h7_adc_selfcalib.exit

for.end69.i:                                      ; preds = %land.lhs.true57.i
  %199 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %91, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %203 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i152.i = getelementptr i8, ptr %202, i32 %204
  %add.ptr1.i153.i = getelementptr i8, ptr %add.ptr.i152.i, i32 8
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i153.i) #14, !srcloc !383
  %.mask169.i = and i32 %205, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask169.i)
  %tobool72.not.i = icmp eq i32 %.mask169.i, 0
  br i1 %tobool72.not.i, label %for.end69.i.stm32h7_adc_selfcalib.exit_crit_edge, label %for.end69.i.out.sink.split.i_crit_edge

for.end69.i.out.sink.split.i_crit_edge:           ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.sink.split.i

for.end69.i.stm32h7_adc_selfcalib.exit_crit_edge: ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32h7_adc_selfcalib.exit

out.sink.split.i:                                 ; preds = %for.end69.i.out.sink.split.i_crit_edge, %for.end.i51.out.sink.split.i_crit_edge
  %dev80.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80.i, ptr noundef nonnull @.str.137) #17
  br label %stm32h7_adc_selfcalib.exit

stm32h7_adc_selfcalib.exit:                       ; preds = %out.sink.split.i, %for.end69.i.stm32h7_adc_selfcalib.exit_crit_edge, %if.then65.i.stm32h7_adc_selfcalib.exit_crit_edge, %if.end32.i.stm32h7_adc_selfcalib.exit_crit_edge
  %cmp = phi i1 [ false, %if.end32.i.stm32h7_adc_selfcalib.exit_crit_edge ], [ false, %for.end69.i.stm32h7_adc_selfcalib.exit_crit_edge ], [ true, %out.sink.split.i ], [ false, %if.then65.i.stm32h7_adc_selfcalib.exit_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.end32.i.stm32h7_adc_selfcalib.exit_crit_edge ], [ 0, %for.end69.i.stm32h7_adc_selfcalib.exit_crit_edge ], [ -110, %out.sink.split.i ], [ 0, %if.then65.i.stm32h7_adc_selfcalib.exit_crit_edge ]
  %call2.i155.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i39) #14
  %206 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %91, align 8
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %210 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i.i157.i = getelementptr i8, ptr %209, i32 %211
  %add.ptr1.i.i158.i = getelementptr i8, ptr %add.ptr.i.i157.i, i32 8
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i158.i) #14, !srcloc !383
  %213 = and i32 %212, -321
  %214 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %91, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %218 = ptrtoint ptr %offset.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %offset.i.i.i41, align 4
  %add.ptr.i12.i160.i = getelementptr i8, ptr %217, i32 %219
  %add.ptr1.i13.i161.i = getelementptr i8, ptr %add.ptr.i12.i160.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i161.i, i32 %213) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i39, i32 noundef %call2.i155.i) #14
  br i1 %cmp, label %stm32h7_adc_selfcalib.exit.pwr_dwn_crit_edge, label %stm32h7_adc_selfcalib.exit.if.end4_crit_edge

stm32h7_adc_selfcalib.exit.if.end4_crit_edge:     ; preds = %stm32h7_adc_selfcalib.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

stm32h7_adc_selfcalib.exit.pwr_dwn_crit_edge:     ; preds = %stm32h7_adc_selfcalib.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %pwr_dwn

if.end4:                                          ; preds = %stm32h7_adc_selfcalib.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call fastcc void @stm32_adc_int_ch_enable(ptr noundef %indio_dev)
  %difsel = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 17
  %220 = ptrtoint ptr %difsel to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %difsel, align 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #14
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %1, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %227 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %226, i32 %228
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %222) #14, !srcloc !384
  %229 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %priv.i, align 8
  %lock.i.i54 = getelementptr inbounds %struct.stm32_adc, ptr %230, i32 0, i32 8
  %call2.i.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i54) #14
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 4
  %offset.i.i.i56 = getelementptr inbounds %struct.stm32_adc, ptr %230, i32 0, i32 1
  %235 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i.i.i57 = getelementptr i8, ptr %234, i32 %236
  %add.ptr1.i.i.i58 = getelementptr i8, ptr %add.ptr.i.i.i57, i32 8
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i58) #14, !srcloc !383
  %238 = or i32 %237, 16777216
  %239 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %230, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %243 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i12.i.i59 = getelementptr i8, ptr %242, i32 %244
  %add.ptr1.i13.i.i60 = getelementptr i8, ptr %add.ptr.i12.i.i59, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i60, i32 %238) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i54, i32 noundef %call2.i.i55) #14
  %call1.i61 = tail call i64 @ktime_get() #14
  %add.i.i62 = add i64 %call1.i61, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 861) #14
  %245 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %230, align 8
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %249 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %248, i32 %250
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i) #14, !srcloc !383
  %252 = tail call i32 @llvm.bswap.i32(i32 %251) #14
  %and59.i = and i32 %252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool.not60.i = icmp eq i32 %and59.i, 0
  br i1 %tobool.not60.i, label %if.end4.land.lhs.true.i64_crit_edge, label %if.end4.for.end.i69_crit_edge

if.end4.for.end.i69_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

if.end4.land.lhs.true.i64_crit_edge:              ; preds = %if.end4
  br label %land.lhs.true.i64

land.lhs.true.i64:                                ; preds = %if.then20.i.land.lhs.true.i64_crit_edge, %if.end4.land.lhs.true.i64_crit_edge
  %call13.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i62)
  %cmp3.i.i63 = icmp sgt i64 %call13.i, %add.i.i62
  br i1 %cmp3.i.i63, label %if.then16.i, label %if.then20.i

if.then16.i:                                      ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #16
  %253 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %230, align 8
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %257 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %256, i32 %258
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #14, !srcloc !383
  %260 = tail call i32 @llvm.bswap.i32(i32 %259) #14
  br label %for.end.i69

if.then20.i:                                      ; preds = %land.lhs.true.i64
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %261 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %230, align 8
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  %265 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %264, i32 %266
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #14, !srcloc !383
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #14
  %and.i66 = and i32 %268, 1
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i67, label %if.then20.i.land.lhs.true.i64_crit_edge, label %if.then20.i.for.end.i69_crit_edge

if.then20.i.for.end.i69_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

if.then20.i.land.lhs.true.i64_crit_edge:          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i64

for.end.i69:                                      ; preds = %if.then20.i.for.end.i69_crit_edge, %if.then16.i, %if.end4.for.end.i69_crit_edge
  %val.0.i68 = phi i32 [ %260, %if.then16.i ], [ %252, %if.end4.for.end.i69_crit_edge ], [ %268, %if.then20.i.for.end.i69_crit_edge ]
  %and22.i = and i32 %val.0.i68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %call2.i44.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i54) #14
  %269 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %230, align 8
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 4
  %273 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i.i46.i = getelementptr i8, ptr %272, i32 %274
  br i1 %tobool23.not.i, label %stm32h7_adc_enable.exit, label %if.end8

stm32h7_adc_enable.exit:                          ; preds = %for.end.i69
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i.i47.i = getelementptr i8, ptr %add.ptr.i.i46.i, i32 8
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i47.i) #14, !srcloc !383
  %276 = or i32 %275, 33554432
  %277 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %230, align 8
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 4
  %281 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i12.i49.i = getelementptr i8, ptr %280, i32 %282
  %add.ptr1.i13.i50.i = getelementptr i8, ptr %add.ptr.i12.i49.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i50.i, i32 %276) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i54, i32 noundef %call2.i44.i) #14
  %dev.i70 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.145) #17
  br label %ch_disable

if.end8:                                          ; preds = %for.end.i69
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46.i) #14, !srcloc !383
  %284 = or i32 %283, 16777216
  %285 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %230, align 8
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %289 = ptrtoint ptr %offset.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %offset.i.i.i56, align 4
  %add.ptr.i12.i56.i = getelementptr i8, ptr %288, i32 %290
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i56.i, i32 %284) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i54, i32 noundef %call2.i44.i) #14
  %291 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %priv.i, align 8
  br i1 %tobool.not.i38, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %cal.i = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 20
  %293 = ptrtoint ptr %cal.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %cal.i, align 4
  %calfact_d.i = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 20, i32 1
  %295 = ptrtoint ptr %calfact_d.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %calfact_d.i, align 4
  %shl2.i = shl i32 %296, 16
  %or.i = or i32 %shl2.i, %294
  %297 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %298 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %292, align 8
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 1
  %302 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %301, i32 %303
  %add.ptr1.i.i73 = getelementptr i8, ptr %add.ptr.i.i72, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i73, i32 %297) #14, !srcloc !384
  %lock.i.i74 = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end95.i.for.body.i_crit_edge, %if.then10
  %lincalrdyw_mask.0186.i = phi i32 [ 134217728, %if.then10 ], [ %shr96.i, %if.end95.i.for.body.i_crit_edge ]
  %i.0185.i = phi i32 [ 5, %if.then10 ], [ %dec.i, %if.end95.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_adc, ptr %292, i32 0, i32 20, i32 2, i32 %i.0185.i
  %304 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx.i, align 4
  %306 = tail call i32 @llvm.bswap.i32(i32 %305) #14
  %307 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %292, align 8
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %308, align 4
  %311 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %310, i32 200
  %add.ptr1.i145.i = getelementptr i8, ptr %add.ptr.i144.i, i32 %312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i145.i, i32 %306) #14, !srcloc !384
  %call2.i.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #14
  %313 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %292, align 8
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %314, align 4
  %317 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i.i76 = getelementptr i8, ptr %316, i32 8
  %add.ptr1.i.i.i77 = getelementptr i8, ptr %add.ptr.i.i.i76, i32 %318
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i77) #14, !srcloc !383
  %320 = tail call i32 @llvm.bswap.i32(i32 %319) #14
  %or.i.i = or i32 %320, %lincalrdyw_mask.0186.i
  %321 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %322 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %292, align 8
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %326 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i.i78 = getelementptr i8, ptr %325, i32 8
  %add.ptr1.i13.i.i79 = getelementptr i8, ptr %add.ptr.i12.i.i78, i32 %327
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i79, i32 %321) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call2.i.i75) #14
  %call5.i = tail call i64 @ktime_get() #14
  %add.i.i80 = add i64 %call5.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 959) #14
  %328 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %292, align 8
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %332 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i147176.i = getelementptr i8, ptr %331, i32 8
  %add.ptr1.i148177.i = getelementptr i8, ptr %add.ptr.i147176.i, i32 %333
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i148177.i) #14, !srcloc !383
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #14
  %and178.i = and i32 %335, %lincalrdyw_mask.0186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool.not179.i = icmp eq i32 %and178.i, 0
  br i1 %tobool.not179.i, label %for.body.i.land.lhs.true.i83_crit_edge, label %for.body.i.if.end35.i_crit_edge

for.body.i.if.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

for.body.i.land.lhs.true.i83_crit_edge:           ; preds = %for.body.i
  br label %land.lhs.true.i83

land.lhs.true.i83:                                ; preds = %if.then26.i87.land.lhs.true.i83_crit_edge, %for.body.i.land.lhs.true.i83_crit_edge
  %call19.i81 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i81, i64 %add.i.i80)
  %cmp3.i.i82 = icmp sgt i64 %call19.i81, %add.i.i80
  br i1 %cmp3.i.i82, label %for.end.i91, label %if.then26.i87

if.then26.i87:                                    ; preds = %land.lhs.true.i83
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %336 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %292, align 8
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %337, align 4
  %340 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %339, i32 8
  %add.ptr1.i148.i = getelementptr i8, ptr %add.ptr.i147.i, i32 %341
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i148.i) #14, !srcloc !383
  %343 = tail call i32 @llvm.bswap.i32(i32 %342) #14
  %and.i85 = and i32 %343, %lincalrdyw_mask.0186.i
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %if.then26.i87.land.lhs.true.i83_crit_edge, label %if.then26.i87.if.end35.i_crit_edge

if.then26.i87.if.end35.i_crit_edge:               ; preds = %if.then26.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then26.i87.land.lhs.true.i83_crit_edge:        ; preds = %if.then26.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i83

for.end.i91:                                      ; preds = %land.lhs.true.i83
  %344 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %292, align 8
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %345, align 4
  %348 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %347, i32 8
  %add.ptr1.i151.i = getelementptr i8, ptr %add.ptr.i150.i, i32 %349
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i151.i) #14, !srcloc !383
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #14
  %.pre = and i32 %351, %lincalrdyw_mask.0186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool29.not.i90 = icmp eq i32 %.pre, 0
  br i1 %tobool29.not.i90, label %for.end.i91.disable_crit_edge, label %for.end.i91.if.end35.i_crit_edge

for.end.i91.if.end35.i_crit_edge:                 ; preds = %for.end.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

for.end.i91.disable_crit_edge:                    ; preds = %for.end.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable

if.end35.i:                                       ; preds = %for.end.i91.if.end35.i_crit_edge, %if.then26.i87.if.end35.i_crit_edge, %for.body.i.if.end35.i_crit_edge
  %call2.i153.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i74) #14
  %352 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %292, align 8
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %353, align 4
  %356 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i155.i = getelementptr i8, ptr %355, i32 8
  %add.ptr1.i.i156.i = getelementptr i8, ptr %add.ptr.i.i155.i, i32 %357
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i156.i) #14, !srcloc !383
  %359 = tail call i32 @llvm.bswap.i32(i32 %358) #14
  %neg.i.i = xor i32 %lincalrdyw_mask.0186.i, -1
  %and.i.i = and i32 %359, %neg.i.i
  %360 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #14
  %361 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %292, align 8
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %362, align 4
  %365 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i157.i = getelementptr i8, ptr %364, i32 8
  %add.ptr1.i13.i158.i = getelementptr i8, ptr %add.ptr.i12.i157.i, i32 %366
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i158.i, i32 %360) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i74, i32 noundef %call2.i153.i) #14
  %call39.i = tail call i64 @ktime_get() #14
  %add.i159.i = add i64 %call39.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 975) #14
  %367 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %292, align 8
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %368, align 4
  %371 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i161180.i = getelementptr i8, ptr %370, i32 8
  %add.ptr1.i162181.i = getelementptr i8, ptr %add.ptr.i161180.i, i32 %372
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i162181.i) #14, !srcloc !383
  %374 = tail call i32 @llvm.bswap.i32(i32 %373) #14
  %and55182.i = and i32 %374, %lincalrdyw_mask.0186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55182.i)
  %tobool56.not183.i = icmp eq i32 %and55182.i, 0
  br i1 %tobool56.not183.i, label %if.end35.i.for.end72.i_crit_edge, label %if.end35.i.land.lhs.true60.i_crit_edge

if.end35.i.land.lhs.true60.i_crit_edge:           ; preds = %if.end35.i
  br label %land.lhs.true60.i

if.end35.i.for.end72.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end72.i

land.lhs.true60.i:                                ; preds = %if.then68.i.land.lhs.true60.i_crit_edge, %if.end35.i.land.lhs.true60.i_crit_edge
  %call61.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call61.i, i64 %add.i159.i)
  %cmp3.i164.i = icmp sgt i64 %call61.i, %add.i159.i
  br i1 %cmp3.i164.i, label %if.then64.i, label %if.then68.i

if.then64.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #16
  %375 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %292, align 8
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %376, align 4
  %379 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %378, i32 8
  %add.ptr1.i169.i = getelementptr i8, ptr %add.ptr.i168.i, i32 %380
  %381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i169.i) #14, !srcloc !383
  %382 = tail call i32 @llvm.bswap.i32(i32 %381) #14
  br label %for.end72.i

if.then68.i:                                      ; preds = %land.lhs.true60.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %383 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %292, align 8
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %384, align 4
  %387 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %386, i32 8
  %add.ptr1.i162.i = getelementptr i8, ptr %add.ptr.i161.i, i32 %388
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i162.i) #14, !srcloc !383
  %390 = tail call i32 @llvm.bswap.i32(i32 %389) #14
  %and55.i = and i32 %390, %lincalrdyw_mask.0186.i
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.then68.i.for.end72.i_crit_edge, label %if.then68.i.land.lhs.true60.i_crit_edge

if.then68.i.land.lhs.true60.i_crit_edge:          ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true60.i

if.then68.i.for.end72.i_crit_edge:                ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end72.i

for.end72.i:                                      ; preds = %if.then68.i.for.end72.i_crit_edge, %if.then64.i, %if.end35.i.for.end72.i_crit_edge
  %val.1.i = phi i32 [ %382, %if.then64.i ], [ %374, %if.end35.i.for.end72.i_crit_edge ], [ %390, %if.then68.i.for.end72.i_crit_edge ]
  %and74.i = and i32 %val.1.i, %lincalrdyw_mask.0186.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end83.i, label %for.end72.i.disable_crit_edge

for.end72.i.disable_crit_edge:                    ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable

if.end83.i:                                       ; preds = %for.end72.i
  %391 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %292, align 8
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %392, align 4
  %395 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %394, i32 200
  %add.ptr1.i172.i = getelementptr i8, ptr %add.ptr.i171.i, i32 %396
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i172.i) #14, !srcloc !383
  %398 = tail call i32 @llvm.bswap.i32(i32 %397) #14
  %399 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %398, i32 %400)
  %cmp89.not.i = icmp eq i32 %398, %400
  br i1 %cmp89.not.i, label %if.end95.i, label %if.end83.i.disable_crit_edge

if.end83.i.disable_crit_edge:                     ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable

if.end95.i:                                       ; preds = %if.end83.i
  %shr96.i = lshr i32 %lincalrdyw_mask.0186.i, 1
  %dec.i = add nsw i32 %i.0185.i, -1
  %cmp.i92.not = icmp eq i32 %i.0185.i, 0
  br i1 %cmp.i92.not, label %if.end95.i.if.end16_crit_edge, label %if.end95.i.for.body.i_crit_edge

if.end95.i.for.body.i_crit_edge:                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end95.i.if.end16_crit_edge:                    ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.else:                                          ; preds = %if.end8
  %lock.i.i95 = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 8
  %offset.i.i.i96 = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 1
  br label %for.body.i106

for.body.i106:                                    ; preds = %if.end31.i.for.body.i106_crit_edge, %if.else
  %lincalrdyw_mask.098.i = phi i32 [ 134217728, %if.else ], [ %shr38.i, %if.end31.i.for.body.i106_crit_edge ]
  %i.097.i = phi i32 [ 5, %if.else ], [ %dec.i118, %if.end31.i.for.body.i106_crit_edge ]
  %call2.i.i97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i95) #14
  %401 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %292, align 8
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %402, align 4
  %405 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i.i.i98 = getelementptr i8, ptr %404, i32 8
  %add.ptr1.i.i.i99 = getelementptr i8, ptr %add.ptr.i.i.i98, i32 %406
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i99) #14, !srcloc !383
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #14
  %neg.i.i100 = xor i32 %lincalrdyw_mask.098.i, -1
  %and.i.i101 = and i32 %408, %neg.i.i100
  %409 = tail call i32 @llvm.bswap.i32(i32 %and.i.i101) #14
  %410 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %292, align 8
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  %414 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i12.i.i102 = getelementptr i8, ptr %413, i32 8
  %add.ptr1.i13.i.i103 = getelementptr i8, ptr %add.ptr.i12.i.i102, i32 %415
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i103, i32 %409) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i95, i32 noundef %call2.i.i97) #14
  %call1.i104 = tail call i64 @ktime_get() #14
  %add.i.i105 = add i64 %call1.i104, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 908) #14
  %416 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %292, align 8
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %417, align 4
  %420 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %419, i32 8
  %add.ptr1.i94.i = getelementptr i8, ptr %add.ptr.i93.i, i32 %421
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i94.i) #14, !srcloc !383
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #14
  %and95.i = and i32 %423, %lincalrdyw_mask.098.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool.not96.i = icmp eq i32 %and95.i, 0
  br i1 %tobool.not96.i, label %for.body.i106.for.end.i115_crit_edge, label %for.body.i106.land.lhs.true.i108_crit_edge

for.body.i106.land.lhs.true.i108_crit_edge:       ; preds = %for.body.i106
  br label %land.lhs.true.i108

for.body.i106.for.end.i115_crit_edge:             ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i115

land.lhs.true.i108:                               ; preds = %if.then22.i113.land.lhs.true.i108_crit_edge, %for.body.i106.land.lhs.true.i108_crit_edge
  %call15.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i105)
  %cmp3.i.i107 = icmp sgt i64 %call15.i, %add.i.i105
  br i1 %cmp3.i.i107, label %if.then18.i, label %if.then22.i113

if.then18.i:                                      ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #16
  %424 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %292, align 8
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %425, align 4
  %428 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %427, i32 8
  %add.ptr1.i85.i = getelementptr i8, ptr %add.ptr.i84.i, i32 %429
  %430 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i85.i) #14, !srcloc !383
  %431 = tail call i32 @llvm.bswap.i32(i32 %430) #14
  br label %for.end.i115

if.then22.i113:                                   ; preds = %land.lhs.true.i108
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %432 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %292, align 8
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %433, align 4
  %436 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %435, i32 8
  %add.ptr1.i.i110 = getelementptr i8, ptr %add.ptr.i.i109, i32 %437
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i110) #14, !srcloc !383
  %439 = tail call i32 @llvm.bswap.i32(i32 %438) #14
  %and.i111 = and i32 %439, %lincalrdyw_mask.098.i
  %tobool.not.i112 = icmp eq i32 %and.i111, 0
  br i1 %tobool.not.i112, label %if.then22.i113.for.end.i115_crit_edge, label %if.then22.i113.land.lhs.true.i108_crit_edge

if.then22.i113.land.lhs.true.i108_crit_edge:      ; preds = %if.then22.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i108

if.then22.i113.for.end.i115_crit_edge:            ; preds = %if.then22.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i115

for.end.i115:                                     ; preds = %if.then22.i113.for.end.i115_crit_edge, %if.then18.i, %for.body.i106.for.end.i115_crit_edge
  %val.0.i114 = phi i32 [ %431, %if.then18.i ], [ %423, %for.body.i106.for.end.i115_crit_edge ], [ %439, %if.then22.i113.for.end.i115_crit_edge ]
  %and24.i = and i32 %val.0.i114, %lincalrdyw_mask.098.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %for.end.i115.disable_crit_edge

for.end.i115.disable_crit_edge:                   ; preds = %for.end.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable

if.end31.i:                                       ; preds = %for.end.i115
  %440 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %292, align 8
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %441, align 4
  %444 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %443, i32 200
  %add.ptr1.i88.i = getelementptr i8, ptr %add.ptr.i87.i, i32 %445
  %446 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i88.i) #14, !srcloc !383
  %447 = and i32 %446, -193
  %448 = tail call i32 @llvm.bswap.i32(i32 %447) #14
  %arrayidx.i117 = getelementptr %struct.stm32_adc, ptr %292, i32 0, i32 20, i32 2, i32 %i.097.i
  %449 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %arrayidx.i117, align 4
  %shr38.i = lshr i32 %lincalrdyw_mask.098.i, 1
  %dec.i118 = add nsw i32 %i.097.i, -1
  %cmp.i119.not = icmp eq i32 %i.097.i, 0
  br i1 %cmp.i119.not, label %for.end39.i, label %if.end31.i.for.body.i106_crit_edge

if.end31.i.for.body.i106_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i106

for.end39.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  %450 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %292, align 8
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %451, align 4
  %454 = ptrtoint ptr %offset.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %offset.i.i.i96, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %453, i32 %455
  %add.ptr1.i91.i = getelementptr i8, ptr %add.ptr.i90.i, i32 196
  %456 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i91.i) #14, !srcloc !383
  %457 = tail call i32 @llvm.bswap.i32(i32 %456) #14
  %and41.i = and i32 %457, 2047
  %cal42.i = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 20
  %458 = ptrtoint ptr %cal42.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %and41.i, ptr %cal42.i, align 4
  %calfact_d.i120 = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 20, i32 1
  %and46.i = lshr i32 %457, 16
  %shr50.i = and i32 %and46.i, 2047
  %459 = ptrtoint ptr %calfact_d.i120 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %shr50.i, ptr %calfact_d.i120, align 4
  %calibrated.i121 = getelementptr inbounds %struct.stm32_adc, ptr %292, i32 0, i32 20, i32 3
  %460 = ptrtoint ptr %calibrated.i121 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 1, ptr %calibrated.i121, align 4
  br label %if.end16

if.end16:                                         ; preds = %for.end39.i, %if.end95.i.if.end16_crit_edge
  %pcsel = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 18
  %461 = ptrtoint ptr %pcsel to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %pcsel, align 8
  %463 = tail call i32 @llvm.bswap.i32(i32 %462) #14
  %464 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %1, align 8
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %465, align 4
  %468 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %467, i32 %469
  %add.ptr1.i125 = getelementptr i8, ptr %add.ptr.i124, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i125, i32 %463) #14, !srcloc !384
  br label %cleanup

disable:                                          ; preds = %for.end.i115.disable_crit_edge, %if.end83.i.disable_crit_edge, %for.end72.i.disable_crit_edge, %for.end.i91.disable_crit_edge
  %.str.153.sink.i.sink = phi ptr [ @.str.150, %for.end.i115.disable_crit_edge ], [ @.str.147, %for.end.i91.disable_crit_edge ], [ @.str.150, %for.end72.i.disable_crit_edge ], [ @.str.153, %if.end83.i.disable_crit_edge ]
  %ret.0 = phi i32 [ -110, %for.end.i115.disable_crit_edge ], [ -110, %for.end.i91.disable_crit_edge ], [ -110, %for.end72.i.disable_crit_edge ], [ -5, %if.end83.i.disable_crit_edge ]
  %dev94.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94.i, ptr noundef nonnull %.str.153.sink.i.sink) #17
  tail call fastcc void @stm32h7_adc_disable(ptr noundef %indio_dev)
  br label %ch_disable

ch_disable:                                       ; preds = %disable, %stm32h7_adc_enable.exit
  %ret.1 = phi i32 [ -110, %stm32h7_adc_enable.exit ], [ %ret.0, %disable ]
  tail call fastcc void @stm32_adc_int_ch_disable(ptr noundef %1)
  br label %pwr_dwn

pwr_dwn:                                          ; preds = %ch_disable, %stm32h7_adc_selfcalib.exit.pwr_dwn_crit_edge
  %ret.2 = phi i32 [ %ret.0.i, %stm32h7_adc_selfcalib.exit.pwr_dwn_crit_edge ], [ %ret.1, %ch_disable ]
  %call2.i.i127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %470 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %1, align 8
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 4
  %474 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i129 = getelementptr i8, ptr %473, i32 %475
  %add.ptr1.i.i.i130 = getelementptr i8, ptr %add.ptr.i.i.i129, i32 8
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i130) #14, !srcloc !383
  %477 = and i32 %476, -65537
  %478 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %1, align 8
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %479, align 4
  %482 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i.i131 = getelementptr i8, ptr %481, i32 %483
  %add.ptr1.i13.i.i132 = getelementptr i8, ptr %add.ptr.i12.i.i131, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i132, i32 %477) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i127) #14
  %call2.i3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %484 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %1, align 8
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 4
  %488 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %487, i32 %489
  %add.ptr1.i.i6.i = getelementptr i8, ptr %add.ptr.i.i5.i, i32 8
  %490 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i6.i) #14, !srcloc !383
  %491 = or i32 %490, 32
  %492 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %1, align 8
  %494 = ptrtoint ptr %493 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %493, align 4
  %496 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %495, i32 %497
  %add.ptr1.i13.i8.i = getelementptr i8, ptr %add.ptr.i12.i7.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i8.i, i32 %491) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i3.i) #14
  br label %cleanup

cleanup:                                          ; preds = %pwr_dwn, %if.end16, %stm32h7_adc_exit_pwr_down.exit
  %retval.0 = phi i32 [ %ret.2, %pwr_dwn ], [ 0, %if.end16 ], [ -110, %stm32h7_adc_exit_pwr_down.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_adc_start_conv(ptr nocapture noundef readonly %indio_dev, i1 noundef zeroext %dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %. = select i1 %dma, i32 3, i32 0
  %lock = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %9 = and i32 %8, -50331649
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or = or i32 %10, %.
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 %17
  %add.ptr1.i15 = getelementptr i8, ptr %add.ptr.i14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i15, i32 %11) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %23
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %25 = or i32 %24, 67108864
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %29, i32 %31
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %25) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_adc_stop_conv(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %9 = or i32 %8, 268435456
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %9) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %call1 = tail call i64 @ktime_get() #14
  %add.i = add i64 %call1, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 798) #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i51 = getelementptr i8, ptr %add.ptr.i50, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i51) #14, !srcloc !383
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not53 = icmp eq i32 %23, 0
  br i1 %tobool.not53, label %entry.if.end29_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %31 = and i32 %30, 67108864
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.then20.if.end29_crit_edge, label %if.then20.land.lhs.true_crit_edge

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

for.end:                                          ; preds = %land.lhs.true
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %35, i32 %37
  %add.ptr1.i41 = getelementptr i8, ptr %add.ptr.i40, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i41) #14, !srcloc !383
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool23.not = icmp eq i32 %39, 0
  br i1 %tobool23.not, label %for.end.if.end29_crit_edge, label %do.end28

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.159) #17
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %for.end.if.end29_crit_edge, %if.then20.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %43, i32 %45
  %add.ptr1.i.i46 = getelementptr i8, ptr %add.ptr.i.i45, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i46) #14, !srcloc !383
  %47 = and i32 %46, -50331649
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i47 = getelementptr i8, ptr %51, i32 %53
  %add.ptr1.i13.i48 = getelementptr i8, ptr %add.ptr.i12.i47, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i48, i32 %47) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i43) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_adc_unprepare(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #14, !srcloc !384
  tail call fastcc void @stm32h7_adc_disable(ptr noundef %indio_dev)
  tail call fastcc void @stm32_adc_int_ch_disable(ptr noundef %1)
  %lock.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #14, !srcloc !383
  %15 = and i32 %14, -65537
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i13.i.i = getelementptr i8, ptr %add.ptr.i12.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i.i, i32 %15) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #14
  %call2.i3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %25, i32 %27
  %add.ptr1.i.i6.i = getelementptr i8, ptr %add.ptr.i.i5.i, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i6.i) #14, !srcloc !383
  %29 = or i32 %28, 32
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i, align 4
  %add.ptr.i12.i7.i = getelementptr i8, ptr %33, i32 %35
  %add.ptr1.i13.i8.i = getelementptr i8, ptr %add.ptr.i12.i7.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i8.i, i32 %29) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i3.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32h7_adc_irq_clear(ptr nocapture noundef readonly %indio_dev, i32 noundef %msk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %isr_eoc = getelementptr inbounds %struct.stm32_adc_regspec, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %isr_eoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isr_eoc, align 4
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %13
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %or.i = or i32 %15, %msk
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %20, i32 %22
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %16) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_int_ch_enable(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev49 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %cfg53 = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.091 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_adc, ptr %1, i32 0, i32 24, i32 %i.091
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = zext i32 %i.091 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %i.091, label %if.end.for.inc_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body11
    i32 2, label %do.body36
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_int_ch_enable, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !386

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug237, ptr noundef %dev49, ptr noundef nonnull @.str.142) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %5 = ptrtoint ptr %cfg53 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg53, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %or_vdd = getelementptr inbounds %struct.stm32_adc_regspec, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %or_vdd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %or_vdd, align 4
  %mask = getelementptr inbounds %struct.stm32_adc_regspec, ptr %8, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %18
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %or.i = or i32 %20, %12
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %25, i32 %27
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %21) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  br label %for.inc

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_int_ch_enable, %if.then23)) #14
          to label %do.end27 [label %if.then23], !srcloc !386

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug238, ptr noundef %dev49, ptr noundef nonnull @.str.143) #14
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body11
  %28 = ptrtoint ptr %cfg53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg53, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %ccr_vref = getelementptr inbounds %struct.stm32_adc_regspec, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %ccr_vref to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ccr_vref, align 4
  %mask34 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %31, i32 0, i32 13, i32 1
  %34 = ptrtoint ptr %mask34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask34, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %lock.i81 = getelementptr inbounds %struct.stm32_adc_common, ptr %37, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i81) #14
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %33
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !383
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  %or.i82 = or i32 %43, %35
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i82) #14
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %add.ptr4.i = getelementptr i8, ptr %48, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %44) #14, !srcloc !384
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %lock6.i = getelementptr inbounds %struct.stm32_adc_common, ptr %50, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i) #14
  br label %for.inc

do.body36:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_adc_int_ch_enable, %if.then48)) #14
          to label %for.inc.thread [label %if.then48], !srcloc !386

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug239, ptr noundef %dev49, ptr noundef nonnull @.str.144) #14
  br label %for.inc.thread

for.inc.thread:                                   ; preds = %if.then48, %do.body36
  %51 = ptrtoint ptr %cfg53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg53, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %ccr_vbat = getelementptr inbounds %struct.stm32_adc_regspec, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %ccr_vbat to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ccr_vbat, align 4
  %mask59 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %54, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %mask59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask59, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %lock.i83 = getelementptr inbounds %struct.stm32_adc_common, ptr %60, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i83) #14
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %add.ptr.i84 = getelementptr i8, ptr %64, i32 %56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #14, !srcloc !383
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  %or.i85 = or i32 %66, %58
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i85) #14
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %add.ptr4.i86 = getelementptr i8, ptr %71, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i86, i32 %67) #14, !srcloc !384
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %lock6.i87 = getelementptr inbounds %struct.stm32_adc_common, ptr %73, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i87) #14
  br label %for.end

for.inc:                                          ; preds = %do.end27, %do.end, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32h7_adc_disable(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %9 = or i32 %8, 33554432
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %9) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  %call1 = tail call i64 @ktime_get() #14
  %add.i = add i64 %call1, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 883) #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i43 = getelementptr i8, ptr %add.ptr.i42, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i43) #14, !srcloc !383
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not45 = icmp eq i32 %23, 0
  br i1 %tobool.not45, label %entry.if.end29_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #14
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #14, !srcloc !383
  %31 = and i32 %30, 16777216
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.then20.if.end29_crit_edge, label %if.then20.land.lhs.true_crit_edge

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

for.end:                                          ; preds = %land.lhs.true
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %35, i32 %37
  %add.ptr1.i40 = getelementptr i8, ptr %add.ptr.i39, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i40) #14, !srcloc !383
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool23.not = icmp eq i32 %39, 0
  br i1 %tobool23.not, label %for.end.if.end29_crit_edge, label %do.end28

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.156) #17
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %for.end.if.end29_crit_edge, %if.then20.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_adc_int_ch_disable(ptr noundef %adc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg14 = getelementptr inbounds %struct.stm32_adc, ptr %adc, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.stm32_adc, ptr %adc, i32 0, i32 8
  %offset.i.i = getelementptr inbounds %struct.stm32_adc, ptr %adc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_adc, ptr %adc, i32 0, i32 24, i32 %i.042
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = zext i32 %i.042 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %i.042, label %if.end.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %for.inc.thread
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cfg14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg14, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %or_vdd = getelementptr inbounds %struct.stm32_adc_regspec, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %or_vdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %or_vdd, align 4
  %mask = getelementptr inbounds %struct.stm32_adc_regspec, ptr %6, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %11 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adc, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %16
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #14, !srcloc !383
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  %neg.i = xor i32 %10, -1
  %and.i = and i32 %18, %neg.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #14
  %20 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adc, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %23, i32 %25
  %add.ptr1.i13.i = getelementptr i8, ptr %add.ptr.i12.i, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13.i, i32 %19) #14, !srcloc !384
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #14
  br label %for.inc

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %cfg14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg14, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %ccr_vref = getelementptr inbounds %struct.stm32_adc_regspec, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %ccr_vref to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ccr_vref, align 4
  %mask12 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %29, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %mask12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask12, align 4
  %34 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adc, align 8
  %lock.i33 = getelementptr inbounds %struct.stm32_adc_common, ptr %35, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i33) #14
  %36 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adc, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 %31
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !383
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  %neg.i34 = xor i32 %33, -1
  %and.i35 = and i32 %41, %neg.i34
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i35) #14
  %43 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adc, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %add.ptr4.i = getelementptr i8, ptr %46, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %42) #14, !srcloc !384
  %47 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adc, align 8
  %lock6.i = getelementptr inbounds %struct.stm32_adc_common, ptr %48, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i) #14
  br label %for.inc

for.inc.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %cfg14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg14, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %ccr_vbat = getelementptr inbounds %struct.stm32_adc_regspec, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %ccr_vbat to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ccr_vbat, align 4
  %mask20 = getelementptr inbounds %struct.stm32_adc_regspec, ptr %52, i32 0, i32 12, i32 1
  %55 = ptrtoint ptr %mask20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask20, align 4
  %57 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adc, align 8
  %lock.i36 = getelementptr inbounds %struct.stm32_adc_common, ptr %58, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i36) #14
  %59 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adc, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %add.ptr.i37 = getelementptr i8, ptr %62, i32 %54
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #14, !srcloc !383
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #14
  %neg.i38 = xor i32 %56, -1
  %and.i39 = and i32 %64, %neg.i38
  %65 = tail call i32 @llvm.bswap.i32(i32 %and.i39) #14
  %66 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adc, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %add.ptr4.i40 = getelementptr i8, ptr %69, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i40, i32 %65) #14, !srcloc !384
  %70 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adc, align 8
  %lock6.i41 = getelementptr inbounds %struct.stm32_adc_common, ptr %71, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock6.i41) #14
  br label %for.end

for.inc:                                          ; preds = %sw.bb5, %sw.bb, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %3, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @stm32_adc_buffer_predisable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #14
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %3, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %call5 = tail call i32 @stm32_adc_update_scan_mode(ptr noundef %1, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 @stm32_adc_buffer_postenable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %cfg.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %unprepare.i = getelementptr inbounds %struct.stm32_adc_cfg, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %unprepare.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unprepare.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.stm32_adc_hw_stop.exit_crit_edge, label %if.then.i

entry.stm32_adc_hw_stop.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %stm32_adc_hw_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %7(ptr noundef %1) #14
  br label %stm32_adc_hw_stop.exit

stm32_adc_hw_stop.exit:                           ; preds = %if.then.i, %entry.stm32_adc_hw_stop.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.stm32_adc, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %9) #14
  tail call void @clk_unprepare(ptr noundef %9) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_adc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @stm32_adc_hw_start(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !105, !106, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !171, !172, !174, !175, !176, !178, !180, !181, !182, !184, !186, !188, !189, !190, !192, !194, !196, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !218, !219, !220, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !306, !307, !308, !310, !311, !312, !313, !315, !316, !318, !319, !320, !322, !323, !325, !326, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !354, !356, !357, !358, !359, !361, !363, !365}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @__initcall__kmod_stm32_adc__252_2459_stm32_adc_driver_init6, !1, !"__initcall__kmod_stm32_adc__252_2459_stm32_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2459, i32 1}
!2 = !{ptr @__exitcall_stm32_adc_driver_exit, !1, !"__exitcall_stm32_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author253, !4, !"__UNIQUE_ID_author253", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2461, i32 1}
!5 = !{ptr @__UNIQUE_ID_description254, !6, !"__UNIQUE_ID_description254", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2462, i32 1}
!7 = !{ptr @__UNIQUE_ID_file255, !8, !"__UNIQUE_ID_file255", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2463, i32 1}
!9 = !{ptr @__UNIQUE_ID_license256, !8, !"__UNIQUE_ID_license256", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias257, !11, !"__UNIQUE_ID_alias257", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2464, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2454, i32 11}
!14 = !{ptr @stm32_adc_driver, !15, !"stm32_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2450, i32 31}
!16 = !{ptr @stm32_adc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2221, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2233, i32 48}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2235, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stm32_adc_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_adc_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2247, i32 3}
!31 = !{ptr @stm32_adc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stm32_adc_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2257, i32 4}
!35 = !{ptr @stm32_adc_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @stm32_adc_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2287, i32 3}
!39 = !{ptr @stm32_adc_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @stm32_adc_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2304, i32 3}
!43 = !{ptr @stm32_adc_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stm32_adc_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @stm32_adc_iio_info, !49, !"stm32_adc_iio_info", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1576, i32 30}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1160, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stm32_adc_conf_scan_seq.__UNIQUE_ID_ddebug240, !51, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1421, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stm32_adc_threaded_isr._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @stm32_adc_threaded_isr._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1426, i32 3}
!62 = !{ptr @stm32_adc_threaded_isr._rs, !61, !"_rs", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @stm32_adc_threaded_isr._entry.27, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @stm32_adc_threaded_isr._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1786, i32 33}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1793, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stm32_adc_of_get_resolution._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stm32_adc_of_get_resolution._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1797, i32 2}
!75 = !{ptr @stm32_adc_of_get_resolution.__UNIQUE_ID_ddebug248, !74, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2162, i32 40}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2167, i32 11}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1754, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @stm32_adc_trigger_handler.__UNIQUE_ID_ddebug247, !81, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2106, i32 4}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @stm32_adc_chan_of_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @stm32_adc_chan_of_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2116, i32 3}
!91 = !{ptr @stm32_adc_chan_of_init._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @stm32_adc_chan_of_init._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1874, i32 42}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1876, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @stm32_adc_get_legacy_chan_count._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @stm32_adc_get_legacy_chan_count._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1882, i32 46}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1885, i32 3}
!104 = !{ptr @stm32_adc_get_legacy_chan_count._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @stm32_adc_get_legacy_chan_count._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1893, i32 42}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1895, i32 3}
!110 = !{ptr @stm32_adc_get_legacy_chan_count._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @stm32_adc_get_legacy_chan_count._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1920, i32 4}
!114 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @stm32_adc_legacy_chan_init._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @stm32_adc_legacy_chan_init._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1927, i32 5}
!119 = !{ptr @stm32_adc_legacy_chan_init._entry.56, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @stm32_adc_legacy_chan_init._entry_ptr.58, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1941, i32 4}
!123 = !{ptr @stm32_adc_legacy_chan_init._entry.59, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @stm32_adc_legacy_chan_init._entry_ptr.61, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1948, i32 5}
!127 = !{ptr @stm32_adc_legacy_chan_init._entry.62, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @stm32_adc_legacy_chan_init._entry_ptr.64, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1840, i32 35}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1842, i32 35}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1769, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1771, i32 11}
!137 = !{ptr @stm32_adc_ext_info, !138, !"stm32_adc_ext_info", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1768, i32 44}
!139 = !{ptr @stm32_adc_trig_pol, !140, !"stm32_adc_trig_pol", i1 false, i1 false}
!140 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1271, i32 30}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1268, i32 2}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1268, i32 17}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1268, i32 33}
!147 = !{ptr @stm32_trig_pol_items, !148, !"stm32_trig_pol_items", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1267, i32 27}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2018, i32 4}
!151 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @stm32_adc_generic_chan_init._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @stm32_adc_generic_chan_init._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2022, i32 40}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2026, i32 5}
!158 = !{ptr @stm32_adc_generic_chan_init._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @stm32_adc_generic_chan_init._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2036, i32 4}
!162 = !{ptr @stm32_adc_generic_chan_init._entry.78, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @stm32_adc_generic_chan_init._entry_ptr.80, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @stm32_adc_generic_chan_init._entry.81, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2041, i32 4}
!166 = !{ptr @stm32_adc_generic_chan_init._entry_ptr.82, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2047, i32 43}
!169 = !{ptr @stm32_adc_generic_chan_init._entry.84, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2052, i32 5}
!171 = !{ptr @stm32_adc_generic_chan_init._entry_ptr.85, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2057, i32 4}
!174 = !{ptr @stm32_adc_generic_chan_init._entry.86, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @stm32_adc_generic_chan_init._entry_ptr.88, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2064, i32 37}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2071, i32 4}
!180 = !{ptr @stm32_adc_generic_chan_init._entry.90, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @stm32_adc_generic_chan_init._entry_ptr.92, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1988, i32 47}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1991, i32 12}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1994, i32 5}
!188 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @stm32_adc_populate_int_ch.__UNIQUE_ID_ddebug251, !187, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iio/adc/stm32-adc.c", i32 101, i32 4}
!192 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/iio/adc/stm32-adc.c", i32 103, i32 4}
!194 = !{ptr @stm32_adc_ic, !195, !"stm32_adc_ic", i1 false, i1 false}
!195 = !{!"../drivers/iio/adc/stm32-adc.c", i32 100, i32 34}
!196 = !{ptr @stm32_adc_buffer_setup_ops, !197, !"stm32_adc_buffer_setup_ops", i1 false, i1 false}
!197 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1743, i32 42}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1689, i32 3}
!200 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @stm32_adc_buffer_postenable._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @stm32_adc_buffer_postenable._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1695, i32 3}
!205 = !{ptr @stm32_adc_buffer_postenable._entry.101, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @stm32_adc_buffer_postenable._entry_ptr.103, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1649, i32 2}
!209 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @stm32_adc_dma_start.__UNIQUE_ID_ddebug246, !208, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!211 = !{ptr @.str.106, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1625, i32 2}
!213 = !{ptr @stm32_adc_dma_buffer_done.__UNIQUE_ID_ddebug245, !212, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1735, i32 3}
!218 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @stm32_adc_buffer_predisable._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @stm32_adc_buffer_predisable._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @stm32_adc_of_match, !222, !"stm32_adc_of_match", i1 false, i1 false}
!222 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2442, i32 34}
!223 = !{ptr @stm32f4_adc_cfg, !224, !"stm32f4_adc_cfg", i1 false, i1 false}
!224 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2405, i32 35}
!225 = !{ptr @stm32f4_adc_regspec, !226, !"stm32f4_adc_regspec", i1 false, i1 false}
!226 = !{!"../drivers/iio/adc/stm32-adc.c", i32 393, i32 39}
!227 = !{ptr @stm32f4_sq, !228, !"stm32f4_sq", i1 false, i1 false}
!228 = !{!"../drivers/iio/adc/stm32-adc.c", i32 318, i32 36}
!229 = !{ptr @stm32f4_smp_bits, !230, !"stm32f4_smp_bits", i1 false, i1 false}
!230 = !{!"../drivers/iio/adc/stm32-adc.c", i32 364, i32 36}
!231 = !{ptr @stm32f4_adc_info, !232, !"stm32f4_adc_info", i1 false, i1 false}
!232 = !{!"../drivers/iio/adc/stm32-adc.c", i32 295, i32 36}
!233 = !{ptr @stm32f4_adc_resolutions, !234, !"stm32f4_adc_resolutions", i1 false, i1 false}
!234 = !{!"../drivers/iio/adc/stm32-adc.c", i32 289, i32 27}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/iio/adc/stm32-adc.c", i32 342, i32 4}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/iio/adc/stm32-adc.c", i32 343, i32 4}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/iio/adc/stm32-adc.c", i32 344, i32 4}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/iio/adc/stm32-adc.c", i32 345, i32 4}
!243 = !{ptr @.str.114, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/iio/adc/stm32-adc.c", i32 346, i32 4}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/iio/adc/stm32-adc.c", i32 347, i32 4}
!247 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/iio/adc/stm32-adc.c", i32 348, i32 4}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/iio/adc/stm32-adc.c", i32 349, i32 4}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/iio/adc/stm32-adc.c", i32 350, i32 4}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/iio/adc/stm32-adc.c", i32 351, i32 4}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/iio/adc/stm32-adc.c", i32 352, i32 4}
!257 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/iio/adc/stm32-adc.c", i32 353, i32 4}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/iio/adc/stm32-adc.c", i32 354, i32 4}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/iio/adc/stm32-adc.c", i32 355, i32 4}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/iio/adc/stm32-adc.c", i32 356, i32 4}
!265 = !{ptr @stm32f4_adc_trigs, !266, !"stm32f4_adc_trigs", i1 false, i1 false}
!266 = !{!"../drivers/iio/adc/stm32-adc.c", i32 341, i32 35}
!267 = !{ptr @stm32f4_adc_smp_cycles, !268, !"stm32f4_adc_smp_cycles", i1 false, i1 false}
!268 = !{!"../drivers/iio/adc/stm32-adc.c", i32 389, i32 27}
!269 = !{ptr @stm32h7_adc_cfg, !270, !"stm32h7_adc_cfg", i1 false, i1 false}
!270 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2416, i32 35}
!271 = !{ptr @stm32h7_adc_regspec, !272, !"stm32h7_adc_regspec", i1 false, i1 false}
!272 = !{!"../drivers/iio/adc/stm32-adc.c", i32 487, i32 39}
!273 = !{ptr @stm32h7_sq, !274, !"stm32h7_sq", i1 false, i1 false}
!274 = !{!"../drivers/iio/adc/stm32-adc.c", i32 408, i32 36}
!275 = !{ptr @stm32h7_smp_bits, !276, !"stm32h7_smp_bits", i1 false, i1 false}
!276 = !{!"../drivers/iio/adc/stm32-adc.c", i32 457, i32 36}
!277 = !{ptr @stm32h7_adc_info, !278, !"stm32h7_adc_info", i1 false, i1 false}
!278 = !{!"../drivers/iio/adc/stm32-adc.c", i32 307, i32 36}
!279 = !{ptr @stm32h7_adc_resolutions, !280, !"stm32h7_adc_resolutions", i1 false, i1 false}
!280 = !{!"../drivers/iio/adc/stm32-adc.c", i32 301, i32 27}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/iio/adc/stm32-adc.c", i32 439, i32 4}
!283 = !{ptr @.str.126, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/iio/adc/stm32-adc.c", i32 440, i32 4}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/iio/adc/stm32-adc.c", i32 441, i32 4}
!287 = !{ptr @.str.128, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/iio/adc/stm32-adc.c", i32 443, i32 4}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/iio/adc/stm32-adc.c", i32 444, i32 4}
!291 = !{ptr @.str.130, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/iio/adc/stm32-adc.c", i32 445, i32 4}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/iio/adc/stm32-adc.c", i32 446, i32 4}
!295 = !{ptr @.str.132, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/iio/adc/stm32-adc.c", i32 447, i32 4}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/iio/adc/stm32-adc.c", i32 448, i32 4}
!299 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/iio/adc/stm32-adc.c", i32 449, i32 4}
!301 = !{ptr @stm32h7_adc_trigs, !302, !"stm32h7_adc_trigs", i1 false, i1 false}
!302 = !{!"../drivers/iio/adc/stm32-adc.c", i32 431, i32 35}
!303 = !{ptr @.str.135, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/iio/adc/stm32-adc.c", i32 836, i32 3}
!305 = !{ptr @.str.136, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @stm32h7_adc_exit_pwr_down._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @stm32h7_adc_exit_pwr_down._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.137, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1033, i32 3}
!310 = !{ptr @.str.138, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @stm32h7_adc_selfcalib._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @stm32h7_adc_selfcalib._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @stm32h7_adc_selfcalib._entry.139, !314, !"_entry", i1 false, i1 false}
!314 = !{!"../drivers/iio/adc/stm32-adc.c", i32 1050, i32 3}
!315 = !{ptr @stm32h7_adc_selfcalib._entry_ptr.140, !314, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.141, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/iio/adc/stm32-adc.c", i32 675, i32 4}
!318 = !{ptr @.str.142, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug237, !317, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!320 = !{ptr @.str.143, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/iio/adc/stm32-adc.c", i32 680, i32 4}
!322 = !{ptr @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug238, !321, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!323 = !{ptr @.str.144, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/iio/adc/stm32-adc.c", i32 685, i32 4}
!325 = !{ptr @stm32_adc_int_ch_enable.__UNIQUE_ID_ddebug239, !324, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!326 = !{ptr @.str.145, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/iio/adc/stm32-adc.c", i32 864, i32 3}
!328 = !{ptr @.str.146, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @stm32h7_adc_enable._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @stm32h7_adc_enable._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.147, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/iio/adc/stm32-adc.c", i32 961, i32 4}
!333 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @stm32h7_adc_restore_selfcalib._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @stm32h7_adc_restore_selfcalib._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.150, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/iio/adc/stm32-adc.c", i32 977, i32 4}
!338 = !{ptr @stm32h7_adc_restore_selfcalib._entry.149, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @stm32h7_adc_restore_selfcalib._entry_ptr.151, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.153, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/iio/adc/stm32-adc.c", i32 982, i32 4}
!342 = !{ptr @stm32h7_adc_restore_selfcalib._entry.152, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @stm32h7_adc_restore_selfcalib._entry_ptr.154, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.155, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/iio/adc/stm32-adc.c", i32 910, i32 4}
!346 = !{ptr @stm32h7_adc_read_selfcalib._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @stm32h7_adc_read_selfcalib._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.156, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/iio/adc/stm32-adc.c", i32 885, i32 3}
!350 = !{ptr @.str.157, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.158, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @stm32h7_adc_disable._entry, !349, !"_entry", i1 false, i1 false}
!353 = !{ptr @stm32h7_adc_disable._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.159, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/iio/adc/stm32-adc.c", i32 800, i32 3}
!356 = !{ptr @.str.160, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @stm32h7_adc_stop_conv._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @stm32h7_adc_stop_conv._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @stm32h7_adc_smp_cycles, !360, !"stm32h7_adc_smp_cycles", i1 false, i1 false}
!360 = !{!"../drivers/iio/adc/stm32-adc.c", i32 483, i32 27}
!361 = !{ptr @stm32mp1_adc_cfg, !362, !"stm32mp1_adc_cfg", i1 false, i1 false}
!362 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2428, i32 35}
!363 = !{ptr @stm32mp1_adc_regspec, !364, !"stm32mp1_adc_regspec", i1 false, i1 false}
!364 = !{!"../drivers/iio/adc/stm32-adc.c", i32 502, i32 39}
!365 = !{ptr @stm32_adc_pm_ops, !366, !"stm32_adc_pm_ops", i1 false, i1 false}
!366 = !{!"../drivers/iio/adc/stm32-adc.c", i32 2399, i32 32}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{i8 0, i8 2}
!377 = !{!"branch_weights", i32 1, i32 2000}
!378 = !{!"auto-init"}
!379 = !{i64 2148307045, i64 2148307071, i64 2148307100, i64 2148307134, i64 2148307165, i64 2148307188}
!380 = !{i64 2148306464}
!381 = !{i64 791287, i64 791312, i64 791334, i64 791350, i64 791362, i64 791382, i64 791406, i64 791422, i64 791434}
!382 = !{i64 2148306652}
!383 = !{i64 6323426}
!384 = !{i64 6323008}
!385 = !{i64 6322588}
!386 = !{i64 2148788860, i64 2148788865, i64 2148788878, i64 2148788922, i64 2148788956, i64 2148788977}
