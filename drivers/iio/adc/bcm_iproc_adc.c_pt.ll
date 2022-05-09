; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/bcm_iproc_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/bcm_iproc_adc.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iproc_adc_priv = type { ptr, ptr, %struct.mutex, i32, i32, i32, %struct.completion }

@__initcall__kmod_bcm_iproc_adc__199_623_iproc_adc_driver_init6 = internal global ptr @iproc_adc_driver_init, section ".initcall6.init", align 4
@iproc_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iproc_adc_probe, ptr @iproc_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iproc_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iproc_adc_driver_exit = internal global ptr @iproc_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description200 = internal constant [63 x i8] c"bcm_iproc_adc.description=Broadcom iProc ADC controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [78 x i8] c"bcm_iproc_adc.author=Raveendra Padasalagi <raveendra.padasalagi@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file202 = internal constant [49 x i8] c"bcm_iproc_adc.file=drivers/iio/adc/bcm_iproc_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [29 x i8] c"bcm_iproc_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iproc-static-adc\00", [47 x i8] zeroinitializer }, align 32
@iproc_adc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-static-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iproc_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/adc/bcm_iproc_adc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr = internal global ptr @iproc_adc_probe._entry, section ".printk_index", align 4
@iproc_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&adc_priv->mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc-syscon\00", [21 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 529, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get handle for tsc syscon\0A\00", [59 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.10 = internal global ptr @iproc_adc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsc_clk\00", [24 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed getting clock tsc_clk\0A\00", [34 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.14 = internal global ptr @iproc_adc_probe._entry.12, section ".printk_index", align 4
@iproc_adc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 549, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to write IPROC_REGCTL2 %d\0A\00", [62 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.17 = internal global ptr @iproc_adc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iproc-adc\00", [22 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.21 = internal global ptr @iproc_adc_probe._entry.19, section ".printk_index", align 4
@iproc_adc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clk_prepare_enable failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.24 = internal global ptr @iproc_adc_probe._entry.22, section ".printk_index", align 4
@iproc_adc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable adc %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.27 = internal global ptr @iproc_adc_probe._entry.25, section ".printk_index", align 4
@iproc_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @iproc_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iproc_adc_iio_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.71, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.72, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.73, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.74, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.75, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.76, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.77, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.78, i8 64 }], [160 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio_device_register failed:err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@iproc_adc_probe._entry_ptr.30 = internal global ptr @iproc_adc_probe._entry.28, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@iproc_adc_interrupt_handler.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_iproc_adc\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iproc_adc_interrupt_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"iproc_adc_interrupt_handler(),INTRPT_STS:%x\0A\00", [51 x i8] zeroinitializer }, align 32
@iproc_adc_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No data rcvd on channel %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iproc_adc_interrupt_handler._entry_ptr = internal global ptr @iproc_adc_interrupt_handler._entry, section ".printk_index", align 4
@iproc_adc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to write IPROC_ANALOG_CONTROL %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iproc_adc_enable\00", [47 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr = internal global ptr @iproc_adc_enable._entry, section ".printk_index", align 4
@iproc_adc_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read IPROC_REGCTL2 %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr.40 = internal global ptr @iproc_adc_enable._entry.38, section ".printk_index", align 4
@iproc_adc_enable._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr.42 = internal global ptr @iproc_adc_enable._entry.41, section ".printk_index", align 4
@iproc_adc_enable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr.44 = internal global ptr @iproc_adc_enable._entry.43, section ".printk_index", align 4
@iproc_adc_enable._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr.46 = internal global ptr @iproc_adc_enable._entry.45, section ".printk_index", align 4
@iproc_adc_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to write ADC_CHANNEL_INTERRUPT_MASK %d\0A\00", [49 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr.49 = internal global ptr @iproc_adc_enable._entry.47, section ".printk_index", align 4
@iproc_adc_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to write ADC_CHANNEL_INTERRUPT_STATUS %d\0A\00", [47 x i8] zeroinitializer }, align 32
@iproc_adc_enable._entry_ptr.52 = internal global ptr @iproc_adc_enable._entry.50, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iproc_adc_do_read.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iproc_adc_do_read\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IntMask failed (%d times)\00", [38 x i8] zeroinitializer }, align 32
@iproc_adc_do_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IntMask set failed. Read will likely fail.\00", [53 x i8] zeroinitializer }, align 32
@iproc_adc_do_read._entry_ptr = internal global ptr @iproc_adc_do_read._entry, section ".printk_index", align 4
@iproc_adc_do_read._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timed out waiting for ADC data!\0A\00", [63 x i8] zeroinitializer }, align 32
@iproc_adc_do_read._entry_ptr.58 = internal global ptr @iproc_adc_do_read._entry.56, section ".printk_index", align 4
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iproc_adc_reg_dump\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%20s= 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IPROC_REGCTL1\00", [18 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IPROC_REGCTL2\00", [18 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IPROC_INTERRUPT_THRES\00", [42 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IPROC_INTERRUPT_MASK\00", [43 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IPROC_INTERRUPT_STATUS\00", [41 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPROC_CONTROLLER_STATUS\00", [40 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IPROC_ANALOG_CONTROL\00", [43 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IPROC_AUX_DATA\00", [17 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IPROC_SOFT_BYPASS_CONTROL\00", [38 x i8] zeroinitializer }, align 32
@iproc_adc_reg_dump.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IPROC_SOFT_BYPASS_DATA\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc0\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc1\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc2\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc3\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc4\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc5\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc6\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc7\00", [27 x i8] zeroinitializer }, align 32
@iproc_adc_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.79, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iproc_adc_disable\00", [46 x i8] zeroinitializer }, align 32
@iproc_adc_disable._entry_ptr = internal global ptr @iproc_adc_disable._entry, section ".printk_index", align 4
@iproc_adc_disable._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.79, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@iproc_adc_disable._entry_ptr.81 = internal global ptr @iproc_adc_disable._entry.80, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"iproc_adc_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 615, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 619, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"iproc_adc_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 609, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 515, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 522, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 527, i32 7 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 529, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 534, i32 47 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 536, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 549, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 556, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 558, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 564, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 571, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"iproc_adc_iio_info\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 482, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"iproc_adc_iio_channels\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 495, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 583, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 87, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 173, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 201, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 363, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 375, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 384, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 391, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 399, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 410, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 420, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 304, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 307, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 345, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 123, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 124, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 125, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 126, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 127, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 128, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 129, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 130, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 131, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 132, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 496, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 497, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 498, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 499, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 500, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 501, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 502, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 503, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 438, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private constant [35 x i8] c"../drivers/iio/adc/bcm_iproc_adc.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 446, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__exitcall_iproc_adc_driver_exit, ptr @__initcall__kmod_bcm_iproc_adc__199_623_iproc_adc_driver_init6, ptr @iproc_adc_disable._entry, ptr @iproc_adc_disable._entry.80, ptr @iproc_adc_disable._entry_ptr, ptr @iproc_adc_disable._entry_ptr.81, ptr @iproc_adc_do_read._entry, ptr @iproc_adc_do_read._entry.56, ptr @iproc_adc_do_read._entry_ptr, ptr @iproc_adc_do_read._entry_ptr.58, ptr @iproc_adc_driver_exit, ptr @iproc_adc_enable._entry, ptr @iproc_adc_enable._entry.38, ptr @iproc_adc_enable._entry.41, ptr @iproc_adc_enable._entry.43, ptr @iproc_adc_enable._entry.45, ptr @iproc_adc_enable._entry.47, ptr @iproc_adc_enable._entry.50, ptr @iproc_adc_enable._entry_ptr, ptr @iproc_adc_enable._entry_ptr.40, ptr @iproc_adc_enable._entry_ptr.42, ptr @iproc_adc_enable._entry_ptr.44, ptr @iproc_adc_enable._entry_ptr.46, ptr @iproc_adc_enable._entry_ptr.49, ptr @iproc_adc_enable._entry_ptr.52, ptr @iproc_adc_interrupt_handler._entry, ptr @iproc_adc_interrupt_handler._entry_ptr, ptr @iproc_adc_probe._entry, ptr @iproc_adc_probe._entry.12, ptr @iproc_adc_probe._entry.15, ptr @iproc_adc_probe._entry.19, ptr @iproc_adc_probe._entry.22, ptr @iproc_adc_probe._entry.25, ptr @iproc_adc_probe._entry.28, ptr @iproc_adc_probe._entry.8, ptr @iproc_adc_probe._entry_ptr, ptr @iproc_adc_probe._entry_ptr.10, ptr @iproc_adc_probe._entry_ptr.14, ptr @iproc_adc_probe._entry_ptr.17, ptr @iproc_adc_probe._entry_ptr.21, ptr @iproc_adc_probe._entry_ptr.24, ptr @iproc_adc_probe._entry_ptr.27, ptr @iproc_adc_probe._entry_ptr.30, ptr @iproc_adc_driver, ptr @.str, ptr @iproc_adc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @iproc_adc_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @iproc_adc_iio_info, ptr @iproc_adc_iio_channels, ptr @.str.29, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_iio_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_do_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_do_read._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_adc_disable._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iproc_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @iproc_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i139 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 168) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.iproc_adc_priv, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @iproc_adc_probe.__key) #5
  %completion = getelementptr inbounds %struct.iproc_adc_priv, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.iproc_adc_priv, ptr %1, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.7) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  %adc_clk = getelementptr inbounds %struct.iproc_adc_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %adc_clk, align 4
  %cmp.i133 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end25, label %if.end29

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %11 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adc_clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irqno = getelementptr inbounds %struct.iproc_adc_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %irqno to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call30, ptr %irqno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp = icmp slt i32 %call30, 1
  br i1 %cmp, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %17 = ptrtoint ptr %irqno to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqno, align 4
  %call45 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull @iproc_adc_interrupt_handler, ptr noundef nonnull @iproc_adc_interrupt_thread, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call45) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %19 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adc_clk, align 4
  %call.i134 = tail call i32 @clk_prepare(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.do.end59_crit_edge

if.end52.do.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end59

if.end.i:                                         ; preds = %if.end52
  %call1.i = tail call i32 @clk_enable(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end61, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %do.end59

do.end59:                                         ; preds = %if.then3.i, %if.end52.do.end59_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i134, %if.end52.do.end59_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end61:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !179
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 28, i32 noundef 14336, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i135 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i135, label %if.end.i136, label %do.end.i

do.end.i:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %call.i.i) #8
  br label %do.end67

if.end.i136:                                      ; preds = %if.end61
  %chan_val.i = getelementptr inbounds %struct.iproc_adc_priv, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %chan_val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %chan_val.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 4, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #7
  %dev9.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.39, i32 noundef %call3.i) #8
  br label %do.end67

if.end10.i:                                       ; preds = %if.end.i136
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  %and.i = and i32 %30, -57
  store i32 %and.i, ptr %val.i, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %23, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 4, i32 noundef %and.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev18.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.16, i32 noundef %call12.i) #8
  br label %do.end67

if.end19.i:                                       ; preds = %if.end10.i
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %23, align 4
  %call21.i = call i32 @regmap_read(ptr noundef %34, i32 noundef 4, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end28.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev27.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.39, i32 noundef %call21.i) #8
  br label %do.end67

if.end28.i:                                       ; preds = %if.end19.i
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %or.i = or i32 %36, 131072
  store i32 %or.i, ptr %val.i, align 4
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %23, align 4
  %call30.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 4, i32 noundef %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %for.cond.preheader.i, label %do.end35.i

for.cond.preheader.i:                             ; preds = %if.end28.i
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %39 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp100.not.i = icmp eq i32 %40, 0
  br i1 %cmp100.not.i, label %for.cond.preheader.i.if.end69_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end69_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev36.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.16, i32 noundef %call30.i) #8
  br label %do.end67

for.cond.i:                                       ; preds = %if.end46.i
  %inc.i = add nuw i32 %channel_id.0101.i, 1
  %41 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_channels.i, align 4
  %cmp.i137 = icmp ult i32 %inc.i, %42
  br i1 %cmp.i137, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end69_crit_edge

for.cond.i.if.end69_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %channel_id.0101.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %23, align 4
  %mul.i = shl i32 %channel_id.0101.i, 5
  %add.i = add i32 %mul.i, 2064
  %call39.i = call i32 @regmap_write(ptr noundef %44, i32 noundef %add.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end46.i, label %do.end44.i

do.end44.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev45.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i, ptr noundef nonnull @.str.48, i32 noundef %call39.i) #8
  br label %do.end67

if.end46.i:                                       ; preds = %for.body.i
  %45 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %23, align 4
  %add49.i = add i32 %mul.i, 2060
  %call50.i = call i32 @regmap_write(ptr noundef %46, i32 noundef %add49.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %for.cond.i, label %do.end55.i

do.end55.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev56.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.51, i32 noundef %call50.i) #8
  br label %do.end67

do.end67:                                         ; preds = %do.end55.i, %do.end44.i, %do.end35.i, %do.end26.i, %do.end17.i, %do.end8.i, %do.end.i
  %retval.0.i138.ph = phi i32 [ %call50.i, %do.end55.i ], [ %call39.i, %do.end44.i ], [ %call30.i, %do.end35.i ], [ %call21.i, %do.end26.i ], [ %call12.i, %do.end17.i ], [ %call3.i, %do.end8.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i138.ph) #8
  br label %err_adc_enable

if.end69:                                         ; preds = %for.cond.i.if.end69_crit_edge, %for.cond.preheader.i.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %47 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %48 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @iproc_adc_iio_info, ptr %info, align 8
  %49 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %50 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @iproc_adc_iio_channels, ptr %channels, align 8
  %51 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %num_channels.i, align 4
  %call70 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end69.cleanup_crit_edge, label %do.end75

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end75:                                         ; preds = %if.end69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call70) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i139) #5
  %52 = ptrtoint ptr %val.i139 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %val.i139, align 4, !annotation !179
  %53 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call1.i141 = call i32 @regmap_read(ptr noundef %56, i32 noundef 4, ptr noundef nonnull %val.i139) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i141)
  %tobool.not.i142 = icmp eq i32 %call1.i141, 0
  br i1 %tobool.not.i142, label %if.end.i148, label %do.end.i144

do.end.i144:                                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i143 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i143, ptr noundef nonnull @.str.39, i32 noundef %call1.i141) #8
  br label %iproc_adc_disable.exit

if.end.i148:                                      ; preds = %do.end75
  %57 = ptrtoint ptr %val.i139 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i139, align 4
  %and.i145 = and i32 %58, -131073
  store i32 %and.i145, ptr %val.i139, align 4
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  %call3.i146 = call i32 @regmap_write(ptr noundef %60, i32 noundef 4, i32 noundef %and.i145) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i146)
  %tobool4.not.i147 = icmp eq i32 %call3.i146, 0
  br i1 %tobool4.not.i147, label %if.end.i148.iproc_adc_disable.exit_crit_edge, label %do.end8.i150

if.end.i148.iproc_adc_disable.exit_crit_edge:     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %iproc_adc_disable.exit

do.end8.i150:                                     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #7
  %dev9.i149 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i149, ptr noundef nonnull @.str.16, i32 noundef %call3.i146) #8
  br label %iproc_adc_disable.exit

iproc_adc_disable.exit:                           ; preds = %do.end8.i150, %if.end.i148.iproc_adc_disable.exit_crit_edge, %do.end.i144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i139) #5
  br label %err_adc_enable

err_adc_enable:                                   ; preds = %iproc_adc_disable.exit, %do.end67
  %ret.0 = phi i32 [ %retval.0.i138.ph, %do.end67 ], [ %call70, %iproc_adc_disable.exit ]
  %61 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adc_clk, align 4
  call void @clk_disable(ptr noundef %62) #5
  call void @clk_unprepare(ptr noundef %62) #5
  br label %cleanup

cleanup:                                          ; preds = %err_adc_enable, %if.end69.cleanup_crit_edge, %do.end59, %do.end50, %do.end40, %if.end29.cleanup_crit_edge, %do.end25, %do.end13, %do.end
  %retval.0 = phi i32 [ %9, %do.end13 ], [ %13, %do.end25 ], [ %call.i, %do.end40 ], [ %call45, %do.end50 ], [ %retval.0.i.ph, %do.end59 ], [ %ret.0, %err_adc_enable ], [ -12, %do.end ], [ -19, %if.end29.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_adc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !179
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %call1.i) #8
  br label %iproc_adc_disable.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and.i = and i32 %10, -131073
  store i32 %and.i, ptr %val.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 4, i32 noundef %and.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.iproc_adc_disable.exit_crit_edge, label %do.end8.i

if.end.i.iproc_adc_disable.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iproc_adc_disable.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev9.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.16, i32 noundef %call3.i) #8
  br label %iproc_adc_disable.exit

iproc_adc_disable.exit:                           ; preds = %do.end8.i, %if.end.i.iproc_adc_disable.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %adc_clk = getelementptr inbounds %struct.iproc_adc_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adc_clk, align 4
  call void @clk_disable(ptr noundef %14) #5
  call void @clk_unprepare(ptr noundef %14) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_adc_interrupt_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %intr_status = alloca i32, align 4
  %channel_status = alloca i32, align 4
  %ch_intr_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr_status) #5
  %0 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %intr_status, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel_status) #5
  %1 = ptrtoint ptr %channel_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %channel_status, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_intr_status) #5
  %2 = ptrtoint ptr %ch_intr_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ch_intr_status, align 4, !annotation !179
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %intr_status) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_interrupt_handler.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_interrupt_handler, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr_status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_interrupt_handler.__UNIQUE_ID_ddebug197, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intr_status, align 4
  %and = lshr i32 %10, 9
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool6.not = icmp eq i32 %shr, 0
  br i1 %tobool6.not, label %do.end.if.end46_crit_edge, label %if.then7

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then7:                                         ; preds = %do.end
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %chan_id = getelementptr inbounds %struct.iproc_adc_priv, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan_id, align 4
  %mul = shl i32 %14, 5
  %add = add i32 %mul, 2060
  %call9 = call i32 @regmap_read(ptr noundef %12, i32 noundef %add, ptr noundef nonnull %ch_intr_status) #5
  %15 = ptrtoint ptr %ch_intr_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ch_intr_status, align 4
  %and10 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then7.if.end38_crit_edge, label %if.then12

if.then7.if.end38_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then12:                                        ; preds = %if.then7
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %19 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan_id, align 4
  %mul15 = shl i32 %20, 5
  %add16 = add i32 %mul15, 2056
  %call17 = call i32 @regmap_read(ptr noundef %18, i32 noundef %add16, ptr noundef nonnull %channel_status) #5
  %21 = ptrtoint ptr %channel_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel_status, align 4
  %23 = and i32 %22, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %do.end28, label %if.then20

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %26 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan_id, align 4
  %mul23 = shl i32 %27, 5
  %add24 = add i32 %mul23, 2068
  %chan_val = getelementptr inbounds %struct.iproc_adc_priv, ptr %4, i32 0, i32 4
  %call25 = call i32 @regmap_read(ptr noundef %25, i32 noundef %add24, ptr noundef %chan_val) #5
  %completion = getelementptr inbounds %struct.iproc_adc_priv, ptr %4, i32 0, i32 6
  call void @complete(ptr noundef %completion) #5
  br label %if.end31

do.end28:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2
  %28 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.35, i32 noundef %29) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.then20
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %4, align 4
  %32 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chan_id, align 4
  %mul34 = shl i32 %33, 5
  %add35 = add i32 %mul34, 2064
  %34 = ptrtoint ptr %ch_intr_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ch_intr_status, align 4
  %and36 = and i32 %35, -2
  %call37 = call i32 @regmap_write(ptr noundef %31, i32 noundef %add35, i32 noundef %and36) #5
  br label %if.end38

if.end38:                                         ; preds = %if.end31, %if.then7.if.end38_crit_edge
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 4
  %38 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chan_id, align 4
  %mul41 = shl i32 %39, 5
  %add42 = add i32 %mul41, 2060
  %40 = ptrtoint ptr %ch_intr_status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch_intr_status, align 4
  %call43 = call i32 @regmap_write(ptr noundef %37, i32 noundef %add42, i32 noundef %41) #5
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %4, align 4
  %call45 = call i32 @regmap_write(ptr noundef %43, i32 noundef 16, i32 noundef %shr) #5
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %do.end.if.end46_crit_edge
  %retval1.0 = phi i32 [ 1, %if.end38 ], [ 0, %do.end.if.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_intr_status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel_status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr_status) #5
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_adc_interrupt_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %intr_status = alloca i32, align 4
  %intr_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr_status) #5
  %0 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %intr_status, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr_mask) #5
  %1 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %intr_mask, align 4, !annotation !179
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %intr_status) #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 12, ptr noundef nonnull %intr_mask) #5
  %8 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr_status, align 4
  %10 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_mask, align 4
  %and = and i32 %11, %9
  %12 = and i32 %and, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr_mask) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr_status) #5
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_adc_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_data) #5
  %0 = ptrtoint ptr %adc_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %adc_data, align 2, !annotation !179
  %1 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %call = call fastcc i32 @iproc_adc_do_read(ptr noundef %indio_dev, i32 noundef %3, ptr noundef nonnull %adc_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %adc_data, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cond = icmp eq i32 %8, 0
  br i1 %cond, label %sw.bb2, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1800, ptr %val, align 4
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb1.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb2 ], [ 1, %if.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iproc_adc_do_read(ptr noundef %indio_dev, i32 noundef %channel, ptr nocapture noundef writeonly %p_adc_data) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %val_check = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_check) #5
  %0 = ptrtoint ptr %val_check to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val_check, align 4, !annotation !179
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.iproc_adc_priv, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %chan_val = getelementptr inbounds %struct.iproc_adc_priv, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %chan_val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %chan_val, align 4
  %chan_id = getelementptr inbounds %struct.iproc_adc_priv, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %chan_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %channel, ptr %chan_id, align 4
  %completion = getelementptr inbounds %struct.iproc_adc_priv, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 130568, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %val, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %mul = shl i32 %channel, 5
  %add = add i32 %mul, 2048
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add, i32 noundef 255, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %add7 = add i32 %mul, 2052
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add7, i32 noundef 63, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %add11 = add i32 %mul, 2064
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %add11, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call14 = call i32 @regmap_read(ptr noundef %16, i32 noundef 12, ptr noundef nonnull %val) #5
  %shl16 = shl i32 512, %channel
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %or17 = or i32 %18, %shl16
  store i32 %or17, ptr %val, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %call19 = call i32 @regmap_write(ptr noundef %20, i32 noundef 12, i32 noundef %or17) #5
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %call21 = call i32 @regmap_read(ptr noundef %22, i32 noundef 12, ptr noundef nonnull %val_check) #5
  %23 = ptrtoint ptr %val_check to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val_check, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not118 = icmp eq i32 %24, %26
  br i1 %cmp.not118, label %entry.if.end43_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %failed_cnt.0119 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %failed_cnt.0119)
  %exitcond = icmp eq i32 %failed_cnt.0119, 10
  br i1 %exitcond, label %while.body.do.body_crit_edge, label %if.end

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %failed_cnt.0119, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 2147480) #5
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %call.i110 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 12, i32 noundef 130560, i32 noundef %shl16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %call28 = call i32 @regmap_read(ptr noundef %31, i32 noundef 12, ptr noundef nonnull %val_check) #5
  %32 = ptrtoint ptr %val_check to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val_check, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %cmp.not = icmp eq i32 %33, %35
  br i1 %cmp.not, label %if.end.do.body_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %while.body.do.body_crit_edge
  %failed_cnt.1115 = phi i32 [ %inc, %if.end.do.body_crit_edge ], [ 11, %while.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_do_read.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_do_read, %if.then34)) #5
          to label %do.end [label %if.then34], !srcloc !180

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_do_read.__UNIQUE_ID_ddebug198, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %failed_cnt.1115) #5
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %failed_cnt.1115)
  %cmp36 = icmp sgt i32 %failed_cnt.1115, 10
  br i1 %cmp36, label %do.end40, label %do.end.if.end43_crit_edge

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev41 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.55) #8
  br label %adc_err

if.end43:                                         ; preds = %do.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %2, align 4
  %call45 = call i32 @regmap_read(ptr noundef %37, i32 noundef 12, ptr noundef nonnull %val_check) #5
  %call47 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end43.adc_err_crit_edge, label %if.then49

if.end43.adc_err_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %adc_err

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %chan_val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chan_val, align 4
  %conv = trunc i32 %39 to i16
  %40 = ptrtoint ptr %p_adc_data to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %p_adc_data, align 2
  br label %cleanup

adc_err:                                          ; preds = %if.end43.adc_err_crit_edge, %do.end40
  %read_len.0 = phi i32 [ -5, %do.end40 ], [ -110, %if.end43.adc_err_crit_edge ]
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %call.i111 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 12, i32 noundef 130560, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %2, align 4
  %call.i112 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 16, i32 noundef 130560, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %dev64 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.57) #8
  call fastcc void @iproc_adc_reg_dump(ptr noundef %indio_dev)
  br label %cleanup

cleanup:                                          ; preds = %adc_err, %if.then49
  %retval.0 = phi i32 [ %read_len.0, %adc_err ], [ 2, %if.then49 ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_check) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_adc_reg_dump(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %val10 = alloca i32, align 4
  %val32 = alloca i32, align 4
  %val54 = alloca i32, align 4
  %val76 = alloca i32, align 4
  %val98 = alloca i32, align 4
  %val120 = alloca i32, align 4
  %val142 = alloca i32, align 4
  %val164 = alloca i32, align 4
  %val186 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !179
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug187, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val10) #5
  %7 = ptrtoint ptr %val10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val10, align 4, !annotation !179
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call12 = call i32 @regmap_read(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %val10) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then25)) #5
          to label %do.end28 [label %if.then25], !srcloc !180

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val10, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug188, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.62, i32 noundef %11) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #5
  %12 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val32, align 4, !annotation !179
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call34 = call i32 @regmap_read(ptr noundef %14, i32 noundef 8, ptr noundef nonnull %val32) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then47)) #5
          to label %do.end50 [label %if.then47], !srcloc !180

if.then47:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val32, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug189, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.63, i32 noundef %16) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.end28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val54) #5
  %17 = ptrtoint ptr %val54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val54, align 4, !annotation !179
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call56 = call i32 @regmap_read(ptr noundef %19, i32 noundef 12, ptr noundef nonnull %val54) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then69)) #5
          to label %do.end72 [label %if.then69], !srcloc !180

if.then69:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val54, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug190, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.64, i32 noundef %21) #5
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.end50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val54) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val76) #5
  %22 = ptrtoint ptr %val76 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val76, align 4, !annotation !179
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call78 = call i32 @regmap_read(ptr noundef %24, i32 noundef 16, ptr noundef nonnull %val76) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then91)) #5
          to label %do.end94 [label %if.then91], !srcloc !180

if.then91:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %val76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val76, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug191, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.65, i32 noundef %26) #5
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.end72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val76) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val98) #5
  %27 = ptrtoint ptr %val98 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val98, align 4, !annotation !179
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call100 = call i32 @regmap_read(ptr noundef %29, i32 noundef 20, ptr noundef nonnull %val98) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then113)) #5
          to label %do.end116 [label %if.then113], !srcloc !180

if.then113:                                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %val98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val98, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug192, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.66, i32 noundef %31) #5
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %do.end94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val98) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val120) #5
  %32 = ptrtoint ptr %val120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val120, align 4, !annotation !179
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call122 = call i32 @regmap_read(ptr noundef %34, i32 noundef 28, ptr noundef nonnull %val120) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then135)) #5
          to label %do.end138 [label %if.then135], !srcloc !180

if.then135:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %val120 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val120, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug193, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.67, i32 noundef %36) #5
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.end116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val120) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val142) #5
  %37 = ptrtoint ptr %val142 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val142, align 4, !annotation !179
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call144 = call i32 @regmap_read(ptr noundef %39, i32 noundef 32, ptr noundef nonnull %val142) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then157)) #5
          to label %do.end160 [label %if.then157], !srcloc !180

if.then157:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %val142 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val142, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug194, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.68, i32 noundef %41) #5
  br label %do.end160

do.end160:                                        ; preds = %if.then157, %do.end138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val142) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val164) #5
  %42 = ptrtoint ptr %val164 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val164, align 4, !annotation !179
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call166 = call i32 @regmap_read(ptr noundef %44, i32 noundef 56, ptr noundef nonnull %val164) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then179)) #5
          to label %do.end182 [label %if.then179], !srcloc !180

if.then179:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %val164 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val164, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug195, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.69, i32 noundef %46) #5
  br label %do.end182

do.end182:                                        ; preds = %if.then179, %do.end160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val164) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val186) #5
  %47 = ptrtoint ptr %val186 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val186, align 4, !annotation !179
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call188 = call i32 @regmap_read(ptr noundef %49, i32 noundef 60, ptr noundef nonnull %val186) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_adc_reg_dump, %if.then201)) #5
          to label %do.end204 [label %if.then201], !srcloc !180

if.then201:                                       ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %val186 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val186, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_adc_reg_dump.__UNIQUE_ID_ddebug196, ptr noundef %dev1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.70, i32 noundef %51) #5
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %do.end182
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val186) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !165, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_bcm_iproc_adc__199_623_iproc_adc_driver_init6, !1, !"__initcall__kmod_bcm_iproc_adc__199_623_iproc_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 623, i32 1}
!2 = !{ptr @__exitcall_iproc_adc_driver_exit, !1, !"__exitcall_iproc_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description200, !4, !"__UNIQUE_ID_description200", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 625, i32 1}
!5 = !{ptr @__UNIQUE_ID_author201, !6, !"__UNIQUE_ID_author201", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 626, i32 1}
!7 = !{ptr @__UNIQUE_ID_file202, !8, !"__UNIQUE_ID_file202", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 627, i32 1}
!9 = !{ptr @__UNIQUE_ID_license203, !8, !"__UNIQUE_ID_license203", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 619, i32 11}
!12 = !{ptr @iproc_adc_driver, !13, !"iproc_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 615, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 515, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @iproc_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @iproc_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @iproc_adc_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 522, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 527, i32 7}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 529, i32 3}
!29 = !{ptr @iproc_adc_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @iproc_adc_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 534, i32 47}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 536, i32 3}
!35 = !{ptr @iproc_adc_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iproc_adc_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 549, i32 3}
!39 = !{ptr @iproc_adc_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @iproc_adc_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 556, i32 18}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 558, i32 3}
!45 = !{ptr @iproc_adc_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @iproc_adc_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 564, i32 3}
!49 = !{ptr @iproc_adc_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @iproc_adc_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 571, i32 3}
!53 = !{ptr @iproc_adc_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @iproc_adc_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 583, i32 3}
!57 = !{ptr @iproc_adc_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @iproc_adc_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 173, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @iproc_adc_interrupt_handler.__UNIQUE_ID_ddebug197, !63, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 201, i32 5}
!69 = !{ptr @iproc_adc_interrupt_handler._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @iproc_adc_interrupt_handler._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 363, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @iproc_adc_enable._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @iproc_adc_enable._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 375, i32 3}
!78 = !{ptr @iproc_adc_enable._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @iproc_adc_enable._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @iproc_adc_enable._entry.41, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 384, i32 3}
!82 = !{ptr @iproc_adc_enable._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @iproc_adc_enable._entry.43, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 391, i32 3}
!85 = !{ptr @iproc_adc_enable._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @iproc_adc_enable._entry.45, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 399, i32 3}
!88 = !{ptr @iproc_adc_enable._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 410, i32 4}
!91 = !{ptr @iproc_adc_enable._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @iproc_adc_enable._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 420, i32 4}
!95 = !{ptr @iproc_adc_enable._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @iproc_adc_enable._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @iproc_adc_iio_info, !98, !"iproc_adc_iio_info", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 482, i32 30}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 304, i32 3}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @iproc_adc_do_read.__UNIQUE_ID_ddebug198, !100, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 307, i32 4}
!105 = !{ptr @iproc_adc_do_read._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @iproc_adc_do_read._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 345, i32 2}
!109 = !{ptr @iproc_adc_do_read._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @iproc_adc_do_read._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 123, i32 2}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug187, !112, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!115 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug188, !117, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!117 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 124, i32 2}
!118 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug189, !120, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 125, i32 2}
!121 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug190, !123, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!123 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 126, i32 2}
!124 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug191, !126, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 127, i32 2}
!127 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug192, !129, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 128, i32 2}
!130 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug193, !132, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!132 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 129, i32 2}
!133 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug194, !135, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!135 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 130, i32 2}
!136 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug195, !138, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 131, i32 2}
!139 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @iproc_adc_reg_dump.__UNIQUE_ID_ddebug196, !141, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 132, i32 2}
!142 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 496, i32 2}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 497, i32 2}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 498, i32 2}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 499, i32 2}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 500, i32 2}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 501, i32 2}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 502, i32 2}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 503, i32 2}
!159 = !{ptr @iproc_adc_iio_channels, !160, !"iproc_adc_iio_channels", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 495, i32 35}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 438, i32 3}
!163 = !{ptr @iproc_adc_disable._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @iproc_adc_disable._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @iproc_adc_disable._entry.80, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 446, i32 3}
!167 = !{ptr @iproc_adc_disable._entry_ptr.81, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @iproc_adc_of_match, !169, !"iproc_adc_of_match", i1 false, i1 false}
!169 = !{!"../drivers/iio/adc/bcm_iproc_adc.c", i32 609, i32 34}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
!180 = !{i64 2148969155, i64 2148969160, i64 2148969173, i64 2148969217, i64 2148969251, i64 2148969272}
