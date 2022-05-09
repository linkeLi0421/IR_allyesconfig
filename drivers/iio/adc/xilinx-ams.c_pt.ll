; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/xilinx-ams.c_pt.bc'
source_filename = "../drivers/iio/adc/xilinx-ams.c"
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.ams = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, %struct.delayed_work }

@__initcall__kmod_xilinx_ams__347_1448_ams_driver_init6 = internal global ptr @ams_driver_init, section ".initcall6.init", align 4
@ams_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ams_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ams_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ams_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ams_driver_exit = internal global ptr @ams_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file348 = internal constant [43 x i8] c"xilinx_ams.file=drivers/iio/adc/xilinx-ams\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [26 x i8] c"xilinx_ams.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [31 x i8] c"xilinx_ams.author=Xilinx, Inc.\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx-ams\00", [21 x i8] zeroinitializer }, align 32
@ams_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-ams\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ams_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ams_suspend, ptr @ams_resume, ptr @ams_suspend, ptr @ams_resume, ptr @ams_suspend, ptr @ams_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ams_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ams->lock\00", [21 x i8] zeroinitializer }, align 32
@ams_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ams->intr_lock\00", [16 x i8] zeroinitializer }, align 32
@iio_ams_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ams_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ams_read_event_config, ptr @ams_write_event_config, ptr @ams_read_event_value, ptr @ams_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ams_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&ams->ams_unmask_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@ams_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&ams->ams_unmask_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failure in parsing DT\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize AMS\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ams-irq\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/xilinx-ams.c\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlnx,zynqmp-ams-ps\00", [45 x i8] zeroinitializer }, align 32
@ams_ps_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 8, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_temp_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 532, i32 21, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_temp_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 4, i32 10, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 8, i32 9, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 24, i32 14, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 52, i32 5, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 56, i32 6, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 60, i32 7, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 512, i32 16, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 516, i32 17, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 520, i32 18, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 524, i32 19, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 528, i32 20, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }], [264 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlnx,zynqmp-ams-pl\00", [45 x i8] zeroinitializer }, align 32
@ams_pl_channels = internal constant { [31 x %struct.iio_chan_spec], [696 x i8] } { [31 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 30, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_temp_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 4, i32 32, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 8, i32 31, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 16, i32 34, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 20, i32 35, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 24, i32 36, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 52, i32 27, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 56, i32 28, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 60, i32 29, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 528, i32 42, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 12, i32 33, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 512, i32 38, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 516, i32 39, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 520, i32 40, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 524, i32 41, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ams_voltage_events, i32 3, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 64, i32 44, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 68, i32 45, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 72, i32 46, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 76, i32 47, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 80, i32 48, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 84, i32 49, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 88, i32 50, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 92, i32 51, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 96, i32 52, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 100, i32 53, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 104, i32 54, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 108, i32 55, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 112, i32 56, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 116, i32 57, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 120, i32 58, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 124, i32 59, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [696 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlnx,zynqmp-ams\00", [16 x i8] zeroinitializer }, align 32
@ams_ctrl_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 96, i32 66, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 108, i32 67, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 120, i32 68, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 124, i32 69, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 128, i32 70, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 132, i32 71, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 156, i32 72, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [152 x i8] zeroinitializer }, align 32
@ams_temp_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ams_voltage_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xlnx,bipolar\00", [19 x i8] zeroinitializer }, align 32
@switch.table.ams_read_raw = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 48, i32 48, i32 48, i32 51, i32 48, i32 48, i32 54, i32 55, i32 56, i32 57, i32 48, i32 48, i32 48, i32 48, i32 48, i32 63], [32 x i8] zeroinitializer }, align 32
@switch.table.ams_read_raw.19 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 3000, i32 1000, i32 1000, i32 3000, i32 1000, i32 1000, i32 3000, i32 3000, i32 3000, i32 3000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 3000], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.20 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [13 x i64] [i64 11, i64 32, i64 4, i64 8, i64 24, i64 52, i64 56, i64 60, i64 512, i64 516, i64 520, i64 524, i64 528]
@__sancov_gen_cov_switch_values.24 = internal global [77 x i64] [i64 75, i64 32, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 52, i64 56, i64 60, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 512, i64 516, i64 520, i64 524, i64 528]
@__sancov_gen_cov_switch_values.25 = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.26 = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.27 = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.28 = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.29 = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"ams_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1440, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1443, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"ams_of_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1340, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"ams_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1438, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1368, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1369, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"iio_ams_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1332, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1392, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1400, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1404, i32 41 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1412, i32 55 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1415, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 554, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1216, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1217, i32 7 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"ams_ps_channels\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1107, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1228, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"ams_pl_channels\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1123, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1243, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"ams_ctrl_channels\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1157, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"ams_temp_events\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1081, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"ams_voltage_events\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1089, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1176, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [32 x i8] c"../drivers/iio/adc/xilinx-ams.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1184, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"switch.table.ams_read_raw\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [29 x i8] c"switch.table.ams_read_raw.19\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__exitcall_ams_driver_exit, ptr @__initcall__kmod_xilinx_ams__347_1448_ams_driver_init6, ptr @ams_driver_exit, ptr @ams_driver, ptr @.str, ptr @ams_of_match_table, ptr @ams_pm_ops, ptr @ams_probe.__key, ptr @.str.1, ptr @ams_probe.__key.2, ptr @.str.3, ptr @iio_ams_info, ptr @ams_probe.__key.4, ptr @.str.5, ptr @ams_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ams_ps_channels, ptr @.str.15, ptr @ams_pl_channels, ptr @.str.16, ptr @ams_ctrl_channels, ptr @ams_temp_events, ptr @ams_voltage_events, ptr @.str.17, ptr @.str.18, ptr @switch.table.ams_read_raw, ptr @switch.table.ams_read_raw.19], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_ams_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_ps_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_pl_channels to i32), i32 2728, i32 3424, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_ctrl_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_temp_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ams_voltage_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ams_read_raw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ams_read_raw.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ams_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ams_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ams_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 280) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ams_probe.__key) #6
  %intr_lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %intr_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ams_probe.__key.2, i16 noundef signext 3) #6
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iio_ams_info, ptr %info, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %1, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %clk, align 4
  %cmp.i134 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call.i = tail call i32 @clk_prepare(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.clk_prepare_enable.exit_crit_edge

if.end20.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end24_crit_edge, label %if.then3.i

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call14) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end20.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end20.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end24_crit_edge

clk_prepare_enable.exit.if.end24_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %clk_prepare_enable.exit.if.end24_crit_edge, %if.end.i.if.end24_crit_edge
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i135 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ams_clk_disable_unprepare, ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i136 = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i136, label %if.end24.do.body32_crit_edge, label %devm_add_action_or_reset.exit

if.end24.do.body32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

devm_add_action_or_reset.exit:                    ; preds = %if.end24
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp28 = icmp slt i32 %call.i135, 0
  br i1 %cmp28, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.do.body32_crit_edge

devm_add_action_or_reset.exit.do.body32_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %devm_add_action_or_reset.exit.do.body32_crit_edge, %if.end24.do.body32_crit_edge
  %ams_unmask_work = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10
  tail call void @__init_work(ptr noundef %ams_unmask_work, i32 noundef 0) #6
  %11 = ptrtoint ptr %ams_unmask_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ams_unmask_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @ams_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry39 = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry39, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ams_unmask_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @ams_probe.__key.6) #6
  %call.i138 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ams_cancel_delayed_work, ptr noundef %ams_unmask_work) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %do.body32.if.end55_crit_edge, label %devm_add_action_or_reset.exit142

do.body32.if.end55_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

devm_add_action_or_reset.exit142:                 ; preds = %do.body32
  %call.i148 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ams_unmask_work) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp53 = icmp slt i32 %call.i138, 0
  br i1 %cmp53, label %devm_add_action_or_reset.exit142.cleanup_crit_edge, label %devm_add_action_or_reset.exit142.if.end55_crit_edge

devm_add_action_or_reset.exit142.if.end55_crit_edge: ; preds = %devm_add_action_or_reset.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

devm_add_action_or_reset.exit142.cleanup_crit_edge: ; preds = %devm_add_action_or_reset.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %devm_add_action_or_reset.exit142.if.end55_crit_edge, %do.body32.if.end55_crit_edge
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %call2.i = tail call ptr @dev_fwnode(ptr noundef %18) #6
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 4488, i32 noundef 3520) #6
  %tobool.not.i143 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i143, label %if.end55.if.then58_crit_edge, label %if.end.i144

if.end55.if.then58_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

if.end.i144:                                      ; preds = %if.end55
  %call4.i = tail call zeroext i1 @fwnode_device_is_available(ptr noundef %call2.i) #6
  br i1 %call4.i, label %if.then5.i, label %if.end.i144.if.end9.i_crit_edge

if.end.i144.if.end9.i_crit_edge:                  ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i144
  %call6.i = tail call fastcc i32 @ams_init_module(ptr noundef nonnull %call, ptr noundef %call2.i, ptr noundef nonnull %call5.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i145 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i145, label %if.then5.i.if.then58_crit_edge, label %if.then5.i.if.end9.i_crit_edge

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then5.i.if.then58_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

if.end9.i:                                        ; preds = %if.then5.i.if.end9.i_crit_edge, %if.end.i144.if.end9.i_crit_edge
  %num_channels.0.i = phi i32 [ 0, %if.end.i144.if.end9.i_crit_edge ], [ %call6.i, %if.then5.i.if.end9.i_crit_edge ]
  %call10.i = tail call ptr @fwnode_get_next_child_node(ptr noundef %call2.i, ptr noundef null) #6
  %tobool11.not186.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not186.i, label %if.end9.i.for.cond21.preheader.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.for.cond21.preheader.i_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond21.preheader.i

for.cond21.preheader.i:                           ; preds = %for.inc.i.for.cond21.preheader.i_crit_edge, %if.end9.i.for.cond21.preheader.i_crit_edge
  %num_channels.1.lcssa.i = phi i32 [ %num_channels.0.i, %if.end9.i.for.cond21.preheader.i_crit_edge ], [ %num_channels.2.i, %for.inc.i.for.cond21.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.1.lcssa.i)
  %cmp22190.not.i = icmp eq i32 %num_channels.1.lcssa.i, 0
  br i1 %cmp22190.not.i, label %for.cond21.preheader.i.for.end56.i_crit_edge, label %for.body23.lr.ph.i

for.cond21.preheader.i.for.end56.i_crit_edge:     ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end56.i

for.body23.lr.ph.i:                               ; preds = %for.cond21.preheader.i
  %ps_base.i = getelementptr inbounds %struct.ams, ptr %16, i32 0, i32 1
  %pl_base.i = getelementptr inbounds %struct.ams, ptr %16, i32 0, i32 2
  br label %for.body23.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %num_channels.1189.i = phi i32 [ %num_channels.2.i, %for.inc.i.for.body.i_crit_edge ], [ %num_channels.0.i, %if.end9.i.for.body.i_crit_edge ]
  %child.0187.i = phi ptr [ %call20.i, %for.inc.i.for.body.i_crit_edge ], [ %call10.i, %if.end9.i.for.body.i_crit_edge ]
  %call12.i = tail call zeroext i1 @fwnode_device_is_available(ptr noundef nonnull %child.0187.i) #6
  br i1 %call12.i, label %if.then13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then13.i:                                      ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %num_channels.1189.i
  %call14.i = tail call fastcc i32 @ams_init_module(ptr noundef nonnull %call, ptr noundef nonnull %child.0187.i, ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.0187.i) #6
  br label %if.then58

if.end17.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %add18.i = add i32 %call14.i, %num_channels.1189.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %for.body.i.for.inc.i_crit_edge
  %num_channels.2.i = phi i32 [ %add18.i, %if.end17.i ], [ %num_channels.1189.i, %for.body.i.for.inc.i_crit_edge ]
  %call20.i = tail call ptr @fwnode_get_next_child_node(ptr noundef %call2.i, ptr noundef nonnull %child.0187.i) #6
  %tobool11.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool11.not.i, label %for.inc.i.for.cond21.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.cond21.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond21.preheader.i

for.body23.i:                                     ; preds = %for.inc54.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.0192.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc55.i, %for.inc54.i.for.body23.i_crit_edge ]
  %inc55.i = add nuw i32 %i.0192.i, 1
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0192.i, i32 1
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0192.i, ptr %channel.i, align 4
  %scan_index.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0192.i, i32 4
  %20 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %21)
  %cmp25.i = icmp slt i32 %21, 66
  br i1 %cmp25.i, label %if.then26.i, label %for.body23.i.for.inc54.i_crit_edge

for.body23.i.for.inc54.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54.i

if.then26.i:                                      ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, 21
  %sub.i.i = add i32 %21, -22
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i.i)
  %cmp3.i.i = icmp slt i32 %spec.select.i.i, 16
  %..i.i = select i1 %cmp3.i.i, i32 16, i32 32
  %22 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i.i, label %if.then26.i.ams_get_alarm_offset.exit143.i_crit_edge [
    i32 8, label %ams_get_alarm_offset.exit.thread.i
    i32 10, label %ams_get_alarm_offset.exit.thread148.i
    i32 9, label %ams_get_alarm_offset.exit.thread151.i
    i32 14, label %ams_get_alarm_offset.exit.thread154.i
    i32 5, label %ams_get_alarm_offset.exit.thread157.i
    i32 6, label %ams_get_alarm_offset.exit.thread160.i
    i32 7, label %ams_get_alarm_offset.exit.thread163.i
    i32 16, label %ams_get_alarm_offset.exit.thread166.i
    i32 17, label %ams_get_alarm_offset.exit.thread169.i
    i32 18, label %ams_get_alarm_offset.exit.thread172.i
    i32 19, label %ams_get_alarm_offset.exit.thread175.i
    i32 20, label %ams_get_alarm_offset.exit.thread178.i
    i32 21, label %ams_get_alarm_offset.exit.thread181.i
  ]

if.then26.i.ams_get_alarm_offset.exit143.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread.i:               ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i = or i32 %..i.i, 320
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread148.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i.i = or i32 %..i.i, 324
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread151.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i.i = or i32 %..i.i, 328
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread154.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add13.i.i = add nuw nsw i32 %..i.i, 352
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread157.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i.i = add nuw nsw i32 %..i.i, 356
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread160.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i.i = add nuw nsw i32 %..i.i, 360
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread163.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i.i = add nuw nsw i32 %..i.i, 364
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread166.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add21.i.i = or i32 %..i.i, 384
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread169.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i.i = or i32 %..i.i, 388
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread172.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add25.i.i = or i32 %..i.i, 392
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread175.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add27.i.i = or i32 %..i.i, 396
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread178.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i.i = add nuw nsw i32 %..i.i, 400
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit.thread181.i:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  %add31.i.i = add nuw nsw i32 %..i.i, 404
  br label %ams_get_alarm_offset.exit143.i

ams_get_alarm_offset.exit143.i:                   ; preds = %ams_get_alarm_offset.exit.thread181.i, %ams_get_alarm_offset.exit.thread178.i, %ams_get_alarm_offset.exit.thread175.i, %ams_get_alarm_offset.exit.thread172.i, %ams_get_alarm_offset.exit.thread169.i, %ams_get_alarm_offset.exit.thread166.i, %ams_get_alarm_offset.exit.thread163.i, %ams_get_alarm_offset.exit.thread160.i, %ams_get_alarm_offset.exit.thread157.i, %ams_get_alarm_offset.exit.thread154.i, %ams_get_alarm_offset.exit.thread151.i, %ams_get_alarm_offset.exit.thread148.i, %ams_get_alarm_offset.exit.thread.i, %if.then26.i.ams_get_alarm_offset.exit143.i_crit_edge
  %retval.0.i147.i = phi i32 [ %add31.i.i, %ams_get_alarm_offset.exit.thread181.i ], [ %add29.i.i, %ams_get_alarm_offset.exit.thread178.i ], [ %add27.i.i, %ams_get_alarm_offset.exit.thread175.i ], [ %add25.i.i, %ams_get_alarm_offset.exit.thread172.i ], [ %add23.i.i, %ams_get_alarm_offset.exit.thread169.i ], [ %add21.i.i, %ams_get_alarm_offset.exit.thread166.i ], [ %add19.i.i, %ams_get_alarm_offset.exit.thread163.i ], [ %add17.i.i, %ams_get_alarm_offset.exit.thread160.i ], [ %add15.i.i, %ams_get_alarm_offset.exit.thread157.i ], [ %add13.i.i, %ams_get_alarm_offset.exit.thread154.i ], [ %add11.i.i, %ams_get_alarm_offset.exit.thread151.i ], [ %add9.i.i, %ams_get_alarm_offset.exit.thread148.i ], [ %add.i.i, %ams_get_alarm_offset.exit.thread.i ], [ 0, %if.then26.i.ams_get_alarm_offset.exit143.i_crit_edge ]
  %retval.0.i142.i = phi i32 [ 404, %ams_get_alarm_offset.exit.thread181.i ], [ 400, %ams_get_alarm_offset.exit.thread178.i ], [ 396, %ams_get_alarm_offset.exit.thread175.i ], [ 392, %ams_get_alarm_offset.exit.thread172.i ], [ 388, %ams_get_alarm_offset.exit.thread169.i ], [ 384, %ams_get_alarm_offset.exit.thread166.i ], [ 364, %ams_get_alarm_offset.exit.thread163.i ], [ 360, %ams_get_alarm_offset.exit.thread160.i ], [ 356, %ams_get_alarm_offset.exit.thread157.i ], [ 352, %ams_get_alarm_offset.exit.thread154.i ], [ 328, %ams_get_alarm_offset.exit.thread151.i ], [ 324, %ams_get_alarm_offset.exit.thread148.i ], [ 320, %ams_get_alarm_offset.exit.thread.i ], [ 0, %if.then26.i.ams_get_alarm_offset.exit143.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp.i.i, label %do.body.i, label %do.body43.i

do.body.i:                                        ; preds = %ams_get_alarm_offset.exit143.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pl_base.i, align 8
  %add.ptr37.i = getelementptr i8, ptr %24, i32 %retval.0.i147.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pl_base.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %26, i32 %retval.0.i142.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 -65536) #6, !srcloc !70
  br label %for.inc54.i

do.body43.i:                                      ; preds = %ams_get_alarm_offset.exit143.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps_base.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %28, i32 %retval.0.i147.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ps_base.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %30, i32 %retval.0.i142.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 -65536) #6, !srcloc !70
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %do.body43.i, %do.body.i, %for.body23.i.for.inc54.i_crit_edge
  %exitcond.not.i = icmp eq i32 %inc55.i, %num_channels.1.lcssa.i
  br i1 %exitcond.not.i, label %for.inc54.i.for.end56.i_crit_edge, label %for.inc54.i.for.body23.i_crit_edge

for.inc54.i.for.body23.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.i

for.inc54.i.for.end56.i_crit_edge:                ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end56.i

for.end56.i:                                      ; preds = %for.inc54.i.for.end56.i_crit_edge, %for.cond21.preheader.i.for.end56.i_crit_edge
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_channels.1.lcssa.i, i32 88) #6
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %for.end56.i.if.then58_crit_edge, label %if.end61

for.end56.i.if.then58_crit_edge:                  ; preds = %for.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

if.then58:                                        ; preds = %for.end56.i.if.then58_crit_edge, %if.then16.i, %if.then5.i.if.then58_crit_edge, %if.end55.if.then58_crit_edge
  %retval.0.i146.ph = phi i32 [ -12, %for.end56.i.if.then58_crit_edge ], [ %call6.i, %if.then5.i.if.then58_crit_edge ], [ -12, %if.end55.if.then58_crit_edge ], [ %call14.i, %if.then16.i ]
  %call60 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i146.ph, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end61:                                         ; preds = %for.end56.i
  %33 = extractvalue { i32, i1 } %31, 0
  %call61.i = tail call ptr @devm_krealloc(ptr noundef %18, ptr noundef nonnull %call5.i.i.i, i32 noundef %33, i32 noundef 3264) #6
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %34 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call61.i, ptr %channels.i, align 8
  %num_channels65.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %35 = ptrtoint ptr %num_channels65.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %num_channels.1.lcssa.i, ptr %num_channels65.i, align 4
  %call62 = tail call fastcc i32 @ams_init_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end67, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %call66 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call62, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  tail call fastcc void @ams_enable_channel_sequence(ptr noundef nonnull %call)
  %call68 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call.i147 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call68, ptr noundef nonnull @ams_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp74 = icmp slt i32 %call.i147, 0
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i147, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call80 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then75, %if.end67.cleanup_crit_edge, %if.then64, %if.then58, %devm_add_action_or_reset.exit142.cleanup_crit_edge, %devm_add_action_or_reset.exit.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then9 ], [ %8, %if.then17 ], [ %call60, %if.then58 ], [ %call66, %if.then64 ], [ %call77, %if.then75 ], [ %call80, %if.end78 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i135, %devm_add_action_or_reset.exit.cleanup_crit_edge ], [ %call.i138, %devm_add_action_or_reset.exit142.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ams_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ams_unmask_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -176
  %intr_lock = getelementptr i8, ptr %work, i32 -64
  tail call void @_raw_spin_lock_irq(ptr noundef %intr_lock) #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !73
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %current_masked_alarm = getelementptr i8, ptr %work, i32 -16
  %4 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_masked_alarm, align 8
  %6 = xor i32 %3, -1
  %and = and i32 %5, %6
  %intr_mask = getelementptr i8, ptr %work, i32 -8
  %7 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %intr_mask, align 8
  %9 = trunc i64 %8 to i32
  %conv5 = or i32 %and, %9
  %and7 = and i32 %5, %3
  %10 = xor i32 %9, -1
  %conv12 = and i32 %and7, %10
  store i32 %conv12, ptr %current_masked_alarm, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %add.ptr14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #6, !srcloc !70
  %14 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %intr_mask, align 8
  %16 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_masked_alarm, align 8
  %18 = trunc i64 %15 to i32
  %19 = or i32 %17, %18
  %conv6.i = xor i32 %19, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #6
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #6, !srcloc !70
  %23 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %intr_mask, align 8
  %shr.i = lshr i64 %24, 32
  %25 = trunc i64 %shr.i to i32
  %conv25.i = xor i32 %25, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv25.i) #6
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %add.ptr30.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %26) #6, !srcloc !70
  %29 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %intr_mask, align 8
  %31 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %current_masked_alarm, align 8
  %33 = trunc i64 %30 to i32
  %conv35.i = or i32 %32, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv35.i) #6
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %add.ptr40.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %34) #6, !srcloc !70
  %37 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %intr_mask, align 8
  %shr59.i = lshr i64 %38, 32
  %conv60.i = trunc i64 %shr59.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv60.i) #6
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %add.ptr65.i = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %39) #6, !srcloc !70
  tail call void @_raw_spin_unlock_irq(ptr noundef %intr_lock) #6
  %42 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %current_masked_alarm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work, i32 noundef 50) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ams_cancel_delayed_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ams_init_device(ptr nocapture noundef %ams) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_base = getelementptr inbounds %struct.ams, ptr %ams, i32 0, i32 1
  %0 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end57_crit_edge, label %do.body

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #6, !srcloc !70
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 470) #6
  %4 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ams, align 8
  %add.ptr13131 = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13131) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %7 = and i32 %6, 264
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not133 = icmp eq i32 %7, 0
  br i1 %tobool16.not133, label %do.body.land.lhs.true_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then33.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %if.then23, label %if.then33

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ams, align 8
  %add.ptr27 = getelementptr i8, ptr %10, i32 64
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %12 = and i32 %11, 264
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  br label %for.end

if.then33:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #6
  %14 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ams, align 8
  %add.ptr13 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %17 = and i32 %16, 264
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %if.then33.land.lhs.true_crit_edge, label %if.then33.if.end40_crit_edge

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then23, %do.body.for.end_crit_edge
  %and36.pre-phi = phi i32 [ %8, %do.body.for.end_crit_edge ], [ %13, %if.then23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.pre-phi)
  %tobool37.not = icmp eq i32 %and36.pre-phi, 0
  br i1 %tobool37.not, label %for.end.cleanup_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %if.then33.if.end40_crit_edge
  %18 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps_base, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 260
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %21 = and i32 %20, -15728641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %23, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #6, !srcloc !70
  br label %if.end57

if.end57:                                         ; preds = %if.end40, %entry.if.end57_crit_edge
  %pl_base = getelementptr inbounds %struct.ams, ptr %ams, i32 0, i32 2
  %24 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pl_base, align 8
  %tobool58.not = icmp eq ptr %25, null
  br i1 %tobool58.not, label %if.end57.if.end91_crit_edge, label %if.then59

if.end57.if.end91_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then59:                                        ; preds = %if.end57
  %26 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ams, align 8
  %add.ptr63 = getelementptr i8, ptr %27, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp67 = icmp eq i32 %28, 0
  br i1 %cmp67, label %if.then59.cleanup_crit_edge, label %do.body70

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body70:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pl_base, align 8
  %add.ptr74 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 -65536) #6, !srcloc !70
  %31 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pl_base, align 8
  %add.ptr.i124 = getelementptr i8, ptr %32, i32 260
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %34 = and i32 %33, -15728641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pl_base, align 8
  %add.ptr4.i126 = getelementptr i8, ptr %36, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i126, i32 %34) #6, !srcloc !70
  br label %if.end91

if.end91:                                         ; preds = %do.body70, %if.end57.if.end91_crit_edge
  %37 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ps_base, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end91.if.end.i_crit_edge, label %if.then.i

if.end91.if.end.i_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 260
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %40 = or i32 %39, 252641280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps_base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %42, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %40) #6, !srcloc !70
  %43 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ps_base, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %44, i32 268
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %46 = or i32 %45, 1056964608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ps_base, align 4
  %add.ptr4.i13.i = getelementptr i8, ptr %48, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i13.i, i32 %46) #6, !srcloc !70
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end91.if.end.i_crit_edge
  %49 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pl_base, align 8
  %tobool1.not.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i, label %if.end.i.ams_disable_all_alarms.exit_crit_edge, label %if.then2.i

if.end.i.ams_disable_all_alarms.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_disable_all_alarms.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i = getelementptr i8, ptr %50, i32 260
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %52 = or i32 %51, 252641280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pl_base, align 8
  %add.ptr4.i17.i = getelementptr i8, ptr %54, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i17.i, i32 %52) #6, !srcloc !70
  %55 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pl_base, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %56, i32 268
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %58 = or i32 %57, 1056964608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pl_base, align 8
  %add.ptr4.i22.i = getelementptr i8, ptr %60, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i22.i, i32 %58) #6, !srcloc !70
  br label %ams_disable_all_alarms.exit

ams_disable_all_alarms.exit:                      ; preds = %if.then2.i, %if.end.i.ams_disable_all_alarms.exit_crit_edge
  %intr_mask.i = getelementptr inbounds %struct.ams, ptr %ams, i32 0, i32 9
  %61 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %intr_mask.i, align 8
  %current_masked_alarm.i = getelementptr inbounds %struct.ams, ptr %ams, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ams, align 8
  %add.ptr.i129 = getelementptr i8, ptr %63, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 0) #6, !srcloc !70
  %64 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %intr_mask.i, align 8
  %shr.i = lshr i64 %65, 32
  %66 = trunc i64 %shr.i to i32
  %conv25.i = xor i32 %66, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv25.i) #6
  %68 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ams, align 8
  %add.ptr30.i = getelementptr i8, ptr %69, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %67) #6, !srcloc !70
  %70 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %intr_mask.i, align 8
  %72 = ptrtoint ptr %current_masked_alarm.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %current_masked_alarm.i, align 8
  %74 = trunc i64 %71 to i32
  %conv35.i = or i32 %73, %74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %75 = tail call i32 @llvm.bswap.i32(i32 %conv35.i) #6
  %76 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ams, align 8
  %add.ptr40.i = getelementptr i8, ptr %77, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %75) #6, !srcloc !70
  %78 = ptrtoint ptr %intr_mask.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %intr_mask.i, align 8
  %shr59.i = lshr i64 %79, 32
  %conv60.i = trunc i64 %shr59.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %80 = tail call i32 @llvm.bswap.i32(i32 %conv60.i) #6
  %81 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ams, align 8
  %add.ptr65.i = getelementptr i8, ptr %82, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %80) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ams, align 8
  %add.ptr96 = getelementptr i8, ptr %84, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 -1) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %ams to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ams, align 8
  %add.ptr101 = getelementptr i8, ptr %86, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 520093920) #6, !srcloc !70
  br label %cleanup

cleanup:                                          ; preds = %ams_disable_all_alarms.exit, %if.then59.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ams_disable_all_alarms.exit ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.then59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ams_enable_channel_sequence(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp234 = icmp sgt i32 %3, 0
  br i1 %cmp234, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %scan_mask.0236 = phi i64 [ 4194305, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %scan_index = getelementptr %struct.iio_chan_spec, ptr %5, i32 %i.0235, i32 4
  %6 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_index, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %scan_mask.0236
  %inc = add nuw nsw i32 %i.0235, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %extract240 = lshr i64 %or, 44
  %extract.t241 = trunc i64 %extract240 to i32
  %extract238 = lshr i64 %or, 22
  %extract.t239 = trunc i64 %extract238 to i32
  %extract = lshr i64 %or, 14
  %extract.t237 = trunc i64 %extract to i32
  %extract.t = trunc i64 %or to i32
  %phi.bo = and i32 %extract.t239, 65535
  %phi.bo242 = and i32 %extract.t241, 65535
  %phi.bo243 = and i32 %extract.t237, 1056964608
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %scan_mask.0.lcssa.off0 = phi i32 [ 4194305, %entry.for.end_crit_edge ], [ %extract.t, %for.end.loopexit ]
  %scan_mask.0.lcssa.off14 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo243, %for.end.loopexit ]
  %scan_mask.0.lcssa.off22 = phi i32 [ 1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %scan_mask.0.lcssa.off44 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo242, %for.end.loopexit ]
  %ps_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps_base, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %9, i32 260
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %11 = and i32 %10, -15728641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps_base, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #6, !srcloc !70
  %conv = and i32 %scan_mask.0.lcssa.off0, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %15 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps_base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %17 = shl i32 %scan_mask.0.lcssa.off0, 8
  %18 = and i32 %17, 1056964608
  %19 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps_base, align 4
  %add.ptr56 = getelementptr i8, ptr %20, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %18) #6, !srcloc !70
  %21 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ps_base, align 4
  %add.ptr.i223 = getelementptr i8, ptr %22, i32 260
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %24 = and i32 %23, -15728641
  %25 = or i32 %24, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps_base, align 4
  %add.ptr4.i225 = getelementptr i8, ptr %27, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i225, i32 %25) #6, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %pl_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pl_base, align 8
  %tobool73.not = icmp eq ptr %29, null
  br i1 %tobool73.not, label %if.end.if.end197_crit_edge, label %if.then74

if.end.if.end197_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then74:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i226 = getelementptr i8, ptr %29, i32 260
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i226) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %31 = and i32 %30, -15728641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pl_base, align 8
  %add.ptr4.i228 = getelementptr i8, ptr %33, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i228, i32 %31) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %scan_mask.0.lcssa.off22)
  %35 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pl_base, align 8
  %add.ptr132 = getelementptr i8, ptr %36, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %34) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %scan_mask.0.lcssa.off44)
  %38 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pl_base, align 8
  %add.ptr156 = getelementptr i8, ptr %39, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %37) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pl_base, align 8
  %add.ptr180 = getelementptr i8, ptr %41, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 %scan_mask.0.lcssa.off14) #6, !srcloc !70
  %42 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pl_base, align 8
  %add.ptr.i230 = getelementptr i8, ptr %43, i32 260
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %45 = and i32 %44, -15728641
  %46 = or i32 %45, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pl_base, align 8
  %add.ptr4.i233 = getelementptr i8, ptr %48, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i233, i32 %46) #6, !srcloc !70
  br label %if.end197

if.end197:                                        ; preds = %if.then74, %if.end.if.end197_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %events.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %intr_lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %intr_lock) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %intr_mask = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %intr_mask, align 8
  %current_masked_alarm = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_masked_alarm, align 8
  %10 = trunc i64 %7 to i32
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %conv5 = and i32 %5, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool.not = icmp eq i32 %conv5, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %intr_lock) #6
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr8 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %13) #6, !srcloc !70
  %16 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %current_masked_alarm, align 8
  %or10 = or i32 %17, %conv5
  store i32 %or10, ptr %current_masked_alarm, align 8
  %18 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %intr_mask, align 8
  %20 = trunc i64 %19 to i32
  %21 = or i32 %or10, %20
  %conv6.i = xor i32 %21, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #6, !srcloc !70
  %25 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %intr_mask, align 8
  %shr.i = lshr i64 %26, 32
  %27 = trunc i64 %shr.i to i32
  %conv25.i = xor i32 %27, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv25.i) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %add.ptr30.i = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %28) #6, !srcloc !70
  %31 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %intr_mask, align 8
  %33 = ptrtoint ptr %current_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_masked_alarm, align 8
  %35 = trunc i64 %32 to i32
  %conv35.i = or i32 %34, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv35.i) #6
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %add.ptr40.i = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %36) #6, !srcloc !70
  %39 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %intr_mask, align 8
  %shr59.i = lshr i64 %40, 32
  %conv60.i = trunc i64 %shr59.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv60.i) #6
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr65.i = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %41) #6, !srcloc !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events.addr.i)
  %44 = ptrtoint ptr %events.addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv5, ptr %events.addr.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %events.addr.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp4.i = icmp ult i32 %call.i, 32
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %do.body.ams_handle_events.exit_crit_edge

do.body.ams_handle_events.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_handle_events.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %num_channels.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 14
  %channels.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %ams_handle_event.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bit.05.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call1.i, %ams_handle_event.exit.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bit.05.i)
  %cmp.i.i.i = icmp ugt i32 %bit.05.i, 15
  %sub.i.i.i = add nsw i32 %bit.05.i, -16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %sub.i.i.i, i32 %bit.05.i
  %spec.select52.i.i.i = select i1 %cmp.i.i.i, i32 22, i32 0
  %45 = zext i32 %spec.select.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %spec.select.i.i.i, label %for.body.i.sw.epilog.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb3.i.i.i
    i32 3, label %sw.bb5.i.i.i
    i32 4, label %sw.bb7.i.i.i
    i32 5, label %sw.bb9.i.i.i
    i32 6, label %sw.bb11.i.i.i
    i32 8, label %sw.bb13.i.i.i
    i32 9, label %sw.bb15.i.i.i
    i32 10, label %sw.bb17.i.i.i
    i32 11, label %sw.bb19.i.i.i
    i32 12, label %sw.bb21.i.i.i
    i32 13, label %sw.bb23.i.i.i
  ]

for.body.i.sw.epilog.i.i.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i.i = or i32 %spec.select52.i.i.i, 8
  br label %sw.epilog.i.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add2.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 10
  br label %sw.epilog.i.i.i

sw.bb3.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add4.i.i.i = or i32 %spec.select52.i.i.i, 9
  br label %sw.epilog.i.i.i

sw.bb5.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add6.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 14
  br label %sw.epilog.i.i.i

sw.bb7.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add8.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 5
  br label %sw.epilog.i.i.i

sw.bb9.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add10.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 6
  br label %sw.epilog.i.i.i

sw.bb11.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add12.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 7
  br label %sw.epilog.i.i.i

sw.bb13.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add14.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 16
  br label %sw.epilog.i.i.i

sw.bb15.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add16.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 17
  br label %sw.epilog.i.i.i

sw.bb17.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add18.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 18
  br label %sw.epilog.i.i.i

sw.bb19.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add20.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 19
  br label %sw.epilog.i.i.i

sw.bb21.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add22.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 20
  br label %sw.epilog.i.i.i

sw.bb23.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add24.i.i.i = add nuw nsw i32 %spec.select52.i.i.i, 21
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb23.i.i.i, %sw.bb21.i.i.i, %sw.bb19.i.i.i, %sw.bb17.i.i.i, %sw.bb15.i.i.i, %sw.bb13.i.i.i, %sw.bb11.i.i.i, %sw.bb9.i.i.i, %sw.bb7.i.i.i, %sw.bb5.i.i.i, %sw.bb3.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i, %for.body.i.sw.epilog.i.i.i_crit_edge
  %scan_index.1.i.i.i = phi i32 [ %spec.select52.i.i.i, %for.body.i.sw.epilog.i.i.i_crit_edge ], [ %add24.i.i.i, %sw.bb23.i.i.i ], [ %add22.i.i.i, %sw.bb21.i.i.i ], [ %add20.i.i.i, %sw.bb19.i.i.i ], [ %add18.i.i.i, %sw.bb17.i.i.i ], [ %add16.i.i.i, %sw.bb15.i.i.i ], [ %add14.i.i.i, %sw.bb13.i.i.i ], [ %add12.i.i.i, %sw.bb11.i.i.i ], [ %add10.i.i.i, %sw.bb9.i.i.i ], [ %add8.i.i.i, %sw.bb7.i.i.i ], [ %add6.i.i.i, %sw.bb5.i.i.i ], [ %add4.i.i.i, %sw.bb3.i.i.i ], [ %add2.i.i.i, %sw.bb1.i.i.i ], [ %add.i.i.i, %sw.bb.i.i.i ]
  %46 = ptrtoint ptr %num_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp2553.i.i.i = icmp sgt i32 %47, 0
  br i1 %cmp2553.i.i.i, label %for.body.lr.ph.i.i.i, label %sw.epilog.i.i.i.ams_event_to_channel.exit.i.i_crit_edge

sw.epilog.i.i.i.ams_event_to_channel.exit.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_event_to_channel.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.epilog.i.i.i
  %48 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channels.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.054.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %scan_index26.i.i.i = getelementptr %struct.iio_chan_spec, ptr %49, i32 %i.054.i.i.i, i32 4
  %50 = ptrtoint ptr %scan_index26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_index26.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %scan_index.1.i.i.i)
  %cmp27.i.i.i = icmp eq i32 %51, %scan_index.1.i.i.i
  br i1 %cmp27.i.i.i, label %for.body.i.i.i.ams_event_to_channel.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.ams_event_to_channel.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_event_to_channel.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.054.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %47
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.ams_event_to_channel.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.ams_event_to_channel.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_event_to_channel.exit.i.i

ams_event_to_channel.exit.i.i:                    ; preds = %for.inc.i.i.i.ams_event_to_channel.exit.i.i_crit_edge, %for.body.i.i.i.ams_event_to_channel.exit.i.i_crit_edge, %sw.epilog.i.i.i.ams_event_to_channel.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ 0, %sw.epilog.i.i.i.ams_event_to_channel.exit.i.i_crit_edge ], [ %47, %for.inc.i.i.i.ams_event_to_channel.exit.i.i_crit_edge ], [ %i.054.i.i.i, %for.body.i.i.i.ams_event_to_channel.exit.i.i_crit_edge ]
  %52 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channels.i.i.i, align 8
  %arrayidx31.i.i.i = getelementptr %struct.iio_chan_spec, ptr %53, i32 %i.0.lcssa.i.i.i
  %54 = ptrtoint ptr %arrayidx31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx31.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 9
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %ams_event_to_channel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %53, i32 %i.0.lcssa.i.i.i, i32 1
  %56 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channel.i.i, align 4
  %conv4.mask.i.i = and i32 %57, 65535
  %conv5.i.i = zext i32 %conv4.mask.i.i to i64
  br label %ams_handle_event.exit.i

if.else.i.i:                                      ; preds = %ams_event_to_channel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv10.i.i = zext i32 %55 to i64
  %shl11.i.i = shl nuw i64 %conv10.i.i, 32
  %channel15.i.i = getelementptr %struct.iio_chan_spec, ptr %53, i32 %i.0.lcssa.i.i.i, i32 1
  %58 = ptrtoint ptr %channel15.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channel15.i.i, align 4
  %conv16.mask.i.i = and i32 %59, 65535
  %conv17.i.i = zext i32 %conv16.mask.i.i to i64
  br label %ams_handle_event.exit.i

ams_handle_event.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %conv17.sink.i.i = phi i64 [ %conv17.i.i, %if.else.i.i ], [ 281513631416320, %if.then.i.i ]
  %shl11.sink.i.i = phi i64 [ %shl11.i.i, %if.else.i.i ], [ %conv5.i.i, %if.then.i.i ]
  %or18.i.i = or i64 %shl11.sink.i.i, %conv17.sink.i.i
  %call19.i.i = call i64 @iio_get_time_ns(ptr noundef %data) #6
  %call20.i.i = call i32 @iio_push_event(ptr noundef %data, i64 noundef %or18.i.i, i64 noundef %call19.i.i) #6
  %add.i = add i32 %bit.05.i, 1
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %events.addr.i, i32 noundef 32, i32 noundef %add.i) #6
  %cmp.i = icmp ult i32 %call1.i, 32
  br i1 %cmp.i, label %ams_handle_event.exit.i.for.body.i_crit_edge, label %ams_handle_event.exit.i.ams_handle_events.exit_crit_edge

ams_handle_event.exit.i.ams_handle_events.exit_crit_edge: ; preds = %ams_handle_event.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_handle_events.exit

ams_handle_event.exit.i.for.body.i_crit_edge:     ; preds = %ams_handle_event.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ams_handle_events.exit:                           ; preds = %ams_handle_event.exit.i.ams_handle_events.exit_crit_edge, %do.body.ams_handle_events.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events.addr.i)
  %ams_unmask_work = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %60 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %60, ptr noundef %ams_unmask_work, i32 noundef 50) #6
  call void @_raw_spin_unlock(ptr noundef %intr_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %ams_handle_events.exit, %if.then
  %retval.0 = phi i32 [ 1, %ams_handle_events.exit ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %4)
  %cmp = icmp sgt i32 %4, 65
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %7 = add i32 %6, -96
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %9 = icmp ult i32 %8, 16
  br i1 %9, label %switch.hole_check, label %if.then.unlock_mutex_crit_edge

if.then.unlock_mutex_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_mutex

switch.hole_check:                                ; preds = %if.then
  %switch.maskindex = trunc i32 %8 to i16
  %switch.shifted = lshr i16 -31799, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.unlock_mutex_crit_edge, label %switch.lookup

switch.hole_check.unlock_mutex_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_mutex

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.ams_read_raw, i32 0, i32 %8
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ps_base.i.i.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ps_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 260
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %15 = and i32 %14, -15728641
  %16 = or i32 %15, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %ps_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps_base.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %18, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %16) #6, !srcloc !70
  %19 = ptrtoint ptr %ps_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps_base.i.i.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %20, i32 256
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %22 = and i32 %21, -2130706433
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %or.i23.i.i = or i32 %23, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i23.i.i) #6
  %25 = ptrtoint ptr %ps_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ps_base.i.i.i, align 4
  %add.ptr4.i24.i.i = getelementptr i8, ptr %26, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24.i.i, i32 %24) #6, !srcloc !70
  %call1.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call1.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 555) #6
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %add.ptr64.i = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %30 = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not66.i = icmp eq i32 %30, 0
  br i1 %tobool13.not66.i, label %switch.lookup.land.lhs.true.i_crit_edge, label %switch.lookup.if.end_crit_edge

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup.land.lhs.true.i_crit_edge:          ; preds = %switch.lookup
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then30.i.land.lhs.true.i_crit_edge, %switch.lookup.land.lhs.true.i_crit_edge
  %call17.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %32, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %34 = and i32 %33, 134217728
  %tobool13.not.i = icmp eq i32 %34, 0
  br i1 %tobool13.not.i, label %if.then30.i.land.lhs.true.i_crit_edge, label %if.then30.i.if.end_crit_edge

if.then30.i.if.end_crit_edge:                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then30.i.land.lhs.true.i_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %add.ptr24.i = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %38 = and i32 %37, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool34.not.i = icmp eq i32 %38, 0
  br i1 %tobool34.not.i, label %for.end.i.unlock_mutex_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end.i.unlock_mutex_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_mutex

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then30.i.if.end_crit_edge, %switch.lookup.if.end_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %add.ptr41.i = getelementptr i8, ptr %40, i32 %6
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #6, !srcloc !73
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  tail call fastcc void @ams_enable_channel_sequence(ptr noundef %indio_dev)
  br label %unlock_mutex

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp4 = icmp sgt i32 %4, 21
  br i1 %cmp4, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pl_base, align 8
  %address6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %46 = ptrtoint ptr %address6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %address6, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val, align 4
  br label %unlock_mutex

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ps_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ps_base, align 4
  %address12 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %53 = ptrtoint ptr %address12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %address12, align 4
  %add.ptr13 = getelementptr i8, ptr %52, i32 %54
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !73
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val, align 4
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %if.else9, %if.then5, %if.end, %for.end.i.unlock_mutex_crit_edge, %switch.hole_check.unlock_mutex_crit_edge, %if.then.unlock_mutex_crit_edge
  %ret.0 = phi i32 [ 1, %if.then5 ], [ 1, %if.else9 ], [ 1, %if.end ], [ -22, %if.then.unlock_mutex_crit_edge ], [ -110, %for.end.i.unlock_mutex_crit_edge ], [ -22, %switch.hole_check.unlock_mutex_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %58 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chan, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %59, label %sw.bb20.cleanup_crit_edge [
    i32 0, label %sw.bb21
    i32 9, label %sw.bb40
  ]

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb20
  %scan_index22 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %61 = ptrtoint ptr %scan_index22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %scan_index22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %62)
  %cmp23 = icmp slt i32 %62, 22
  br i1 %cmp23, label %if.then24, label %land.lhs.true

if.then24:                                        ; preds = %sw.bb21
  %address25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %63 = ptrtoint ptr %address25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %address25, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %64, label %sw.default.i [
    i32 4, label %if.then24.if.end39_crit_edge
    i32 8, label %if.then24.if.end39_crit_edge82
    i32 24, label %if.then24.if.end39_crit_edge83
    i32 52, label %if.then24.if.end39_crit_edge84
    i32 520, label %if.then24.if.end39_crit_edge85
    i32 524, label %if.then24.if.end39_crit_edge86
    i32 528, label %if.then24.if.end39_crit_edge87
    i32 56, label %if.then24.sw.bb1.i_crit_edge
    i32 60, label %if.then24.sw.bb1.i_crit_edge88
    i32 512, label %if.then24.sw.bb1.i_crit_edge89
    i32 516, label %if.then24.sw.bb1.i_crit_edge90
  ]

if.then24.sw.bb1.i_crit_edge90:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.then24.sw.bb1.i_crit_edge89:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.then24.sw.bb1.i_crit_edge88:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.then24.sw.bb1.i_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.then24.if.end39_crit_edge87:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.if.end39_crit_edge86:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.if.end39_crit_edge85:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.if.end39_crit_edge84:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.if.end39_crit_edge83:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.if.end39_crit_edge82:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.bb1.i:                                         ; preds = %if.then24.sw.bb1.i_crit_edge, %if.then24.sw.bb1.i_crit_edge88, %if.then24.sw.bb1.i_crit_edge89, %if.then24.sw.bb1.i_crit_edge90
  br label %if.end39

sw.default.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %62)
  %cmp31 = icmp ult i32 %62, 66
  %address33 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %66 = ptrtoint ptr %address33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %address33, align 4
  br i1 %cmp31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %land.lhs.true
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %67, label %sw.default.i73 [
    i32 4, label %if.then32.if.end39_crit_edge
    i32 8, label %if.then32.if.end39_crit_edge91
    i32 24, label %if.then32.if.end39_crit_edge92
    i32 52, label %if.then32.if.end39_crit_edge93
    i32 56, label %if.then32.if.end39_crit_edge94
    i32 60, label %if.then32.if.end39_crit_edge95
    i32 528, label %if.then32.if.end39_crit_edge96
    i32 16, label %if.then32.if.end39_crit_edge97
    i32 20, label %if.then32.if.end39_crit_edge98
    i32 512, label %sw.bb1.i72
    i32 516, label %sw.bb16.i
    i32 520, label %sw.bb46.i
    i32 524, label %sw.bb76.i
    i32 12, label %if.then32.sw.bb107.i_crit_edge
    i32 64, label %if.then32.sw.bb107.i_crit_edge99
    i32 65, label %if.then32.sw.bb107.i_crit_edge100
    i32 66, label %if.then32.sw.bb107.i_crit_edge101
    i32 67, label %if.then32.sw.bb107.i_crit_edge102
    i32 68, label %if.then32.sw.bb107.i_crit_edge103
    i32 69, label %if.then32.sw.bb107.i_crit_edge104
    i32 70, label %if.then32.sw.bb107.i_crit_edge105
    i32 71, label %if.then32.sw.bb107.i_crit_edge106
    i32 72, label %if.then32.sw.bb107.i_crit_edge107
    i32 73, label %if.then32.sw.bb107.i_crit_edge108
    i32 74, label %if.then32.sw.bb107.i_crit_edge109
    i32 75, label %if.then32.sw.bb107.i_crit_edge110
    i32 76, label %if.then32.sw.bb107.i_crit_edge111
    i32 77, label %if.then32.sw.bb107.i_crit_edge112
    i32 78, label %if.then32.sw.bb107.i_crit_edge113
    i32 79, label %if.then32.sw.bb107.i_crit_edge114
    i32 80, label %if.then32.sw.bb107.i_crit_edge115
    i32 81, label %if.then32.sw.bb107.i_crit_edge116
    i32 82, label %if.then32.sw.bb107.i_crit_edge117
    i32 83, label %if.then32.sw.bb107.i_crit_edge118
    i32 84, label %if.then32.sw.bb107.i_crit_edge119
    i32 85, label %if.then32.sw.bb107.i_crit_edge120
    i32 86, label %if.then32.sw.bb107.i_crit_edge121
    i32 87, label %if.then32.sw.bb107.i_crit_edge122
    i32 88, label %if.then32.sw.bb107.i_crit_edge123
    i32 89, label %if.then32.sw.bb107.i_crit_edge124
    i32 90, label %if.then32.sw.bb107.i_crit_edge125
    i32 91, label %if.then32.sw.bb107.i_crit_edge126
    i32 92, label %if.then32.sw.bb107.i_crit_edge127
    i32 93, label %if.then32.sw.bb107.i_crit_edge128
    i32 94, label %if.then32.sw.bb107.i_crit_edge129
    i32 95, label %if.then32.sw.bb107.i_crit_edge130
    i32 96, label %if.then32.sw.bb107.i_crit_edge131
    i32 97, label %if.then32.sw.bb107.i_crit_edge132
    i32 98, label %if.then32.sw.bb107.i_crit_edge133
    i32 99, label %if.then32.sw.bb107.i_crit_edge134
    i32 100, label %if.then32.sw.bb107.i_crit_edge135
    i32 101, label %if.then32.sw.bb107.i_crit_edge136
    i32 102, label %if.then32.sw.bb107.i_crit_edge137
    i32 103, label %if.then32.sw.bb107.i_crit_edge138
    i32 104, label %if.then32.sw.bb107.i_crit_edge139
    i32 105, label %if.then32.sw.bb107.i_crit_edge140
    i32 106, label %if.then32.sw.bb107.i_crit_edge141
    i32 107, label %if.then32.sw.bb107.i_crit_edge142
    i32 108, label %if.then32.sw.bb107.i_crit_edge143
    i32 109, label %if.then32.sw.bb107.i_crit_edge144
    i32 110, label %if.then32.sw.bb107.i_crit_edge145
    i32 111, label %if.then32.sw.bb107.i_crit_edge146
    i32 112, label %if.then32.sw.bb107.i_crit_edge147
    i32 113, label %if.then32.sw.bb107.i_crit_edge148
    i32 114, label %if.then32.sw.bb107.i_crit_edge149
    i32 115, label %if.then32.sw.bb107.i_crit_edge150
    i32 116, label %if.then32.sw.bb107.i_crit_edge151
    i32 117, label %if.then32.sw.bb107.i_crit_edge152
    i32 118, label %if.then32.sw.bb107.i_crit_edge153
    i32 119, label %if.then32.sw.bb107.i_crit_edge154
    i32 120, label %if.then32.sw.bb107.i_crit_edge155
    i32 121, label %if.then32.sw.bb107.i_crit_edge156
    i32 122, label %if.then32.sw.bb107.i_crit_edge157
    i32 123, label %if.then32.sw.bb107.i_crit_edge158
    i32 124, label %if.then32.sw.bb107.i_crit_edge159
  ]

if.then32.sw.bb107.i_crit_edge159:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge158:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge157:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge156:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge155:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge154:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge153:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge152:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge151:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge150:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge149:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge148:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge147:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge146:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge145:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge144:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge143:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge142:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge141:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge140:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge139:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge138:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge137:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge136:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge135:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge134:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge133:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge132:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge131:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge130:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge129:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge128:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge127:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge126:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge125:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge124:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge123:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge122:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge121:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge120:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge119:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge118:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge117:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge116:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge115:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge114:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge113:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge112:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge111:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge110:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge109:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge108:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge107:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge106:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge105:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge104:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge103:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge102:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge101:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge100:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge99:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.sw.bb107.i_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.then32.if.end39_crit_edge98:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge97:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge96:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge95:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge94:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge93:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge92:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge91:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.bb1.i72:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pl_base.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %70, i32 272
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %72 = and i32 %71, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  %..i = select i1 %tobool.not.i, i32 3000, i32 6000
  br label %if.end39

sw.bb16.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base19.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %pl_base19.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pl_base19.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %74, i32 272
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %76 = and i32 %75, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool42.not.i = icmp eq i32 %76, 0
  %.114.i = select i1 %tobool42.not.i, i32 3000, i32 6000
  br label %if.end39

sw.bb46.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base49.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %pl_base49.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pl_base49.i, align 8
  %add.ptr50.i = getelementptr i8, ptr %78, i32 272
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %80 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool72.not.i = icmp eq i32 %80, 0
  %.115.i = select i1 %tobool72.not.i, i32 3000, i32 6000
  br label %if.end39

sw.bb76.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base79.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %pl_base79.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pl_base79.i, align 8
  %add.ptr80.i = getelementptr i8, ptr %82, i32 272
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %84 = and i32 %83, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool102.not.i = icmp eq i32 %84, 0
  %.116.i = select i1 %tobool102.not.i, i32 3000, i32 6000
  br label %if.end39

sw.bb107.i:                                       ; preds = %if.then32.sw.bb107.i_crit_edge, %if.then32.sw.bb107.i_crit_edge99, %if.then32.sw.bb107.i_crit_edge100, %if.then32.sw.bb107.i_crit_edge101, %if.then32.sw.bb107.i_crit_edge102, %if.then32.sw.bb107.i_crit_edge103, %if.then32.sw.bb107.i_crit_edge104, %if.then32.sw.bb107.i_crit_edge105, %if.then32.sw.bb107.i_crit_edge106, %if.then32.sw.bb107.i_crit_edge107, %if.then32.sw.bb107.i_crit_edge108, %if.then32.sw.bb107.i_crit_edge109, %if.then32.sw.bb107.i_crit_edge110, %if.then32.sw.bb107.i_crit_edge111, %if.then32.sw.bb107.i_crit_edge112, %if.then32.sw.bb107.i_crit_edge113, %if.then32.sw.bb107.i_crit_edge114, %if.then32.sw.bb107.i_crit_edge115, %if.then32.sw.bb107.i_crit_edge116, %if.then32.sw.bb107.i_crit_edge117, %if.then32.sw.bb107.i_crit_edge118, %if.then32.sw.bb107.i_crit_edge119, %if.then32.sw.bb107.i_crit_edge120, %if.then32.sw.bb107.i_crit_edge121, %if.then32.sw.bb107.i_crit_edge122, %if.then32.sw.bb107.i_crit_edge123, %if.then32.sw.bb107.i_crit_edge124, %if.then32.sw.bb107.i_crit_edge125, %if.then32.sw.bb107.i_crit_edge126, %if.then32.sw.bb107.i_crit_edge127, %if.then32.sw.bb107.i_crit_edge128, %if.then32.sw.bb107.i_crit_edge129, %if.then32.sw.bb107.i_crit_edge130, %if.then32.sw.bb107.i_crit_edge131, %if.then32.sw.bb107.i_crit_edge132, %if.then32.sw.bb107.i_crit_edge133, %if.then32.sw.bb107.i_crit_edge134, %if.then32.sw.bb107.i_crit_edge135, %if.then32.sw.bb107.i_crit_edge136, %if.then32.sw.bb107.i_crit_edge137, %if.then32.sw.bb107.i_crit_edge138, %if.then32.sw.bb107.i_crit_edge139, %if.then32.sw.bb107.i_crit_edge140, %if.then32.sw.bb107.i_crit_edge141, %if.then32.sw.bb107.i_crit_edge142, %if.then32.sw.bb107.i_crit_edge143, %if.then32.sw.bb107.i_crit_edge144, %if.then32.sw.bb107.i_crit_edge145, %if.then32.sw.bb107.i_crit_edge146, %if.then32.sw.bb107.i_crit_edge147, %if.then32.sw.bb107.i_crit_edge148, %if.then32.sw.bb107.i_crit_edge149, %if.then32.sw.bb107.i_crit_edge150, %if.then32.sw.bb107.i_crit_edge151, %if.then32.sw.bb107.i_crit_edge152, %if.then32.sw.bb107.i_crit_edge153, %if.then32.sw.bb107.i_crit_edge154, %if.then32.sw.bb107.i_crit_edge155, %if.then32.sw.bb107.i_crit_edge156, %if.then32.sw.bb107.i_crit_edge157, %if.then32.sw.bb107.i_crit_edge158, %if.then32.sw.bb107.i_crit_edge159
  br label %if.end39

sw.default.i73:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.else35:                                        ; preds = %land.lhs.true
  %85 = add i32 %67, -96
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %86)
  %87 = icmp ult i32 %86, 16
  br i1 %87, label %switch.lookup79, label %if.else35.if.end39_crit_edge

if.else35.if.end39_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

switch.lookup79:                                  ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep80 = getelementptr inbounds [16 x i32], ptr @switch.table.ams_read_raw.19, i32 0, i32 %86
  %88 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load81 = load i32, ptr %switch.gep80, align 4
  br label %if.end39

if.end39:                                         ; preds = %switch.lookup79, %if.else35.if.end39_crit_edge, %sw.default.i73, %sw.bb107.i, %sw.bb76.i, %sw.bb46.i, %sw.bb16.i, %sw.bb1.i72, %if.then32.if.end39_crit_edge, %if.then32.if.end39_crit_edge91, %if.then32.if.end39_crit_edge92, %if.then32.if.end39_crit_edge93, %if.then32.if.end39_crit_edge94, %if.then32.if.end39_crit_edge95, %if.then32.if.end39_crit_edge96, %if.then32.if.end39_crit_edge97, %if.then32.if.end39_crit_edge98, %sw.default.i, %sw.bb1.i, %if.then24.if.end39_crit_edge, %if.then24.if.end39_crit_edge82, %if.then24.if.end39_crit_edge83, %if.then24.if.end39_crit_edge84, %if.then24.if.end39_crit_edge85, %if.then24.if.end39_crit_edge86, %if.then24.if.end39_crit_edge87
  %val.0.i74.sink = phi i32 [ 1000, %sw.default.i ], [ 6000, %sw.bb1.i ], [ 3000, %if.then24.if.end39_crit_edge ], [ 3000, %if.then24.if.end39_crit_edge82 ], [ 3000, %if.then24.if.end39_crit_edge83 ], [ 3000, %if.then24.if.end39_crit_edge84 ], [ 3000, %if.then24.if.end39_crit_edge85 ], [ 3000, %if.then24.if.end39_crit_edge86 ], [ 3000, %if.then24.if.end39_crit_edge87 ], [ 1000, %sw.default.i73 ], [ 1000, %sw.bb107.i ], [ 3000, %if.then32.if.end39_crit_edge ], [ 3000, %if.then32.if.end39_crit_edge91 ], [ 3000, %if.then32.if.end39_crit_edge92 ], [ 3000, %if.then32.if.end39_crit_edge93 ], [ 3000, %if.then32.if.end39_crit_edge94 ], [ 3000, %if.then32.if.end39_crit_edge95 ], [ 3000, %if.then32.if.end39_crit_edge96 ], [ 3000, %if.then32.if.end39_crit_edge97 ], [ 3000, %if.then32.if.end39_crit_edge98 ], [ %..i, %sw.bb1.i72 ], [ %.114.i, %sw.bb16.i ], [ %.115.i, %sw.bb46.i ], [ %.116.i, %sw.bb76.i ], [ %switch.load81, %switch.lookup79 ], [ 1000, %if.else35.if.end39_crit_edge ]
  %89 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %val.0.i74.sink, ptr %val, align 4
  %90 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 16, ptr %val2, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 509314, ptr %val, align 4
  %92 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 16, ptr %val2, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -36058, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb41, %sw.bb40, %if.end39, %sw.bb20.cleanup_crit_edge, %unlock_mutex, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb41 ], [ 11, %sw.bb40 ], [ 11, %if.end39 ], [ %ret.0, %unlock_mutex ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ams_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %alarm_mask = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_mask, align 4
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp.i = icmp sgt i32 %5, 21
  %sub.i = add i32 %5, -22
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %5
  %spec.select51.i = select i1 %cmp.i, i32 16, i32 0
  %6 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %spec.select.i, label %entry.ams_get_alarm_mask.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 10, label %sw.bb1.i
    i32 9, label %sw.bb4.i
    i32 14, label %sw.bb7.i
    i32 5, label %sw.bb10.i
    i32 6, label %sw.bb13.i
    i32 7, label %sw.bb16.i
    i32 16, label %sw.bb19.i
    i32 17, label %sw.bb22.i
    i32 18, label %sw.bb25.i
    i32 19, label %sw.bb28.i
    i32 20, label %sw.bb31.i
    i32 21, label %sw.bb34.i
  ]

entry.ams_get_alarm_mask.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_alarm_mask.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 1, %spec.select51.i
  br label %ams_get_alarm_mask.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add2.i = or i32 %spec.select51.i, 1
  %shl3.i = shl nuw i32 1, %add2.i
  br label %ams_get_alarm_mask.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i = or i32 %spec.select51.i, 2
  %shl6.i = shl nuw i32 1, %add5.i
  br label %ams_get_alarm_mask.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add8.i = or i32 %spec.select51.i, 3
  %shl9.i = shl nuw i32 1, %add8.i
  br label %ams_get_alarm_mask.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i = or i32 %spec.select51.i, 4
  %shl12.i = shl nuw i32 1, %add11.i
  br label %ams_get_alarm_mask.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add14.i = or i32 %spec.select51.i, 5
  %shl15.i = shl nuw i32 1, %add14.i
  br label %ams_get_alarm_mask.exit

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i = or i32 %spec.select51.i, 6
  %shl18.i = shl nuw i32 1, %add17.i
  br label %ams_get_alarm_mask.exit

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add20.i = or i32 %spec.select51.i, 8
  %shl21.i = shl nuw i32 1, %add20.i
  br label %ams_get_alarm_mask.exit

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = or i32 %spec.select51.i, 9
  %shl24.i = shl nuw i32 1, %add23.i
  br label %ams_get_alarm_mask.exit

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add26.i = or i32 %spec.select51.i, 10
  %shl27.i = shl nuw i32 1, %add26.i
  br label %ams_get_alarm_mask.exit

sw.bb28.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i = or i32 %spec.select51.i, 11
  %shl30.i = shl nuw i32 1, %add29.i
  br label %ams_get_alarm_mask.exit

sw.bb31.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add32.i = or i32 %spec.select51.i, 12
  %shl33.i = shl nuw i32 1, %add32.i
  br label %ams_get_alarm_mask.exit

sw.bb34.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add35.i = or i32 %spec.select51.i, 13
  %shl36.i = shl nuw i32 1, %add35.i
  br label %ams_get_alarm_mask.exit

ams_get_alarm_mask.exit:                          ; preds = %sw.bb34.i, %sw.bb31.i, %sw.bb28.i, %sw.bb25.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.ams_get_alarm_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %shl36.i, %sw.bb34.i ], [ %shl33.i, %sw.bb31.i ], [ %shl30.i, %sw.bb28.i ], [ %shl27.i, %sw.bb25.i ], [ %shl24.i, %sw.bb22.i ], [ %shl21.i, %sw.bb19.i ], [ %shl18.i, %sw.bb16.i ], [ %shl15.i, %sw.bb13.i ], [ %shl12.i, %sw.bb10.i ], [ %shl9.i, %sw.bb7.i ], [ %shl6.i, %sw.bb4.i ], [ %shl3.i, %sw.bb1.i ], [ %shl.i, %sw.bb.i ], [ 0, %entry.ams_get_alarm_mask.exit_crit_edge ]
  %and = and i32 %retval.0.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %3)
  %cmp.i = icmp sgt i32 %3, 21
  %sub.i = add i32 %3, -22
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %3
  %spec.select51.i = select i1 %cmp.i, i32 16, i32 0
  %4 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %spec.select.i, label %entry.ams_get_alarm_mask.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 10, label %sw.bb1.i
    i32 9, label %sw.bb4.i
    i32 14, label %sw.bb7.i
    i32 5, label %sw.bb10.i
    i32 6, label %sw.bb13.i
    i32 7, label %sw.bb16.i
    i32 16, label %sw.bb19.i
    i32 17, label %sw.bb22.i
    i32 18, label %sw.bb25.i
    i32 19, label %sw.bb28.i
    i32 20, label %sw.bb31.i
    i32 21, label %sw.bb34.i
  ]

entry.ams_get_alarm_mask.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_alarm_mask.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 1, %spec.select51.i
  br label %ams_get_alarm_mask.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add2.i = or i32 %spec.select51.i, 1
  %shl3.i = shl nuw i32 1, %add2.i
  br label %ams_get_alarm_mask.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add5.i = or i32 %spec.select51.i, 2
  %shl6.i = shl nuw i32 1, %add5.i
  br label %ams_get_alarm_mask.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add8.i = or i32 %spec.select51.i, 3
  %shl9.i = shl nuw i32 1, %add8.i
  br label %ams_get_alarm_mask.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i = or i32 %spec.select51.i, 4
  %shl12.i = shl nuw i32 1, %add11.i
  br label %ams_get_alarm_mask.exit

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add14.i = or i32 %spec.select51.i, 5
  %shl15.i = shl nuw i32 1, %add14.i
  br label %ams_get_alarm_mask.exit

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i = or i32 %spec.select51.i, 6
  %shl18.i = shl nuw i32 1, %add17.i
  br label %ams_get_alarm_mask.exit

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add20.i = or i32 %spec.select51.i, 8
  %shl21.i = shl nuw i32 1, %add20.i
  br label %ams_get_alarm_mask.exit

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = or i32 %spec.select51.i, 9
  %shl24.i = shl nuw i32 1, %add23.i
  br label %ams_get_alarm_mask.exit

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add26.i = or i32 %spec.select51.i, 10
  %shl27.i = shl nuw i32 1, %add26.i
  br label %ams_get_alarm_mask.exit

sw.bb28.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i = or i32 %spec.select51.i, 11
  %shl30.i = shl nuw i32 1, %add29.i
  br label %ams_get_alarm_mask.exit

sw.bb31.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add32.i = or i32 %spec.select51.i, 12
  %shl33.i = shl nuw i32 1, %add32.i
  br label %ams_get_alarm_mask.exit

sw.bb34.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add35.i = or i32 %spec.select51.i, 13
  %shl36.i = shl nuw i32 1, %add35.i
  br label %ams_get_alarm_mask.exit

ams_get_alarm_mask.exit:                          ; preds = %sw.bb34.i, %sw.bb31.i, %sw.bb28.i, %sw.bb25.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.ams_get_alarm_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %shl36.i, %sw.bb34.i ], [ %shl33.i, %sw.bb31.i ], [ %shl30.i, %sw.bb28.i ], [ %shl27.i, %sw.bb25.i ], [ %shl24.i, %sw.bb22.i ], [ %shl21.i, %sw.bb19.i ], [ %shl18.i, %sw.bb16.i ], [ %shl15.i, %sw.bb13.i ], [ %shl12.i, %sw.bb10.i ], [ %shl9.i, %sw.bb7.i ], [ %shl6.i, %sw.bb4.i ], [ %shl3.i, %sw.bb1.i ], [ %shl.i, %sw.bb.i ], [ 0, %entry.ams_get_alarm_mask.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ams_get_alarm_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_mask = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_mask, align 4
  %or = or i32 %6, %retval.0.i
  store i32 %or, ptr %alarm_mask, align 4
  br label %if.end

if.else:                                          ; preds = %ams_get_alarm_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %retval.0.i, -1
  %alarm_mask2 = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %alarm_mask2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alarm_mask2, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %alarm_mask2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %alarm_mask3 = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %alarm_mask3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarm_mask3, align 4
  %ps_base.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps_base.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i = shl i32 %10, 1
  %shl.i.i = and i32 %and.i.i, 14
  %13 = shl i32 %10, 5
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 260
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %15 = and i32 %14, -252641281
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %.masked.i.i = and i32 %13, 3840
  %and74.i.i = or i32 %shl.i.i, %.masked.i.i
  %17 = or i32 %and74.i.i, %16
  %or.i.i.i = xor i32 %17, 3855
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  %19 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps_base.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %20, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %18) #6, !srcloc !70
  %and91.i.i = lshr i32 %10, 8
  %21 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ps_base.i, align 4
  %add.ptr.i132.i.i = getelementptr i8, ptr %22, i32 268
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %24 = and i32 %23, -1056964609
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %neg117.i.i = and i32 %and91.i.i, 63
  %26 = or i32 %25, %neg117.i.i
  %or.i135.i.i = xor i32 %26, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i135.i.i) #6
  %28 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ps_base.i, align 4
  %add.ptr4.i136.i.i = getelementptr i8, ptr %29, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i136.i.i, i32 %27) #6, !srcloc !70
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %pl_base.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pl_base.i, align 8
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %if.end.i.ams_update_alarm.exit_crit_edge, label %if.then2.i

if.end.i.ams_update_alarm.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_update_alarm.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = lshr i32 %10, 15
  %and48.i.i = and i32 %32, 14
  %33 = lshr i32 %10, 11
  %and90.i.i = and i32 %33, 3840
  %34 = or i32 %and90.i.i, %and48.i.i
  %add.ptr.i.i18.i = getelementptr i8, ptr %31, i32 260
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %36 = and i32 %35, -252641281
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %38 = or i32 %34, %37
  %or.i.i19.i = xor i32 %38, 3855
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.i) #6
  %40 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pl_base.i, align 8
  %add.ptr4.i.i20.i = getelementptr i8, ptr %41, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i20.i, i32 %39) #6, !srcloc !70
  %and109.i.i = lshr i32 %10, 24
  %42 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pl_base.i, align 8
  %add.ptr.i150.i.i = getelementptr i8, ptr %43, i32 268
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.i.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %45 = and i32 %44, -1056964609
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %neg135.i.i = and i32 %and109.i.i, 63
  %47 = or i32 %46, %neg135.i.i
  %or.i153.i.i = xor i32 %47, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i153.i.i) #6
  %49 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pl_base.i, align 8
  %add.ptr4.i154.i.i = getelementptr i8, ptr %50, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i154.i.i, i32 %48) #6, !srcloc !70
  br label %ams_update_alarm.exit

ams_update_alarm.exit:                            ; preds = %if.then2.i, %if.end.i.ams_update_alarm.exit_crit_edge
  %intr_lock.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 6
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock.i) #6
  %neg.i = xor i32 %10, -1
  %conv8.i = zext i32 %neg.i to i64
  %intr_mask.i.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %intr_mask.i.i, align 8
  %and.i21.i = and i64 %52, -4294967296
  %or.i.i = or i64 %and.i21.i, %conv8.i
  store i64 %or.i.i, ptr %intr_mask.i.i, align 8
  %current_masked_alarm.i.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %current_masked_alarm.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %current_masked_alarm.i.i, align 8
  %.not.i = xor i32 %54, -1
  %conv6.i.i = and i32 %10, %.not.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i) #6
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %55) #6, !srcloc !70
  %58 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %intr_mask.i.i, align 8
  %shr.i.i = lshr i64 %59, 32
  %60 = trunc i64 %shr.i.i to i32
  %conv25.i.i = xor i32 %60, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv25.i.i) #6
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %add.ptr30.i.i = getelementptr i8, ptr %63, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %61) #6, !srcloc !70
  %64 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %intr_mask.i.i, align 8
  %66 = ptrtoint ptr %current_masked_alarm.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %current_masked_alarm.i.i, align 8
  %68 = trunc i64 %65 to i32
  %conv35.i.i = or i32 %67, %68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %conv35.i.i) #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %add.ptr40.i.i = getelementptr i8, ptr %71, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i.i, i32 %69) #6, !srcloc !70
  %72 = ptrtoint ptr %intr_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %intr_mask.i.i, align 8
  %shr59.i.i = lshr i64 %73, 32
  %conv60.i.i = trunc i64 %shr59.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %conv60.i.i) #6
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %add.ptr65.i.i = getelementptr i8, ptr %76, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i.i, i32 %74) #6, !srcloc !70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock.i, i32 noundef %call5.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %3)
  %cmp.i = icmp sgt i32 %3, 21
  %sub.i = add i32 %3, -22
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp1.i = icmp eq i32 %dir, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i)
  %cmp3.i = icmp slt i32 %spec.select.i, 16
  %..i = select i1 %cmp3.i, i32 16, i32 32
  %offset.0.i = select i1 %cmp1.i, i32 %..i, i32 0
  %4 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %spec.select.i, label %entry.ams_get_alarm_offset.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 10, label %sw.bb8.i
    i32 9, label %sw.bb10.i
    i32 14, label %sw.bb12.i
    i32 5, label %sw.bb14.i
    i32 6, label %sw.bb16.i
    i32 7, label %sw.bb18.i
    i32 16, label %sw.bb20.i
    i32 17, label %sw.bb22.i
    i32 18, label %sw.bb24.i
    i32 19, label %sw.bb26.i
    i32 20, label %sw.bb28.i
    i32 21, label %sw.bb30.i
  ]

entry.ams_get_alarm_offset.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_alarm_offset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = or i32 %offset.0.i, 320
  br label %ams_get_alarm_offset.exit

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i = or i32 %offset.0.i, 324
  br label %ams_get_alarm_offset.exit

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i = or i32 %offset.0.i, 328
  br label %ams_get_alarm_offset.exit

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add13.i = add nuw nsw i32 %offset.0.i, 352
  br label %ams_get_alarm_offset.exit

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i = add nuw nsw i32 %offset.0.i, 356
  br label %ams_get_alarm_offset.exit

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i = add nuw nsw i32 %offset.0.i, 360
  br label %ams_get_alarm_offset.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i = add nuw nsw i32 %offset.0.i, 364
  br label %ams_get_alarm_offset.exit

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add21.i = or i32 %offset.0.i, 384
  br label %ams_get_alarm_offset.exit

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = or i32 %offset.0.i, 388
  br label %ams_get_alarm_offset.exit

sw.bb24.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add25.i = or i32 %offset.0.i, 392
  br label %ams_get_alarm_offset.exit

sw.bb26.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add27.i = or i32 %offset.0.i, 396
  br label %ams_get_alarm_offset.exit

sw.bb28.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i = add nuw nsw i32 %offset.0.i, 400
  br label %ams_get_alarm_offset.exit

sw.bb30.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add31.i = add nuw nsw i32 %offset.0.i, 404
  br label %ams_get_alarm_offset.exit

ams_get_alarm_offset.exit:                        ; preds = %sw.bb30.i, %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %sw.bb.i, %entry.ams_get_alarm_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add31.i, %sw.bb30.i ], [ %add29.i, %sw.bb28.i ], [ %add27.i, %sw.bb26.i ], [ %add25.i, %sw.bb24.i ], [ %add23.i, %sw.bb22.i ], [ %add21.i, %sw.bb20.i ], [ %add19.i, %sw.bb18.i ], [ %add17.i, %sw.bb16.i ], [ %add15.i, %sw.bb14.i ], [ %add13.i, %sw.bb12.i ], [ %add11.i, %sw.bb10.i ], [ %add9.i, %sw.bb8.i ], [ %add.i, %sw.bb.i ], [ 0, %entry.ams_get_alarm_offset.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %6)
  %cmp = icmp sgt i32 %6, 21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ams_get_alarm_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pl_base, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %retval.0.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  br label %if.end

if.else:                                          ; preds = %ams_get_alarm_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ps_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps_base, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 %retval.0.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !73
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %14, %if.else ], [ %10, %if.then ]
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %5)
  %cmp.i = icmp sgt i32 %5, 21
  %sub.i = add i32 %5, -22
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i)
  %cmp3.i = icmp slt i32 %spec.select.i, 16
  %..i = select i1 %cmp3.i, i32 16, i32 32
  %6 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %spec.select.i, label %if.then.ams_get_alarm_offset.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 10, label %sw.bb8.i
    i32 9, label %sw.bb10.i
    i32 14, label %sw.bb12.i
    i32 5, label %sw.bb14.i
    i32 6, label %sw.bb16.i
    i32 7, label %sw.bb18.i
    i32 16, label %sw.bb20.i
    i32 17, label %sw.bb22.i
    i32 18, label %sw.bb24.i
    i32 19, label %sw.bb26.i
    i32 20, label %sw.bb28.i
    i32 21, label %sw.bb30.i
  ]

if.then.ams_get_alarm_offset.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_alarm_offset.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = or i32 %..i, 320
  br label %ams_get_alarm_offset.exit

sw.bb8.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i = or i32 %..i, 324
  br label %ams_get_alarm_offset.exit

sw.bb10.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i = or i32 %..i, 328
  br label %ams_get_alarm_offset.exit

sw.bb12.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add13.i = add nuw nsw i32 %..i, 352
  br label %ams_get_alarm_offset.exit

sw.bb14.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i = add nuw nsw i32 %..i, 356
  br label %ams_get_alarm_offset.exit

sw.bb16.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i = add nuw nsw i32 %..i, 360
  br label %ams_get_alarm_offset.exit

sw.bb18.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i = add nuw nsw i32 %..i, 364
  br label %ams_get_alarm_offset.exit

sw.bb20.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add21.i = or i32 %..i, 384
  br label %ams_get_alarm_offset.exit

sw.bb22.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = or i32 %..i, 388
  br label %ams_get_alarm_offset.exit

sw.bb24.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add25.i = or i32 %..i, 392
  br label %ams_get_alarm_offset.exit

sw.bb26.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add27.i = or i32 %..i, 396
  br label %ams_get_alarm_offset.exit

sw.bb28.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i = add nuw nsw i32 %..i, 400
  br label %ams_get_alarm_offset.exit

sw.bb30.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add31.i = add nuw nsw i32 %..i, 404
  br label %ams_get_alarm_offset.exit

ams_get_alarm_offset.exit:                        ; preds = %sw.bb30.i, %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %sw.bb.i, %if.then.ams_get_alarm_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add31.i, %sw.bb30.i ], [ %add29.i, %sw.bb28.i ], [ %add27.i, %sw.bb26.i ], [ %add25.i, %sw.bb24.i ], [ %add23.i, %sw.bb22.i ], [ %add21.i, %sw.bb20.i ], [ %add19.i, %sw.bb18.i ], [ %add17.i, %sw.bb16.i ], [ %add15.i, %sw.bb14.i ], [ %add13.i, %sw.bb12.i ], [ %add11.i, %sw.bb10.i ], [ %add9.i, %sw.bb8.i ], [ %add.i, %sw.bb.i ], [ 0, %if.then.ams_get_alarm_offset.exit_crit_edge ]
  br i1 %cmp.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %ams_get_alarm_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %retval.0.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %10 = or i32 %9, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %pl_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pl_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %12, i32 %retval.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #6, !srcloc !70
  br label %if.end6

if.else:                                          ; preds = %ams_get_alarm_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ps_base.i = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %14, i32 %retval.0.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %16 = or i32 %15, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %ps_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps_base.i, align 4
  %add.ptr4.i35 = getelementptr i8, ptr %18, i32 %retval.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i35, i32 %16) #6, !srcloc !70
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %entry.if.end6_crit_edge
  %scan_index7 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %19 = ptrtoint ptr %scan_index7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scan_index7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %20)
  %cmp.i36 = icmp sgt i32 %20, 21
  %sub.i37 = add i32 %20, -22
  %spec.select.i38 = select i1 %cmp.i36, i32 %sub.i37, i32 %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp1.i = icmp eq i32 %dir, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i38)
  %cmp3.i39 = icmp slt i32 %spec.select.i38, 16
  %..i40 = select i1 %cmp3.i39, i32 16, i32 32
  %offset.0.i = select i1 %cmp1.i, i32 %..i40, i32 0
  %21 = zext i32 %spec.select.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %spec.select.i38, label %if.end6.ams_get_alarm_offset.exit68_crit_edge [
    i32 8, label %sw.bb.i42
    i32 10, label %sw.bb8.i44
    i32 9, label %sw.bb10.i46
    i32 14, label %sw.bb12.i48
    i32 5, label %sw.bb14.i50
    i32 6, label %sw.bb16.i52
    i32 7, label %sw.bb18.i54
    i32 16, label %sw.bb20.i56
    i32 17, label %sw.bb22.i58
    i32 18, label %sw.bb24.i60
    i32 19, label %sw.bb26.i62
    i32 20, label %sw.bb28.i64
    i32 21, label %sw.bb30.i66
  ]

if.end6.ams_get_alarm_offset.exit68_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_alarm_offset.exit68

sw.bb.i42:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add.i41 = or i32 %offset.0.i, 320
  br label %ams_get_alarm_offset.exit68

sw.bb8.i44:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i43 = or i32 %offset.0.i, 324
  br label %ams_get_alarm_offset.exit68

sw.bb10.i46:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add11.i45 = or i32 %offset.0.i, 328
  br label %ams_get_alarm_offset.exit68

sw.bb12.i48:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add13.i47 = add nuw nsw i32 %offset.0.i, 352
  br label %ams_get_alarm_offset.exit68

sw.bb14.i50:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i49 = add nuw nsw i32 %offset.0.i, 356
  br label %ams_get_alarm_offset.exit68

sw.bb16.i52:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add17.i51 = add nuw nsw i32 %offset.0.i, 360
  br label %ams_get_alarm_offset.exit68

sw.bb18.i54:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add19.i53 = add nuw nsw i32 %offset.0.i, 364
  br label %ams_get_alarm_offset.exit68

sw.bb20.i56:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add21.i55 = or i32 %offset.0.i, 384
  br label %ams_get_alarm_offset.exit68

sw.bb22.i58:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i57 = or i32 %offset.0.i, 388
  br label %ams_get_alarm_offset.exit68

sw.bb24.i60:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add25.i59 = or i32 %offset.0.i, 392
  br label %ams_get_alarm_offset.exit68

sw.bb26.i62:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add27.i61 = or i32 %offset.0.i, 396
  br label %ams_get_alarm_offset.exit68

sw.bb28.i64:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add29.i63 = add nuw nsw i32 %offset.0.i, 400
  br label %ams_get_alarm_offset.exit68

sw.bb30.i66:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add31.i65 = add nuw nsw i32 %offset.0.i, 404
  br label %ams_get_alarm_offset.exit68

ams_get_alarm_offset.exit68:                      ; preds = %sw.bb30.i66, %sw.bb28.i64, %sw.bb26.i62, %sw.bb24.i60, %sw.bb22.i58, %sw.bb20.i56, %sw.bb18.i54, %sw.bb16.i52, %sw.bb14.i50, %sw.bb12.i48, %sw.bb10.i46, %sw.bb8.i44, %sw.bb.i42, %if.end6.ams_get_alarm_offset.exit68_crit_edge
  %retval.0.i67 = phi i32 [ %add31.i65, %sw.bb30.i66 ], [ %add29.i63, %sw.bb28.i64 ], [ %add27.i61, %sw.bb26.i62 ], [ %add25.i59, %sw.bb24.i60 ], [ %add23.i57, %sw.bb22.i58 ], [ %add21.i55, %sw.bb20.i56 ], [ %add19.i53, %sw.bb18.i54 ], [ %add17.i51, %sw.bb16.i52 ], [ %add15.i49, %sw.bb14.i50 ], [ %add13.i47, %sw.bb12.i48 ], [ %add11.i45, %sw.bb10.i46 ], [ %add9.i43, %sw.bb8.i44 ], [ %add.i41, %sw.bb.i42 ], [ 0, %if.end6.ams_get_alarm_offset.exit68_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %val)
  br i1 %cmp.i36, label %do.body, label %do.body13

do.body:                                          ; preds = %ams_get_alarm_offset.exit68
  call void @__sanitizer_cov_trace_pc() #8
  %pl_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pl_base, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 %retval.0.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #6, !srcloc !70
  br label %if.end17

do.body13:                                        ; preds = %ams_get_alarm_offset.exit68
  call void @__sanitizer_cov_trace_pc() #8
  %ps_base = getelementptr inbounds %struct.ams, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ps_base, align 4
  %add.ptr16 = getelementptr i8, ptr %26, i32 %retval.0.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %22) #6, !srcloc !70
  br label %if.end17

if.end17:                                         ; preds = %do.body13, %do.body
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ams_init_module(ptr nocapture noundef readonly %indio_dev, ptr noundef %fwnode, ptr nocapture noundef writeonly %channels) unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @fwnode_property_match_string(ptr noundef %fwnode, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @fwnode_iomap(ptr noundef %fwnode, i32 noundef 0) #6
  %ps_base = getelementptr inbounds %struct.ams, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ps_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %ps_base, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @ams_iounmap_ps, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %devm_add_action_or_reset.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

devm_add_action_or_reset.exit:                    ; preds = %if.end
  %5 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps_base, align 4
  tail call void @iounmap(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end9_crit_edge

devm_add_action_or_reset.exit.if.end9_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %devm_add_action_or_reset.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %7 = call ptr @memcpy(ptr %channels, ptr @ams_ps_channels, i32 1144)
  br label %cleanup

if.else:                                          ; preds = %entry
  %call10 = tail call i32 @fwnode_property_match_string(ptr noundef %fwnode, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else23

if.then12:                                        ; preds = %if.else
  %call13 = tail call ptr @fwnode_iomap(ptr noundef %fwnode, i32 noundef 0) #6
  %pl_base = getelementptr inbounds %struct.ams, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pl_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %pl_base, align 8
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  %call.i56 = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @ams_iounmap_pl, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end17.if.end21_crit_edge, label %devm_add_action_or_reset.exit59

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

devm_add_action_or_reset.exit59:                  ; preds = %if.end17
  %9 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pl_base, align 8
  tail call void @iounmap(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp19 = icmp slt i32 %call.i56, 0
  br i1 %cmp19, label %devm_add_action_or_reset.exit59.cleanup_crit_edge, label %devm_add_action_or_reset.exit59.if.end21_crit_edge

devm_add_action_or_reset.exit59.if.end21_crit_edge: ; preds = %devm_add_action_or_reset.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

devm_add_action_or_reset.exit59.cleanup_crit_edge: ; preds = %devm_add_action_or_reset.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %devm_add_action_or_reset.exit59.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %11 = call ptr @memcpy(ptr %channels, ptr @ams_pl_channels, i32 880)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i, align 4, !annotation !109
  %call.i60 = tail call ptr @fwnode_get_next_child_node(ptr noundef %fwnode, ptr noundef null) #6
  %tobool.not2.i = icmp eq ptr %call.i60, null
  br i1 %tobool.not2.i, label %if.end21.ams_get_ext_chan.exit_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.ams_get_ext_chan.exit_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_ext_chan.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %child.05.i = phi ptr [ %call7.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i60, %if.end21.for.body.i_crit_edge ]
  %num_channels.addr.03.i = phi i32 [ %num_channels.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ 10, %if.end21.for.body.i_crit_edge ]
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.05.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %reg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %14)
  %cmp.i = icmp ugt i32 %14, 50
  br i1 %cmp.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %channels, i32 %num_channels.addr.03.i
  %sub.i = add nsw i32 %14, -20
  %arrayidx3.i = getelementptr [31 x %struct.iio_chan_spec], ptr @ams_pl_channels, i32 0, i32 %sub.i
  %15 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx3.i, i32 88)
  %call.i1.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.05.i, ptr noundef nonnull @.str.18) #6
  br i1 %call.i1.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %scan_type.i = getelementptr %struct.iio_chan_spec, ptr %channels, i32 %num_channels.addr.03.i, i32 5
  %16 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 115, ptr %scan_type.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %inc.i = add i32 %num_channels.addr.03.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %num_channels.addr.1.i = phi i32 [ %num_channels.addr.03.i, %for.body.i.for.inc.i_crit_edge ], [ %num_channels.addr.03.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %inc.i, %if.end6.i ]
  %call7.i = call ptr @fwnode_get_next_child_node(ptr noundef %fwnode, ptr noundef nonnull %child.05.i) #6
  %tobool.not.i61 = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i61, label %for.inc.i.ams_get_ext_chan.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.ams_get_ext_chan.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ams_get_ext_chan.exit

ams_get_ext_chan.exit:                            ; preds = %for.inc.i.ams_get_ext_chan.exit_crit_edge, %if.end21.ams_get_ext_chan.exit_crit_edge
  %num_channels.addr.0.lcssa.i = phi i32 [ 10, %if.end21.ams_get_ext_chan.exit_crit_edge ], [ %num_channels.addr.1.i, %for.inc.i.ams_get_ext_chan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

if.else23:                                        ; preds = %if.else
  %call24 = tail call i32 @fwnode_property_match_string(ptr noundef %fwnode, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else23.cleanup_crit_edge

if.else23.cleanup_crit_edge:                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  %17 = call ptr @memcpy(ptr %channels, ptr @ams_ctrl_channels, i32 616)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.else23.cleanup_crit_edge, %ams_get_ext_chan.exit, %devm_add_action_or_reset.exit59.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end9, %devm_add_action_or_reset.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.then.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit.cleanup_crit_edge ], [ -6, %if.then12.cleanup_crit_edge ], [ %call.i56, %devm_add_action_or_reset.exit59.cleanup_crit_edge ], [ -22, %if.else23.cleanup_crit_edge ], [ 0, %if.end9 ], [ %num_channels.addr.0.lcssa.i, %ams_get_ext_chan.exit ], [ 7, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ams_iounmap_ps(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_base = getelementptr inbounds %struct.ams, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %ps_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_base, align 4
  tail call void @iounmap(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ams_iounmap_pl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pl_base = getelementptr inbounds %struct.ams, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pl_base, align 8
  tail call void @iounmap(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %clk = getelementptr inbounds %struct.ams, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ams_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %clk = getelementptr inbounds %struct.ams, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_xilinx_ams__347_1448_ams_driver_init6, !1, !"__initcall__kmod_xilinx_ams__347_1448_ams_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1448, i32 1}
!2 = !{ptr @__exitcall_ams_driver_exit, !1, !"__exitcall_ams_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file348, !4, !"__UNIQUE_ID_file348", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1450, i32 1}
!5 = !{ptr @__UNIQUE_ID_license349, !4, !"__UNIQUE_ID_license349", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author350, !7, !"__UNIQUE_ID_author350", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1451, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1443, i32 11}
!10 = !{ptr @ams_driver, !11, !"ams_driver", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1440, i32 31}
!12 = !{ptr @ams_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1368, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ams_probe.__key.2, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1369, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ams_probe.__key.4, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1392, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ams_probe.__key.6, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1400, i32 41}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1404, i32 41}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1412, i32 55}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1415, i32 41}
!31 = !{ptr @iio_ams_info, !32, !"iio_ams_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1332, i32 30}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 554, i32 8}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1216, i32 43}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1217, i32 7}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1228, i32 7}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1243, i32 7}
!43 = !{ptr @ams_ps_channels, !44, !"ams_ps_channels", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1107, i32 35}
!45 = !{ptr @ams_temp_events, !46, !"ams_temp_events", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1081, i32 36}
!47 = !{ptr @ams_voltage_events, !48, !"ams_voltage_events", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1089, i32 36}
!49 = !{ptr @ams_pl_channels, !50, !"ams_pl_channels", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1123, i32 35}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1176, i32 41}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1184, i32 40}
!55 = !{ptr @ams_ctrl_channels, !56, !"ams_ctrl_channels", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1157, i32 35}
!57 = !{ptr @ams_of_match_table, !58, !"ams_of_match_table", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1340, i32 34}
!59 = !{ptr @ams_pm_ops, !60, !"ams_pm_ops", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/xilinx-ams.c", i32 1438, i32 8}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 4305383}
!71 = !{i64 2154579439}
!72 = !{i64 2154580488}
!73 = !{i64 4305801}
!74 = !{i64 2154511813}
!75 = !{i64 2154512036}
!76 = !{i64 2153237184}
!77 = !{i64 2153278173}
!78 = !{i64 2153278580}
!79 = !{i64 2153323630}
!80 = !{i64 2154294732}
!81 = !{i64 2154296507}
!82 = !{i64 2154296993}
!83 = !{i64 2153235472}
!84 = !{i64 2153235693}
!85 = !{i64 2154338356}
!86 = !{i64 2154338589}
!87 = !{i64 2153236552}
!88 = !{i64 2153236773}
!89 = !{i64 2154386319}
!90 = !{i64 2154389514}
!91 = !{i64 2153956386}
!92 = !{i64 2153996995}
!93 = !{i64 2154167678}
!94 = !{i64 2154208603}
!95 = !{i64 2154249212}
!96 = !{i64 2154514144}
!97 = !{i64 2154515048}
!98 = !{i64 2154434706}
!99 = !{i64 2154435192}
!100 = !{i64 2154435686}
!101 = !{i64 2154504667}
!102 = !{i64 2154505197}
!103 = !{i64 2154436336}
!104 = !{i64 2154452351}
!105 = !{i64 2154468366}
!106 = !{i64 2154484381}
!107 = !{i64 2154507373}
!108 = !{i64 2154507875}
!109 = !{!"auto-init"}
