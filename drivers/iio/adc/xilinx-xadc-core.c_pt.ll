; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/xilinx-xadc-core.c_pt.bc'
source_filename = "../drivers/iio/adc/xilinx-xadc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.xadc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.xadc = type { ptr, ptr, ptr, [16 x i16], i16, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.delayed_work, %struct.mutex, %struct.spinlock, %struct.completion }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_xilinx_xadc__187_1489_xadc_driver_init6 = internal global ptr @xadc_driver_init, section ".initcall6.init", align 4
@xadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xadc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xadc_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xadc_driver_exit = internal global ptr @xadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [45 x i8] c"xilinx_xadc.file=drivers/iio/adc/xilinx-xadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [27 x i8] c"xilinx_xadc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [56 x i8] c"xilinx_xadc.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [47 x i8] c"xilinx_xadc.description=Xilinx XADC IIO driver\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xadc\00", [27 x i8] zeroinitializer }, align 32
@xadc_of_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-xadc-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xadc_zynq_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-xadc-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xadc_7s_axi_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,system-management-wiz-1.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xadc_us_axi_ops }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@xadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xadc->mutex\00", [19 x i8] zeroinitializer }, align 32
@xadc_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&xadc->lock\00", [20 x i8] zeroinitializer }, align 32
@xadc_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&xadc->zynq_unmask_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@xadc_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&xadc->zynq_unmask_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@xadc_type_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@xadc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @xadc_read_raw, ptr null, ptr null, ptr @xadc_write_raw, ptr null, ptr null, ptr @xadc_read_event_config, ptr @xadc_write_event_config, ptr @xadc_read_event_value, ptr @xadc_write_event_value, ptr null, ptr @xadc_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@xadc_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @xadc_preenable, ptr null, ptr null, ptr @xadc_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"convst\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"samplerate\00", [21 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx-system-monitor\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,external-mux\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"single\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xlnx,external-mux-channel\00", [38 x i8] zeroinitializer }, align 32
@xadc_7s_channels = internal constant { [26 x %struct.iio_chan_spec], [560 x i8] } { [26 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 8, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_temp_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 9, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.20, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 10, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.21, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 6, i32 14, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.22, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 13, i32 5, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.23, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 14, i32 6, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.24, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 15, i32 7, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.25, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 4, i32 12, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.26, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 5, i32 13, %struct.anon.43 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.27, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 3, i32 11, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 16, i32 16, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 17, i32 17, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 18, i32 18, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 19, i32 19, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 20, i32 20, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 21, i32 21, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 22, i32 22, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 23, i32 23, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 24, i32 24, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 25, i32 25, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 19, i32 0, i32 26, i32 26, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 20, i32 0, i32 27, i32 27, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 21, i32 0, i32 28, i32 28, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 22, i32 0, i32 29, i32 29, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 23, i32 0, i32 30, i32 30, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 24, i32 0, i32 31, i32 31, %struct.anon.43 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [560 x i8] zeroinitializer }, align 32
@xadc_us_channels = internal constant { [26 x %struct.iio_chan_spec], [560 x i8] } { [26 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 8, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_temp_events, i32 1, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 9, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.20, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 10, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.21, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 6, i32 14, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.22, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 13, i32 5, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.28, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 14, i32 6, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.29, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 15, i32 7, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @xadc_voltage_events, i32 3, ptr null, ptr @.str.30, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 4, i32 12, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.26, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 5, i32 13, %struct.anon.43 { i8 115, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr @.str.27, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 3, i32 11, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 16, i32 16, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 17, i32 17, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 18, i32 18, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 19, i32 19, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 20, i32 20, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 21, i32 21, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 22, i32 22, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 23, i32 23, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 17, i32 0, i32 24, i32 24, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 18, i32 0, i32 25, i32 25, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 19, i32 0, i32 26, i32 26, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 20, i32 0, i32 27, i32 27, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 21, i32 0, i32 28, i32 28, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 22, i32 0, i32 29, i32 29, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 23, i32 0, i32 30, i32 30, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 24, i32 0, i32 31, i32 31, %struct.anon.43 { i8 117, i8 10, i8 16, i8 6, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [560 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlnx,channels\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xlnx,bipolar\00", [19 x i8] zeroinitializer }, align 32
@xadc_temp_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 7, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@xadc_voltage_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccint\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccaux\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vccbram\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vccpint\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vccpaux\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vccoddr\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrefp\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vrefn\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vccpsintlp\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vccpsintfp\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vccpsaux\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%d-%s\00", [24 x i8] zeroinitializer }, align 32
@xadc_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @xadc_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/xilinx-xadc.h\00", [34 x i8] zeroinitializer }, align 32
@xadc_zynq_ops = internal constant { %struct.xadc_ops, [32 x i8] } { %struct.xadc_ops { ptr @xadc_zynq_read_adc_reg, ptr @xadc_zynq_write_adc_reg, ptr @xadc_zynq_setup, ptr @xadc_zynq_update_alarm, ptr @xadc_zynq_get_dclk_rate, ptr @xadc_zynq_interrupt_handler, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@xadc_7s_axi_ops = internal constant { %struct.xadc_ops, [32 x i8] } { %struct.xadc_ops { ptr @xadc_axi_read_adc_reg, ptr @xadc_axi_write_adc_reg, ptr @xadc_axi_setup, ptr @xadc_axi_update_alarm, ptr @xadc_axi_get_dclk, ptr @xadc_axi_interrupt_handler, i32 3, i32 0 }, [32 x i8] zeroinitializer }, align 32
@xadc_us_axi_ops = internal constant { %struct.xadc_ops, [32 x i8] } { %struct.xadc_ops { ptr @xadc_axi_read_adc_reg, ptr @xadc_axi_write_adc_reg, ptr @xadc_axi_setup, ptr @xadc_axi_update_alarm, ptr @xadc_axi_get_dclk, ptr @xadc_axi_interrupt_handler, i32 3, i32 1 }, [32 x i8] zeroinitializer }, align 32
@xadc_axi_reg_offsets = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 512, i32 1024], [24 x i8] zeroinitializer }, align 32
@switch.table.xadc_trigger_handler = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], [56 x i8] zeroinitializer }, align 32
@switch.table.xadc_read_raw = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 3000, i32 3000, i32 1000, i32 3000, i32 3000, i32 3000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 1000, i32 3000, i32 3000, i32 3000], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"xadc_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1482, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1485, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"xadc_of_match_table\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1170, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1350, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1351, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1352, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"xadc_type_names\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1297, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"xadc_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1160, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"xadc_buffer_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 883, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1375, i32 57 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1380, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 87, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1299, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1203, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1204, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1206, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1208, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1214, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"xadc_7s_channels\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1096, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"xadc_us_channels\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1131, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1250, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1258, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1262, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"xadc_temp_events\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1021, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"xadc_voltage_events\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1032, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1098, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1099, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1100, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1101, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1102, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1103, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1104, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1105, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1136, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1137, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1138, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 746, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"xadc_trigger_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 735, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [33 x i8] c"../drivers/iio/adc/xilinx-xadc.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 93, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"xadc_zynq_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 450, i32 30 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"xadc_7s_axi_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 559, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"xadc_us_axi_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 570, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"xadc_axi_reg_offsets\00", align 1
@___asan_gen_.180 = private constant [38 x i8] c"../drivers/iio/adc/xilinx-xadc-core.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 460, i32 27 }
@___asan_gen_.182 = private unnamed_addr constant [34 x i8] c"switch.table.xadc_trigger_handler\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"switch.table.xadc_read_raw\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_xadc_driver_exit, ptr @__initcall__kmod_xilinx_xadc__187_1489_xadc_driver_init6, ptr @xadc_driver_exit, ptr @xadc_driver, ptr @.str, ptr @xadc_of_match_table, ptr @xadc_probe.__key, ptr @.str.1, ptr @xadc_probe.__key.2, ptr @.str.3, ptr @xadc_probe.__key.4, ptr @.str.5, ptr @xadc_probe.__key.6, ptr @.str.7, ptr @xadc_type_names, ptr @xadc_info, ptr @xadc_buffer_ops, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @xadc_7s_channels, ptr @xadc_us_channels, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @xadc_temp_events, ptr @xadc_voltage_events, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @xadc_trigger_ops, ptr @.str.32, ptr @xadc_zynq_ops, ptr @xadc_7s_axi_ops, ptr @xadc_us_axi_ops, ptr @xadc_axi_reg_offsets, ptr @switch.table.xadc_trigger_handler, ptr @switch.table.xadc_read_raw], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_of_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_type_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_7s_channels to i32), i32 2288, i32 2848, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_us_channels to i32), i32 2288, i32 2848, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_temp_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_voltage_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_zynq_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_7s_axi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_us_axi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xadc_axi_reg_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xadc_trigger_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xadc_read_raw to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xadc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xadc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %external_mux.i = alloca ptr, align 4
  %ext_mux_chan.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @xadc_of_match_table, ptr noundef nonnull %1) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call6 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, -6
  br i1 %cmp7.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.xadc_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %call11 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 372) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %ops17 = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ops17, align 4
  %completion = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 16
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #7
  %mutex = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @xadc_probe.__key) #7
  %lock = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @xadc_probe.__key.2, i16 noundef signext 3) #7
  %zynq_unmask_work = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 13
  tail call void @__init_work(ptr noundef %zynq_unmask_work, i32 noundef 0) #7
  %12 = ptrtoint ptr %zynq_unmask_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %zynq_unmask_work, align 4
  %lockdep_map = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @xadc_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry31 = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 13, i32 0, i32 1
  %13 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 13, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xadc_zynq_unmask_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @xadc_probe.__key.6) #7
  %call42 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call42, ptr %7, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call42 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops17, align 4
  %type = getelementptr inbounds %struct.xadc_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @xadc_type_names, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 15
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %name, align 8
  %25 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call11, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 17
  %26 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xadc_info, ptr %info, align 8
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 8
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %external_mux.i) #7
  %33 = ptrtoint ptr %external_mux.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %external_mux.i, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_mux_chan.i) #7
  %34 = ptrtoint ptr %ext_mux_chan.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %ext_mux_chan.i, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %reg.i, align 4, !annotation !111
  %call2.i = call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.12, ptr noundef nonnull %external_mux.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i330 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i330, label %if.end48.if.end16.i.thread_crit_edge, label %lor.lhs.false.i

if.end48.if.end16.i.thread_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.thread

lor.lhs.false.i:                                  ; preds = %if.end48
  %36 = ptrtoint ptr %external_mux.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %external_mux.i, align 4
  %call3.i = call i32 @strcasecmp(ptr noundef %37, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %lor.lhs.false.i.if.end16.i.thread_crit_edge, label %if.else.i

lor.lhs.false.i.if.end16.i.thread_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.thread

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call5.i = call i32 @strcasecmp(ptr noundef %37, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.else.i.if.then19.i_crit_edge, label %if.else9.i

if.else.i.if.then19.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i

if.else9.i:                                       ; preds = %if.else.i
  %call10.i = call i32 @strcasecmp(ptr noundef %37, ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.else9.i.if.then19.i_crit_edge, label %if.else9.i.xadc_parse_dt.exit.thread_crit_edge

if.else9.i.xadc_parse_dt.exit.thread_crit_edge:   ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_parse_dt.exit.thread

if.else9.i.if.then19.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19.i

if.end16.i.thread:                                ; preds = %lor.lhs.false.i.if.end16.i.thread_crit_edge, %if.end48.if.end16.i.thread_crit_edge
  %external_mux_mode8.i347 = getelementptr inbounds %struct.xadc, ptr %32, i32 0, i32 10
  %38 = ptrtoint ptr %external_mux_mode8.i347 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %external_mux_mode8.i347, align 4
  br label %if.end45.i

if.then19.i:                                      ; preds = %if.else9.i.if.then19.i_crit_edge, %if.else.i.if.then19.i_crit_edge
  %.sink.i = phi i32 [ 2, %if.else9.i.if.then19.i_crit_edge ], [ 1, %if.else.i.if.then19.i_crit_edge ]
  %external_mux_mode8.i = getelementptr inbounds %struct.xadc, ptr %32, i32 0, i32 10
  %39 = ptrtoint ptr %external_mux_mode8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %external_mux_mode8.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef nonnull %ext_mux_chan.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp21.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp21.i, label %xadc_parse_dt.exit, label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i
  %40 = ptrtoint ptr %external_mux_mode8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %external_mux_mode8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp25.i = icmp eq i32 %41, 1
  %42 = ptrtoint ptr %ext_mux_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ext_mux_chan.i, align 4
  br i1 %cmp25.i, label %if.then26.i, label %if.else35.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp27.i = icmp eq i32 %43, 0
  br i1 %cmp27.i, label %if.then28.i, label %if.else29.i

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %ext_mux_chan.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %ext_mux_chan.i, align 4
  br label %if.end43.i

if.else29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %43)
  %cmp30.i = icmp ult i32 %43, 17
  br i1 %cmp30.i, label %if.then31.i, label %if.else29.i.xadc_parse_dt.exit.thread_crit_edge

if.else29.i.xadc_parse_dt.exit.thread_crit_edge:  ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_parse_dt.exit.thread

if.then31.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %43, 15
  %45 = ptrtoint ptr %ext_mux_chan.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %ext_mux_chan.i, align 4
  br label %if.end43.i

if.else35.i:                                      ; preds = %if.end23.i
  %46 = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %47 = icmp ult i32 %46, 8
  br i1 %47, label %if.then38.i, label %if.else35.i.xadc_parse_dt.exit.thread_crit_edge

if.else35.i.xadc_parse_dt.exit.thread_crit_edge:  ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_parse_dt.exit.thread

if.then38.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  %add40.i = add nuw nsw i32 %43, 15
  %48 = ptrtoint ptr %ext_mux_chan.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add40.i, ptr %ext_mux_chan.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.then31.i, %if.then28.i
  %49 = ptrtoint ptr %ext_mux_chan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ext_mux_chan.i, align 4
  %51 = trunc i32 %50 to i16
  %phi.cast = or i16 %51, 2048
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end43.i, %if.end16.i.thread
  %conf0.0 = phi i16 [ %phi.cast, %if.end43.i ], [ 0, %if.end16.i.thread ]
  %ops.i = getelementptr inbounds %struct.xadc, ptr %32, i32 0, i32 2
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.xadc_ops, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp46.i = icmp eq i32 %55, 0
  %xadc_7s_channels.xadc_us_channels.i = select i1 %cmp46.i, ptr @xadc_7s_channels, ptr @xadc_us_channels
  %call50.i = call ptr @devm_kmemdup(ptr noundef %30, ptr noundef nonnull %xadc_7s_channels.xadc_us_channels.i, i32 noundef 2288, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool.not.i, label %if.end45.i.xadc_parse_dt.exit.thread_crit_edge, label %if.end52.i

if.end45.i.xadc_parse_dt.exit.thread_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_parse_dt.exit.thread

if.end52.i:                                       ; preds = %if.end45.i
  %call53.i = call ptr @of_get_child_by_name(ptr noundef %28, ptr noundef nonnull @.str.17) #7
  %tobool54.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool54.not.i, label %if.end52.i.if.end80.i_crit_edge, label %if.then55.i

if.end52.i.if.end80.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then55.i:                                      ; preds = %if.end52.i
  %call56.i = call ptr @of_get_next_child(ptr noundef nonnull %call53.i, ptr noundef null) #7
  %cmp57.not161.i = icmp eq ptr %call56.i, null
  br i1 %cmp57.not161.i, label %if.then55.i.if.end80.i_crit_edge, label %for.body.preheader.i

if.then55.i.if.end80.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

for.body.preheader.i:                             ; preds = %if.then55.i
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %call50.i, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %num_channels.0166.i = phi i32 [ %num_channels.1.i, %for.inc.i.for.body.i_crit_edge ], [ 9, %for.body.preheader.i ]
  %child.0164.i = phi ptr [ %call79.i, %for.inc.i.for.body.i_crit_edge ], [ %call56.i, %for.body.preheader.i ]
  %chan.0162.i = phi ptr [ %chan.1.i, %for.inc.i.for.body.i_crit_edge ], [ %arrayidx.i, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %num_channels.0166.i)
  %cmp58.i = icmp ugt i32 %num_channels.0166.i, 25
  br i1 %cmp58.i, label %if.then59.i, label %if.end60.i

if.then59.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.0164.i) #7
  br label %if.end80.i

if.end60.i:                                       ; preds = %for.body.i
  %call.i.i158.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0164.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i158.i)
  %tobool62.not.i = icmp sgt i32 %call.i.i158.i, -1
  br i1 %tobool62.not.i, label %lor.lhs.false63.i, label %if.end60.i.for.inc.i_crit_edge

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false63.i:                                ; preds = %if.end60.i
  %56 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %57)
  %cmp64.i = icmp ugt i32 %57, 16
  br i1 %cmp64.i, label %lor.lhs.false63.i.for.inc.i_crit_edge, label %if.end66.i

lor.lhs.false63.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end66.i:                                       ; preds = %lor.lhs.false63.i
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %child.0164.i, ptr noundef nonnull @.str.19, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end66.i.if.end69.i_crit_edge, label %if.then68.i

if.end66.i.if.end69.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %scan_type.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0162.i, i32 0, i32 5
  %58 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 115, ptr %scan_type.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then68.i, %if.end66.i.if.end69.i_crit_edge
  %59 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp70.i = icmp eq i32 %60, 0
  %add73.i = add i32 %60, 15
  %spec.select174.i = select i1 %cmp70.i, i32 11, i32 %add73.i
  %spec.select175.i = select i1 %cmp70.i, i32 3, i32 %add73.i
  %61 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0162.i, i32 0, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select174.i, ptr %61, align 4
  %63 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.0162.i, i32 0, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select175.i, ptr %63, align 4
  %inc.i = add nuw nsw i32 %num_channels.0166.i, 1
  %incdec.ptr.i = getelementptr %struct.iio_chan_spec, ptr %chan.0162.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end69.i, %lor.lhs.false63.i.for.inc.i_crit_edge, %if.end60.i.for.inc.i_crit_edge
  %chan.1.i = phi ptr [ %chan.0162.i, %if.end60.i.for.inc.i_crit_edge ], [ %chan.0162.i, %lor.lhs.false63.i.for.inc.i_crit_edge ], [ %incdec.ptr.i, %if.end69.i ]
  %num_channels.1.i = phi i32 [ %num_channels.0166.i, %if.end60.i.for.inc.i_crit_edge ], [ %num_channels.0166.i, %lor.lhs.false63.i.for.inc.i_crit_edge ], [ %inc.i, %if.end69.i ]
  %call79.i = call ptr @of_get_next_child(ptr noundef nonnull %call53.i, ptr noundef nonnull %child.0164.i) #7
  %cmp57.not.i = icmp eq ptr %call79.i, null
  br i1 %cmp57.not.i, label %for.inc.i.if.end80.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end80.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.end80.i:                                       ; preds = %for.inc.i.if.end80.i_crit_edge, %if.then59.i, %if.then55.i.if.end80.i_crit_edge, %if.end52.i.if.end80.i_crit_edge
  %num_channels.2.i = phi i32 [ %num_channels.0166.i, %if.then59.i ], [ 9, %if.end52.i.if.end80.i_crit_edge ], [ 9, %if.then55.i.if.end80.i_crit_edge ], [ %num_channels.1.i, %for.inc.i.if.end80.i_crit_edge ]
  call void @of_node_put(ptr noundef %call53.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp81.i = icmp slt i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.2.i)
  %cmp84167.i = icmp ne i32 %num_channels.2.i, 0
  %or.cond.i = select i1 %cmp81.i, i1 %cmp84167.i, i1 false
  br i1 %or.cond.i, label %if.end80.i.for.body85.i_crit_edge, label %if.end80.i.xadc_parse_dt.exit.thread351_crit_edge

if.end80.i.xadc_parse_dt.exit.thread351_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_parse_dt.exit.thread351

if.end80.i.for.body85.i_crit_edge:                ; preds = %if.end80.i
  br label %for.body85.i

for.body85.i:                                     ; preds = %for.body85.i.for.body85.i_crit_edge, %if.end80.i.for.body85.i_crit_edge
  %i.0168.i = phi i32 [ %inc89.i, %for.body85.i.for.body85.i_crit_edge ], [ 0, %if.end80.i.for.body85.i_crit_edge ]
  %event_spec.i = getelementptr %struct.iio_chan_spec, ptr %call50.i, i32 %i.0168.i, i32 14
  %65 = ptrtoint ptr %event_spec.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %event_spec.i, align 4
  %num_event_specs.i = getelementptr %struct.iio_chan_spec, ptr %call50.i, i32 %i.0168.i, i32 15
  %66 = ptrtoint ptr %num_event_specs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %num_event_specs.i, align 4
  %inc89.i = add nuw i32 %i.0168.i, 1
  %exitcond.not.i = icmp eq i32 %inc89.i, %num_channels.2.i
  br i1 %exitcond.not.i, label %for.body85.i.xadc_parse_dt.exit.thread351_crit_edge, label %for.body85.i.for.body85.i_crit_edge

for.body85.i.for.body85.i_crit_edge:              ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85.i

for.body85.i.xadc_parse_dt.exit.thread351_crit_edge: ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_parse_dt.exit.thread351

xadc_parse_dt.exit.thread351:                     ; preds = %for.body85.i.xadc_parse_dt.exit.thread351_crit_edge, %if.end80.i.xadc_parse_dt.exit.thread351_crit_edge
  %num_channels92.i = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 14
  %67 = ptrtoint ptr %num_channels92.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %num_channels.2.i, ptr %num_channels92.i, align 4
  %mul93.i = mul i32 %num_channels.2.i, 88
  %call94.i = call ptr @devm_krealloc(ptr noundef %30, ptr noundef nonnull %call50.i, i32 noundef %mul93.i, i32 noundef 3264) #7
  %channels95.i = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 13
  %tobool97.not.i = icmp eq ptr %call94.i, null
  %spec.select.i = select i1 %tobool97.not.i, ptr %call50.i, ptr %call94.i
  %68 = ptrtoint ptr %channels95.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %spec.select.i, ptr %channels95.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_mux_chan.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %external_mux.i) #7
  %69 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops17, align 4
  %flags56 = getelementptr inbounds %struct.xadc_ops, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags56, align 4
  %and57 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %xadc_parse_dt.exit.thread351.if.end81_crit_edge, label %if.then59

xadc_parse_dt.exit.thread351.if.end81_crit_edge:  ; preds = %xadc_parse_dt.exit.thread351
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

xadc_parse_dt.exit.thread:                        ; preds = %if.end45.i.xadc_parse_dt.exit.thread_crit_edge, %if.else35.i.xadc_parse_dt.exit.thread_crit_edge, %if.else29.i.xadc_parse_dt.exit.thread_crit_edge, %if.else9.i.xadc_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end45.i.xadc_parse_dt.exit.thread_crit_edge ], [ -22, %if.else35.i.xadc_parse_dt.exit.thread_crit_edge ], [ -22, %if.else29.i.xadc_parse_dt.exit.thread_crit_edge ], [ -22, %if.else9.i.xadc_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_mux_chan.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %external_mux.i) #7
  br label %cleanup

xadc_parse_dt.exit:                               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_mux_chan.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %external_mux.i) #7
  br label %cleanup

if.then59:                                        ; preds = %xadc_parse_dt.exit.thread351
  %call60 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev1, ptr noundef nonnull %call11, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @xadc_trigger_handler, i32 noundef 0, ptr noundef nonnull @xadc_buffer_ops, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp64 = icmp sgt i32 %call6, 0
  br i1 %cmp64, label %if.then65, label %if.end63.if.end81_crit_edge

if.end63.if.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then65:                                        ; preds = %if.end63
  %call66 = call fastcc ptr @xadc_alloc_trigger(ptr noundef nonnull %call11, ptr noundef nonnull @.str.8)
  %convst_trigger = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 8
  %73 = ptrtoint ptr %convst_trigger to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call66, ptr %convst_trigger, align 4
  %cmp.i331 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i331, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %call66 to i32
  br label %cleanup

if.end72:                                         ; preds = %if.then65
  %call73 = call fastcc ptr @xadc_alloc_trigger(ptr noundef nonnull %call11, ptr noundef nonnull @.str.9)
  %samplerate_trigger = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 9
  %75 = ptrtoint ptr %samplerate_trigger to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call73, ptr %samplerate_trigger, align 4
  %cmp.i332 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.then76, label %if.end72.if.end81_crit_edge

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end81:                                         ; preds = %if.end72.if.end81_crit_edge, %if.end63.if.end81_crit_edge, %xadc_parse_dt.exit.thread351.if.end81_crit_edge
  %call82 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.xadc, ptr %7, i32 0, i32 1
  %77 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call82, ptr %clk, align 4
  %cmp.i333 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %call82 to i32
  br label %cleanup

if.end88:                                         ; preds = %if.end81
  %call90 = call fastcc i32 @clk_prepare_enable(ptr noundef %call82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %79 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk, align 4
  %call.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @xadc_clk_disable_unprepare, ptr noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i334 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i334, label %if.end98, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef %80) #7
  call void @clk_unprepare(ptr noundef %80) #7
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %81 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops17, align 4
  %flags100 = getelementptr inbounds %struct.xadc_ops, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags100, align 4
  %and101 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end98.if.end115_crit_edge, label %if.then103

if.end98.if.end115_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then103:                                       ; preds = %if.end98
  %call104 = call fastcc i32 @xadc_read_samplerate(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then103.cleanup_crit_edge, label %if.end107

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %call104)
  %cmp108 = icmp ugt i32 %call104, 150000
  br i1 %cmp108, label %if.then109, label %if.end107.if.end115_crit_edge

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then109:                                       ; preds = %if.end107
  %call110 = call fastcc i32 @xadc_write_samplerate(ptr noundef %7, i32 noundef 150000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then109.cleanup_crit_edge, label %if.then109.if.end115_crit_edge

if.then109.if.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end115:                                        ; preds = %if.then109.if.end115_crit_edge, %if.end107.if.end115_crit_edge, %if.end98.if.end115_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp116 = icmp sgt i32 %call6, 0
  br i1 %cmp116, label %if.then117, label %if.end115.if.end129_crit_edge

if.end115.if.end129_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then117:                                       ; preds = %if.end115
  %85 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops17, align 4
  %interrupt_handler = getelementptr inbounds %struct.xadc_ops, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %interrupt_handler to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %interrupt_handler, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %89 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i335 = icmp eq ptr %90, null
  br i1 %tobool.not.i335, label %if.end.i, label %if.then117.dev_name.exit_crit_edge

if.then117.dev_name.exit_crit_edge:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then117.dev_name.exit_crit_edge
  %retval.0.i336 = phi ptr [ %92, %if.end.i ], [ %90, %if.then117.dev_name.exit_crit_edge ]
  %call.i337 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call6, ptr noundef %88, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i336, ptr noundef nonnull %call11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %tobool121.not = icmp eq i32 %call.i337, 0
  br i1 %tobool121.not, label %if.end123, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end123:                                        ; preds = %dev_name.exit
  %call.i338 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @xadc_cancel_delayed_work, ptr noundef %zynq_unmask_work) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool.not.i339 = icmp eq i32 %call.i338, 0
  br i1 %tobool.not.i339, label %if.end123.if.end129_crit_edge, label %devm_add_action_or_reset.exit342

if.end123.if.end129_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

devm_add_action_or_reset.exit342:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %call.i343 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %zynq_unmask_work) #7
  br label %cleanup

if.end129:                                        ; preds = %if.end123.if.end129_crit_edge, %if.end115.if.end129_crit_edge
  %93 = ptrtoint ptr %ops17 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops17, align 4
  %setup = getelementptr inbounds %struct.xadc_ops, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %setup, align 4
  %call131 = call i32 %96(ptr noundef %pdev, ptr noundef nonnull %call11, i32 noundef %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end129.for.body_crit_edge, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end129.for.body_crit_edge:                     ; preds = %if.end129
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end129.for.body_crit_edge
  %i.0358 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end129.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0358, 80
  %arrayidx136 = getelementptr %struct.xadc, ptr %7, i32 0, i32 3, i32 %i.0358
  %call137 = call fastcc i32 @xadc_read_adc_reg(ptr noundef %7, i32 noundef %add, ptr noundef %arrayidx136)
  %inc = add nuw nsw i32 %i.0358, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call138 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %7, i32 noundef 64, i16 noundef zeroext %conf0.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %for.cond142.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond142.preheader:                            ; preds = %for.end
  %97 = ptrtoint ptr %num_channels92.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_channels92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp143359 = icmp sgt i32 %98, 0
  br i1 %cmp143359, label %for.body145.lr.ph, label %for.cond142.preheader.for.end156_crit_edge

for.cond142.preheader.for.end156_crit_edge:       ; preds = %for.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end156

for.body145.lr.ph:                                ; preds = %for.cond142.preheader
  %99 = ptrtoint ptr %channels95.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %channels95.i, align 8
  br label %for.body145

for.body145:                                      ; preds = %for.inc154.for.body145_crit_edge, %for.body145.lr.ph
  %i.1361 = phi i32 [ 0, %for.body145.lr.ph ], [ %inc155, %for.inc154.for.body145_crit_edge ]
  %bipolar_mask.0360 = phi i32 [ 0, %for.body145.lr.ph ], [ %bipolar_mask.1, %for.inc154.for.body145_crit_edge ]
  %scan_type = getelementptr %struct.iio_chan_spec, ptr %100, i32 %i.1361, i32 5
  %101 = ptrtoint ptr %scan_type to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %scan_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %102)
  %cmp148 = icmp eq i8 %102, 115
  br i1 %cmp148, label %if.then150, label %for.body145.for.inc154_crit_edge

for.body145.for.inc154_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc154

if.then150:                                       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  %scan_index = getelementptr %struct.iio_chan_spec, ptr %100, i32 %i.1361, i32 4
  %103 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scan_index, align 4
  %shl = shl nuw i32 1, %104
  %or = or i32 %shl, %bipolar_mask.0360
  br label %for.inc154

for.inc154:                                       ; preds = %if.then150, %for.body145.for.inc154_crit_edge
  %bipolar_mask.1 = phi i32 [ %or, %if.then150 ], [ %bipolar_mask.0360, %for.body145.for.inc154_crit_edge ]
  %inc155 = add nuw nsw i32 %i.1361, 1
  %exitcond368.not = icmp eq i32 %inc155, %98
  br i1 %exitcond368.not, label %for.inc154.for.end156_crit_edge, label %for.inc154.for.body145_crit_edge

for.inc154.for.body145_crit_edge:                 ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145

for.inc154.for.end156_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end156

for.end156:                                       ; preds = %for.inc154.for.end156_crit_edge, %for.cond142.preheader.for.end156_crit_edge
  %bipolar_mask.0.lcssa = phi i32 [ 0, %for.cond142.preheader.for.end156_crit_edge ], [ %bipolar_mask.1, %for.inc154.for.end156_crit_edge ]
  %conv157 = trunc i32 %bipolar_mask.0.lcssa to i16
  %call158 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %7, i32 noundef 76, i16 noundef zeroext %conv157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %for.end156.cleanup_crit_edge

for.end156.cleanup_crit_edge:                     ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end161:                                        ; preds = %for.end156
  %shr = lshr i32 %bipolar_mask.0.lcssa, 16
  %conv162 = trunc i32 %shr to i16
  %call163 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %7, i32 noundef 77, i16 noundef zeroext %conv162)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end161.cleanup_crit_edge

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end166:                                        ; preds = %if.end161
  %call167 = call fastcc i32 @xadc_update_adc_reg(ptr noundef %7, i32 noundef 65, i16 noundef zeroext 3855, i16 noundef zeroext 3855)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end166.for.body174_crit_edge, label %if.end166.cleanup_crit_edge

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end166.for.body174_crit_edge:                  ; preds = %if.end166
  br label %for.body174

for.cond171:                                      ; preds = %for.body174
  %inc194 = add nuw nsw i32 %i.2363, 1
  %exitcond369.not = icmp eq i32 %inc194, 16
  br i1 %exitcond369.not, label %for.end195, label %for.cond171.for.body174_crit_edge

for.cond171.for.body174_crit_edge:                ; preds = %for.cond171
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body174

for.body174:                                      ; preds = %for.cond171.for.body174_crit_edge, %if.end166.for.body174_crit_edge
  %i.2363 = phi i32 [ %inc194, %for.cond171.for.body174_crit_edge ], [ 0, %if.end166.for.body174_crit_edge ]
  %rem = and i32 %i.2363, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp175 = icmp eq i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.2363)
  %cmp178 = icmp eq i32 %i.2363, 7
  %or.cond = or i1 %cmp178, %cmp175
  %spec.select = sext i1 %or.cond to i16
  %105 = getelementptr %struct.xadc, ptr %7, i32 0, i32 3, i32 %i.2363
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %spec.select, ptr %105, align 2
  %add186 = add nuw nsw i32 %i.2363, 80
  %call189 = call fastcc i32 @xadc_write_adc_reg(ptr noundef %7, i32 noundef %add186, i16 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %for.cond171, label %for.body174.cleanup_crit_edge

for.body174.cleanup_crit_edge:                    ; preds = %for.body174
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end195:                                       ; preds = %for.cond171
  call void @__sanitizer_cov_trace_pc() #9
  %call196 = call i32 @xadc_postdisable(ptr noundef nonnull %call11)
  %call197 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end195, %for.body174.cleanup_crit_edge, %if.end166.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %for.end156.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %devm_add_action_or_reset.exit342, %dev_name.exit.cleanup_crit_edge, %if.then109.cleanup_crit_edge, %if.then103.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end88.cleanup_crit_edge, %if.then85, %if.then76, %if.then69, %if.then59.cleanup_crit_edge, %xadc_parse_dt.exit, %xadc_parse_dt.exit.thread, %if.then45, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then45 ], [ %74, %if.then69 ], [ %76, %if.then76 ], [ %78, %if.then85 ], [ %call197, %for.end195 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ %call6, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call.i.i.i, %xadc_parse_dt.exit ], [ %call60, %if.then59.cleanup_crit_edge ], [ %call90, %if.end88.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call104, %if.then103.cleanup_crit_edge ], [ %call110, %if.then109.cleanup_crit_edge ], [ %call.i337, %dev_name.exit.cleanup_crit_edge ], [ %call.i338, %devm_add_action_or_reset.exit342 ], [ %call131, %if.end129.cleanup_crit_edge ], [ %call138, %for.end.cleanup_crit_edge ], [ %call158, %for.end156.cleanup_crit_edge ], [ %call163, %if.end161.cleanup_crit_edge ], [ %call167, %if.end166.cleanup_crit_edge ], [ %retval.0.i.ph, %xadc_parse_dt.exit.thread ], [ %call189, %for.body174.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xadc_zynq_unmask_worker(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %lock = getelementptr i8, ptr %work, i32 192
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %zynq_masked_alarm = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %zynq_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zynq_masked_alarm, align 4
  %6 = xor i32 %3, -1
  %and2 = and i32 %5, %6
  %and4 = and i32 %5, %3
  %zynq_intmask = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %zynq_intmask, align 4
  %neg = xor i32 %8, -1
  %and6 = and i32 %and4, %neg
  store i32 %and6, ptr %zynq_masked_alarm, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %and2) #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %9) #7, !srcloc !115
  %12 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zynq_intmask, align 4
  %14 = ptrtoint ptr %zynq_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %zynq_masked_alarm, align 4
  %or3.i = or i32 %15, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #7, !srcloc !115
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %19 = ptrtoint ptr %zynq_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %zynq_masked_alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work, i32 noundef 50) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %data = getelementptr inbounds %struct.xadc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef %9, i32 noundef 0) #7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %11)
  %cmp25 = icmp ult i32 %call2, %11
  br i1 %cmp25, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.xadc, ptr %3, i32 0, i32 14
  %dep_map.i.i = getelementptr inbounds %struct.xadc, ptr %3, i32 0, i32 14, i32 5
  %ops.i.i = getelementptr inbounds %struct.xadc, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %xadc_read_adc_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %j.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xadc_read_adc_reg.exit.for.body_crit_edge ]
  %i.026 = phi i32 [ %call2, %for.body.lr.ph ], [ %call9, %xadc_read_adc_reg.exit.for.body_crit_edge ]
  %switch.tableidx = add i32 %i.026, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 10
  br i1 %12, label %switch.lookup, label %for.body.xadc_scan_index_to_channel.exit_crit_edge

for.body.xadc_scan_index_to_channel.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_scan_index_to_channel.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.xadc_trigger_handler, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %xadc_scan_index_to_channel.exit

xadc_scan_index_to_channel.exit:                  ; preds = %switch.lookup, %for.body.xadc_scan_index_to_channel.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ %i.026, %for.body.xadc_scan_index_to_channel.exit_crit_edge ]
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i16, ptr %15, i32 %j.028
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %xadc_scan_index_to_channel.exit.xadc_read_adc_reg.exit_crit_edge, label %land.rhs.i.i

xadc_scan_index_to_channel.exit.xadc_read_adc_reg.exit_crit_edge: ; preds = %xadc_scan_index_to_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_read_adc_reg.exit

land.rhs.i.i:                                     ; preds = %xadc_scan_index_to_channel.exit
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge, !prof !116

land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_read_adc_reg.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %xadc_read_adc_reg.exit

xadc_read_adc_reg.exit:                           ; preds = %do.end.i.i, %land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge, %xadc_scan_index_to_channel.exit.xadc_read_adc_reg.exit_crit_edge
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call24.i.i = tail call i32 %20(ptr noundef %3, i32 noundef %retval.0.i, ptr noundef %arrayidx) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  %inc = add i32 %j.028, 1
  %21 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_scan_mask, align 4
  %23 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %masklength, align 8
  %add = add i32 %i.026, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %22, i32 noundef %24, i32 noundef %add) #7
  %25 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call9, %26
  br i1 %cmp, label %xadc_read_adc_reg.exit.for.body_crit_edge, label %xadc_read_adc_reg.exit.for.end_crit_edge

xadc_read_adc_reg.exit.for.end_crit_edge:         ; preds = %xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

xadc_read_adc_reg.exit.for.body_crit_edge:        ; preds = %xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %xadc_read_adc_reg.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call11 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %28) #7
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %30) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xadc_alloc_trigger(ptr noundef %indio_dev, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %name2 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 8
  %call = tail call i32 @iio_device_id(ptr noundef %indio_dev) #7
  %call3 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef %3, i32 noundef %call, ptr noundef %name) #7
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xadc_trigger_ops, ptr %call3, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call3, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %driver_data.i.i, align 4
  %call6 = tail call i32 @__devm_iio_trigger_register(ptr noundef %1, ptr noundef nonnull %call3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  %8 = inttoptr i32 %call6 to ptr
  %spec.select = select i1 %tobool.not, ptr %call3, ptr %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xadc_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #7
  tail call void @clk_unprepare(ptr noundef %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xadc_read_samplerate(ptr noundef %xadc) unnamed_addr #2 align 64 {
entry:
  %val16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16) #7
  %0 = ptrtoint ptr %val16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val16, align 2, !annotation !111
  %mutex.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.xadc_read_adc_reg.exit_crit_edge, label %land.rhs.i.i

entry.xadc_read_adc_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_read_adc_reg.exit

land.rhs.i.i:                                     ; preds = %entry
  %dep_map.i.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge, !prof !116

land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_read_adc_reg.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %xadc_read_adc_reg.exit

xadc_read_adc_reg.exit:                           ; preds = %do.end.i.i, %land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge, %entry.xadc_read_adc_reg.exit_crit_edge
  %ops.i.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call24.i.i = call i32 %5(ptr noundef %xadc, i32 noundef 66, ptr noundef nonnull %val16) #7
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool.not = icmp eq i32 %call24.i.i, 0
  br i1 %tobool.not, label %if.end, label %xadc_read_adc_reg.exit.cleanup_crit_edge

xadc_read_adc_reg.exit.cleanup_crit_edge:         ; preds = %xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val16 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val16, align 2
  %8 = lshr i16 %7, 8
  %9 = call i16 @llvm.umax.i16(i16 %8, i16 2)
  %10 = zext i16 %9 to i32
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %get_dclk_rate.i = getelementptr inbounds %struct.xadc_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %get_dclk_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_dclk_rate.i, align 4
  %call.i = call i32 %14(ptr noundef %xadc) #7
  %div5 = udiv i32 %call.i, %10
  %div6 = udiv i32 %div5, 26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xadc_read_adc_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %div6, %if.end ], [ %call24.i.i, %xadc_read_adc_reg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xadc_write_samplerate(ptr noundef %xadc, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %get_dclk_rate.i = getelementptr inbounds %struct.xadc_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_dclk_rate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_dclk_rate.i, align 4
  %call.i = tail call i32 %3(ptr noundef %xadc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp = icmp slt i32 %val, 1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 @llvm.smin.i32(i32 %val, i32 150000)
  %mul = mul nuw nsw i32 %4, 26
  %5 = tail call i32 @llvm.smax.i32(i32 %mul, i32 1000000)
  %div9 = udiv i32 %call.i, %5
  %div10 = udiv i32 %call.i, %div9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3900025, i32 %div10)
  %cmp12 = icmp ugt i32 %div10, 3900025
  %inc = zext i1 %cmp12 to i32
  %spec.select = add nuw nsw i32 %div9, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp15 = icmp ult i32 %spec.select, 2
  %6 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 255)
  %.tr = trunc i32 %6 to i16
  %phi.cast = shl nuw i16 %.tr, 8
  %div.1 = select i1 %cmp15, i16 512, i16 %phi.cast
  %mutex.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call.i36 = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %xadc, i32 noundef 66, i16 noundef zeroext -256, i16 noundef zeroext %div.1) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i36, %if.end2 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xadc_cancel_delayed_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %data) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xadc_read_adc_reg(ptr noundef %xadc, i32 noundef %reg, ptr noundef %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry._xadc_read_adc_reg.exit_crit_edge, label %land.rhs.i

entry._xadc_read_adc_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_read_adc_reg.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i._xadc_read_adc_reg.exit_crit_edge, !prof !116

land.rhs.i._xadc_read_adc_reg.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_read_adc_reg.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %_xadc_read_adc_reg.exit

_xadc_read_adc_reg.exit:                          ; preds = %do.end.i, %land.rhs.i._xadc_read_adc_reg.exit_crit_edge, %entry._xadc_read_adc_reg.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call24.i = tail call i32 %4(ptr noundef %xadc, i32 noundef %reg, ptr noundef %val) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call24.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xadc_write_adc_reg(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %mutex = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry._xadc_write_adc_reg.exit_crit_edge, label %land.rhs.i

entry._xadc_write_adc_reg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_write_adc_reg.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i._xadc_write_adc_reg.exit_crit_edge, !prof !116

land.rhs.i._xadc_write_adc_reg.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_write_adc_reg.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %_xadc_write_adc_reg.exit

_xadc_write_adc_reg.exit:                         ; preds = %do.end.i, %land.rhs.i._xadc_write_adc_reg.exit_crit_edge, %entry._xadc_write_adc_reg.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.xadc_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %call24.i = tail call i32 %4(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %val) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call24.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xadc_update_adc_reg(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %cmp41 = icmp sgt i32 %3, 0
  br i1 %cmp41, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %scan_mask.042 = phi i32 [ 1, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %scan_index = getelementptr %struct.iio_chan_spec, ptr %5, i32 %i.043, i32 4
  %6 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_index, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %scan_mask.042
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %scan_mask.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %conv = trunc i32 %scan_mask.0.lcssa to i16
  %mutex.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %for.end.xadc_write_adc_reg.exit_crit_edge, label %land.rhs.i.i

for.end.xadc_write_adc_reg.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit

land.rhs.i.i:                                     ; preds = %for.end
  %dep_map.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.xadc_write_adc_reg.exit_crit_edge, !prof !116

land.rhs.i.i.xadc_write_adc_reg.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %xadc_write_adc_reg.exit

xadc_write_adc_reg.exit:                          ; preds = %do.end.i.i, %land.rhs.i.i.xadc_write_adc_reg.exit_crit_edge, %for.end.xadc_write_adc_reg.exit_crit_edge
  %ops.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.xadc_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i, align 4
  %call24.i.i = tail call i32 %12(ptr noundef %1, i32 noundef 72, i16 noundef zeroext %conv) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool.not = icmp eq i32 %call24.i.i, 0
  br i1 %tobool.not, label %if.end, label %xadc_write_adc_reg.exit.cleanup_crit_edge

xadc_write_adc_reg.exit.cleanup_crit_edge:        ; preds = %xadc_write_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %xadc_write_adc_reg.exit
  %shr = lshr i32 %scan_mask.0.lcssa, 16
  %conv2 = trunc i32 %shr to i16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i30 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i30, label %if.end.xadc_write_adc_reg.exit39_crit_edge, label %land.rhs.i.i34

if.end.xadc_write_adc_reg.exit39_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit39

land.rhs.i.i34:                                   ; preds = %if.end
  %dep_map.i.i31 = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14, i32 5
  %call.i.i.i32 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i31, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %cmp.not.i.i33 = icmp eq i32 %call.i.i.i32, 0
  br i1 %cmp.not.i.i33, label %do.end.i.i35, label %land.rhs.i.i34.xadc_write_adc_reg.exit39_crit_edge, !prof !116

land.rhs.i.i34.xadc_write_adc_reg.exit39_crit_edge: ; preds = %land.rhs.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit39

do.end.i.i35:                                     ; preds = %land.rhs.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %xadc_write_adc_reg.exit39

xadc_write_adc_reg.exit39:                        ; preds = %do.end.i.i35, %land.rhs.i.i34.xadc_write_adc_reg.exit39_crit_edge, %if.end.xadc_write_adc_reg.exit39_crit_edge
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %write.i.i37 = getelementptr inbounds %struct.xadc_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write.i.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i37, align 4
  %call24.i.i38 = tail call i32 %17(ptr noundef %1, i32 noundef 73, i16 noundef zeroext %conv2) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i38)
  %tobool4.not = icmp eq i32 %call24.i.i38, 0
  br i1 %tobool4.not, label %if.end6, label %xadc_write_adc_reg.exit39.cleanup_crit_edge

xadc_write_adc_reg.exit39.cleanup_crit_edge:      ; preds = %xadc_write_adc_reg.exit39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %xadc_write_adc_reg.exit39
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call.i = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 65, i16 noundef zeroext -4096, i16 noundef zeroext 8192) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %type.i = getelementptr inbounds %struct.xadc_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp eq i32 %21, 1
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call.i.i = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 66, i16 noundef zeroext 48, i16 noundef zeroext 32) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %xadc_write_adc_reg.exit39.cleanup_crit_edge, %xadc_write_adc_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24.i.i, %xadc_write_adc_reg.exit.cleanup_crit_edge ], [ %call24.i.i38, %xadc_write_adc_reg.exit39.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %val16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scan_type = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val16) #7
  %4 = ptrtoint ptr %val16 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val16, align 2, !annotation !111
  %5 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb25
    i32 12, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %6 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %7, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %mutex.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.xadc_read_adc_reg.exit_crit_edge, label %land.rhs.i.i

if.end.xadc_read_adc_reg.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_read_adc_reg.exit

land.rhs.i.i:                                     ; preds = %if.end
  %dep_map.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge, !prof !116

land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_read_adc_reg.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %xadc_read_adc_reg.exit

xadc_read_adc_reg.exit:                           ; preds = %do.end.i.i, %land.rhs.i.i.xadc_read_adc_reg.exit_crit_edge, %if.end.xadc_read_adc_reg.exit_crit_edge
  %ops.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call24.i.i = call i32 %14(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %val16) #7
  call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %cmp = icmp slt i32 %call24.i.i, 0
  br i1 %cmp, label %xadc_read_adc_reg.exit.cleanup_crit_edge, label %if.end5

xadc_read_adc_reg.exit.cleanup_crit_edge:         ; preds = %xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 1
  %conv7 = zext i8 %16 to i32
  %17 = ptrtoint ptr %val16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val16, align 2
  %conv8 = zext i16 %18 to i32
  %shr = lshr i32 %conv8, %conv7
  %19 = ptrtoint ptr %scan_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %20)
  %cmp12 = icmp eq i8 %20, 117
  %conv.i = sub nsw i32 32, %conv
  %conv1.i = and i32 %conv.i, 255
  %shl.i = shl i32 %shr, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %storemerge58 = select i1 %cmp12, i32 %shr, i32 %shr.i
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge58, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chan, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %23, label %sw.bb19.cleanup_crit_edge [
    i32 0, label %sw.bb20
    i32 9, label %sw.bb23
  ]

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb19
  %address21 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %25 = ptrtoint ptr %address21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address21, align 4
  %switch.tableidx = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %27 = icmp ult i32 %switch.tableidx, 15
  br i1 %27, label %switch.lookup, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.xadc_read_raw, i32 0, i32 %switch.tableidx
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb20.sw.epilog_crit_edge
  %storemerge = phi i32 [ %switch.load, %switch.lookup ], [ 1000, %sw.bb20.sw.epilog_crit_edge ]
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %val, align 4
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 503975, ptr %val, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 273150, %conv
  %div.neg = sdiv i32 %shl, -503975
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div.neg, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %call28 = tail call fastcc i32 @xadc_read_samplerate(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %sw.bb27.cleanup_crit_edge, label %if.end32

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call28, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sw.bb27.cleanup_crit_edge, %sw.bb25, %sw.bb23, %sw.epilog, %sw.bb19.cleanup_crit_edge, %if.end5, %xadc_read_adc_reg.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end32 ], [ 1, %sw.bb25 ], [ 11, %sw.bb23 ], [ 11, %sw.epilog ], [ 1, %if.end5 ], [ -16, %sw.bb.cleanup_crit_edge ], [ %call24.i.i, %xadc_read_adc_reg.exit.cleanup_crit_edge ], [ -22, %sw.bb19.cleanup_crit_edge ], [ %call28, %sw.bb27.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val16) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %info)
  %cmp.not = icmp eq i32 %info, 12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %get_dclk_rate.i.i = getelementptr inbounds %struct.xadc_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_dclk_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_dclk_rate.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.i = icmp slt i32 %val, 1
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %if.end2.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.smin.i32(i32 %val, i32 150000) #7
  %mul.i = mul nuw nsw i32 %6, 26
  %7 = tail call i32 @llvm.smax.i32(i32 %mul.i, i32 1000000) #7
  %div9.i = udiv i32 %call.i.i, %7
  %div10.i = udiv i32 %call.i.i, %div9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3900025, i32 %div10.i)
  %cmp12.i = icmp ugt i32 %div10.i, 3900025
  %inc.i = zext i1 %cmp12.i to i32
  %spec.select.i = add nuw nsw i32 %div9.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i)
  %cmp15.i = icmp ult i32 %spec.select.i, 2
  %8 = tail call i32 @llvm.umin.i32(i32 %spec.select.i, i32 255) #7
  %.tr.i = trunc i32 %8 to i16
  %phi.cast.i = shl nuw i16 %.tr.i, 8
  %div.1.i = select i1 %cmp15.i, i16 512, i16 %phi.cast.i
  %mutex.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #7
  %call.i36.i = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 66, i16 noundef zeroext -256, i16 noundef zeroext %div.1.i) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i36.i, %if.end2.i ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_read_event_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_write_event_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_read_event_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xadc_write_event_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %2 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %masklength, align 8
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %mask, i32 noundef %3) #7
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i, i32 2)
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %data5 = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data5, align 4
  %call6 = tail call ptr @devm_krealloc(ptr noundef %8, ptr noundef %10, i32 noundef %6, i32 noundef 3264) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memset(ptr %call6, i32 0, i32 %6)
  %12 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %data5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call.i = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 65, i16 noundef zeroext -4096, i16 noundef zeroext 0) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %ops.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.xadc_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.end.xadc_get_seq_mode.exit_crit_edge, label %if.end.i

if.end.xadc_get_seq_mode.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_get_seq_mode.exit

if.end.i:                                         ; preds = %if.end
  %external_mux_mode.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %external_mux_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %external_mux_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp1.i = icmp eq i32 %11, 2
  br i1 %cmp1.i, label %if.end.i.xadc_get_seq_mode.exit_crit_edge, label %if.end3.i

if.end.i.xadc_get_seq_mode.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_get_seq_mode.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp4.i = icmp ult i32 %5, 16777216
  %12 = and i32 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.i = icmp eq i32 %12, 0
  %or.cond.i = or i1 %cmp4.i, %cmp6.i
  %spec.select.i = select i1 %or.cond.i, i32 8192, i32 16384
  br label %xadc_get_seq_mode.exit

xadc_get_seq_mode.exit:                           ; preds = %if.end3.i, %if.end.i.xadc_get_seq_mode.exit_crit_edge, %if.end.xadc_get_seq_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 8192, %if.end.xadc_get_seq_mode.exit_crit_edge ], [ 16384, %if.end.i.xadc_get_seq_mode.exit_crit_edge ], [ %spec.select.i, %if.end3.i ]
  %conv = trunc i32 %5 to i16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %xadc_get_seq_mode.exit.xadc_write_adc_reg.exit_crit_edge, label %land.rhs.i.i

xadc_get_seq_mode.exit.xadc_write_adc_reg.exit_crit_edge: ; preds = %xadc_get_seq_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit

land.rhs.i.i:                                     ; preds = %xadc_get_seq_mode.exit
  %dep_map.i.i = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.xadc_write_adc_reg.exit_crit_edge, !prof !116

land.rhs.i.i.xadc_write_adc_reg.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %xadc_write_adc_reg.exit

xadc_write_adc_reg.exit:                          ; preds = %do.end.i.i, %land.rhs.i.i.xadc_write_adc_reg.exit_crit_edge, %xadc_get_seq_mode.exit.xadc_write_adc_reg.exit_crit_edge
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write.i.i = getelementptr inbounds %struct.xadc_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i, align 4
  %call24.i.i = tail call i32 %17(ptr noundef %1, i32 noundef 72, i16 noundef zeroext %conv) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool4.not = icmp eq i32 %call24.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %xadc_write_adc_reg.exit.err_crit_edge

xadc_write_adc_reg.exit.err_crit_edge:            ; preds = %xadc_write_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end6:                                          ; preds = %xadc_write_adc_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 16384
  %shr = lshr i32 %5, 8
  %or = or i32 %shr, %5
  %and9 = and i32 %or, 16711680
  %scan_mask.0 = select i1 %cmp, i32 %and9, i32 %5
  %shr11 = lshr i32 %scan_mask.0, 16
  %conv12 = trunc i32 %shr11 to i16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i50 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i50, label %if.end6.xadc_write_adc_reg.exit59_crit_edge, label %land.rhs.i.i54

if.end6.xadc_write_adc_reg.exit59_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit59

land.rhs.i.i54:                                   ; preds = %if.end6
  %dep_map.i.i51 = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14, i32 5
  %call.i.i.i52 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i51, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i52)
  %cmp.not.i.i53 = icmp eq i32 %call.i.i.i52, 0
  br i1 %cmp.not.i.i53, label %do.end.i.i55, label %land.rhs.i.i54.xadc_write_adc_reg.exit59_crit_edge, !prof !116

land.rhs.i.i54.xadc_write_adc_reg.exit59_crit_edge: ; preds = %land.rhs.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_write_adc_reg.exit59

do.end.i.i55:                                     ; preds = %land.rhs.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %xadc_write_adc_reg.exit59

xadc_write_adc_reg.exit59:                        ; preds = %do.end.i.i55, %land.rhs.i.i54.xadc_write_adc_reg.exit59_crit_edge, %if.end6.xadc_write_adc_reg.exit59_crit_edge
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write.i.i57 = getelementptr inbounds %struct.xadc_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write.i.i57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i57, align 4
  %call24.i.i58 = tail call i32 %22(ptr noundef %1, i32 noundef 73, i16 noundef zeroext %conv12) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i58)
  %tobool14.not = icmp eq i32 %call24.i.i58, 0
  br i1 %tobool14.not, label %if.end16, label %xadc_write_adc_reg.exit59.err_crit_edge

xadc_write_adc_reg.exit59.err_crit_edge:          ; preds = %xadc_write_adc_reg.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end16:                                         ; preds = %xadc_write_adc_reg.exit59
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %type.i61 = getelementptr inbounds %struct.xadc_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %type.i61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i62 = icmp eq i32 %26, 1
  br i1 %cmp.i62, label %if.end16.if.end20_crit_edge, label %xadc_power_adc_b.exit

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

xadc_power_adc_b.exit:                            ; preds = %if.end16
  %27 = add nsw i32 %retval.0.i, -16384
  %switch.and.i = and i32 %27, -24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %28 = select i1 %switch.selectcmp.i, i16 0, i16 32
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call.i.i = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 66, i16 noundef zeroext 48, i16 noundef zeroext %28) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %xadc_power_adc_b.exit.if.end20_crit_edge, label %xadc_power_adc_b.exit.err_crit_edge

xadc_power_adc_b.exit.err_crit_edge:              ; preds = %xadc_power_adc_b.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

xadc_power_adc_b.exit.if.end20_crit_edge:         ; preds = %xadc_power_adc_b.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %xadc_power_adc_b.exit.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %conv21 = trunc i32 %retval.0.i to i16
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %call.i66 = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 65, i16 noundef zeroext -4096, i16 noundef zeroext %conv21) #7
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool23.not = icmp eq i32 %call.i66, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end20.err_crit_edge

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end20.err_crit_edge, %xadc_power_adc_b.exit.err_crit_edge, %xadc_write_adc_reg.exit59.err_crit_edge, %xadc_write_adc_reg.exit.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.err_crit_edge ], [ %call24.i.i, %xadc_write_adc_reg.exit.err_crit_edge ], [ %call24.i.i58, %xadc_write_adc_reg.exit59.err_crit_edge ], [ %call.i.i, %xadc_power_adc_b.exit.err_crit_edge ], [ %call.i66, %if.end20.err_crit_edge ]
  %call26 = tail call i32 @xadc_postdisable(ptr noundef %indio_dev)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_trigger_set_state(ptr noundef %trigger, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trigger, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %trigger1 = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 7
  br i1 %state, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %trigger1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger1, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.else, label %if.then.err_out_crit_edge

if.then.err_out_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.else:                                          ; preds = %if.then
  %4 = ptrtoint ptr %trigger1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %trigger, ptr %trigger1, align 4
  %convst_trigger = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %convst_trigger to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %convst_trigger, align 4
  %cmp4 = icmp eq ptr %6, %trigger
  %. = select i1 %cmp4, i16 512, i16 0
  %call8 = tail call fastcc i32 @_xadc_update_adc_reg(ptr noundef %1, i32 noundef 65, i16 noundef zeroext 512, i16 noundef zeroext %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.do.body15_crit_edge, label %if.else.err_out_crit_edge

if.else.err_out_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.else.do.body15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %trigger1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %trigger1, align 4
  br label %do.body15

do.body15:                                        ; preds = %if.else12, %if.else.do.body15_crit_edge
  %masksel = phi i32 [ 16, %if.else.do.body15_crit_edge ], [ 0, %if.else12 ]
  %lock = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 15
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i43 = getelementptr i8, ptr %12, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 268435456) #7, !srcloc !115
  %13 = and i32 %10, -268435457
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %storemerge = or i32 %14, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %15) #7, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #7
  br label %err_out

err_out:                                          ; preds = %do.body15, %if.else.err_out_crit_edge, %if.then.err_out_crit_edge
  %ret.1 = phi i32 [ %call8, %if.else.err_out_crit_edge ], [ 0, %do.body15 ], [ -16, %if.then.err_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_xadc_update_adc_reg(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp, align 2, !annotation !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry._xadc_read_adc_reg.exit_crit_edge, label %land.rhs.i

entry._xadc_read_adc_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_read_adc_reg.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i._xadc_read_adc_reg.exit_crit_edge, !prof !116

land.rhs.i._xadc_read_adc_reg.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_read_adc_reg.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %_xadc_read_adc_reg.exit

_xadc_read_adc_reg.exit:                          ; preds = %do.end.i, %land.rhs.i._xadc_read_adc_reg.exit_crit_edge, %entry._xadc_read_adc_reg.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call24.i = call i32 %5(ptr noundef %xadc, i32 noundef %reg, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool.not = icmp eq i32 %call24.i, 0
  br i1 %tobool.not, label %if.end, label %_xadc_read_adc_reg.exit.cleanup_crit_edge

_xadc_read_adc_reg.exit.cleanup_crit_edge:        ; preds = %_xadc_read_adc_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %_xadc_read_adc_reg.exit
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tmp, align 2
  %neg = xor i16 %mask, -1
  %and = and i16 %7, %neg
  %or = or i16 %and, %val
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i9 = icmp eq i32 %8, 0
  br i1 %tobool.not.i9, label %if.end._xadc_write_adc_reg.exit_crit_edge, label %land.rhs.i13

if.end._xadc_write_adc_reg.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_write_adc_reg.exit

land.rhs.i13:                                     ; preds = %if.end
  %dep_map.i10 = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 14, i32 5
  %call.i.i11 = call i32 @lock_is_held_type(ptr noundef %dep_map.i10, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp.not.i12 = icmp eq i32 %call.i.i11, 0
  br i1 %cmp.not.i12, label %do.end.i14, label %land.rhs.i13._xadc_write_adc_reg.exit_crit_edge, !prof !116

land.rhs.i13._xadc_write_adc_reg.exit_crit_edge:  ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %_xadc_write_adc_reg.exit

do.end.i14:                                       ; preds = %land.rhs.i13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %_xadc_write_adc_reg.exit

_xadc_write_adc_reg.exit:                         ; preds = %do.end.i14, %land.rhs.i13._xadc_write_adc_reg.exit_crit_edge, %if.end._xadc_write_adc_reg.exit_crit_edge
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.xadc_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %call24.i16 = call i32 %12(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %or) #7
  br label %cleanup

cleanup:                                          ; preds = %_xadc_write_adc_reg.exit, %_xadc_read_adc_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24.i16, %_xadc_write_adc_reg.exit ], [ %call24.i, %_xadc_read_adc_reg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_zynq_read_adc_reg(ptr noundef %xadc, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 16
  %or = or i32 %shl, 67108864
  %lock = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %zynq_intmask.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 12
  %0 = ptrtoint ptr %zynq_intmask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zynq_intmask.i, align 4
  %or.i = or i32 %1, 256
  store i32 %or.i, ptr %zynq_intmask.i, align 4
  %zynq_masked_alarm.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 11
  %2 = ptrtoint ptr %zynq_masked_alarm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zynq_masked_alarm.i, align 4
  %or3.i = or i32 %3, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %5 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !115
  %7 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not6.i = icmp eq i32 %10, 0
  br i1 %tobool.not6.i, label %entry.while.body.i_crit_edge, label %entry.xadc_zynq_drain_fifo.exit_crit_edge

entry.xadc_zynq_drain_fifo.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_zynq_drain_fifo.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %11 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xadc, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %14 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xadc, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %17 = and i32 %16, 65536
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.xadc_zynq_drain_fifo.exit_crit_edge

while.body.i.xadc_zynq_drain_fifo.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xadc_zynq_drain_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

xadc_zynq_drain_fifo.exit:                        ; preds = %while.body.i.xadc_zynq_drain_fifo.exit_crit_edge, %entry.xadc_zynq_drain_fifo.exit_crit_edge
  %completion = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 16
  %18 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %completion, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %20 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 %19) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i27.1 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27.1, i32 0) #7, !srcloc !115
  %24 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xadc, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %27 = and i32 %26, -3841
  %28 = or i32 %27, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xadc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !115
  %31 = ptrtoint ptr %zynq_intmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %zynq_intmask.i, align 4
  %and.i29 = and i32 %32, -257
  store i32 %and.i29, ptr %zynq_intmask.i, align 4
  %33 = ptrtoint ptr %zynq_masked_alarm.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %zynq_masked_alarm.i, align 4
  %or3.i31 = or i32 %34, %and.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or3.i31) #7
  %36 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %35) #7, !srcloc !115
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp, i32 -5, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp6 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp6, label %xadc_zynq_drain_fifo.exit.cleanup_crit_edge, label %if.end8

xadc_zynq_drain_fifo.exit.cleanup_crit_edge:      ; preds = %xadc_zynq_drain_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %xadc_zynq_drain_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xadc, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %41 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xadc, align 4
  %add.ptr.i33 = getelementptr i8, ptr %42, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !112
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %conv = trunc i32 %44 to i16
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %xadc_zynq_drain_fifo.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %spec.store.select, %xadc_zynq_drain_fifo.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_zynq_write_adc_reg(ptr noundef %xadc, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %zynq_intmask.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 12
  %0 = ptrtoint ptr %zynq_intmask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zynq_intmask.i, align 4
  %or.i = or i32 %1, 256
  store i32 %or.i, ptr %zynq_intmask.i, align 4
  %zynq_masked_alarm.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 11
  %2 = ptrtoint ptr %zynq_masked_alarm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zynq_masked_alarm.i, align 4
  %or3.i = or i32 %3, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %5 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !115
  %completion = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 16
  %7 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %completion, align 4
  %shl = shl i32 %reg, 16
  %conv = zext i16 %val to i32
  %or = or i32 %shl, %conv
  %or1 = or i32 %or, 134217728
  %8 = tail call i32 @llvm.bswap.i32(i32 %or1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %8) #7, !srcloc !115
  %11 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xadc, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %14 = and i32 %13, -3841
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xadc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !115
  %17 = ptrtoint ptr %zynq_intmask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zynq_intmask.i, align 4
  %and.i18 = and i32 %18, -257
  store i32 %and.i18, ptr %zynq_intmask.i, align 4
  %19 = ptrtoint ptr %zynq_masked_alarm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %zynq_masked_alarm.i, align 4
  %or3.i20 = or i32 %20, %and.i18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or3.i20) #7
  %22 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %21) #7, !srcloc !115
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %call = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i32 -5, i32 0
  %24 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xadc, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_zynq_setup(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %indio_dev, i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %zynq_intmask = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %zynq_intmask, align 4
  %clk = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call1)
  %cmp = icmp ugt i32 %call1, 200000000
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %6, i32 noundef 200000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end17_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %call1)
  %cmp10 = icmp ult i32 %call1, 100000000
  br i1 %cmp10, label %if.end8.if.end29_crit_edge, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end17:                                         ; preds = %if.end8.if.end17_crit_edge, %if.then2.if.end17_crit_edge
  %div12 = udiv i32 %call1, 50000000
  %div13 = udiv i32 %call1, %div12
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %div13)
  %cmp14 = icmp ugt i32 %div13, 50000000
  %inc = zext i1 %cmp14 to i32
  %spec.select = add nuw nsw i32 %div12, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp18 = icmp ult i32 %spec.select, 4
  br i1 %cmp18, label %if.end17.if.end29_crit_edge, label %if.else20

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select)
  %cmp21 = icmp ult i32 %spec.select, 8
  br i1 %cmp21, label %if.else20.if.end29_crit_edge, label %if.else23

if.else20.if.end29_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select)
  %cmp24 = icmp ult i32 %spec.select, 16
  %. = select i1 %cmp24, i32 -2147470828, i32 -2147470572
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.else20.if.end29_crit_edge, %if.end17.if.end29_crit_edge, %if.end8.if.end29_crit_edge
  %tck_div.0 = phi i32 [ -2147471340, %if.end17.if.end29_crit_edge ], [ -2147471084, %if.else20.if.end29_crit_edge ], [ %., %if.else23 ], [ -2147471340, %if.end8.if.end29_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i70 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 0) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i71 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 -1) #7, !srcloc !115
  %13 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zynq_intmask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i72 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %15) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %tck_div.0) #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !115
  br i1 %cmp, label %if.then33, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %if.end29
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call35 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end39_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then33.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.then2.cleanup_crit_edge ], [ %call35, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xadc_zynq_update_alarm(ptr noundef %xadc, i32 noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %alarm, 4
  %shl = and i32 %and, 128
  %and1 = lshr i32 %alarm, 1
  %shr = and i32 %and1, 120
  %and2 = and i32 %alarm, 7
  %or = or i32 %shr, %and2
  %or3 = or i32 %or, %shl
  %lock = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 15
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xadc, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %and820 = shl nuw i32 %or3, 24
  %3 = and i32 %2, %and820
  %4 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xadc, align 4
  %add.ptr.i19 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %3) #7, !srcloc !115
  %zynq_intmask.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 12
  %6 = ptrtoint ptr %zynq_intmask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zynq_intmask.i, align 4
  %and.i = and i32 %7, -256
  %8 = or i32 %and.i, %or3
  %or.i = xor i32 %8, 255
  store i32 %or.i, ptr %zynq_intmask.i, align 4
  %zynq_masked_alarm.i = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 11
  %9 = ptrtoint ptr %zynq_masked_alarm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %zynq_masked_alarm.i, align 4
  %or3.i = or i32 %or.i, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %12 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xadc, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #7, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_zynq_get_dclk_rate(ptr nocapture noundef readonly %xadc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xadc, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !112
  %3 = lshr i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %and = and i32 %3, 768
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and, label %sw.default [
    i32 256, label %entry.sw.epilog_crit_edge
    i32 512, label %sw.bb1
    i32 768, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %div.0 = phi i32 [ 2, %sw.default ], [ 16, %sw.bb2 ], [ 8, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %clk = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %6) #7
  %div3 = udiv i32 %call, %div.0
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_zynq_interrupt_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %devid, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %zynq_intmask = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zynq_intmask, align 4
  %zynq_masked_alarm = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %zynq_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zynq_masked_alarm, align 4
  %or = or i32 %9, %7
  %neg = xor i32 %or, -1
  %and = and i32 %5, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i28 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %10) #7, !srcloc !115
  %and1 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zynq_intmask, align 4
  %or.i = or i32 %14, 256
  store i32 %or.i, ptr %zynq_intmask, align 4
  %15 = ptrtoint ptr %zynq_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %zynq_masked_alarm, align 4
  %or3.i = or i32 %16, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #7, !srcloc !115
  %completion = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %completion) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end13_crit_edge, label %if.then7

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %zynq_masked_alarm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zynq_masked_alarm, align 4
  %or9 = or i32 %21, %and5
  store i32 %or9, ptr %zynq_masked_alarm, align 4
  %22 = ptrtoint ptr %zynq_intmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %zynq_intmask, align 4
  %or3.i31 = or i32 %23, %or9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or3.i31) #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %24) #7, !srcloc !115
  %and.i33 = lshr i32 %and, 4
  %shr.i = and i32 %and.i33, 8
  %and1.i = shl nuw nsw i32 %and5, 1
  %shl.i = and i32 %and1.i, 240
  %and2.i = and i32 %and, 7
  %or.i34 = or i32 %shr.i, %and2.i
  %or3.i35 = or i32 %or.i34, %shl.i
  tail call void @xadc_handle_events(ptr noundef %devid, i32 noundef %or3.i35) #7
  %zynq_unmask_work = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %zynq_unmask_work, i32 noundef 50) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end4.if.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xadc_handle_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_axi_read_adc_reg(ptr nocapture noundef readonly %xadc, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %type = getelementptr inbounds %struct.xadc_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [2 x i32], ptr @xadc_axi_reg_offsets, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %reg, 2
  %add = add i32 %5, %mul
  %6 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xadc, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %conv = trunc i32 %9 to i16
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %val, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_axi_write_adc_reg(ptr nocapture noundef readonly %xadc, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %type = getelementptr inbounds %struct.xadc_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %arrayidx = getelementptr [2 x i32], ptr @xadc_axi_reg_offsets, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %reg, 2
  %add = add i32 %5, %mul
  %conv = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %7 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xadc, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !115
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_axi_setup(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %indio_dev, i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 167772160) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #7, !srcloc !115
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xadc_axi_update_alarm(ptr noundef %xadc, i32 noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %alarm, 1
  %shl = and i32 %and, 14
  %and1 = lshr i32 %alarm, 3
  %shr = and i32 %and1, 1
  %or = or i32 %shl, %shr
  %and2 = shl i32 %alarm, 6
  %shl3 = and i32 %and2, 15360
  %or4 = or i32 %or, %shl3
  %lock = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 15
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xadc, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %3 = and i32 %2, -255590401
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or10 = or i32 %or4, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or10) #7
  %6 = ptrtoint ptr %xadc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xadc, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %5) #7, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_axi_get_dclk(ptr nocapture noundef readonly %xadc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.xadc, ptr %xadc, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xadc_axi_interrupt_handler(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %devid, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i27 = getelementptr i8, ptr %6, i32 104
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %8 = and i32 %7, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %trigger = getelementptr inbounds %struct.xadc, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trigger, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iio_trigger_poll(ptr noundef nonnull %11) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %and7 = and i32 %9, 15375
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end15_crit_edge, label %if.then9

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %and10 = lshr i32 %9, 1
  %shr = and i32 %and10, 7
  %and11 = shl i32 %9, 3
  %shl = and i32 %and11, 8
  %or = or i32 %shr, %shl
  %and12 = lshr i32 %9, 6
  %shr13 = and i32 %and12, 240
  %or14 = or i32 %or, %shr13
  tail call void @xadc_handle_events(ptr noundef %devid, i32 noundef %or14) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end6.if.end15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i28 = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %8) #7, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_xilinx_xadc__187_1489_xadc_driver_init6, !1, !"__initcall__kmod_xilinx_xadc__187_1489_xadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1489, i32 1}
!2 = !{ptr @__exitcall_xadc_driver_exit, !1, !"__exitcall_xadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1491, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author190, !7, !"__UNIQUE_ID_author190", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1492, i32 1}
!8 = !{ptr @__UNIQUE_ID_description191, !9, !"__UNIQUE_ID_description191", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1493, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1485, i32 11}
!12 = !{ptr @xadc_driver, !13, !"xadc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1482, i32 31}
!14 = !{ptr @xadc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1350, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @xadc_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1351, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xadc_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1352, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xadc_probe.__key.6, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1375, i32 57}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1380, i32 5}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1299, i32 19}
!34 = !{ptr @xadc_type_names, !35, !"xadc_type_names", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1297, i32 27}
!36 = !{ptr @xadc_info, !37, !"xadc_info", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1160, i32 30}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1203, i32 36}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1204, i32 42}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1206, i32 36}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1208, i32 36}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1214, i32 34}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1250, i32 39}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1258, i32 38}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1262, i32 37}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1098, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1099, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1100, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1101, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1102, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1103, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1104, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1105, i32 2}
!70 = !{ptr @xadc_7s_channels, !71, !"xadc_7s_channels", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1096, i32 35}
!72 = !{ptr @xadc_temp_events, !73, !"xadc_temp_events", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1021, i32 36}
!74 = !{ptr @xadc_voltage_events, !75, !"xadc_voltage_events", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1032, i32 36}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1136, i32 2}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1137, i32 2}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1138, i32 2}
!82 = !{ptr @xadc_us_channels, !83, !"xadc_us_channels", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1131, i32 35}
!84 = !{ptr @xadc_buffer_ops, !85, !"xadc_buffer_ops", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 883, i32 42}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 746, i32 37}
!88 = !{ptr @xadc_trigger_ops, !89, !"xadc_trigger_ops", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 735, i32 37}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/xilinx-xadc.h", i32 93, i32 2}
!92 = !{ptr @xadc_of_match_table, !93, !"xadc_of_match_table", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 1170, i32 34}
!94 = !{ptr @xadc_zynq_ops, !95, !"xadc_zynq_ops", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 450, i32 30}
!96 = !{ptr @xadc_7s_axi_ops, !97, !"xadc_7s_axi_ops", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 559, i32 30}
!98 = !{ptr @xadc_axi_reg_offsets, !99, !"xadc_axi_reg_offsets", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 460, i32 27}
!100 = !{ptr @xadc_us_axi_ops, !101, !"xadc_us_axi_ops", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/xilinx-xadc-core.c", i32 570, i32 30}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
!112 = !{i64 4928502}
!113 = !{i64 2153219273}
!114 = !{i64 2153218617}
!115 = !{i64 4928084}
!116 = !{!"branch_weights", i32 1, i32 2000}
